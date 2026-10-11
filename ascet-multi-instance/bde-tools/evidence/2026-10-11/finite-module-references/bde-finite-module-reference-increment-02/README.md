# Finite Module reference increment, 2026-10-11

T3.1 advances; T0–T9, T5.1 and the 60 Message lifecycle cases remain incomplete.

## Implemented

- Fixed bounded native current reader for Module and Main source outgoing/inbound
  records, and inbound records for the finite union of existing outgoing targets.
  Complete ordered tag-1 entries, duplicates and original raw tails are retained.
- Exact error101 is a distinct absent-record result. There is no invented empty
  record or byte payload. Other read errors preserve incomplete observation.
- Native owner/source DBObject, shared backend/leaf/file and specification guards.
  Fresh transient diagram wrappers are resolved through the persistent
  specification and source identity, rather than compared as owner identities.
- Production `native_connect_material_v3`, enabled only by the fixed
  `ASCET_BD_CONNECT_REFERENCES=module_persistent_v1` profile with retained Main
  connection/material/staged profiles. Preparation freezes finite original raw
  reference evidence in the exact prepared record. Inspection compares complete
  deterministic value encoding, including raw tails and absence.
- Python and C# refuse mutation under this preparation-only profile. The C#
  refusal precedes Smalltalk apply compilation and returns explicit no-mutation
  classification. Default profiles and the existing v2 profile remain separate.
- Durable actual WAL/diff contract includes compact raw/semantic/tail hashes and
  explicit not_captured for new reciprocal targets lacking an original before.
- Journal-bound raw inverse proposal: same-size records patch only original
  changed byte positions and preserve unrelated current bytes; resized records
  require exact actual-after. Any overlapping byte, absent lifecycle or missing
  original/actual resource suppresses the entire candidate. No native writer,
  epoch assertion, full closure or persistent inverse is authorized.

## Verified

Existing ASCET PID40652 / endpoint32631 / epoch
`40652/2026-10-11T01:26:22.5375589Z` remained running. No lifecycle commands,
new fixture creation, store, commit or model apply dispatch occurred this round.

Final fixed read probes:

- `bde-finite-module-references-live-06`: existing two-node
  `Trial_ConnectReferences_20261011_034859_7419e31d`, two owners, 9 reciprocal
  targets, 13 record reads (12 existing, one absent), raw3942 bytes.
- `bde-finite-module-references-live-07`: existing
  `Trial_ChannelModule0_20261001_182702_1a77f8`, two owners, 10 reciprocal
  targets, 14 record reads (13 existing, one absent), raw4821 bytes.

Both ran the fixed collector twice with all returned fields/bytes equal,
dirty_before=dirty_after=0 and no inconsistent membership checks. Their raw
bytes are observation volume, not total Cebra transfer or complete graph reads.

`bde-finite-connect-preflight-05` used the production v3 adapter to prepare,
inspect, verify both refusal layers and discard one fresh token. Full native
and independent public graph/layout observations before/after were identical.
Released=true. Its host apply protocol request was explicitly refused without
compiling/dispatching model apply; the Python apply refusal occurred before any
native I/O or pending write creation. Total434 request /433 response frames,
304526 request /372865 response bytes, one connection, no parser errors.
These figures include initialization, compilation, oracle and cleanup.

138 targeted offline controls passed in `controls.log`, exit0. They cover raw
tail and extent conflicts, unrelated current changes, absent/new-target guards,
original-WAL binding, unknown outcomes, compact offline diff and v3 gating.
Synthetic WAL lifecycle cases are not online writes or lifecycle acceptance.

The report recomputes online proof from saved outputs and validates runtime
source hashes. The offline report generator alone changed after preflight
(PYTHONPATH repair); its exact current source is separately archived. No native
path changed, so the existing native checks were reused. This exception is
explicit in `report_only_source_changes`; no whole-candidate eval pass is claimed.

## Retained failures

- `bde-finite-module-references-live-01`: transient diagram-view identity guard
  failed. It was corrected to the specification/source/DBObject identity chain.
- `live-02`: runtime observations returned raw records and a CTError; strict
  complete-snapshot validation refused them, preserving both observations.
- `live-03`: incomplete observation validation only. It is not complete capture.
- Exact101 absence was then handled using the existing persistent-owner contract;
  final snapshots retain the absence result and no fabricated record bytes.
- `bde-finite-connect-preflight-01`: Dictionary identity equality incorrectly
  rejected equal detached values. Fixed to deterministic full-value encoding;
  preparation was safely discarded, no mutation dispatched.
- `bde-finite-module-reference-increment-01`: offline controls failed to import
  because the subprocess lacked PYTHONPATH. Logs are retained; increment02
  explicitly supplies the scripts path and passes138 controls.

## Reproduction

Read the actual endpoint/process/database first. Recorded PID, epoch and released
tokens are historical evidence and must not be rebound/replayed after restart.
Use a fresh owned output path for every command.

```powershell
E:\PYTHON\python.exe -X utf8 scripts\bde_connect_compile_probe.py --port 32631 --pid 40652 --component 'BDE_Tool_Experiments\Trial_ConnectReferences_20261011_034859_7419e31d' --persistent-references --output analysis\bde-experiments\2026-10-11\fresh-finite-read
E:\PYTHON\python.exe -X utf8 scripts\bde_connect_reference_preflight.py --read-probe analysis\bde-experiments\2026-10-11\fresh-finite-read --persistent-references --verify-host-write-gate --output analysis\bde-experiments\2026-10-11\fresh-finite-preflight
```

## Remaining

Capture original records for explicitly new outgoing targets before dispatch;
implement/audit absent-record lifecycle and finite persistence/flush/inverse;
then verify a real fresh connect → actual diff → original BDE display → conflict
→ exact inverse. Actual v3 attached capture remains unexecuted. No business
recovery hold is cleared, no old before manufactured and no Message matrix
case promoted. Cross Module/A2A/XPass, Class/Enum lifecycle, final AEB_Core and
full delivery remain open under the existing task nodes.
