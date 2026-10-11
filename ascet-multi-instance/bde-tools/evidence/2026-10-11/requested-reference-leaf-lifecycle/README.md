# Explicit original targets and bounded reference leaf lifecycle

This is an incremental T3.1 checkpoint. `result.json` independently recomputes
native replies and original materials; `full_delivery=false`. T5.1 and the
complete Message lifecycle matrix remain open (0/60). Production v3 apply and
inverse remain disabled.

Implemented:

- Fresh prepare accepts at most 16 unique, exact target identity keys. The
  finite collector freezes existing outgoing targets union requested targets,
  including exact original CTError101 absence. Current cannot invent before.
- Requested coverage is checked by native material and the Python adapter.
  The final v3 prepare/inspect/discard and both write refusals passed; full
  public/native graph and layout observations were unchanged.
- An existing Module DBReferenceList was actually written once using an exact
  copy. Independent confirmation and a fresh read found full raw equality.
- A source DBReferenceList originally absent was actually created as an empty
  64-byte native factory record, then deleted once after full exact readback
  and same-owner guarding. Full 13-row before/after and a fresh read matched,
  including absence and unparsed tails; dirty editors remained zero.
- The fixed C# research entrypoints share identity/connection/release handling.
  Original before is fsynced before READY; the parent establishes pending before
  a fixed writer command. Unknown writes are never retried. Zero-leaf typed
  refusals require complete terminal proof and both zero call counters.

The empty record uses fixed header 60 + count 4. Its legacy `blobSize=0` excludes
the count; its semantic size and actual allocated size are 64. Header identity
comes from the exact existing source key, not another object's record. Factory
and leaf call shapes were audited from reconstructed ASDBase sources; that
audit does not claim original-source or general runtime equivalence.

| Evidence directory | Verified scope | Request / response frames |
|---|---|---|
| `bde-requested-reference-final-read-01` | Stable requested original union | See result.json |
| `bde-requested-connect-final-preflight-01` | Same fresh production before, refusal, discard | See result.json |
| `bde-reference-leaf-noop-live-03` + `bde-reference-leaf-noop-confirm-01` | One existing record write, unchanged raw readback | 58 / 57 |
| `bde-reference-leaf-lifecycle-live-02` + `bde-reference-leaf-lifecycle-confirm-01` | One empty create, one exact remove, original absence | 58 / 57 |

The final requested read has 2 owners, 11 reciprocal targets, 15 reads,
13 existing + 2 absent records, 3,037 semantic / 4,473 raw bytes and zero
inconsistent membership checks. The final targeted offline run passes 167
tests; its complete `controls.log` is saved here. Tests are synthetic contract
controls, separately reported from live experiments, and not added to past
overlapping counts. Source/hash census is recorded in result.json.

Failures remain preserved. The first lifecycle run used identity comparison
for detached dictionaries and was refused before any leaf call; a terminal
zero-leaf confirmation cleared only that pending marker. The second lifecycle
run completed both leaf calls, but the verifier initially expected a leaf
object whereas deletion returns SmallInteger. Its original failed verdict
remains; independent confirmation used the complete actual reply and a fresh
read without replaying a writer. The earlier no-op had a similar return-class
validator failure. Preparation/stdout/CTError/source-read failures are also
retained in their original directories. A shell test attempted from the wrong
cwd failed to import; the corrected final run from scripts passed.

After the earlier private ToolAPI fault, the user explicitly authorized one
private recovery restart: PID40652 became PID56068, epoch
`56068/2026-10-11T05:04:48.9951162Z`. The already-existing isolated database was
opened through the existing public host. Normal business ASCET was untouched.
Old pending/epoch evidence remains; no old token was rebound or edit replayed.
No further ASCET restart was performed. The hourly automation remains PAUSED.

Reproduce offline recomputation in the original workspace with a fresh output:

```powershell
E:\PYTHON\python.exe -X utf8 scripts\bde_reference_leaf_increment.py --output analysis\bde-experiments\2026-10-11\bde-reference-leaf-lifecycle-recomputed-01
```

Live read, and preparation only (same already-running isolated instance):

```powershell
E:\PYTHON\python.exe -X utf8 scripts\bde_connect_compile_probe.py --port 32631 --pid 56068 --component 'BDE_Tool_Experiments\Trial_ConnectReferences_20261011_034859_7419e31d' --persistent-references --target-key 0101de0000000000ea070a020c119faab00e0000 --target-key ffffffffffffffffffffffffffffffffffffffff --output analysis\bde-experiments\2026-10-11\requested-read-fresh
E:\PYTHON\python.exe -X utf8 scripts\bde_connect_reference_preflight.py --read-probe analysis\bde-experiments\2026-10-11\requested-read-fresh --persistent-references --verify-host-write-gate --output analysis\bde-experiments\2026-10-11\requested-preflight-fresh
```

The lifecycle research command takes a successful owned read proof and a fresh
output. It performs the two explicitly described leaf calls once. Do not rerun
it as recovery, against an old epoch, a pending write or a non-isolated model.
Native binaries, ETAS runtime/DLL/database, WAL, tokens and pending state are
not part of the public source evidence package.

Remaining work: nonempty/resized record lifecycle, complete finite persistent
write/inverse and conflict handling, actual attached material, real connection
edit/diff/native BDE/conflict/revert, disconnect/delete, full Message and
Enum/Class/Hierarchy/cross-Module/A2A/XPass, Doge/AEB_Core and final restoration.
No commit/flush/crash/reopen durability was established by these leaf probes.
