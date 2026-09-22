"""Minimal *writer* for the `bdd` binary format, for tests only.

`decode_bdd.py` is a reader for a format we do not control and whose only real
input (`pmdata.bin`) is the game's copyrighted data and is git-ignored. This
module builds small, synthetic `bdd` files in memory so the decoder can be
exercised end-to-end — every value type, both key modes, all three cell widths
and both addressing modes — with no game data present.

It implements the same spec as `decode_bdd.py`'s module docstring, in reverse.
Layout emitted per node (the ordering matters, see `addressing` below):

    [back-addressed payloads]        # dataOff <= cellPos
    H:        u32 descOff            # the node handle
    descOff:  u32 K, i32 typeBase, u32 valBlock
    K:        4 pad, u8 kt, i32 A, i32 B, key array
    typeBase: one type byte per entry
    valBlock: u8 vt, then max_gi cells of SIZE[vt] bytes
    [forward-addressed payloads]     # dataOff >= H

addressing: a type byte < 100 means the payload sits at `rawval + H` (forward,
so the payload must follow the handle); >= 100 means `cellPos - rawval`
(backward, so the payload must precede the value cell). Real files use both,
so the writer can emit either per entry.

Strings all live in one pool at the head of the file, each NUL-terminated and
NUL-preceded — `Bdd._valid_stroff` relies on that to tell string keys from
numeric ones.
"""
import struct

SIZE = [8, 1, 1, 2, 2, 4, 4, 4, 4, 1]

NUM_CODE = {"f64": 0, "u8": 1, "i8": 2, "u16": 3, "i16": 4, "u32": 5, "i32": 6}
NUM_PACK = {0: "<d", 1: "<B", 2: "<b", 3: "<H", 4: "<h", 5: "<I", 6: "<i"}
RAW_PACK = {1: "<B", 2: "<H", 4: "<I"}

IT_STR, IT_NODE, IT_BOOL = 7, 8, 9


# ---- value constructors -----------------------------------------------------
def num(kind, value):
    """A numeric value stored with the given width, e.g. num('u16', 500)."""
    return ("num", NUM_CODE[kind], value)


def text(value):
    return ("str", value)


def flag(value):
    return ("bool", value)


class Node:
    """One `bdd` node.

    entries    : list of (key, value); value is a constructor above or a Node.
    mode       : 'str' (string-keyed, like the root) or 'num' (id-keyed rows).
    kt         : key element type code. In num mode it decodes the keys; in str
                 mode it only scales the start_idx padding before the offsets.
    start_idx  : the node's base into the shared key/type arrays (str mode only);
                 shifts every global index, which is the fiddly part of the format.
    vt         : value-cell width selector -- 1 (u8), 3 (u16), 5 (u32).
    back       : False, True, or 'alternate' -- which entries are back-addressed.
    """

    def __init__(self, entries, mode="str", kt=5, start_idx=0, vt=5, back=False):
        self.entries = list(entries)
        self.mode = mode
        self.kt = kt
        self.start_idx = start_idx
        self.vt = vt
        self.back = back
        assert mode in ("str", "num")
        assert vt in (1, 3, 5)
        if mode == "num":
            assert kt < 7, "numeric keys need a decodable key type"
            assert start_idx == 0, "num mode indexes from 1, no start_idx"

    def is_back(self, i):
        if self.back == "alternate":
            return i % 2 == 1
        return bool(self.back)


class _Writer:
    def __init__(self):
        self.buf = bytearray(b"\x00" * 8)   # lead pad: keeps every offset > 0
        self.pool = {}

    def intern(self, s):
        if s not in self.pool:
            self.pool[s] = len(self.buf)
            self.buf += s.encode("utf-8") + b"\x00"
        return self.pool[s]

    def emit(self, node):
        """Serialize `node` (children first) and return its handle offset."""
        handles = {}
        for i, (_k, v) in enumerate(node.entries):
            if isinstance(v, Node):
                handles[i] = self.emit(v)

        count = len(node.entries)
        base_gi = node.start_idx + 1 if node.mode == "str" else 1
        esz = SIZE[node.vt]

        plan = []   # (typebyte, payload, is_back)
        for i, (_k, v) in enumerate(node.entries):
            if isinstance(v, Node):
                it, payload = IT_NODE, struct.pack("<I", handles[i])
            elif v[0] == "num":
                it, payload = v[1], struct.pack(NUM_PACK[v[1]], v[2])
            elif v[0] == "str":
                it, payload = IT_STR, struct.pack("<I", self.pool[v[1]])
            elif v[0] == "bool":
                it, payload = IT_BOOL, bytes([1 if v[1] else 0])
            else:
                raise ValueError(f"bad value spec {v!r}")
            back = node.is_back(i)
            plan.append((it + 100 if back else it, payload, back))

        data_off = {}
        for i, (_tb, payload, back) in enumerate(plan):
            if back:
                data_off[i] = len(self.buf)
                self.buf += payload

        handle = len(self.buf)
        self.buf += b"\x00" * 4
        desc_off = len(self.buf)
        self.buf += b"\x00" * 12

        keyblock = len(self.buf)
        self.buf += b"\x00" * 4                 # K+0..3: unread by the decoder
        self.buf += bytes([node.kt])            # K+4
        if node.mode == "str":
            a, b = node.start_idx + count, node.start_idx
        else:
            a, b = 0, count                     # a <= b => decoder picks num mode
        self.buf += struct.pack("<ii", a, b)    # K+5, K+9
        if node.mode == "str":
            self.buf += b"\x00" * (SIZE[node.kt] * node.start_idx)   # skipped
            key_arr = len(self.buf)
            self.buf += b"\x00" * (4 * count)   # patched below
        else:
            key_arr = None
            for k, _v in node.entries:
                self.buf += struct.pack(NUM_PACK[node.kt], k)

        type_arr = len(self.buf)
        self.buf += bytes(tb for tb, _p, _b in plan)
        type_base = type_arr + 1 - base_gi

        val_block = len(self.buf)
        max_gi = base_gi + count - 1
        self.buf += bytes([node.vt]) + b"\x00" * (esz * max_gi)

        for i, (_tb, payload, back) in enumerate(plan):
            if not back:
                data_off[i] = len(self.buf)
                self.buf += payload

        struct.pack_into("<I", self.buf, handle, desc_off)
        struct.pack_into("<IiI", self.buf, desc_off, keyblock, type_base, val_block)
        if key_arr is not None:
            for i, (k, _v) in enumerate(node.entries):
                struct.pack_into("<I", self.buf, key_arr + 4 * i, self.pool[k])
        for i, (_tb, _p, back) in enumerate(plan):
            gi = base_gi + i
            cell = val_block + 1 + esz * (gi - 1)
            raw = (cell - data_off[i]) if back else (data_off[i] - handle)
            assert 0 <= raw < (1 << (8 * esz)), (
                f"offset {raw} does not fit a {esz}-byte cell; use a wider vt")
            struct.pack_into(RAW_PACK[esz], self.buf, cell, raw)
        return handle


def _collect_strings(node, out):
    for k, v in node.entries:
        if node.mode == "str":
            out.append(k)
        if isinstance(v, Node):
            _collect_strings(v, out)
        elif v[0] == "str":
            out.append(v[1])


def build(root):
    """Serialize a Node tree into a complete `bdd` file."""
    w = _Writer()
    strings = []
    _collect_strings(root, strings)
    for s in strings:
        w.intern(s)
    handle = w.emit(root)
    w.buf += struct.pack("<I", handle)          # root handle: last 4 bytes
    return bytes(w.buf)
