# Module reference preflight increment, 2026-10-11

This increment advances T3.1. It does not pass T5.1, a complete Message case,
the 43 required cases, or full delivery.

## Implemented

- Fixed runtime compilation probe with explicit listener/PID, dirty/database
  checks, source hashes, raw output and real loopback Cebra frame counters.
- Shared bounded Module inbound collector used by production connect v2 and
  the read-only probe. It freezes database-record rows before loaded-reference
  merging; both OID/class sets are detached, sorted, unique and bounded.
- Semantic three-way inverse candidate in `bd_module_references.plan_inverse`:
  only the original edit's changed OIDs may be reverted. External unrelated
  additions, removals and class changes remain. A touched OID must still match
  its actual after class or absence. Either set's conflict suppresses the whole
  candidate. All persistence/epoch/raw/reciprocal authority remains false.
- `bd_connect_journal.reference_inverse_plan` binds that candidate to a complete
  confirmed forward's durable original preparation and actual observation.
  No journal mutation, live read, replay or ready inverse head is introduced.
- Fresh two-node fixture creator validates private manifest/image hash, actual
  executable, endpoint/PID/epoch, exact database, dirty and cross-store pending.
  Unknown writes retain the quarantine and are never automatically replayed.
- Production v2 prepare/inspect/discard preflight with exact native/public
  before/after observations and source archive.

## Actual verification

87 targeted offline controls passed, including 14 new semantic/journal inverse
scenarios. Production x86 C# bridge and generated-stage consistency passed.
Five fixed Smalltalk templates compiled inside existing ASCET PID40652,
endpoint32631. Existing Module references read twice with stable observations.

Fixture creation created only
`BDE_Tool_Experiments\Trial_ConnectReferences_20261011_034859_7419e31d`
(OID `040ts00000001qg7185g75ap26ii6`) in the manifested private `agent-a`
database. It used public factory calls and `StoreToCache`; this is an isolated
fixture write, not a zero-write whole increment. No connection was created.

`bde-connect-reference-preflight-04` passed using production v2. It prepared
source `p6`, target `p3`, inspected the complete prepared material and both
reference sets, then discarded the exact prepared token (`released=true`).
Native/public before and after were identical. The prepare-only experiment
sent 401 request frames/400 response frames, 272,037 request bytes/268,218
response bytes, with no frame parse error. No apply/store/inverse was requested
by this preflight. These costs include bridge setup, compilation, public oracle
and cleanup; they are not a daily `bd_read` benchmark.

ASCET was not closed, started or restarted. No old token was rebound or replayed.

## Preserved failures and limits

- `bde-connect-runtime-compile-01`: probe C# missing type namespace; build
  failed before any native call. `compile-02` passed after repair.
- `bde-connect-reference-read-01`: AEB_Core did not satisfy exact Module
  ownership guard. All five template compilations passed; reference execution
  failed. This is not an AEB_Core complete-type acceptance result.
- `bde-connect-reference-preflight-01/02/03`: existing Main samples lacked
  a distinct-owner output/free-input pair; stopped before prepare/edit.
- `bde-connect-fresh-fixture-01`: ambiguous C# `Action`; build failed before
  native writes. `fixture-02` passed after namespace qualification.
- Two new journal tests initially used the wrong receipt signature/status;
  corrected to the existing contract, then the full 87-control run passed.
- `capture_attached` has not been executed for v2. There is no new connection
  write/diff/revert acceptance, persistent reference writer/inverse, complete
  reciprocal/raw-record closure, or Message lifecycle matrix pass.
- The two-node fixture is retained for further experiments. Its original
  baseline is two nodes, zero edges; do not overwrite it with a failed edit's
  current state. The preflight's prepared token was released and must not be
  applied or replayed.

## Reproduction

Verify the current private process/manifest first; the recorded PID/epoch are
historical and must not be rebound after restart. Use a fresh output directory.

```powershell
$env:PYTHONPATH='scripts'
E:\PYTHON\python.exe -X utf8 -m unittest scripts.test_bd_module_reference_inverse scripts.test_bd_module_references scripts.test_bd_connect_journal scripts.test_bd_connect_material scripts.test_bd_connect_history scripts.test_bd_connect_local_history scripts.test_bd_connect_local_plan scripts.test_bd_structural_diff_route scripts.test_bd_structure_conflicts
E:\PYTHON\python.exe -X utf8 scripts\bde_connect_compile_probe.py --port 32631 --pid 40652 --component 'BDE_Tool_Experiments\Trial_ConnectReferences_20261011_034859_7419e31d' --output analysis\bde-experiments\2026-10-11\fresh-reference-read
E:\PYTHON\python.exe -X utf8 scripts\bde_connect_reference_preflight.py --read-probe analysis\bde-experiments\2026-10-11\fresh-reference-read --output analysis\bde-experiments\2026-10-11\fresh-reference-preflight
```

Do not rerun fixture creation to replace an uncertain or partially created
fixture. The fixed creator records intent before dispatch and retains pending
on unknown outcomes.

## Next

Bind actual v2 attached reference capture and close raw/reciprocal persistent
reference patch and inverse before granting connection history. Then execute
one fresh T5.1 connect → actual diff → original BDE display → conflict → revert
case. Keep the full Message matrix and T0–T9 delivery gates unchanged.
