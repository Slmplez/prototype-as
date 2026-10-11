# Existing-pin connection plans

2026-10-02. Uses the six existing Doge BDE tools. Business originals remain
read-only during evaluation; writes require `ASCET_BD_STRUCTURAL_WRITES=1` and
isolated `BDE_Tool_Experiments\Trial_*` components.

## Read and plan

Read each participating canvas with `bd_read(component=..., view="structure",
scope={"diagram":"Main/h12"})`. Read all pages. Structure pin refs are
`Main/p<ID>` or `Main/h<ID>/p<ID>`; interface refs such as `Main/n<ID>.p<ID>`
belong to a different read-only view and are not structural edit refs.

Freeze 2..16 explicit existing output/input pairs:

```json
{
  "query": "flow_plan",
  "segments": [
    {"snapshot": "same_scope_snapshot", "source": "Main/p1", "target": "Main/p2"},
    {"snapshot": "same_scope_snapshot", "source": "Main/p1", "target": "Main/p3"}
  ]
}
```

`bd_inspect` loads immutable local observations only. The result includes a
SHA256 `plan_ref`, explicit resources, limits and `complete_signal_path=false`.
Fan-out is allowed; duplicate or occupied input, wrong direction, mixed
baselines, invalid references and a different session are rejected. Repeated
steps in one canvas require the same complete immutable scope snapshot.

This is a list of diagram segments, not proof of semantic transmission between
them. Project message bindings, Class formal boundaries and hierarchy crossings
must be read and checked separately. No name, coordinate or order matching is
used for endpoint selection.

## Edit, diff and inverse

```json
{
  "request_id": "connect-existing-01",
  "operations": [{"op": "connect_path", "plan_ref": "plan_ref_from_inspect"}],
  "preview": true
}
```

Call `bd_edit` without a top-level snapshot. Omit `preview` to apply. The
backend translates the plan into a restricted `connection_sequence` group.
This mode only adds edges between existing pins; it does not create declarations,
interfaces, blocks or new shared enum definitions in the same group.

All live resources are preflighted before any setter. Each dependent expectation
is derived from verified prior actual edge additions and exact native scope
counts. The resolved per-step intent is durable before dispatch. A rejected,
failed or unknown step stops later steps; the group is explicitly non-atomic.

Successful receipts provide a `flow_` change ID and per-step actual patches and
`after_snapshot` values with zero additional ASCET reads. These after snapshots
cover the observed closure only and cannot be treated as complete fresh scopes.
`bd_diff(change_id=...)` and identical request replay use local journals only.

`bd_revert(change_id=...,request_id=...,preview=true)` checks every current scope,
retained native owner/root/scope-chain/edge/pin identity, exact endpoints, and the
whole virtual reverse dependency sequence before the first inverse setter.
Actual inverse then runs in reverse order with existing native per-step guards.
External changes within the recorded closure or scope-count changes block
restoration. No externally edited value is overwritten to make a guard pass.

For an unknown outcome, use `bd_inspect(query="recovery",change_id=...,reconcile=true)`.
Reconciliation observes retained native records without setter replay and does
not continue unexecuted steps. A confirmed partial group can then be reverted.

## Original BDE display

`bd_diff(change_id=...,presentation="show")` coalesces same-scope edge additions
and checks the full group before drawing. Different nested canvases retain
separate callbacks; only the exact active native canvas draws its own routes and
`+ edge source -> target type` markers. `presentation="clear"` removes these
callbacks without replaying edits or altering the edit journal. Legacy single
patch and grouped presentation modes cannot coexist on the same component.

API calls and visual acceptance are separate. Native show/clear success alone
does not prove visibility, zoom/scroll behavior, window lifecycle or all diagram
types. The completed eval evidence and remaining gaps are maintained in
[the report](bde-tools-experiment-report.md).

## Evidence

- `bde-connection-path-01`: scope edge-count prediction failure retained.
- `bde-connection-path-01-late-cleanup`: normal inverse, full native/public/model
  baseline restoration; original failed result unchanged.
- `bde-connection-path-02`: one-round fan-out, multi-Module, two nested scopes,
  occupied-last-input rejection and second real apply reply loss; restored.
- `bde-connection-path-03`: same one-round coverage plus coalesced and nested
  original-window native show/clear; restored. Visual acceptance is pending.
- `offline-contract-41`: Python 255 tests; Doge 11 pass, 6 live/history skips,
  780 assertions; CLI version passed. This is offline evidence only.

Three-round online coverage and further display ownership checks are in progress.
No complete FLOW/G0-G7/L0-L3 release claim follows from these partial results.
