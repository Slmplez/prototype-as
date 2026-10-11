# BDE structural scope lifecycle

## Current implementation

The fixed structural reader keeps its native scope registry at64 entries.
When a new root arrives at capacity, it retires only the oldest unpinned entry.
Recency ties use the exact root key. An all-pinned registry refuses allocation;
it is never cleared and its limit is never raised.

The process-wide generation high-water mark starts above existing live
generations, only increases, and survives individual retirements. A recreated
scope gets a new generation. StructureJournal checks the complete observed
fingerprint, including generation, before native preparation and setters.
Persisted snapshots remain readable after cache retirement; their native edit
preconditions expire. Process/database guards remain required.

Cache reuse also requires the actual process epoch Dictionary identity and an
issued-generation certificate matching the root's generation. One initial
certificate migration preserves existing generations and retained root objects.
After migration, a root recreated by an obsolete reader has no certificate;
the modern reader assigns a fresh generation above the process high-water mark.
An obsolete reader's matching checkpoint alone cannot certify cache reuse.

The following retained native registries conservatively pin scopes:

| Native registry | Pin binding |
|---|---|
| DogeBDEStructureEditsV3 | Every unreleased record, including prepared/reverted; owner and exact root scope |
| DogeBDELayoutRestoresV1 / DogeBDEDeletionRestoresV1 / DogeBDEAttachedOrderRestoresV1 | Actual root, retained root owner, original source scope and owner |
| DogeBDEPrivateSessionsV1 | Actual native owner |
| DogeBDEClassMaterializeV1 | Exact caller root key |
| DogeBDEClassStudyV1 | Class OID and its cached diagrams |
| DogeBDEOverlaysV1 / DogeBDEGroupOverlaysV1 | Original presentation component Main root |
| DogeBDEOrderEvalV1 | Actual retained diagram identity |
| DogeBDESourceEvalV1 | All scopes while an opaque source injection remains retained |

Malformed/unbound records, root aliasing and unaudited registry kinds refuse.
Completed restoration records remain pinned until their owning protocol releases
them. Pinning protects cache retirement; ordinary source changes retain existing
generation/identity expiry semantics and do not become automatic restoration.

The graphical-specification guard runs before cache acquisition. ESDL
SGASDLSpecification reads return BDE_DIAGRAM_NOT_GRAPHICAL without changing
scope inventory, recency or eviction count.

No new agent tool is added. The production reader owns automatic retirement.
Inventory/pure-policy/exact-unused-retirement commands are compiled only with
BDE_SCOPE_LIFECYCLE_EVAL for controlled experiments.

## Verified evidence

- [Scope12](../analysis/bde-experiments/2026-10-03/bde-scope-lifecycle-12/result.json): certificate candidate compiles/runs; initial migration preserves the existing pinned generation1 fixture and complete native/public values. Inventory remains64 scopes,7 pinned,57 evictable;25 synthetic policy checks pass.
- [Scope14](../analysis/bde-experiments/2026-10-03/bde-scope-lifecycle-14/result.json): separate setter-free verification of Scope13's actual completed obsolete-reader recreation. Legacy generation1/full snapshot equals the original; modern generation10 exceeds high-water9. Complete native fields match with only the documented allocated-edge alias shift; native node/pin IDs remain exact. The actual journal returns conflict after observe only, before prepare/setters. All other scope metadata/pins, full public state and failed source files remain unchanged. Retirement/legacy rebuilding are not replayed.
- [Causal regression02](../analysis/bde-experiments/2026-10-03/bde-scope-causal-regression-02/result.json) and [fresh audit02](../analysis/bde-experiments/2026-10-03/bde-scope-causal-audit-02/result.json): certificate candidate passes3 actual operator-chain deletion/double-inverse rounds, complete native/public/drawing restoration and unchanged original files.
- [Offline123](../analysis/bde-experiments/2026-10-03/offline-contract-123/result.json):812 Python tests,21 Doge tests,1042 assertions and version command pass;6 live skips remain unverified. All428 source files match the final candidate.
- [Safety30](../analysis/bde-experiments/2026-10-03/bde-continuation-safety-30/result.json):29 original Class-failure files/hold unchanged; original formal remains unrestored.
- [Scope09](../analysis/bde-experiments/2026-10-03/bde-scope-lifecycle-09/result.json): pre-certificate candidate; real capacity pressure at64, exact unpinned victim, all pinned metadata preserved, actual prepared-record retirement refusal, wrong-generation refusal, exact single unused retirement, generation1 to9 reconstruction, unchanged complete public fixture state. The actual StructureJournal returns conflict after only observe, before prepare/apply. Cache operations call no model setters/store.
- Scope09 also passes25 native policy checks on isolated dictionaries, including all64pinned, single available candidate, six retained edit states, presentation/Class/private/restoration bindings, malformed records and aliased roots. These are synthetic policy checks, not actual64-live-edit or live UI acceptance.
- [Scope08](../analysis/bde-experiments/2026-10-03/bde-scope-lifecycle-08/result.json): previous candidate; pressure/retirement/stale refusal passes, generation1 to7, separately verifies/discards Scope07's unexecuted preparation with original files unchanged. Its policy has19 checks and predates the final hardening.
- [Causal regression01](../analysis/bde-experiments/2026-10-03/bde-scope-causal-regression-01/result.json) and [fresh audit01](../analysis/bde-experiments/2026-10-03/bde-scope-causal-audit-01/result.json): three real operator-chain deletion/double-inverse rounds after pressure, complete native/public/drawing baseline restoration, original experiment files unchanged. These are real isolated edits, unlike the setter-free cache experiments.
- [Offline122](../analysis/bde-experiments/2026-10-03/offline-contract-122/result.json):808 Python tests,21 Doge tests,1042 assertions and version command pass;6 live skips remain unverified.
- [Safety29](../analysis/bde-experiments/2026-10-03/bde-continuation-safety-29/result.json):29 original Class-failure files and write hold unchanged, no Cebra connection; original AEB_1 Class formal remains unrestored.

## Preserved failures

[Scope13](../analysis/bde-experiments/2026-10-03/bde-scope-lifecycle-13/result.json)
actually completes retirement and legacy generation1 recreation, followed by
modern generation10. It fails the experiment's comparator, which incorrectly
assumes node/pin IDs are allocated aliases. The audited refFor/pinRef chain uses
native node/pin IDs and allocates only the unstored edge aliases in this fixture.
The corrected comparator keeps every other graph field strict; four focused
tests include topology/route/value/coverage/stable-ID changes. Scope14 verifies
the already completed state separately, leaving13 FAILED and its files unchanged.
Fixture18 now has generation10; its old generation1 baseline cannot be reused.

Scope01/02 fail diagnostic compilation before model setters. Scope04 fails on
the Smalltalk dialect's prohibition on assigning block arguments. Compiler
diagnostics now identify the resource and source line using audited
CompilerError>>startPosition.

Scope05 completes real pressure and discards its preparation, then refuses
retirement because the fixture still owns historical recovery materials.
Those materials were not removed to make the experiment pass.

Scope06 completes retirement/reconstruction with unchanged public state, then
fails stale-request validation because the runner omitted domain.session. Its
native retirement is not replayed and its old result stays failed.

Scope07 exposes the real unsupported-specification allocation bug. The reader
now checks the specification before acquisition. Scope08 separately verifies
Scope07's actual state is prepared with before=current and after=null before
discarding only that record. Scope09 proves actual nongraphical refusals leave
inventory unchanged for cached and uncached ESDL components.

[Scope10](../analysis/bde-experiments/2026-10-03/bde-scope-lifecycle-10/result.json)
finds no new ordinary graphical scope among the fixture's bounded definition
candidates. It remains FAILED, not a pressure pass. Its actual prepared status
is checked before discard; no setters/store or mutation replay occurs.

The first Safety29 invocation supplied a summary without original_hashes. It
fails before audit/native calls; [preflight record](../analysis/bde-experiments/2026-10-03/bde-continuation-safety-29/preflight-failure.json)
preserves the error. The successful audit uses the original byte-audit reference.

## Reproduction and remaining work

Use a fresh output directory and the exact manifested disposable endpoint.
The reuse fixture must still have its recorded native generation. A fixture
intentionally retired by this experiment cannot silently reuse its historical
generation; establish a new recorded baseline before later mutation studies.

```powershell
E:\PYTHON\python.exe scripts/bde_scope_lifecycle_experiment.py --manifest analysis/bde-experiments/2026-10-03/bde-isolation-02/bde-7c2bdc20e800/instance.json --reuse-fixture analysis/bde-experiments/2026-10-03/bde-isolated-order-14/result.json --output NEW_OUTPUT
E:\PYTHON\python.exe -m unittest discover -s scripts -p test_bd_scope_inventory.py
```

Actual64-live-record refusal, active original-BDE callbacks and Class/private
restoration during sustained pressure, broad cache churn, restart/reopen and
full performance acceptance remain. Historical complete-read P95 values
663.115/933.749ms were not rerun. All families, native faults, Class/shared
resources, FLOW, original BDE UI, isolated AEB_Core and verified release remain
required. Whole delivery is INCOMPLETE and development remains active.
