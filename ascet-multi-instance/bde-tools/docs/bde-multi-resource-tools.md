# Project paths and independent resource groups

2026-10-02. These additions use the existing six Doge tools. Business components
remain read-only; structural writes require `ASCET_BD_STRUCTURAL_WRITES=1` and
isolated `BDE_Tool_Experiments\Trial_*` components.

## Static Project path

Read a Project using `bd_read(view="project_messages")`, and each participating
component using `bd_read(view="interfaces")`. Then query:

```json
{
  "query": "project_signal_path",
  "snapshot": "project_snapshot",
  "components": [
    {"snapshot": "sender_interfaces", "instance": "exact_project_instance_ref"},
    {"snapshot": "receiver_interfaces", "instance": "exact_project_instance_ref"}
  ],
  "source": {"instance": "exact_sender_instance_ref", "ref": "exact_output_pin_ref"},
  "target": {"instance": "exact_receiver_instance_ref", "ref": "exact_input_pin_ref"}
}
```

The query uses immutable observations and sends zero Cebra requests. Joins require
the same Doge session, database token and ASCET process generation. It preserves
ambiguous candidates, instance ownership and edge multiplicity. Only verified
diagram connections, hierarchy pairings and uniquely selected compatible message
bindings form paths. Class argument-to-return behavior and runtime delivery are
not inferred. Results remain `editable=false`, `complete_signal_path=false`.

## Independent edits

```json
{
  "request_id": "two-resources-01",
  "steps": [
    {"snapshot": "first_structure_snapshot", "operations": [
      {"op": "create_block", "kind": "literal", "name": "1", "position": [320, 240]}
    ]},
    {"snapshot": "second_structure_snapshot", "operations": [
      {"op": "create_block", "kind": "literal", "name": "2", "position": [320, 240]}
    ]}
  ]
}
```

`bd_edit` accepts 2..16 distinct component OIDs, one supported operation each.
All resources are preflighted before the first setter; one live lock covers the
group. Each actual local patch and recovery token is durably recorded under a
`flow_...` ID. Repeated request IDs replay receipts, never setters. Unknown
outcomes stop later steps. The group is sequential and non-atomic.

`bd_diff(change_id="flow_...")` reads recorded actual patches offline. Optional
`presentation="show"|"clear"` operates each original BDE window and reports
per-resource failures. Native calls succeeded on two fixtures; complete visual
acceptance is pending. No cross-window data line is invented.

`bd_revert(change_id="flow_...",request_id="undo-01",preview=true)` checks every
actual after observation and every native inverse guard before any restoration.
Normal revert runs in reverse order and rechecks each step. External edits cause
conflict or partial restoration rather than being overwritten. Unknown group
outcomes require explicit reconciliation before group restoration.
`bd_inspect(query="edits")` includes group and inverse records.

```json
{"query":"recovery","change_id":"flow_...","reconcile":true}
```

Recovery checks each dispatched local intent against the durable group intent.
Only unknown local outcomes query retained native terminal observations; confirmed
local receipts require no native call. No setter is replayed and no later step is
dispatched. An interrupted group with confirmed modifications becomes `partial`
and may be reverted normally. Wrong sessions, missing intents, nonterminal native
records or mismatching current observations remain unresolved. Repeating a fully
confirmed group recovery uses zero frames. Corrected receipts append to the event
history; the current receipt retains only the latest outcome for each step index.

An inverse terminal observation must equal the original prepared state, including
known library effects, before it is marked verified and native recovery material
is released. A terminal restoration mismatch is recorded as `restore_mismatch`.
Shared enum reconciliation without terminal and current library evidence is
refused; an ordinary graph match cannot establish library restoration.

Supported group operations are create/connect/disconnect/rewire/delete/move,
literal/comment and sequence edits. Shared new enum definitions, dependent steps
within one component, channel creation and Class interface edits are unavailable.
Every observed step returns an immutable `after_snapshot` without another read.

## Evidence

- `analysis/bde-experiments/2026-10-01/bde-project-tools-04/result.json`:
  three live Project reads, 122 instances, public common-field equality.
- `analysis/bde-experiments/2026-10-01/bde-project-path-01/result.json`:
  three actual Doge queries for AEB5ms -> AEBdFxTarLoc -> AEBPost5ms, zero frames.
- `analysis/bde-experiments/2026-10-01/bde-revert-preflight-02/result.json`:
  three native literal inverse-preview/conflict/restoration cycles.
- `analysis/bde-experiments/2026-10-02/bde-group-tools-01/result.json` and
  `bde-group-tools-02/result.json`: three cycles each, two resources, full public
  tree/declaration restoration; second experiment also calls show/clear.

These are partial FLOW evidence. Full FLOW, G0-G7 and L0-L3 acceptance remains
uncertified, including reload identity, live group faults and complete visuals.

`2026-10-02/bde-group-recovery-01/result.json` adds three actual native fault
cycles: the second apply finishes, then a controlled adapter exception discards
its reply. The first two resources reconcile, the third stays unchanged, replay,
repeat recovery and diff send zero frames, and reverse restoration returns all
native/public/model observations to baseline. It is not wire truncation, OS
crash, partial native execution or a lost inverse reply. Initial fault dispatch
uses backend injection; subsequent recovery/diff/revert use actual Doge Tool.call.

`2026-10-02/bde-project-candidates-03/result.json` independently traverses Module
message declarations in three rounds. All 128 declarations, 61 imports and their
compatible candidate multisets agree with the production export lookup, and
public declarations/dirty/database token agree before and after. The compatibility
predicate `isSameVarAs:` is shared; non-message label candidates, ambiguity
fixtures and runtime communication remain outside this evidence.
