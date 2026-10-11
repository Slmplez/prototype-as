# Bounded nonempty reciprocal reference lifecycle

This is an incremental T3.1 checkpoint, not full T0-T9 delivery or a production
persistent inverse. The original failed native verdict remains unchanged.

Private PID56068 / port32631 was reused. Neither private nor normal ASCET was
closed, started or restarted. Only the already-isolated Module and its source
reference records were written; business component/model references were not
changed. A single Cebra owner and `bd_service.live_lock()` serialized operations.

## Measured sequence

After full original material was fsynced, the parent validated identity,
CTError101 source absence, existing inbound records, explicit target coverage
and clean editors, created pending/WAL, then sent the fixed
`WRITE_RECIPROCAL_RESIZE_AND_RESTORE` command exactly once.

| Stage | Source outgoing | Reciprocal changes |
|---|---|---|
| 1 | Module key, 85 bytes | Append source to isolated Module inbound |
| 2 | Module + source keys, 106 bytes | Append source to its own inbound |
| 3 | Module key, 85 bytes | Restore original source inbound full raw |
| 4 | Original CTError101 absence | Restore original Module inbound full raw |

There were seven writes and one delete. Every complete planned byte buffer was
read back unchanged, including retained unparsed tails. Inbound originals were
279/121 bytes; expanded candidates were 300/142 bytes. Every completed phase
independently checked reciprocal membership. The original inbound headers begin
`[0,0]`; new factory headers begin `[0,60]`. Restoration preserves the original
headers, not a newly manufactured header.

## Preserved observation difference

The full final native snapshot differs only at
`/owners/1/records/0/sysio_code`, from `0` to Windows 158 diagnostic text. The
source record is genuinely absent with CTError101, and all other finite
observations, existing complete raw bytes and tails match the original.
`CTError` recovered source obtains `sysioCode` from CTreeGV/WinError diagnostics;
its undefined-object branch uses `errorNumber=101`. This is source-backed
diagnostic classification, not proof of the whole native CTree implementation.

The native full-observation guard correctly returned failure. That failed
verdict is preserved. A fresh connection read the entire finite observation
twice; both match actual stage 4. Independent zero-native confirmation checks
the whole sequence, exact source-before/WAL binding, original archived source
hashes, original bytes and absence. It reports
`persistent_reference_records_restored=true`,
`exact_observation_restored=false`, and preserves the full diagnostic delta.
Only that experiment's pending was cleared; no native writer replay or
diagnostic setter occurred. Old-epoch pending and other recovery holds remain.
Production CURRENT guards are unchanged.

## Code and validation

`bde_reference_leaf_nonempty.st` is the bounded reciprocal research block.
`bde_reference_leaf_nonempty_probe.py` validates complete phases and bytes;
`bde_reference_leaf_nonempty_confirm.py` performs the independent confirmation.
`bd_finite_reference_inverse.lifecycle_plan` is a separate pure planning profile
for original record create/delete transitions and byte merges. It coalesces
owner/reciprocal observations to one physical record operation, requires exact
actual CURRENT for existence transitions, suppresses all candidates on conflict,
and grants no native write permission. The original production planner keeps
its absence-executor refusal. No general native executor was added.

184 related offline controls passed; 941 source/dependency files were frozen
and 102 archived source hashes checked. These counts are not accumulated with
historical overlapping suites and are not online acceptance. Full native wire
counts and byte totals are in `result.json` under `wire`.

Build/preparation failures live-01/02/03 performed no leaf writes. Actual
live-04 is the terminal diagnostic refusal above. All original results are
preserved and listed in `result.json`; confirmations never replay the writer.

## Reproduction

Read and native lifecycle commands require the same licensed private instance,
database and exact isolated component identity. Do not replay live-04 or reuse
its token. For a new permitted research run, use a fresh original read/output.

```powershell
E:\PYTHON\python.exe -X utf8 scripts/bde_connect_compile_probe.py --port 32631 --pid 56068 --component 'BDE_Tool_Experiments\Trial_ConnectReferences_20261011_034859_7419e31d' --persistent-references --target-key 0101de0000000000ea070a0b03955911a5230000 --target-key 0101de0000000000ea070a0b03955920ab230000 --output analysis/bde-experiments/2026-10-11/bde-reference-nonempty-before-01
E:\PYTHON\python.exe -X utf8 scripts/bde_reference_leaf_nonempty_probe.py --read-probe analysis/bde-experiments/2026-10-11/bde-reference-nonempty-before-01 --output analysis/bde-experiments/2026-10-11/bde-reference-nonempty-live-04
E:\PYTHON\python.exe -X utf8 scripts/bde_reference_nonempty_increment.py --output analysis/bde-experiments/2026-10-11/bde-reference-nonempty-increment-01
```

Existing outputs refuse overwrite. For offline report reproduction, give the
report command a new output path; it makes zero native calls. Do not rerun a
confirmation whose pending is already cleared.

## Remaining work

Finite native patch/inverse with complete CURRENT guards and raw accounting;
model/source/commit resource closure; real connect/diff/original-BDE/conflict/
revert; disconnect/delete; Message 60-case matrix; Enum/Class/hierarchy and
cross-Module/A2A/XPass; Doge/AEB_Core and full 43-required-case delivery.
No reopened/crash-durable inverse or global optimum is claimed.
