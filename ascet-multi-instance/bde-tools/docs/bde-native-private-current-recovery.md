# Private CURRENT recovery and primitive execution

2026-10-03 continuation: fixed Cebra steps, host descriptive CURRENT/WAL and
per-cell recovery now pass three private rounds. This adds capture of native
branching Sets created after deletion; the earlier memo-only matrix did not
capture their contents. The artifacts are not executable native archives.
[New protocol, evidence and remaining work](bde-native-private-step-protocol.md).

Status: private in-memory native execution/recovery is implemented and measured.
Durable CURRENT WAL, production model recovery, actual setter/store/transport
failures, old display01 recovery and full delivery remain INCOMPLETE.

## Implementation

`bde_native_private_execution.st` accepts only the fixed private inverse plan
and its audited clone. Before any primitive, it retains every memo-owned
graphical field/reference, indexed value and collection in a CURRENT checkpoint.
It lowers planned field/order/dictionary/array/set changes to bounded primitive
steps. Targets must be memo owned; fonts/images/database boundaries and the
private diagram's shared server are never mutation targets.

The internal closures are not additional agent tools:

- `executeNext(expectedIndex)` accepts only the exact next one-based index.
  Duplicate, skipped, out-of-range and terminal requests refuse before mutation.
  It rechecks stable native lineage and the last complete private checkpoint.
- `executeWithFault(position)` is a research driver. It raises a controlled
  exception after a completed native primitive and complete actual observation.
- `status` distinguishes primitive count, executed primitives, actual changed
  cells/collections, retained checkpoint coverage and desired-result verification.
  Material is in memory: `durable_current_wal=false`, `write_authorized=false`.
- `recoverCurrent` rechecks ancestor/connection-point lineage and all actual
  touched cells against the last known partial state. It restores only those
  changed cells/collections using retained CURRENT references. Unrelated fields
  survive. Touched collections remain atomic during this recovery; independent
  membership changes after the fault refuse instead of being overwritten.

`primitive_started` or `recovery_started` without a complete subsequent actual
observation is not a safe recovery state. The status exposes
`actual_observation_complete=false`; continuation/recovery refuses. No speculative
compensation or automatic replay is implemented for those unknown outcomes.
CURRENT material is not deserialized or rebound after an ASCET restart.

Private inverse manager/collection updates can temporarily produce an incomplete
graph. Recovery therefore checks stable ancestry and retained endpoint references
separately from the primary inverse's coherent endpoint membership expectations.
The last partial checkpoint and actual touched values are still mandatory.
No model setter, store, editor install, production journal or recovery root is
allocated. Native material flags refer to private heap objects only.

## Online Evidence

[Final current06](../analysis/bde-experiments/2026-10-03/bde-native-private-current-06/result.json)
passes three unchanged-source, independently public-bookended rounds. Each retains
the complete 4-owner/7-scope/31-node/59-public-pin/23-unique-edge baseline, including
Main/h1/h2/h3 and empty intermediate scopes. CURRENT covers all 2543 copied objects
and 11860 graphical fields per round across the four owners.

| New Check | Per Round | Three Rounds |
|---|---:|---:|
| Primary connected-pin cases | 42 | 126 |
| First/middle/final primitive completion faults | 126 | 378 |
| Changed CURRENT before first primitive refused | 126 | 378 |
| Duplicate primitive index refused | 126 | 378 |
| Future primitive index refused | 84 | 252 |
| Changed touched CURRENT recovery refused | 126 | 378 |
| Execution/recovery replay after recovery refused | 252 | 756 |
| Completed execution primitives | 736 | 2208 |
| Actual CURRENT cells/collections restored | 711 / 717 / 711 | 2139 |

The final failure position also verifies all planned desired values. At every
position, recovery preserves a separate visible node's x edit introduced after
the fault. Complete private fields/collections/references match CURRENT except
that single field; resetting it restores the entire CURRENT checkpoint and
public projection. Conflict/replay rejections leave private state unchanged.
Recovery cells are logical changed fields/collections, not primitive setter or
physical write counts. Native object iteration can change intermediate partial
cell totals; each is checked against its actual captured diff.

The inherited ordinary inverse/peer/dependency cases also pass: 126 primary
inverses, 9 visible Definition peer cases and 1638 existing conflict refusals over
three rounds. There are 117 no-peer skips, not hidden/Caller peer positives.
Original public owners/domain stay unchanged, with zero model setters/stores,
production edit/recovery allocations, new ASCET assertions and source drift.

Middle diagnostic 8827.689-8900.676 ms/301 request frames/13948631 response bytes
per round includes the entire private fault matrix and verbose projections,
excludes public bookends, and is not bd_read, production edit or one-second/P95
acceptance. The experiments use controlled post-primitive exceptions, not a real
lost Cebra frame, crash or model setter/store failure.

current01 retains a compiler bracket failure. current02 retains the unsupported
BlockContextTemplate four-argument helper call. Both have unchanged failure
public bookends and zero model dispatch/new assertions. The helper now accepts
three arguments with a structured index/value pair. current03/04/05 are separate
intermediate passing candidates; only current06 is the final candidate.

[Offline99](../analysis/bde-experiments/2026-10-03/offline-contract-99/result.json)
passes 618 Python/21 Doge tests/1042 assertions/version, including 36 recorded
private evidence test groups; six live skips remain unverified. These fixture
negative assertions are not additional online edit or recovery acceptance.
[Safety15](../analysis/bde-experiments/2026-10-03/bde-continuation-safety-15/result.json)
preserves the 29 original failed-edit files and hold; restored=false.

## Reproduction

```powershell
E:\PYTHON\python.exe scripts\bde_class_detached_projection_experiment.py `
  --component 'BDE_Tool_Experiments\Trial_GeneralClass_20261002_050256_d0e048' `
  --fault-clone --repeats 3 `
  --output analysis\bde-experiments\2026-10-03\fresh-private-current
```

The fixture path selects an existing isolated component. Graph targets, fault
positions and CURRENT values are resolved from the actual keyed native graph;
the code does not hardcode node/pin/edge identifiers or reconstruct their identity.

## Required Next Work

Add a fixed remote step protocol and durable CURRENT value/reference export,
flush write-ahead events before each primitive, and retain exact native recovery
material across host reply loss in the same ASCET epoch. Bind production
original/applied/current lineage and complete model/resource dependencies before
model setters. Accept real partial setter/store/journal/transport faults, shared
owners, reload and original UI behavior. Genuine display01 recovery, complete
AEB_Core/FLOW and a verified final package remain required. Existing holds and
expired journals must not be cleared or rebound by this private result.
