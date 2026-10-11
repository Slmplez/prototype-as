# Keyed native collection checkpoints and plans

Status: exact keyed capture, retained-material verification and a conservative
native collection plan generator are implemented. Current-state no-op plans,
copied-expectation refusals and private sequence splices have online evidence.
Changed-checkpoint model inverse, manager/connection-point setters, current-state
WAL and full delivery are NOT accepted. AEB_1 retains its restoration hold.

## Capture

`scripts/bde_class_local_inverse_bindings.st` saves a private
`keyedProfile=native_keyed_collections_v1` alongside the existing checkpoint:

| Native material | Saved binding |
|---|---|
| `collectionBindings` | Exact scoped slot to manager/selector/collection, complete ordered member refs and links |
| `memberKeys` / `nativeByKey` | Bidirectional unique mapping between scoped keys and actual native refs |
| Slot metadata | Scope, role, owner key and exact owner reference |
| Scope children | Main root or hierarchy wrapper and its contents collection |
| Node ports | Node wrapper/basicGraphObject and the entire basic `interfaceGOs` collection |
| Port pins | Exact method port/manager/alias and its entire `interfaceGOs` collection |

The three slot roles are `scope_children`, `node_ports` and `port_pins`.
Hierarchy contents have the enclosing hierarchy's scoped node key; Main has no
enclosing node. Pin keys include the scope and native pin identifier. Port keys
include the scoped node and a typed native method alias: bytes, string or explicit
nil. Repeated aliases in the same node or any duplicate native/key binding refuse;
display names, endpoints and routes never substitute for native identity.

Every captured immediate collection and every member must have a key. Method
ports are enumerated directly even when they have no publicly visible pin.
`verifyKeyed` uses separate saved binding/map baselines and checks profile,
owner/specification/diagram/registry/generation, bidirectional refs and slot
metadata. It joins both `verify` and `verifyCurrent`. Retained original material
must have this profile before the existing Class inverse/restore/reconcile can
proceed. Missing legacy material refuses rather than being filled from current.

The checkpoint remains private native memory, not an agent response or a durable
archive. The normal six-tool surface and paging contract are unchanged. The
Smalltalk runtime accepts at most three block arguments here; the binding name
and slot metadata travel in a single structured argument.

## Fixed Plan Generator

`scripts/bde_native_keyed_collection_plan.st` accepts three retained native
checkpoints and exact selected collection keys. An empty selection means all
original/after slots. It validates checkpoint provenance and the current source,
then invokes the identity-based ordering kernel with canonical temporary tokens.
Accepted steps bind removal to the CURRENT member reference and insertion to the
retained ORIGINAL reference. The plan saves the current manager/selector/collection,
expected order/links, slot and merged order, and replays only a private collection.

The generator explicitly refuses:

- Different generations or shared original/after native refs without audited lineage.
- Changed after/current member or parent object/collection/owner identity.
- Missing/new subtree parents requiring a subtree dependency plan.
- Ordering, duplicate-member, missing-removal or restore-gap conflicts.
- Invalid, duplicate or unavailable exact selected collection keys.

Any conflict clears usable plans. `verifyBeforeApply` is a collection/source
precondition, not authorization or a complete graph/signature/dependency guard.
All outputs have `write_authorized=false`, `native_merge_executor_available=false`
and zero model setters. The private probe compiles/binds this fixed block; it is
not a public agent operation and accepts no arbitrary Smalltalk.

The current tests pass the same real checkpoint as original/after/current. They
prove complete current-state no-op binding and refusal behavior only. Forward
materialization rebuilds native graphs; its real original/after correspondence
and subtree lifecycle are still required before changed plans can execute.

## Current Evidence

[Keyed-plan02](../analysis/bde-experiments/2026-10-03/bde-keyed-collection-plan-02/result.json)
passes three rounds with unchanged complete independent public bookends. Each
round has 4 owners, 7 scopes, 31 nodes, 59 public pins and 23 edges, plus 92 keyed
collections/177 members including 54 method ports and 10 additional hidden pins.
The hidden members are verified by exact native collection/ref checks; the public
oracle only covers publicly observable entries.

Totals: 276 real-current collection no-op verifications, 132 keyed packet negatives,
72 plan-input negatives, 48 existing collection negatives, 24 edge identity
negatives and 144 private sequence merge cases. No model setters, recovery/edit
allocation or new assertions; the 32-file research manifest has zero drift.
Middle diagnostics take 1162.756-1206.618 ms/303 request frames, excluding public
bookends. This is not bd_read, actual edit/inverse latency, P95 or a 1s gate.

[Material-preview01](../analysis/bde-experiments/2026-10-03/bde-keyed-material-preview-01/result.json)
passes four actual Doge read-only primitive-creation preflights in one round,
including the changed material template's compilation/binding with no actions.
Public bookends are unchanged, no native recovery records are allocated, and
actual creation refuses at the unsupported-reference guard before dispatch.
That refusal does not certify a later hold/creation gate. Each preview has 297
frames/1365.006-1407.672 ms; 38 sources have zero drift.

[Offline96](../analysis/bde-experiments/2026-10-03/offline-contract-96/result.json)
passes 582 Python tests, 21 Doge tests/1042 assertions and version. Six live skips
remain unverified. [Safety12](../analysis/bde-experiments/2026-10-03/bde-continuation-safety-12/result.json)
preserves all 29 original files and the hold; restored=false.

Failures remain: binding01 local variable redefinition; binding02 invalid cascade
syntax; binding03 missing nil-alias support; binding05 four-argument block call.
These were compile/read-only failures with no model dispatch or new assertion.
Binding04/06/07 and keyed-plan01 are earlier passing candidates, not acceptance
evidence for the final source version.

```powershell
E:\PYTHON\python.exe scripts\bde_class_detached_projection_experiment.py `
  --component 'BDE_Tool_Experiments\Trial_GeneralClass_20261002_050256_d0e048' `
  --bindings --checkpoints --merge-copies --repeats 3 `
  --output analysis\bde-experiments\2026-10-03\fresh-keyed-plan
```

Use a fresh output directory and avoid concurrent live experiments. Next work is
audited forward lineage and subtree dependencies, touched-field/dependency checks,
durable current-state WAL before setters, manager/pin/edge rebind and actual fault/
shared acceptance once genuine recovery permits writes. Original BDE UI, isolated
AEB_Core/FLOW and a verified final release remain open.
