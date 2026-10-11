# Retained layout recovery, 2026-10-03

Subsequent update: Deletion01's separate order drift is also restored and freshly
audited;see [attached order recovery](bde-attached-order-recovery.md). Original
AEB_1 Class formal recovery remains unresolved. Earlier Deletion01 state below
is historical.

Deletion03's original n15/p16 is restored and stored with exact native/public
baseline equality. Physical order is n15,n1,n5,n9,n11,e1,e2;drawing order is
n15,e1,n1,n5,n9,e2,n11. Identity comes from the retained originals and complete
primary prepared WAL, not names or substituted objects. This is separate
experimental restoration and does not certify general production bd_revert.

The fixed research helper requires exact root/owner/parent/collection/generation,
complete frozen CURRENT, original intrinsic guard and durable preparation. It
is absent from production builds. A bounded recovery registry and exact signature
bind check/execute to the retained native snapshot. Pending state prevents replay.

Preserved failures and reconciliation:

- [Restore01](../analysis/bde-experiments/2026-10-03/bde-retained-layout-restore-01/result.json)
  failed after insertion/drawing setters before store. No mutation replay.
- [Partial diagnostic01](../analysis/bde-experiments/2026-10-03/bde-layout-partial-diagnostic-01/result.json)
  verifies the attached originals and exact allowed partial effects, read-only.
- [Completion01](../analysis/bde-experiments/2026-10-03/bde-layout-partial-completion-01/result.json)
  separately completed native store but failed Python validation. Store was not
  replayed. SGBlockDiagram rebuildOrderingNumber changed lastChildrenNumber6->7.
- [Completed reconciliation01](../analysis/bde-experiments/2026-10-03/bde-layout-completed-reconciliation-01/result.json)
  accepts only the audited exact parent counter and permitted raw changes across
  333objects;full native/public original baseline passes. Original files stay
  unchanged. The exact pending marker is released after durable verification.
- [Fresh audit01](../analysis/bde-experiments/2026-10-03/bde-layout-restoration-audit-01/result.json)
  uses a fresh process/production reader, complete native/public bookends,
  zero setters and no store. Original baseline and failed files match.

Old source deletion remains applied;partial recovery remains restore_started;
separate completion is restored. Those records must not be replayed or rebound.
The old failed experiments remain FAILED. Deletion01 order drift and AEB_1 Class
formal loss are separate unrecovered problems. The AEB_1 write hold remains.

Read-only reproduction against the existing owned disposable runtime:

```powershell
E:\PYTHON\python.exe scripts\bde_layout_restoration_audit.py --experiment analysis\bde-experiments\2026-10-03\bde-independent-deletion-03 --reconciliation analysis\bde-experiments\2026-10-03\bde-layout-completed-reconciliation-01 --output <NEW_OUTPUT>
```

Use a new output directory. Do not rerun restoration/completion as new writes.
Production causal witnesses, remaining fault/family/shared/UI/FLOW/AEB_Core and
final package gates are still required. Whole delivery remains INCOMPLETE.
