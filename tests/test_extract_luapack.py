"""Round-trip test for the LuaPack container, on a synthetic pack.

luapack.bin is the game's own data and git-ignored, so the fixture is built
here: header, a tiled index, then one LZ4 block per file.
"""
import struct

import lz4.block
import pytest

import extract_luapack

MAGIC = 0x2A7F6604


def build_pack_blocks(blocks):
    """blocks: list of (name_hash, block_bytes) -> a LuaPack image."""
    index = b""
    start = 0
    for h, block in blocks:
        index += struct.pack("<III", h, start, len(block))
        start += len(block)
    return (struct.pack("<III", MAGIC, 0, len(blocks)) + index
            + b"".join(b for _h, b in blocks))


def build_pack(files):
    """files: list of (name_hash, payload_bytes), each LZ4-compressed."""
    return build_pack_blocks([(h, lz4.block.compress(p, store_size=False))
                              for h, p in files])


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


# ---- decompression buffer ---------------------------------------------------
def test_file_larger_than_the_initial_buffer_round_trips(tmp_path):
    """A file over the 1 MB starting buffer must decompress, not fall through
    to being written out still compressed."""
    payload = b"local M = {}\nfunction M.f() return 1 end\n" * 50_000
    assert len(payload) > extract_luapack.BUF
    p = tmp_path / "luapack.bin"
    p.write_bytes(build_pack([(0xABCD1234, payload)]))
    out = tmp_path / "lua"
    extract_luapack.main(["-f", str(p), "-o", str(out)])
    assert (out / "abcd1234.lua").read_bytes() == payload


def test_a_block_that_is_not_lz4_is_left_alone():
    junk = b"-- plain lua, stored raw\n"
    payload, was_compressed = extract_luapack.decompress_block(junk)
    assert (payload, was_compressed) == (junk, False)


def test_counters_separate_compressed_stored_raw_and_junk(tmp_path, capsys):
    text = b"-- stored raw, still readable\n" * 4
    junk = b"\xff\xfe\x81\x90" * 40
    p = tmp_path / "luapack.bin"
    p.write_bytes(build_pack_blocks([
        (1, lz4.block.compress(b"return 1\n" * 100, store_size=False)),
        (2, text),
        (3, junk),
    ]))
    out = tmp_path / "lua"
    extract_luapack.main(["-f", str(p), "-o", str(out)])
    captured = capsys.readouterr()
    assert "OK=1  stored-raw=1  fail=1" in captured.out
    assert "00000003: not LZ4 and not readable Lua" in captured.err
    # everything is written either way, so nothing is lost silently
    assert (out / "00000002.lua").read_bytes() == text
    assert (out / "00000003.lua").read_bytes() == junk
