"""Round-trip tests for decode_bdd against synthetic bdd files.

Every fixture here is built by tests/bdd_writer.py, so the whole suite runs
with no copy of pmdata.bin present (see CLAUDE.md).
"""
import json

import pytest

import decode_bdd
from bdd_writer import Node, build, flag, num, text


def decode(root):
    return decode_bdd.Bdd(build(root))


# ---- value types ------------------------------------------------------------
@pytest.mark.parametrize("kind,value", [
    ("f64", 1.5), ("f64", -0.25),
    ("u8", 0), ("u8", 255),
    ("i8", -128), ("i8", 127),
    ("u16", 65535), ("i16", -32768),
    ("u32", 4294967295), ("i32", -2147483648),
])
def test_number_widths_round_trip(kind, value):
    b = decode(Node([("t", Node([("v", num(kind, value))]))]))
    assert b.get_table("t") == {"v": value}


def test_string_bool_and_nested_node_values():
    b = decode(Node([("t", Node([
        ("ascii", text("Beggar")),
        ("utf8", text("动能T2 Beggar")),
        ("empty_ok", text("x")),
        ("yes", flag(True)),
        ("no", flag(False)),
        ("Attrs", Node([("Key", num("u16", 10)), ("Value", num("u32", 16000))])),
    ]))]))
    assert b.get_table("t") == {
        "ascii": "Beggar",
        "utf8": "动能T2 Beggar",
        "empty_ok": "x",
        "yes": True,
        "no": False,
        "Attrs": {"Key": 10, "Value": 16000},
    }


# ---- key modes --------------------------------------------------------------
@pytest.mark.parametrize("kt,keys", [
    (0, [1.5, 2.5, 3.0]),            # f64
    (1, [1, 2, 255]),                # u8
    (2, [-128, 0, 127]),             # i8
    (3, [1, 500, 65535]),            # u16
    (4, [-32768, 0, 32767]),         # i16
    (5, [1100101, 1100102, 1100103]),  # u32 -- the real t_warship shape
    (6, [-1, 0, 2147483647]),        # i32
])
def test_numeric_key_types(kt, keys):
    rows = [(k, num("u16", i + 1)) for i, k in enumerate(keys)]
    b = decode(Node([("t", Node(rows, mode="num", kt=kt))]))
    assert b.get_table("t") == {k: i + 1 for i, k in enumerate(keys)}


def test_string_keys_are_preferred_over_the_numeric_reading():
    b = decode(Node([("t", Node([("Power", num("u16", 2000)),
                                 ("AtkCD", num("u16", 500))]))]))
    assert b.get_table("t") == {"Power": 2000, "AtkCD": 500}


def test_start_idx_shifts_keys_types_and_cells():
    """A node whose entries start partway into the shared key/type arrays."""
    fields = [("a", num("u8", 1)), ("b", num("u8", 2)), ("c", text("z"))]
    plain = decode(Node([("t", Node(fields))])).get_table("t")
    shifted = decode(Node([("t", Node(fields, start_idx=7))])).get_table("t")
    assert plain == shifted == {"a": 1, "b": 2, "c": "z"}


def test_empty_node_decodes_to_empty_dict():
    b = decode(Node([("t", Node([], mode="num"))]))
    assert b.get_table("t") == {}


# ---- cell widths and addressing modes ---------------------------------------
@pytest.mark.parametrize("vt", [1, 3, 5])
def test_all_cell_widths(vt):
    b = decode(Node([("t", Node([("v", num("u16", 4242))], vt=vt))]))
    assert b.get_table("t") == {"v": 4242}


@pytest.mark.parametrize("back", [False, True, "alternate"])
def test_forward_and_backward_addressing_agree(back):
    fields = [("p", num("u16", 2000)), ("n", text("Spndle")), ("f", flag(True)),
              ("d", num("f64", 12500.0)), ("sub", Node([("k", num("u8", 3))]))]
    b = decode(Node([("t", Node(fields, back=back))]))
    assert b.get_table("t") == {"p": 2000, "n": "Spndle", "f": True,
                                "d": 12500.0, "sub": {"k": 3}}


# ---- table lookup -----------------------------------------------------------
def test_table_names_lists_the_root_keys():
    b = decode(Node([("t_warship", Node([("a", num("u8", 1))])),
                     ("base.t_hero_base", Node([("b", num("u8", 2))]))]))
    assert b.table_names() == ["t_warship", "base.t_hero_base"]


def test_get_table_resolves_the_base_prefix_either_way():
    b = decode(Node([("base.t_hero_base", Node([("b", num("u8", 2))]))]))
    assert b.get_table("t_hero_base") == {"b": 2}
    assert b.get_table("base.t_hero_base") == {"b": 2}


def test_get_table_raises_keyerror_when_missing():
    b = decode(Node([("t", Node([("a", num("u8", 1))]))]))
    with pytest.raises(KeyError):
        b.get_table("nope")


def test_get_table_rejects_a_non_table_entry():
    b = decode(Node([("t", num("u8", 1))]))
    with pytest.raises(AssertionError):
        b.get_table("t")


def test_deep_nesting_is_truncated_not_recursed_forever():
    inner = Node([("v", num("u8", 1))])
    for _ in range(50):
        inner = Node([("next", inner)])
    out = decode(Node([("t", inner)])).get_table("t")
    depth = 0
    while "next" in out:
        out = out["next"]
        depth += 1
    assert "__truncated__" in out
    assert depth == 41  # node_to_py bails at _depth > 40


# ---- known limitation -------------------------------------------------------
def test_string_keys_over_128_bytes_are_not_detected():
    """Documents a real limitation of the string-vs-number key heuristic.

    The file does not record which accessor the game uses, so `Bdd.keys`
    infers string mode by checking that the offset slice resolves to pool
    strings -- and `_valid_stroff` caps a key at 128 bytes. A longer key
    fails the check and the node falls back to the numeric reading, which
    for a start_idx of 0 yields no entries at all rather than an error.
    """
    b = decode(Node([("t", Node([("k" * 200, num("u8", 1))]))]))
    assert b.get_table("t") == {}


# ---- CLI --------------------------------------------------------------------
def test_cli_list(tmp_path, capsys):
    p = tmp_path / "pmdata.bin"
    p.write_bytes(build(Node([("t_warship", Node([("a", num("u8", 1))])),
                              ("t_hero_base", Node([("b", num("u8", 2))]))])))
    decode_bdd.main(["-f", str(p), "--list"])
    assert capsys.readouterr().out.split() == ["t_warship", "t_hero_base"]


def test_cli_exports_named_tables(tmp_path):
    p = tmp_path / "pmdata.bin"
    row = Node([("Power", num("u16", 2000))])
    p.write_bytes(build(Node([("t_warship", Node([(1100101, row)], mode="num"))])))
    out = tmp_path / "out"
    decode_bdd.main(["-f", str(p), "-o", str(out), "t_warship"])
    written = json.loads((out / "t_warship.json").read_text(encoding="utf-8"))
    assert written == {"1100101": {"Power": 2000}}


def test_cli_all_strips_the_base_prefix_from_filenames(tmp_path):
    p = tmp_path / "pmdata.bin"
    p.write_bytes(build(Node([("base.t_hero_base", Node([("b", num("u8", 2))]))])))
    out = tmp_path / "out"
    decode_bdd.main(["-f", str(p), "-o", str(out), "--all"])
    assert json.loads((out / "t_hero_base.json").read_text(encoding="utf-8")) == {"b": 2}


def test_cli_reports_a_missing_table_without_failing(tmp_path, capsys):
    p = tmp_path / "pmdata.bin"
    p.write_bytes(build(Node([("t_warship", Node([("a", num("u8", 1))]))])))
    out = tmp_path / "out"
    decode_bdd.main(["-f", str(p), "-o", str(out), "t_warship", "t_nope"])
    assert "t_nope: not found" in capsys.readouterr().err
    assert (out / "t_warship.json").exists()


def test_resolve_bin_prefers_the_argument_then_the_env(monkeypatch, tmp_path):
    explicit = tmp_path / "explicit.bin"
    env = tmp_path / "env.bin"
    for f in (explicit, env):
        f.write_bytes(b"")
    monkeypatch.setenv("FGF_PMDATA", str(env))
    assert decode_bdd.resolve_bin(str(explicit)) == str(explicit)
    assert decode_bdd.resolve_bin(None) == str(env)


@pytest.mark.parametrize("source", ["arg", "env"])
def test_a_path_that_does_not_exist_here_is_a_clean_error(monkeypatch, tmp_path, source):
    """A Windows path carried into a cloud session or CI must not traceback."""
    missing = r"C:\Users\cnoji\AppData\LocalLow\Funplus\pmdata.bin"
    monkeypatch.delenv("FGF_PMDATA", raising=False)
    if source == "env":
        monkeypatch.setenv("FGF_PMDATA", missing)
    with pytest.raises(SystemExit) as e:
        decode_bdd.resolve_bin(missing if source == "arg" else None)
    assert "does not exist here" in str(e.value)


def test_resolve_bin_errors_when_nothing_is_found(monkeypatch, tmp_path):
    monkeypatch.delenv("FGF_PMDATA", raising=False)
    monkeypatch.setenv("USERPROFILE", str(tmp_path))
    with pytest.raises(SystemExit):
        decode_bdd.resolve_bin(None)


# ---- glob selection and manifest --------------------------------------------
def _pack(tmp_path):
    """A pack with a few plausibly-named tables to select from."""
    p = tmp_path / "pmdata.bin"
    p.write_bytes(build(Node([
        ("t_warship", Node([(1100101, Node([("Power", num("u16", 2000)),
                                            ("DamageType", num("u8", 2))]))], mode="num")),
        ("t_skill_base", Node([(10001010, Node([("Ratio", num("u16", 12500))]))], mode="num")),
        ("t_skill_effect", Node([(1, Node([("Kind", text("dot"))]))], mode="num")),
        ("base.t_attr", Node([("10", text("hp"))])),
    ])))
    return p


def test_glob_selects_matching_tables(tmp_path):
    out = tmp_path / "out"
    decode_bdd.main(["-f", str(_pack(tmp_path)), "-o", str(out), "t_skill_*"])
    assert sorted(f.name for f in out.iterdir()) == ["t_skill_base.json",
                                                     "t_skill_effect.json"]


def test_glob_matches_with_or_without_the_base_prefix(tmp_path):
    out = tmp_path / "out"
    decode_bdd.main(["-f", str(_pack(tmp_path)), "-o", str(out), "*attr*"])
    assert [f.name for f in out.iterdir()] == ["t_attr.json"]


def test_glob_without_a_match_is_reported(tmp_path, capsys):
    out = tmp_path / "out"
    decode_bdd.main(["-f", str(_pack(tmp_path)), "-o", str(out), "t_nope_*", "t_warship"])
    assert "t_nope_*: no table matches" in capsys.readouterr().err
    assert (out / "t_warship.json").exists()


def test_manifest_indexes_every_table_not_just_exported_ones(tmp_path):
    out = tmp_path / "out"
    decode_bdd.main(["-f", str(_pack(tmp_path)), "-o", str(out), "--manifest", "t_warship"])
    m = json.loads((out / "_manifest.json").read_text(encoding="utf-8"))
    assert m["tables"] == 4
    assert m["rows"] == 4
    assert set(m["index"]) == {"t_warship", "t_skill_base", "t_skill_effect", "base.t_attr"}
    # only the requested table is actually exported
    assert sorted(f.name for f in out.iterdir()) == ["_manifest.json", "t_warship.json"]


def test_manifest_records_shape_and_field_types(tmp_path):
    out = tmp_path / "out"
    decode_bdd.main(["-f", str(_pack(tmp_path)), "-o", str(out), "--manifest"])
    m = json.loads((out / "_manifest.json").read_text(encoding="utf-8"))["index"]
    assert m["t_warship"] == {
        "rows": 1, "key_type": "number", "row_type": "node",
        "fields": {"Power": "number", "DamageType": "number"},
    }
    assert m["base.t_attr"]["key_type"] == "string"
    assert m["base.t_attr"]["row_type"] == "scalar"
    assert m["t_skill_effect"]["fields"] == {"Kind": "string"}


def test_manifest_alone_exports_nothing(tmp_path):
    out = tmp_path / "out"
    decode_bdd.main(["-f", str(_pack(tmp_path)), "-o", str(out), "--manifest"])
    assert [f.name for f in out.iterdir()] == ["_manifest.json"]
