"""Round-trip test for the LuaPack container, on a synthetic pack.

luapack.bin is the game's own data and git-ignored, so the fixture is built
here: header, a tiled index, then one LZ4 block per file.
"""
import struct

import lz4.block
import pytest

import extract_luapack

MAGIC = 0x2A7F6604


def build_pack(files):
    """files: list of (name_hash, payload_bytes) -> a LuaPack image."""
    blocks = [lz4.block.compress(p, store_size=False) for _h, p in files]
    index = b""
    start = 0
    for (h, _p), block in zip(files, blocks):
        index += struct.pack("<III", h, start, len(block))
        start += len(block)
    return struct.pack("<III", MAGIC, 0, len(files)) + index + b"".join(blocks)


FILES = [
    (0x95BC8735, b"-- ConfigDataUtils\nreturn { warshipCfg = function() end }\n"),
    (0x7A2E2BCF, b"-- BddDataMgr\nlocal M = {}\nreturn M\n"),
    (0x00000001, b"x" * 5000),   # compresses well; exercises a multi-block-ish size
]


def test_read_index_stops_at_the_data_region():
    entries, run = extract_luapack.read_index(build_pack(FILES))
    assert [h for h, _s, _n in entries] == [h for h, _p in FILES]
    assert run == sum(n for _h, _s, n in entries)


def test_unpacks_every_file_to_a_hash_named_lua(tmp_path):
    p = tmp_path / "luapack.bin"
    p.write_bytes(build_pack(FILES))
    out = tmp_path / "lua"
    extract_luapack.main(["-f", str(p), "-o", str(out)])
    for h, payload in FILES:
        assert (out / f"{h:08x}.lua").read_bytes() == payload


def test_missing_file_is_a_clean_error(monkeypatch, tmp_path):
    monkeypatch.delenv("FGF_LUAPACK", raising=False)
    monkeypatch.setenv("USERPROFILE", str(tmp_path))
    with pytest.raises(SystemExit):
        extract_luapack.main([])
