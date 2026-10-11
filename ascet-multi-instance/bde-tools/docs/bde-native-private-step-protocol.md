# Fixed private Cebra steps and descriptive CURRENT WAL

Follow-up: same-epoch original-material lookup and actual dedicated C# bridge
termination now pass three PRIVATE/public-bookended rounds; see the
[host recovery contract](bde-native-private-host-recovery.md). Results below
remain the earlier received-then-discarded application-receipt study.

Status: implemented and verified on PRIVATE heap graphs. Production edits,
transport/host/process failure recovery, durable native archives, original
display01 restoration and full BDE delivery remain INCOMPLETE.

## Protocol

The fixed preparation block captures an audited graph, deletes one connected pin
and its incident edges only in a private clone, and prepares its local inverse.
The deletion is research setup, not a production journaled mutation. Each owner
uses an actual connected pin selected from its current native graph; no pin IDs
or fixture caller lists are supplied to the executor.

Preparation returns an opaque command block. Native recovery dictionaries and
graph objects stay in its retained server-side context. The block accepts only
flat `[token, action, index]` strings: export/observe, step/recover, and the two
fixed private-field perturb/reset study commands. It rejects foreign tokens,
unknown commands and noncanonical or out-of-range indices. The command block is
not an additional agent tool and cannot accept arbitrary selectors or code.

Before each mutating command the host checks process/database identity, then
publishes a checksummed `step_started` event through the existing Class journal's
temporary-file + `Flush(true)` + rename writer. Native execution checks the exact
next index, original ancestry and CURRENT conditions before the first mutation.
Actual results and CURRENT diffs are separate events. A failed intent publication
prevents dispatch. The experiment never uses the production pending marker,
model setter/store, editor installation or global recovery registry.

`recoverNext(index)` restores one actual touched field/collection per request.
It checks both unrecovered applied cells and already recovered original cells.
Other fields survive. A collection restoration can contain several bounded
physical collection writes; it is one recovery unit, not one physical setter.
A setter/observation exception can leave `primitive_started`/`recovery_started`;
those states cannot continue or replay. Repair of such unknown states is still
unimplemented.

## Persisted Material

Export includes every memo-owned graphic field, indexed string/byte value,
collection member/order/key/value, primitive target/value and local object ref.
It also includes the original field checkpoint, exact coverage counts and
reference-only database/presentation/owner boundaries. Boundary objects cannot
be mutation targets. The artifact describes identities within the retained
native context; it does NOT serialize an executable native graph or support
deserialization/rebinding after restart. Native `durable_current_wal=false` and
`native_archive_available=false` remain truthful even when the host description
and events are flushed to disk.

Native `RBConnectionPointBranch>>removeConnection:` calls
`generateBranchingPoints`, which allocates a new Set. The private study audits
these generated collections and possible integral Point members before CURRENT,
rejects aliases to original source objects, and captures their values as well.
The original heap checkpoint is extended with unchanged new allocations so full
field/ref/collection comparison stays closed. Final14 measures 27 additional
Sets per round; generated Point positives are unverified. Earlier current06
captured the memo fields/references, not these new collections' contents.

Intermediate experiments also identify an unexpected
`SGOffsetNameGO/dynamicGOInfo` Dictionary. Decompiled `RBGraphicObject>>dynamicGOInfo`
allocates lazily; `SGOffsetNameGO>>logicFrame` calls `moveTo:`. The experiments did
not isolate every trigger of this cache change. The final protocol uses the
already audited initial projection, keeps native material opaque at the Cebra
boundary, and calls no extra layout getter after CURRENT. Unrecognized mutable
boundaries are rejected; no cache field is silently excluded from diff.

Large CURRENT/WAL artifacts stay in the experiment backend. This does not change
the six agent tools or enlarge their normal bounded read/diff responses.

## Verified Evidence

[Final remote14](../analysis/bde-experiments/2026-10-03/bde-native-private-remote-14/result.json)
passes three unchanged-source rounds. Each public before/after observation retains
4 owners, 7 scopes, 31 nodes, 59 public pins and 23 unique edges, including
Main/h1/h2/h3 and empty intermediate scopes. One connected pin per owner is
studied at first/middle/final step positions. This is four selected pins, not the
42-pin matrix of the separate bulk private study.

| Check | Per Round | Three Rounds |
|---|---:|---:|
| Private sessions | 12 | 36 |
| CURRENT retained objects across sessions | 7656 | 22968 |
| CURRENT fields across sessions | 35580 | 106740 |
| Additional native Sets | 27 | 81 |
| Executed primitives | 74 | 222 |
| Actual recovery units | 71 | 213 |
| Discarded application receipts | 24 | 72 |
| Read-only reconciliations | 24 | 72 |
| Duplicate/future/terminal refusals | 44 | 132 |
| Injected journal-publication failures, zero dispatch | 4 | 12 |

The host receives the Cebra reply, deliberately omits its application receipt,
then independently calls observe on the same retained context. It never repeats
the setter. This proves the application-receipt path only: no actual Cebra packet
loss, disconnected connection, host exit or ASCET crash was tested. Likewise the
journal fault is an injected IOException before `step_started`, not disk-full or
power-loss evidence.

The offline auditor reconstructs every single-step effect from exported CURRENT,
checks actual before/after values, closes references and coverage, and matches
recovery to the recorded touched cells. Final steps match all original private
fields/references/collections; recovery preserves a separately introduced x edit;
reset then matches complete CURRENT. Independent initial projections and exact
database/process/owner identities also match the public baseline. There are zero
model setters/stores, production edit/recovery roots, new assertions or source
drift; all 43 native candidate fingerprints match.

Middle diagnostics are 8384.644-9309.958 ms, 2461 request frames and
10077773-10093017 response bytes per round. This includes 12 verbose private
sessions and their WAL/reconciliation checks, excludes public bookends, and is
neither a production read/edit time nor one-second/P95 acceptance.

[Bulk regression current07](../analysis/bde-experiments/2026-10-03/bde-native-private-current-07/result.json)
passes the modified `recoverCurrent` path in one 42-pin/126-fault private round.
This is a regression of prior functionality, not three new bulk rounds.
[Offline100](../analysis/bde-experiments/2026-10-03/offline-contract-100/result.json)
passes 638 Python tests, 21 Doge tests, 1042 assertions and version. The 20 new
recorded-WAL negatives reject missing results, replay, wrong counters/identity,
false archive/model claims and incomplete data. Six live skips remain unverified.
[Safety16](../analysis/bde-experiments/2026-10-03/bde-continuation-safety-16/result.json)
preserves all 29 original failed-edit files and hold; restored=false.
[Ledger35](../analysis/bde-experiments/2026-10-03/bde-eval-ledger-35/report.json)
retains 28 incomplete cases with no missing evidence links.
[Candidate integrity](../analysis/bde-experiments/2026-10-03/bde-private-remote-candidate-integrity-01/result.json)
matches 353 offline, 43 remote and 43 bulk-regression source fingerprints.

remote01 retains C# bridge compilation failure;02 Set traversal;03 Smalltalk
binary precedence;04-08 unexpected dynamic Dictionary;09 opaque preparation
refusal with poor diagnostics;10-11 generated branching Set omitted;12 missing
exact SGClass owner boundary;13 native steps complete but Python audit shadowed
its original checkpoint variable. All online failures retain unchanged public
failure bookends, no model dispatch and no new assertions. None is promoted to
final acceptance.

## Reproduction And Next Work

```powershell
E:\PYTHON\python.exe scripts\bde_class_detached_projection_experiment.py `
  --component 'BDE_Tool_Experiments\Trial_GeneralClass_20261002_050256_d0e048' `
  --remote-clone --repeats 3 `
  --output analysis\bde-experiments\2026-10-03\fresh-private-remote
```

Bind retained material to explicit same-epoch durable session lookup before real
transport/host-loss experiments. Add observation/recovery of unknown partial
physical mutations and executable native archives with audited reload linking.
Then integrate production original/applied/current lineage and model/resource
dependencies. Genuine display01 restoration, actual Class creation/local inverse,
shared/UI acceptance, complete AEB_Core/FLOW and final package remain required.
No existing epoch/WAL is rebound and no hold is released by this private result.
