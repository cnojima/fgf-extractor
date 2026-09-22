# FGF data-extraction findings

## TL;DR
The ship/monster/hero **stat tables are NOT in the encrypted AssetBundles.**
They live in **`pmdata.bin`** — a ~13.8 MB **plaintext, unencrypted** config file.
The entire UnityCN bundle-decryption effort (memory scans, ScyllaHide,
wait-for-native-debugger, AES hunts) was chasing the wrong target; those bundles
hold art/models/scenes.

## What was decoded (delivered)
- **`luapack.bin` — FULLY DECODED.** Reverse-engineered the LuaPack container:
  - 12-byte header: `magic=0x2a7f6604`, then 2 u32 fields.
  - Index: N × `FileHead{ NameHash u32, StartIdx u32, Size u32 }` from off 12
    (N found by StartIdx tiling; here N=10879).
  - Data region `[12+N*12 , EOF]`: each file is an **LZ4-block** at
    `[StartIdx : StartIdx+Size]`, decompress into a large buffer.
  - Extractor: `keyrecovery/extract_luapack.py` -> `keyrecovery/luapack_lua/`
    (10,879 clean Lua files, ~91 MB). Files are hash-named (paths not stored).

## Where the stats are, and how the game reads them
Decoded Lua shows the config-access chain:
```
ConfigDataUtils:warshipCfg()  ->  _loadDeginData("t_warship")
  -> BddDataMgr:getTable("<ver>.t_warship", "t_warship")
  -> bdd.load_from_file( pmdata.bin )       -- native "bdd" module (xLua C)
```
Stat tables present in `pmdata.bin` (verified by name):
`t_warship`, `t_ship`, `t_mothership_*` (flagship), `t_monster_slg_base`,
`t_monster_slg_base_new` (monsters), `t_hero_base` (champions), with fields like
`firepower`, `attack`, `defense`. Ship names by weapon-tier are in the string
pool (e.g. `光束T1 SpndleK93`, `动能T2 Beggar`).

`pmdata.bin` locations (3 copies, identical role):
- `%LOCALLOW%\Funplus\Foundation_ Galactic Frontier\official\Patch\pmdata.bin`
- `...\Patch\Data\pmdata.bin`
- `<game>\ngame\<ver>\launcher_Data\StreamingAssets\pmdata.bin`

## The `bdd` binary format — FULLY DECODED (`decode_bdd.py`)
Reverse-engineered from xlua.dll (loader `FUN_18007df50`, walkers
`FUN_18007ed40`/`FUN_18007ef40`, value builder `FUN_18007f410`, decoder tables
`DAT_180454478`/`PTR_LAB_180454488`). `decode_bdd.py` is a **standalone Python
decoder — no running game needed**, reads `pmdata.bin` directly.

- **`python decode_bdd.py --list`** — list all 844 table names.
- **`python decode_bdd.py t_warship t_hero_base ...`** — export named tables to
  `tables_json/<name>.json`. No args = the 3 headline tables. `--all` = everything.
- Verified: **all 844 tables / 85,038 rows decode with zero errors (~5s).**
  Spot-checked correct: `t_warship` (63 ships, IDs 1100101…, fields Power/AtkCD/
  DamageRatio + nested `Attrs`), `t_hero_base` (20), `t_monster_slg_base_new` (3110).

Format (offsets are byte offsets into the file; game loads it raw and reads in place):
```
root handle = u32 @ (filesize-4)
node @ H:   descOff=u32@H;  K=u32@descOff;  typeBase=i32@descOff+4;  valBlock=u32@descOff+8
keyblock @ K:  kt=u8@K+4;  A=i32@K+5;  B=i32@K+9
   string-keyed: count=A-B; keys = cstr@(u32 @ K+0xd + size[kt]*B + i*4);  global idx = B+1+i
   number-keyed: count=B;   keys = decode[kt](K+0xd + size[kt]*i);         global idx = i+1
   (mode isn't stored in the file — it's implied by which accessor the game calls;
    decode_bdd infers string-keyed when the 4-byte-offset slice resolves to pool strings)
entry value (global idx gi):
   typebyte = u8@(typeBase-1+gi);  it = typebyte<100 ? typebyte : typebyte-100
   vt = u8@valBlock (1->u8,3->u16,5->u32);  cellPos = valBlock+1+size[vt]*(gi-1)
   raw = uint(size[vt])@cellPos;  dataOff = typebyte<100 ? raw+H : cellPos-raw
   it<7: number decode[it](dataOff)   it==7: string cstr@(u32@dataOff)
   it==8: nested node (u32@dataOff)   it==9: bool (u8@dataOff==1)
size[]  = [8,1,1,2,2,4,4,4,4,1]
decode[0..6] = f64,u8,i8,u16,i16,u32,i32
```

## Reproduce / where everything is (fresh-session handoff)
Git branch: `paddle-ocr-win32`. The whole data-extraction effort lives under
`keyrecovery/` (untracked — not committed).

**Deliverables (standalone, no running game):**
- `extracted/decode_bdd.py` — the bdd decoder (spec in its module docstring).
- `extracted/extract_luapack.py` — luapack.bin -> `luapack_lua/` (10,879 Lua files).
- `extracted/tables_json/` — sample exports (t_warship, t_hero_base, t_monster_slg_base_new).

**Source binary + Ghidra (only needed to re-derive the format):**
- xlua.dll: `D:\FunPlus\Foundation Galactic Frontier\ngame\1.1.142.209741.234996\launcher_Data\Plugins\x86_64\xlua.dll` (image base `0x180000000`).
- Ghidra project already imported+analyzed: `keyrecovery/ghidra_project/xlua_analysis.gpr`.
- Decompile driver: `extracted/ghidra_scripts/DecompileBddFmt.java` (+`DecompileBdd.java`),
  run via `extracted/run_ghidra_bddfmt.ps1` (positional `<projdir> <projname> -process xlua.dll`).
- Decompilation output captured in `reference/ghidra_logs/{ghidra_bdd,ghidra_bddfmt,ghidra_parser}.log`.

**xlua.dll `bdd` module — key function RVAs (add image base 0x180000000):**
`get_start_handle 0x78880`, `get_value_by_num_key 0x78bd0`, `get_str_by_addr 0x788c0`,
`get_value_by_str_addr_key 0x78c80`, `get_ud_by_addr 0x78af0`, `next_num_key 0x79530`,
`load_from_file 0x79290`. Internals: loader/parser `FUN_18007df50` (0x7df50) — sets
`bddState[0]=fileBase`, root handle at `bddState+0x170` = `u32@(filesize-4)`; num-key
walker `FUN_18007ed40` (0x7ed40); str-key walker `FUN_18007ef40` (0x7ef40); key
binary-search `FUN_18007f620` (0x7f620); value builder `FUN_18007f410` (0x7f410);
size table `DAT_180454478 = [8,1,1,2,2,4,4,4,4,1]`; decoder fn table
`PTR_LAB_180454488` (codes 0..6 = f64,u8,i8,u16,i16,u32,i32).

**Config-access chain in decoded Lua** (files are hash-named; paths not stored):
- `reference/lua/ConfigDataUtils.95bc8735.lua` = ConfigDataUtils — `_loadDeginData(tableName)`
  (~line 8307); accessors e.g. `warshipCfg()->"t_warship"`, `hero_baseCfg()->"t_hero_base"`,
  `monster_slg_base_new_Cfg()->"t_monster_slg_base_new"`.
- `reference/lua/BddDataMgr.7a2e2bcf.lua` = BddDataMgr — `require("bdd")`, `bdd.load_from_file(GetBddDataPath())`.
  (Both extracted from `luapack.bin` by `extract_luapack.py`; full dump is git-ignored.)

**LuaPack (luapack.bin) container format** (already reverse-engineered):
12-byte header `magic=0x2a7f6604` + 2 u32; then N×`FileHead{NameHash u32, StartIdx u32,
Size u32}` from off 12 (N=10879 by StartIdx tiling); data `[12+N*12, EOF]`, each file an
LZ4 block `[StartIdx:StartIdx+Size]`.

**Dead end (do not repeat):** the original handoff task — recovering the UnityCN
AssetBundle AES-128 key via memory scans / ScyllaHide / wait-for-native-debugger /
AES-NI keygen hunts — was chasing the wrong target. The stat tables are plaintext in
pmdata.bin; the encrypted bundles hold art/models/scenes. `boot.config` was restored to
original (`wait-for-native-debugger=0`; backup at `keyrecovery/boot.config.backup`).

**Alternate finish (unused, if the format ever changes):** runtime dump via the game's
own decoder — inject a small Lua file that calls `ConfigDataUtils:warshipCfg()` +
`bdd2DeepTable`/`TableDump` to write JSON, repack luapack.bin, run once. Requires the
elevated game running; watch for a pack integrity check. Not needed while `decode_bdd.py`
works.

## Other tooling banked in `keyrecovery/`
- `tools/il2cppdumper/out/` — full IL2CPP method map (dump.cs, script.json,
  stringliteral.json) for GameAssembly.dll (metadata was unencrypted).
- Il2CppDumper, Ghidra 12.1.3, WinDbg, ScyllaHide (all under `tools/`).
