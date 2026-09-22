# CLAUDE.md

Decoder for Foundation: Galactic Frontier's `pmdata.bin` (the game's `bdd`
binary config format) and `luapack.bin`. Format spec: the module docstring in
`decode_bdd.py`, with the full reverse-engineering write-up in `FINDINGS.md`.

## The one thing that isn't obvious

**The game data files are not in this repo and never will be.** `*.bin` is
git-ignored — `pmdata.bin` and `luapack.bin` are the publisher's copyrighted
data and users supply their own copy. So a fresh checkout (a cloud session, a
CI runner) has *no input to run the decoders against*. Never commit one, and
don't assume a path like `pmdata.bin` exists.

Validate changes with the synthetic fixtures instead:

```bash
pip install -r requirements-dev.txt
python -m pytest tests -q          # ~40 tests, <1s, no game data needed
```

`tests/bdd_writer.py` is a small *writer* for the `bdd` format — the inverse of
the decoder. It builds valid files in memory covering every value type, both
key modes, all three value-cell widths, both addressing modes and non-zero
`start_idx`. **If you change decoding logic, add a fixture that fails before
the change and passes after.** That is the only regression signal available
without the game's data.

## Running against real data

```bash
export FGF_PMDATA=/path/to/pmdata.bin   # or pass -f
python decode_bdd.py --list             # 844 tables
python decode_bdd.py --all -o out/      # 85,038 rows, ~5s
```

`-f` wins, then `$FGF_PMDATA` / `$FGF_LUAPACK`, then the known Windows install
paths. Don't reintroduce a hardcoded absolute path as a default.

## Conventions

- `decode_bdd.py` is **stdlib-only** — keep it that way. `lz4` is a dep of
  `extract_luapack.py` only.
- The format spec lives in two places (the `decode_bdd.py` docstring and
  `FINDINGS.md`). If the understanding of the format changes, update both.
- Known fragility: the file does not record whether a node is string- or
  number-keyed, so `Bdd.keys()` *infers* it by checking that the offset slice
  resolves to pool strings (`_valid_stroff`, keys capped at 128 bytes). A
  misdetected node decodes as empty rather than raising —
  `test_string_keys_over_128_bytes_are_not_detected` pins the current
  behaviour. Touch this heuristic carefully.

## What can't run here

`ghidra_scripts/` + `run_ghidra_bddfmt.ps1` need Windows, a local Ghidra
install and the game's `xlua.dll` — they are how the format was originally
derived and are not runnable in CI or a cloud container. The decompiler output
they produced is preserved in `reference/ghidra_logs/`; read that instead of
trying to re-run them.
