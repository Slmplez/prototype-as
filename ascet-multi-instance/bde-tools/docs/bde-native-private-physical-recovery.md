# PRIVATE composite recovery with uncertain physical steps

2026-10-03 continuation: Dictionary/Set/Array first-last physical recovery now
passes three same-candidate public-bookended rounds / 144 sessions; collections03
also passes 24 OrderedCollection regressions. This supersedes the historical
statements below that all non-ordered online positives are missing. It does not
prove Dictionary middle faults, inside-primitive failures or production inverse.
[Implementation, precise scope and evidence](bde-native-private-collection-recovery.md).

Status: implemented and verified in three public-bookended PRIVATE rounds.
This protocol operates only on
retained, memo-owned graphical copies. It does not enable production model
inverse, Class signature writes, native archives, restart recovery or complete
BDE delivery. The original display01 restoration hold remains enforced.

## Verified Results

[Final physical04](../analysis/bde-experiments/2026-10-03/bde-private-physical-04/result.json)
passes three unchanged-source rounds with 24 sessions each. Every public bookend
covers 4 owners / 7 scopes / 31 nodes / 59 pins / 23 unique edges. All original
public observations and database/process bindings remain unchanged.

| Check | Three Rounds |
|---|---:|
| Private sessions / native injected exceptions | 72 / 72 |
| Dedicated bridge deaths / actual client RSTs | 72 / 72 |
| Original-material lookups / read-only classifications | 72 / 72 |
| Forward primitives / logical recovery units | 828 / 792 |
| Physical active-cell primitives / conflict and replay refusals | 1638 / 468 |

An independently introduced x edit survives every recovery. Reset then restores
complete CURRENT before release; all registry sizes are 0->0. Physical schedules
contain 7, 20, 21 or 43 real primitives. There are no reported model setters,
stores, new assertions or source drift across the 47 candidate source files.
This is one connected pin per owner, not the separate 42-pin regression matrix.

These 47 source hashes are the physical04 candidate. Subsequent host completion-
file publication changes do not change the native physical templates; their
current bridge is verified separately, without rebinding old descriptors.

Each 24-session diagnostic round takes 168961.618-172666.456 ms, includes repeated
host startup, verbose whole-CURRENT observation and WAL/checksum processing, and
excludes public bookends. Offline eval runs concurrently in part. Proxy records
33942-33975 request frames and 51333707-51664101 response bytes per round, with
zero parse errors/incomplete bytes. Request/response directions are counted
separately; no per-ID pairing claim. These are not production latency samples.

[Offline103](../analysis/bde-experiments/2026-10-03/offline-contract-103/result.json)
passes 681 Python / 21 Doge tests / 1042 assertions / version, with 6 live skips
unverified. Twenty-one physical plan/recorded-evidence groups include unknown
metadata, before/after, binding, rights, coverage and false-classification
negatives. Offline Array/Dictionary/Set plans are not online positive cases.
[Safety18](../analysis/bde-experiments/2026-10-03/bde-continuation-safety-18/result.json)
preserves 29 original failed-edit files and the hold, restored=false.

[Bulk current08 regression](../analysis/bde-experiments/2026-10-03/bde-native-private-current-08/result.json)
passes one complete public-bookended round/42 connected pins/126 completion faults
and recoveries, including the existing same-port peer/dependency/prepare refusal
matrix. [Host-exit09 regression](../analysis/bde-experiments/2026-10-03/bde-private-host-exit-09/result.json)
passes12 sessions/24 actual bridge deaths with the atomic completion publisher.
Failed host-exit08 and its separate exact original-material cleanup are retained.
[Offline104](../analysis/bde-experiments/2026-10-03/offline-contract-104/result.json)
passes683 Python/21 Doge/1042 assertions/version,6 live skips;two new local-file
observation/foreign-signal tests are offline only.

[Current bridge physical05](../analysis/bde-experiments/2026-10-03/bde-private-physical-05/result.json)
passes one additional unchanged-source/public-bookended round with24 sessions/
24 exceptions,deaths,RSTs,lookups and classifications,276 forward primitives/
264 recovery units/552 physical primitives/156 refusals. Registry0->0;47 current
candidate hashes match;0 model writes/new assertions/drift. Diagnostic167685.157ms,
34045 request frames/51582581 response bytes;not production latency. Native physical
templates are unchanged from the three-round physical04 study;the updated bridge
publisher and pending-reply guard are verified in this separate regression. Do not
describe04's older descriptors as matching the later full source manifest.

## Execution And Observation

`bde_native_private_execution.st` separates a logical recovery cell from its
physical operations. Fields and Arrays use exact indexed puts; Dictionaries,
Sets and OrderedCollections expose each actual removal/insertion separately.
OrderedCollection rebuilding can temporarily remove an ancestor from a parent
collection. Only the active collection's logical membership uses its retained
pre-recovery contents during this transition. Its actual contents must still
match the exact physical prefix. Other owner/manager/collection bindings,
connection-point references, already restored cells and remaining touched cells
are rechecked before each operation. Full lineage is required at cell completion.

| State | Allowed Progress |
|---|---|
| `physical_recovery_prepared` | Exact next physical index with matching CURRENT |
| `physical_recovery_started` | Read-only observation and exact reconciliation |
| Reconciled `applied` | Advance past the observed operation; never replay it |
| Reconciled `not_applied` | Explicit execution of the still-unperformed operation |
| CURRENT matches neither saved image | Refuse; preserve original material |
| `recovered` | Preserve independent edits; release only after complete CURRENT |

Before the actual primitive, native material retains the exact target before
and predicted after images plus an awaiting index. A native exception leaves
the operation unknown. Reconciliation checks the active actual image, other
touched units and native lineage without executing a model/graphical setter.
It only updates recovery bookkeeping. An independently edited field survives.
Observing identical values cannot prove an absence of external ABA writes;
this experiment does not claim an external mutation counter or GUI isolation.

`bd_private_physical_journal.py` reconstructs the physical prefix from immutable
WAL events. It checks the single original registry binding, exact instruction,
logical/physical counters, saved images, actual collected diff, independent x,
private-only flags and native release. Unknown lookup/observation must retain
`actual_observation_complete=false`; copying valid graph values while falsifying
pending metadata or model/archive rights refuses. This is an evidence auditor,
not a native archive loader.

## Experiment And Failures

`bde_private_physical_experiment.py` samples one connected pin per owner. Each
owner has before/after fault windows at first/middle/final physical steps of an
actual multi-write OrderedCollection recovery unit. After the native exception,
the Python coordinator kills only its dedicated C# bridge, then looks up the
original native wire under the unchanged epoch/database/owner/source descriptor.
It introduces an independent x edit and a distinct third collection image;
unresolved replay and conflicting reconciliation must refuse. Resetting that
exact probe allows read-only classification and continuation.

Faults are injected immediately before a primitive or after its return before
observation. These are real partial composite recoveries and dedicated bridge
deaths, not failure inside a VM primitive or proof of a naturally throwing
setter. Dictionary/Set/Array online positives remain separately required.
Bookends cover all original public owners/scopes; source hashes, actual Cebra
frames/bytes and retained failures are recorded. Verbose study duration is not
production read/edit latency or a one-second acceptance result.

`physical-01` stopped because its original strict lineage guard rejected the
temporary missing ancestor during collection clearing. A separately recorded
supplement compensated the exact confirmed prefix, used a minimal native
original-reference recovery, preserved the independent field and released the
original registry. The original run remains failed.

`physical-02` exposed a conflict-probe collision: adding a retained member
restored the saved before image, so native `not_applied` classification was
valid. A separate supplement reset and compensated the exact probe, then
continued the original physical schedule and released its registry. The probe
now explicitly chooses an image distinct from both saved images.

Supplemental repair uses a separate fixed helper with its own source evidence
and full original observation precondition. It uses decompiled
`BlockContextTemplate>>parent` and indexed context access to locate the original
retained executor/material, verifies exact original binding/copy lineage, and
does not replace the wire/ref table or rebind the original descriptor/WAL. It is
a narrowly scoped failed-study repair, not an agent tool or general recovery API.

```powershell
E:\PYTHON\python.exe scripts\bde_private_physical_experiment.py `
  --component 'BDE_Tool_Experiments\Trial_GeneralClass_20261002_050256_d0e048' `
  --repeats 3 `
  --output analysis\bde-experiments\2026-10-03\fresh-private-physical
```

Freeze source while material is outstanding. Preserve original descriptors and
failure WAL. Production model dependency guards, actual setter/store faults,
coordinator/ASCET crash, archives/reload, genuine display01 recovery, shared Class
creation/UI, AEB_Core/FLOW and final package remain required.
