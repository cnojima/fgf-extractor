"""Extract + LZ4-decompress all files from a LuaPack (luapack.bin).
Format:
  header: magic u32 (0x2a7f6604) + 2 u32 fields
  index : N x FileHead{ NameHash u32, StartIdx u32, CompressedSize u32 } from off 12
          (N found by tiling StartIdx == running sum of CompressedSize)
  data  : region [12 + N*12 , EOF]; each file is an LZ4 block at
          [StartIdx : StartIdx+CompressedSize], decompress with a large buffer.
Files are keyed by NameHash (paths not stored) - dumped as <hash>.lua and we
sniff/label content.
"""
import argparse
import os
import struct
import sys

import lz4.block

BUF = 1 << 20  # 1 MB decompression buffer per file


def candidate_paths():
    home = os.environ.get("USERPROFILE") or os.path.expanduser("~")
    return [os.path.join(home, "AppData", "LocalLow", "Funplus",
                         "Foundation_ Galactic Frontier", "official", "Patch",
                         "luapack.bin")]


def resolve_bin(arg):
    """-f wins, then $FGF_LUAPACK, then the known Windows install path."""
    if arg:
        return arg
    env = os.environ.get("FGF_LUAPACK")
    if env:
        return env
    for p in candidate_paths():
        if os.path.exists(p):
            return p
    raise SystemExit(
        "luapack.bin not found. Pass -f/--file or set FGF_LUAPACK.\n"
        "On Windows it is usually at:\n"
        "  %USERPROFILE%\\AppData\\LocalLow\\Funplus\\Foundation_ Galactic Frontier"
        "\\official\\Patch\\luapack.bin")


def read_index(d):
    """Walk the index until StartIdx stops tiling the running size sum."""
    entries = []
    run = 0
    i = 0
    while True:
        nh, si, s = struct.unpack_from("<IiI", d, 12 + i * 12)
        if si != run or s <= 0 or s > 10_000_000:
            break
        entries.append((nh, si, s))
        run += s
        i += 1
    return entries, run


def main(argv):
    ap = argparse.ArgumentParser(
        description="Unpack luapack.bin into one .lua file per entry.")
    ap.add_argument("-f", "--file", help="path to luapack.bin "
                    "(default: $FGF_LUAPACK, else the Windows install path)")
    ap.add_argument("-o", "--out", default="luapack_lua", help="output directory")
    a = ap.parse_args(argv)

    with open(resolve_bin(a.file), "rb") as fh:
        d = fh.read()
    n = len(d)
    magic, f1, f2 = struct.unpack_from("<III", d, 0)

    entries, run = read_index(d)
    count = len(entries)
    base = 12 + count * 12
    print(f"magic=0x{magic:08x} files={count} dataStart=0x{base:x} "
          f"dataBytes=0x{run:x} (EOF match: {run == n - base})")

    os.makedirs(a.out, exist_ok=True)
    ok = 0
    fail = 0
    raw = 0
    for nh, si, s in entries:
        comp = d[base + si: base + si + s]
        try:
            out = lz4.block.decompress(comp, uncompressed_size=BUF)
            ok += 1
        except Exception:
            # not LZ4 (stored raw?) - keep as-is
            out = comp
            raw += 1
        with open(os.path.join(a.out, f"{nh:08x}.lua"), "wb") as f:
            f.write(out)
    print(f"decompressed OK={ok}  stored-raw={raw}  fail={fail}  -> {a.out}/")


if __name__ == "__main__":
    main(sys.argv[1:])
