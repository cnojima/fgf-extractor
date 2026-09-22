# FGF stat-table extractor

Extract the ship / monster / hero stat tables from **Foundation: Galactic
Frontier** (Funplus) as structured JSON, straight from the game's plaintext
`pmdata.bin` config file. **No running game, no OCR, no elevation.**

The stat tables are **not** in the encrypted AssetBundles — they live in
`pmdata.bin`, a ~13.8 MB plaintext file in the game's native `bdd` binary
format. `decode_bdd.py` is a standalone decoder of that format (reverse-
engineered from `xlua.dll`; full write-up in [FINDINGS.md](FINDINGS.md)).

## Quick start

```bash
pip install -r requirements.txt   # only needed for extract_luapack.py; the decoder is stdlib-only
```

Point the decoder at your copy of `pmdata.bin` (find it at one of):

- `%LOCALLOW%\Funplus\Foundation_ Galactic Frontier\official\Patch\pmdata.bin`
- `...\Patch\Data\pmdata.bin`
- `<game>\ngame\<ver>\launcher_Data\StreamingAssets\pmdata.bin`

Either pass `-f`, or set `FGF_PMDATA` (and `FGF_LUAPACK`) once:

```bash
export FGF_PMDATA=/path/to/pmdata.bin
```

```bash
# list every table (844 of them)
python decode_bdd.py -f /path/to/pmdata.bin --list

# export specific tables to ./tables_json/<name>.json
python decode_bdd.py -f /path/to/pmdata.bin t_warship t_hero_base t_monster_slg_base_new

# export everything
python decode_bdd.py -f /path/to/pmdata.bin --all -o out/
```

With no table arguments it exports the three headline tables. With no `-f` it
falls back to `$FGF_PMDATA`, then to the `%LOCALLOW%` paths above.

Verified: **all 844 tables / 85,038 rows decode with zero errors (~5 s).**

## Tests

The game's data files aren't in the repo, so the suite builds its own `bdd` and
LuaPack files with `tests/bdd_writer.py` — every value type, both key modes, all
three cell widths, both addressing modes. No game data required:

```bash
pip install -r requirements-dev.txt
python -m pytest tests -q
```

## What's here

| Path | What it is |
|---|---|
| `decode_bdd.py` | The decoder. Format spec is in its module docstring + `FINDINGS.md`. |
| `extract_luapack.py` | Unpacks `luapack.bin` → 10,879 Lua files (the game's Lua source). |
| `tables_json/` | Sample exports: `t_warship` (63), `t_hero_base` (20), `t_monster_slg_base_new` (3110). |
| `FINDINGS.md` | Full reverse-engineering write-up: bdd format, LuaPack format, xlua.dll RVAs, method. |
| `tests/` | Round-trip tests + `bdd_writer.py`, a synthetic writer for the `bdd` format. |
| `ghidra_scripts/` | Ghidra headless decompile scripts used to derive the format (Windows + `xlua.dll`). |
| `run_ghidra_bddfmt.ps1` | Runner for the decompile scripts (only needed to re-derive the format). |
| `reference/ghidra_logs/` | Decompiler output the format spec was read from. |
| `reference/lua/` | The two key decoded Lua files: `ConfigDataUtils` and `BddDataMgr` (the config-access chain). |

## Data shape

Each table is a JSON object keyed by row id. String-keyed tables (like the
root and each row's fields) become plain objects; number-keyed tables (like
`t_warship`, keyed by ship id) are objects keyed by the stringified id. Nested
`bdd` nodes (e.g. a warship's `Attrs`) decode recursively. Value types: number
(f64/i8–u32), string, nested node, bool.

```jsonc
// t_warship.json (excerpt)
"1100101": {
  "Acceleration": 7, "AtkCD": 500, "Power": 2000, "DamageRatio": 12500,
  "Attrs": { "1": {"Key": 10, "Value": 16000}, "2": {"Key": 21, "Value": 349}, ... }
}
```

## Note on game data

`pmdata.bin` / `luapack.bin` are the game's own files — you supply your own
copy; they are git-ignored here.
