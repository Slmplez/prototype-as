# Bounded native reference executor, 2026-10-11

The isolated Module/source leaf executor now runs creation, full raw replacement,
resize, deletion, undo and redo. Production v3/history remain preparation-only.
This is not real BDE connection, model/source/cache restoration, external-target
mutation, Message matrix or full T0–T9 acceptance.

`bde_finite_reference_patch.st` freezes private complete CURRENT/patch/candidate
images. It rejects duplicate operations, foreign keys, malformed routes/lengths,
unexpected fields and inconsistent projected reciprocal membership before any
writer. It rechecks all CURRENT and original resource identities immediately
before dispatch. Existing original raw headers and unparsed tails survive.
Returned preparation images are detached copies. Execution is one-shot; errors
preserve completed operation accounting and never automatically retry/invert.

Latest `bde-finite-patch-live-05`: six phases 1→2→1→absence→2→absence,
12 actual leaf writes, 2 deletes, 6 replay refusals, 1 stale preparation refusal
and 1 prepared-but-stale execution refusal. Each phase records complete
before/candidate/actual and per-physical-record outcomes. Independent Python
reconstruction verifies the entire candidate and operation accounting.

`bde-finite-patch-native-guards-01` separately tests seven native preparation
refusals: duplicate, extra field, noninteger extent, raw header, operation,
foreign key and incomplete reciprocal patch. An empty zero-writer executor
proves exported dictionaries cannot modify its private execution material.

`bde-finite-patch-fresh-02` independently reads all finite records twice through
a fresh connection. Both exactly equal the actual final phase and original
before. Complete public Module bookends also match. Zero-native
`bde-finite-patch-confirm-02` checks original fsynced before/dispatch, archived
source hashes, runtime and exact pending ownership, then clears only this
trial's pending. No writer replay or epoch rebind. Latest
`exact_observation_restored=true`; earlier diagnostic failures stay unchanged.

| Evidence | Request frames / bytes | Response frames / bytes |
|---|---:|---:|
| Native preparation guards | 116 / 213100 | 115 / 368172 |
| Six phases and eight refusals | 72 / 45393 | 71 / 1098120 |
| Fresh complete reads | 99 / 189889 | 98 / 110191 |

One connection per operation, no proxy errors. These counts include fixed
compiler/probe/serialization; they are not production read timings.

208 relevant offline controls pass, without summing overlapping historical
counts. `source/` freezes 953 code/dependency files; 277 archived source hash
checks pass. See `result.json` and `controls.log`. Package/remote checks are
recorded separately after the source checkpoint.

Preserved prewrite failures: compile01 (missing bracket), live01 (unsupported
four-argument block), live02 (`Array new:withAll:` unavailable), live03
(`Character asciiValue` unavailable). All failed before writer authorization.
Live04/confirm01 verified an earlier seven-refusal profile; live05 is hardened
and adds the deferred CURRENT refusal. PID56068/32631 and the original isolated
Trial_ConnectReferences fixture remain running; no ASCET lifecycle operation.

Python `inverse_request` / journal `persistent_reference_inverse_request` bind
immutable leaf arguments to confirmed original WAL before/actual after. They
make no native call or WAL change. WAL binding has offline controls only;
formal connect-produced WAL and production invocation remain unverified.

```powershell
cd E:\Repo\ASCET\scripts
E:\PYTHON\python.exe -X utf8 -m unittest -v test_bd_finite_reference_patch test_bde_finite_reference_patch_probe test_bd_finite_reference_patch_journal test_bd_finite_reference_inverse test_bd_connect_journal
```

Online reproduction needs a fresh output directory and same-runtime clean
isolated Trial/full read proof. Do not replay archived writers or confirmers:
their original pending is already cleared. The fixed probe retains quarantine
until independent fresh confirmation.

Next: close actual `EtasAPIDiagram>>storeToCache` / `endModifications` effects
(`saveGraphics:pageFormat:`, source `modified`, owner `recreateLogicModel`,
`autoCommitDatabase`) with retained model/source/cache/owner-record materials.
Then T5.1 actual connect→diff→original BDE→conflict→revert. This recovered call
chain is static evidence; the leaf trial invoked no model/store/commit method.
