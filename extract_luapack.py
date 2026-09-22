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
import struct
import os
import sys
import lz4.block

P = sys.argv[1] if len(sys.argv) > 1 else r"C:\Users\cnoji\AppData\LocalLow\Funplus\Foundation_ Galactic Frontier\official\Patch\luapack.bin"
OUT = sys.argv[2] if len(sys.argv) > 2 else "luapack_lua"
d = open(P, "rb").read()
N = len(d)
magic, f1, f2 = struct.unpack_from("<III", d, 0)

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
count = len(entries)
base = 12 + count * 12
print(f"magic=0x{magic:08x} files={count} dataStart=0x{base:x} dataBytes=0x{run:x} (EOF match: {run == N-base})")

os.makedirs(OUT, exist_ok=True)
BUF = 1 << 20  # 1 MB decompression buffer per file
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
    with open(os.path.join(OUT, f"{nh:08x}.lua"), "wb") as f:
        f.write(out)
print(f"decompressed OK={ok}  stored-raw={raw}  fail={fail}  -> {OUT}/")
