# Ordinary BDE Graphical Recovery, 2026-10-03

Production ordinary delete_node/disconnect_data now require raw graphical evidence
both during mutation and during terminal receipt reconciliation. The six Doge
tools remain unchanged. Whole BDE delivery and all complete-case gates remain
INCOMPLETE; this increment does not enable unrestricted business writes.

## Native and Durable Evidence

Preparation retains immutable original graphical objects and CURRENT descriptors,
opaque reference bindings and a monotonically versioned signature. The journal
flushes CURRENT/signature before dispatch. Native execution checks the direction,
signature and every captured CURRENT field/container immediately before setters.
The actual diff captures complete introduced objects with separate tokens and
retains a copied terminal image. Its verifyAfter block compares current native
identity/fields/contents to that terminal image, including detached originals.

Recovery status returns the original descriptor, started CURRENT, exact started
signature, recorded actual diff and current_graphical_matches_terminal. The latter
is evaluated against retained native references after the structural getter read.
C# decodes both tagged graphical images and plain/tagged parent evidence; Python
requires equality with durable original/started CURRENT/signatures, validates all
actual refs/old values, and compares any existing observed event. Only then can it
append reconciliation/actual/final evidence and clear the exact pending marker.
Inverse recovery releases original native material only after a verified receipt.
Released-record fast paths require complete matching durable graphical evidence.

Full descriptors stay in WAL. Agent receipts/diff receive changed-entry/ref counts
and checksums. Dictionary pairs and Set membership compare as complete unordered
images; Array/OrderedCollection order remains significant. The captured graph is
bounded and has explicit native boundary objects; this is not full database or
configuration archival, cross-restart recovery or proof of every original raw
field/branch-Set identity after inverse.

## Real Evidence

[Matrix01](../analysis/bde-experiments/2026-10-03/bde-isolated-order-matrix-01/result.json)
seals six same-candidate experiments: delete and disconnect, each with literal
fanout, operator chain and operator fanout-with-input fixtures, three rounds per
fixture. All18rounds pass complete independent public/native restoration, raw
actual validation and native terminal checks before/after independent getter
observations. Original endpoint registration objects are retained and checked.
This covers three graph shapes and two node kinds in ordinary Class Main, not all
native families, hierarchy scopes or Module/Class interface operations.

| Operation | Samples | Edit median/range ms | Inverse median/range ms |
|---|---:|---:|---:|
| delete_node | 9 | 485.597 / 457.317-558.522 | 501.428 / 475.921-560.838 |
| disconnect_data | 9 | 488.634 / 448.674-547.565 | 540.995 / 479.952-575.927 |

Nine samples per operation are not30-sample P95 acceptance or1000-node performance.
Wire counts in individual results include independent observations and cleanup;
request and response frames are reported separately, not as matched RPC totals.

[Recovery02](../analysis/bde-experiments/2026-10-03/bde-graphical-recovery-02/result.json)
and [recovery03](../analysis/bde-experiments/2026-10-03/bde-graphical-recovery-03/result.json)
each pass3real rounds. Every round discards a completed apply reply and a completed
inverse reply at the Python adapter boundary. Cross-STORE pending exists after each
loss. The actual bd_inspect recovery route, with a new native bridge, reconciles
read-only using raw and parent/endpoint evidence. Exactly one apply/inverse dispatch
is recorded per request,zero model setters during reconciliation,complete final
public/native restoration. Total12lost receipts reconcile;source manifests have
0drift and wire parsers0errors/incomplete bytes. This is application-level receipt
loss after completion,not a real host death/RST or interruption inside setter/store.

## Retained Failures

[Offline111](../analysis/bde-experiments/2026-10-03/offline-contract-111/result.json)
passes733Python/21Doge tests,1042Doge assertions and version after the native parent
decoder correction. Six live Doge tests remain skipped/unverified;the offline
source fingerprints are unchanged. This does not grant whole-case acceptance.

- order10: plain parent evidence failed legacy tagged decoding; actual inverse and
  complete restoration passed. C# decoder and transport regressions corrected it.
  Its wire totals were not saved by the old failure path; future failures now save
  counters in finally. Missing historical counters are not reconstructed.
- order12: research script failed to freeze boundary refs,so an upstream node left
  the incident projection after deletion and was falsely reported removed. The
  formal tools planner already freezes these refs; new trials reuse that planner.
  [Separate formal restore01](../analysis/bde-experiments/2026-10-03/bde-isolated-formal-restore-01/result.json)
  passes independent restoration with original failed files unchanged.
- recovery01: direct internal inspection bypassed service directory initialization.
  Native read-only reconciliation completed but result pagination failed. The
  corrected experiment invokes service.handle through the actual tool route.
  [Separate formal restore02](../analysis/bde-experiments/2026-10-03/bde-isolated-formal-restore-02/result.json)
  restores the fixture and preserves all original evidence. No failed edit replay.

Each restoration is a separate request with its own inverse WAL; original result
files remain failed. The separate original AEB_1 display01 Class formal is still
unrestored,with its restoration hold enforced.

## Reproduction and Remaining Work

Use a fresh output directory and the owned cold-backed disposable manifest:

```powershell
E:\PYTHON\python.exe scripts\bde_isolated_order_experiment.py `
  --manifest analysis\bde-experiments\2026-10-03\bde-isolation-02\bde-7c2bdc20e800\instance.json `
  --output analysis\bde-experiments\2026-10-03\NEW-ORDER-RUN `
  --operation disconnect_data --fixture operator_chain --repeats 3

E:\PYTHON\python.exe scripts\bde_graphical_recovery_experiment.py `
  --manifest analysis\bde-experiments\2026-10-03\bde-isolation-02\bde-7c2bdc20e800\instance.json `
  --output analysis\bde-experiments\2026-10-03\NEW-RECOVERY-RUN `
  --operation delete_node --repeats 3
```

Never reuse a failed output or replay an unknown write. Remaining acceptance:
detached-original field tamper,independent edits/conflicts,complete original raw
identity,inverse across all supported families,actual setter/store/host/transport
faults,other operations' raw integration,Class creation/shared dependencies/native
UI,AEB_Core/FLOW/performance and reproducible final package. State machines and new
Code Mode/host framework remain deferred.
