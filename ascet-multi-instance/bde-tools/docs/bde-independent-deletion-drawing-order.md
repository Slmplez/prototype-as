# Independent Deletion: Drawing Order Failure

## Latest Separate Restorations

Deletion03's retained originals and Deletion01's completed-inverse drawing drift
are now independently restored with full exact native/public baseline checks.
See [retained recovery](bde-retained-layout-recovery.md) and
[attached order-only recovery](bde-attached-order-recovery.md). Both original
experiments remain FAILED. Completed inverses were never replayed. These separate
repairs do not implement production causal witnesses or pass general inverse gates.
Original AEB_1 Class recovery remains unresolved and its write hold stays.
The historical unrecovered-state descriptions below document their earlier state.

## Read-Only Lineage Increment

[Lineage07](../analysis/bde-experiments/2026-10-03/bde-drawing-lineage-07/result.json)
binds six attached objects and retained n15 to 333 complete raw objects/schemas.
Existing e1/e2 wrapper aliases are unique; their graphObject field points to the
exact object whose drawingOrder is observed. Physical membership is checked
against the raw SGBlockDiagram children field and drawing membership separately.
Registry/counter, native/public bookends and original failure files stay unchanged;
no model setters or store were called. This is identity evidence, not restoration.

Lineage04's e-1 collisions invalidate its identity metadata; its original result
is preserved. Lineage05 fails on the research runner's domain.diagram lookup;
Lineage06/07 correct that check and pass. The five focused offline tests reject
collisions, missing members, altered scope/registry/setter evidence and raw layout
tampering. The research command is absent from normal production builds.

The remaining problem is causal original ordering. Capturing today's exact objects
does not establish where the retained n15 preceded objects restored by the earlier
inverse. Preserve the ambiguous-gap refusal and write hold until original ordering
evidence is proven and a separate durable recovery is prepared. Neither completed
primary inverse nor completed Deletion01 inverses may be replayed.

## Current Implementation And Evidence

The production delete/disconnect profile now captures the complete sorted native
drawing roster and exact normalized numbers separately from physical children.
Five fixed helper blocks are bound by the C# bridge. Before/expected images and
actual drawing effects stay in the WAL; agent receipts/diff return compact
changed-member summaries. Native inverse merges both sequences and verifies the
stored sorted sequence/numbers. Python independently recomputes the merge.
Recovery validates original/CURRENT/actual evidence; released records require
complete original and inverse preparation, actual effects and matching summaries.
Losing inverse drawing preparation cannot silently bypass validation.

[Preflight01](../analysis/bde-experiments/2026-10-03/bde-drawing-preflight-01/result.json)
fails before setters because this Smalltalk runtime lacks four-argument Block
value dispatch. The helper now uses a three-argument block returning a one-argument
block. [Preflight02](../analysis/bde-experiments/2026-10-03/bde-drawing-preflight-02/result.json)
passes compiler/binding/normalized-number checks on an unchanged existing fixture.

[Deletion02](../analysis/bde-experiments/2026-10-03/bde-independent-deletion-02/result.json)
passes three real literal_fanout disconnect/independent-literal-delete/original-
inverse/secondary-inverse rounds. Complete native graphs and exact public order
restore; the first inverse preserves the secondary deletion. The independently
[audited WAL](../analysis/bde-experiments/2026-10-03/bde-drawing-summary-01/result.json)
checks 12 actual drawing operations. Edit samples493.587-512.442ms; first inverse
samples512.123-647.320ms. These are three samples, not P95/full-family performance.

[Deletion03](../analysis/bde-experiments/2026-10-03/bde-independent-deletion-03/result.json)
FAILS completion on an operator_chain fixture. The original operator/two-edge
inverse verifies and preserves the independent literal deletion. Its separate
secondary inverse then refuses before setters with DRAWING_RESTORE_GAP_AMBIGUOUS:
objects restored by the first inverse occupy the second patch's restoration gap.
Three-way before/applied/current alone cannot infer their relative drawing order.
[Diagnostic02](../analysis/bde-experiments/2026-10-03/bde-independent-deletion-diagnostic-02/result.json)
reproduces two native refusals with zero setters/store, unchanged complete current
public/native bookends and unchanged original files. The secondary original record
is still applied/retained; the unconnected final literal is still deleted. This
diagnostic pass is not restoration acceptance. Further new write experiments on
the owned instance stop until genuine identity-bound recovery is established.

Next: preserve and validate causal ordering witnesses across related journal
patches/native original objects, recover this retained literal without guessing a
same-gap position, and separately recover Deletion01's already-completed order
drift. Do not replay completed inverses, weaken ambiguous-gap refusal, clear native
registries or replace retained originals. Then expand type/endpoint/stale/fault/UI/
AEB_Core/FLOW/package acceptance. Original AEB_1 Class recovery remains separate.

Offline117 passes768Python/21Doge/1042assertions/version;6live Doge skips remain.
The C# decoder passes68offline assertions. Native reply-loss recovery with the new
drawing contract remains untested. Final offline and online source-manifest
rechecks show zero drift. All-family normalized-number
coverage remains unverified. Entire delivery stays INCOMPLETE.

## Original Failed Candidate

Whole BDE delivery remains INCOMPLETE. The new independent deletion experiment
does not pass acceptance. The production implementation was not changed in this
increment; the experiment runner and evidence auditor gained a `delete_literal`
case and a separate formal inverse of that secondary deletion.

## Observed Result

[Deletion01](../analysis/bde-experiments/2026-10-03/bde-independent-deletion-01/result.json)
performed one real round on the owned PID39624/32641 disposable runtime:

1. Delete the original operator and its three connections.
2. Independently delete the unconnected `3.0` literal and its pin.
3. Revert the original deletion while preserving that later deletion.
4. Formally revert the secondary deletion.

Both inverse receipts report `verified_local`. The complete collected native
graph equals the original baseline after step4. The independent public getter
returns all the original complete rows, but node enumeration order differs:
`[15,1,5,9,11]` becomes `[1,15,5,9,11]`. The final exact public baseline check
therefore fails. No three-round or independent-deletion acceptance is granted.

[Diagnostic01](../analysis/bde-experiments/2026-10-03/bde-independent-deletion-diagnostic-01/result.json)
reproduces the discrepancy with zero model setters and no store call. Native
complete equality, public complete-row multisets and projected fields agree;
the exact public sequence does not. Independent before/after observations agree,
and every original failed-experiment file remains unchanged. Its `passed=true`
means that read-only diagnosis reproduced the failure, not that restoration or
the BDE tool passed. Full raw CURRENT material is saved separately.

## Source Evidence And Limits

The reconstructed call chain is:
`EtasAPIBlockDiagram>>getAllDiagramElements` ->
`EtasAPIDiagram>>getAllBlocks` -> `SGBlockDiagram>>blockChildren` ->
`SGBlockDiagram>>sortedChildren` -> `sortBlock` comparing
`basicGraphObject drawingOrder`.

`SGBlockDiagram>>rebuildOrderingNumber` visits `sortedChildren` and calls
`updateDrawingOrderBasic`; `RBBasicGraphicObject` assigns the manager's next number.
The actual secondary inverse raw diff changes integer graphical fields of both
literals. This is consistent with store-time ordering changes. The exact public
sequence cannot be dismissed as an unordered API artifact, and the verifier has
not been weakened to ignore it.

The existing physical `children` order checks do not establish drawing-order
restoration. The inverse's collected-value projection omits this field, so
`verified_local` currently has that documented coverage gap. General exact
graphical restoration remains unaccepted. The fixture is not an exact restored
baseline for reuse; its guard must continue to refuse the changed public result.

Next implementation must capture before/applied/current drawing-order identities
separately from physical child order, merge compatible later changes, persist the
prepared expected order before setters, and check the stored result through both
raw native material and the independent public enumeration. Do not normalize the
public sequence, replay either already completed inverse, clear native registries,
or infer successful restoration from equal node/edge counts.

## Reproduction

Use a new output directory. The recorded failed experiment is immutable.

```powershell
E:\PYTHON\python.exe scripts\bde_independent_deletion_diagnostic.py --experiment analysis\bde-experiments\2026-10-03\bde-independent-deletion-01 --output <NEW_OUTPUT>
```

The command requires the exact prepared disposable runtime. It is read-only and
cannot fix ordering or recover the separate original AEB_1 Class formal failure.
