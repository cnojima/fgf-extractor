"""Standalone decoder for the `bdd` binary table format (pmdata.bin), reverse-
engineered from xlua.dll's native bdd module (get_start_handle,
get_value_by_num_key/FUN_18007ed40, get_value_by_str_addr_key/FUN_18007ef40,
value builder FUN_18007f410, and the loader/parser FUN_18007df50).

Format (all offsets are byte offsets into the mmap'd file; the game loads the
file raw and reads it in place, so file layout == in-memory layout):

  root handle = u32 @ (filesize - 4)

  node at handle H:
    descOff  = u32 @ H
    K        = u32 @ descOff           # keyblock offset
    typeBase = i32 @ descOff+4         # base index into the per-entry type-byte array
    valBlock = u32 @ descOff+8

  keyblock at K:
    kt       = u8  @ K+4               # key element type (index into size/decoder tables)
    endIdx   = i32 @ K+5
    startIdx = i32 @ K+9               # base index; count = endIdx - startIdx
    keys     = array at K+0xd, element size = size[kt].
               number keys: decode[kt](K+0xd + size[kt]*i)
               string keys: u32 offset @ (K+0xd + size[kt]*startIdx + i*4) -> cstr

  per entry, global index gi (1-based) = startIdx + 1 + i:
    typebyte = u8 @ (typeBase - 1 + gi)
    it       = typebyte if typebyte<100 else typebyte-100     # value type
    mode     = typebyte < 100

  value cell (FUN_18007f410):
    vt      = u8 @ valBlock            # cell width selector: 1->u8, 3->u16, 5->u32
    cellPos = valBlock + 1 + size[vt]*(gi-1)
    rawval  = uint(size[vt]) @ cellPos
    dataOff = rawval + H      if mode (typebyte<100)
              cellPos - rawval else
    it<7 : number   = decode[it](dataOff)
    it==7: string   = cstr @ (u32 @ dataOff)
    it==8: node     = child handle (u32 @ dataOff)
    it==9: bool     = (u8 @ dataOff) == 1

  size table  (DAT_180454478): [8,1,1,2,2,4,4,4,4,1]
  decoders 0..6 (PTR_LAB_180454488): f64,u8,i8,u16,i16,u32,i32
"""
import struct
import sys

SIZE = [8, 1, 1, 2, 2, 4, 4, 4, 4, 1]


class Bdd:
    def __init__(self, data):
        self.d = data
        self.root = self.u32(len(data) - 4)

    # primitive reads
    def u8(self, o):  return self.d[o]
    def u16(self, o): return struct.unpack_from("<H", self.d, o)[0]
    def u32(self, o): return struct.unpack_from("<I", self.d, o)[0]
    def i16(self, o): return struct.unpack_from("<h", self.d, o)[0]
    def i32(self, o): return struct.unpack_from("<i", self.d, o)[0]
    def f64(self, o): return struct.unpack_from("<d", self.d, o)[0]
    def i8(self, o):  return struct.unpack_from("<b", self.d, o)[0]

    def cstr(self, o):
        e = self.d.find(b"\x00", o)
        return self.d[o:e].decode("utf-8", "replace")

    def decode_num(self, code, o):
        if code == 0: return self.f64(o)
        if code == 1: return self.u8(o)
        if code == 2: return self.i8(o)
        if code == 3: return self.u16(o)
        if code == 4: return self.i16(o)
        if code == 5: return self.u32(o)
        if code == 6: return self.i32(o)
        raise ValueError(f"bad num code {code}")

    def node_fields(self, H):
        descOff = self.u32(H)
        K = self.u32(descOff)
        typeBase = self.i32(descOff + 4)
        valBlock = self.u32(descOff + 8)
        return K, typeBase, valBlock

    def value(self, H, gi, typeBase, valBlock):
        typebyte = self.u8(typeBase - 1 + gi)
        it = typebyte if typebyte < 100 else typebyte - 100
        vt = self.u8(valBlock)
        esz = SIZE[vt]
        cellPos = valBlock + 1 + esz * (gi - 1)
        if vt == 1:   rawval = self.u8(cellPos)
        elif vt == 3: rawval = self.u16(cellPos)
        elif vt == 5: rawval = self.u32(cellPos)
        else: raise ValueError(f"bad vt {vt}")
        dataOff = (rawval + H) if typebyte < 100 else (cellPos - rawval)
        if it < 7:
            return ("num", self.decode_num(it, dataOff))
        if it == 7:
            return ("str", self.cstr(self.u32(dataOff)))
        if it == 8:
            return ("node", self.u32(dataOff))
        if it == 9:
            return ("bool", self.u8(dataOff) == 1)
        return ("?", typebyte)

    TOC_END = None  # set once; upper bound for a valid string-pool offset

    def _valid_stroff(self, o):
        if o <= 0 or o >= len(self.d):
            return False
        if self.d[o - 1] != 0:            # strings are null-terminated / null-preceded
            return False
        e = self.d.find(b"\x00", o)
        if e < 0 or e == o or e - o > 128:
            return False
        seg = self.d[o:e]
        return all(9 <= c < 0x7f or c >= 0x80 for c in seg)

    def keys(self, H):
        """Return (entries, typeBase, valBlock, kt, mode) for node H.
        entries = list of (key, global_index). mode in {'str','num'}.

        The keyblock is interpreted as string- or number-keyed depending on
        which accessor the game uses (not stored in the file), so we infer:
        string-keyed iff the 4-byte-offset slice [startIdx,endIdx) resolves to
        real pool strings; otherwise number-keyed with count = i32@K+9."""
        K, typeBase, valBlock = self.node_fields(H)
        kt = self.u8(K + 4)
        esz = SIZE[kt]
        A = self.i32(K + 5)   # endIdx (string mode) / max-key (num mode)
        B = self.i32(K + 9)   # startIdx (string mode) / count (num mode)
        base = K + 0xd
        out = []
        cnt_str = A - B
        arr = base + esz * B
        if cnt_str > 0 and all(self._valid_stroff(self.u32(arr + i * 4))
                               for i in range(min(cnt_str, 8))):
            for i in range(cnt_str):
                so = self.u32(arr + i * 4)
                out.append((self.cstr(so), B + 1 + i))
            return out, typeBase, valBlock, kt, "str"
        for i in range(B):
            out.append((self.decode_num(kt, base + esz * i), i + 1))
        return out, typeBase, valBlock, kt, "num"


    # ---- high-level recursive export ----------------------------------------
    def node_to_py(self, H, _depth=0):
        """Decode a node handle into a Python dict {key: value}, recursing into
        nested nodes. String-keyed nodes -> dict; number-keyed -> dict keyed by
        the numeric id (kept as int)."""
        if _depth > 40:
            return {"__truncated__": H}
        entries, tb, vb, kt, mode = self.keys(H)
        out = {}
        for k, gi in entries:
            typ, val = self.value(H, gi, tb, vb)
            if typ == "node":
                val = self.node_to_py(val, _depth + 1)
            out[k] = val
        return out

    def get_table(self, name):
        """Return a table by name. Accepts 't_warship' or 'base.t_warship'."""
        ents, tb, vb, kt, mode = self.keys(self.root)
        idx = {k: gi for k, gi in ents}
        for cand in (name, "base." + name, name.replace("base.", "")):
            if cand in idx:
                typ, h = self.value(self.root, idx[cand], tb, vb)
                assert typ == "node", f"{cand} is not a table ({typ})"
                return self.node_to_py(h)
        raise KeyError(name)

    def table_names(self):
        ents, tb, vb, kt, mode = self.keys(self.root)
        return [k for k, gi in ents]


DEFAULT_BIN = (r"C:\Users\cnoji\AppData\LocalLow\Funplus"
               r"\Foundation_ Galactic Frontier\official\Patch\pmdata.bin")


def main(argv):
    import argparse
    import json
    import os
    ap = argparse.ArgumentParser(
        description="Decode stat tables from Foundation: Galactic Frontier's "
                    "pmdata.bin (bdd binary format).")
    ap.add_argument("-f", "--file", default=DEFAULT_BIN, help="path to pmdata.bin")
    ap.add_argument("-o", "--out", default="tables_json", help="output directory")
    ap.add_argument("--list", action="store_true", help="list all table names and exit")
    ap.add_argument("--all", action="store_true", help="export every table")
    ap.add_argument("tables", nargs="*",
                    help="table names to export, e.g. t_warship t_hero_base")
    a = ap.parse_args(argv)

    b = Bdd(open(a.file, "rb").read())
    names = b.table_names()
    if a.list:
        for n in names:
            print(n)
        print(f"\n{len(names)} tables", file=sys.stderr)
        return
    if not a.all and not a.tables:
        # default demo: the three headline stat tables
        a.tables = ["t_warship", "t_hero_base", "t_monster_slg_base_new"]
    want = names if a.all else a.tables
    os.makedirs(a.out, exist_ok=True)
    for t in want:
        try:
            tbl = b.get_table(t)
        except KeyError:
            print(f"  ! {t}: not found", file=sys.stderr)
            continue
        base = t.replace("base.", "")
        path = os.path.join(a.out, base + ".json")
        with open(path, "w", encoding="utf-8") as fh:
            json.dump(tbl, fh, ensure_ascii=False, indent=1)
        print(f"  {base}: {len(tbl)} rows -> {path}")


if __name__ == "__main__":
    main(sys.argv[1:])
