# Create and connect in one BDE plan

2026-10-02. The existing six Doge tools accept an immutable construction plan.

New Main hierarchy creation returns actual `scope_effects`, graphical
`scope_differences` and immutable `scope_after_snapshots` alongside its parent
patch and `after_snapshot`. Use the matching child snapshot for a subsequent
single child edit without another `bd_read`. These are creation-time observations;
later component declaration changes are not silently merged into the child
snapshot. Diff queries remain journal-only. Parent/child native presentation
uses separate exact canvases. Scope03 passes three rounds / nine cases including
actual child patch audits and apply/inverse lost-reply reconciliation; complete
child screenshot visual lifecycle acceptance remains pending.
Construction04 has three-round evidence for its declared cases; visual01 has
three-round Main fanout lifecycle evidence. New hierarchy ports pass interfaces03;
existing hierarchy port create/delete passes ports08 three rounds / 42 cases,
and full eval is incomplete. Inspect the experiment report before treating
the contract as a verified release. Writes require
`ASCET_BD_STRUCTURAL_WRITES=1` and isolated `BDE_Tool_Experiments\Trial_*` owners.

## Calls

Read each participating scope once with `bd_read(view="structure")`, including
all pages. Use `bd_inspect` to plan 2..16 explicitly ordered operations:

```json
{
  "query": "flow_plan",
  "steps": [
    {"snapshot": "s_scope", "operations": [
      {"op": "create_block", "kind": "literal", "name": "731.25", "position": [400, 300]}
    ]},
    {"snapshot": "s_scope", "operations": [
      {"op": "create_block", "kind": "operator", "name": "+", "arity": 2, "position": [740, 300]}
    ]},
    {"snapshot": "s_scope", "operations": [
      {"op": "connect_data", "source": {"step": 0, "direction": "output"},
       "target": {"step": 1, "direction": "input", "name": "in#1"}}
    ]},
    {"snapshot": "s_scope", "operations": [
      {"op": "connect_data", "source": {"step": 0, "direction": "output"},
       "target": {"step": 1, "direction": "input", "name": "in#2"}}
    ]}
  ]
}
```

`steps` and existing-pin `segments` are mutually exclusive. Repeated scopes use
the same complete immutable snapshot. An endpoint can also be an existing exact
structural pin ref. Generated selectors refer only to an earlier creation in the
same scope; direction is mandatory, name is optional only when that directional
pin is unique. Step numbers are zero based.

Execute the returned plan with `bd_edit`:

```json
{"request_id":"build-01","operations":[{"op":"connect_path","plan_ref":"plan_from_inspect"}]}
```

Optional `preview=true` checks all initial live scopes and creation operations.
Future pin existence, uniqueness and connection constraints are checked after
the actual creation, before that connection's setter. Preview cannot prove a
future pin will exist. Ambiguity stops later steps and returns a recoverable
partial group.

## Actual patches and recovery

A creation may use `definition: {"step": 0}` to select an earlier enum creation
with `new_definition`. This form is available for enum variables and messages
(`model_type="enum"`) belonging to the same exact component owner. The selected
library path and OID are taken from the verified actual creation patch and
library effect. Missing or unknown evidence stops later setters. Cross-owner
shared enum dependencies remain unavailable.

For example, create an enum variable with ordered items, create an enum message
that selects its type, and connect their generated pins in the same plan:

```json
{"query":"flow_plan","steps":[
  {"snapshot":"s_main","operations":[{"op":"create_block","kind":"enumeration","name":"Mode","position":[300,200],"new_definition":{"name":"Trial_Modes","items":["Off","On"]},"initial_value":"Off"}]},
  {"snapshot":"s_main","operations":[{"op":"create_block","kind":"send_message","name":"ModeMessage","position":[620,200],"model_type":"enum","definition":{"step":0},"message_scope":"local"}]},
  {"snapshot":"s_main","operations":[{"op":"connect_data","source":{"step":0,"direction":"output","name":"get/get"},"target":{"step":1,"direction":"input","name":"set/aValue"}}]}
]}
```

This is a declaration and diagram connection; a local message does not certify
any Project channel or runtime delivery. Initial live scope checks precede any
setter; the future definition is validated after creation, before its dependent
setter. Whole-group inverse checks raw library references and declarations,
including later references from the same component. It rejects references outside
the recorded group before changing any resource. Enum02 passes three rounds /
12 cases for normal, external conflict and three real lost-reply cases, with
complete graph/public/model/type restoration.

Grouped tables may use `x_distribution: {"step": 0}` and, for 2D,
`y_distribution: {"step": 1}` to select earlier distribution declarations from
their verified actual model refs. `kind="existing_model", model={"step": 4}`
places another occurrence of that earlier declaration; its name is derived from
the actual model and must not also be supplied. All these dependencies require
the same exact component owner. Models02 passes three rounds / nine cases,
including controlled reply loss and complete reverse restoration.

Creation records actual nodes, pins and declarations. Subsequent expectations
apply verified prior patches; component-wide declaration effects propagate to
other scopes of the same owner. IDs are never predicted from names, coordinates
or enumeration order. Each resolved intent is durable before dispatch. No
per-creation agent `bd_read` is needed.

The result contains a `flow_` ID, per-step actual patches and immutable
`after_snapshot` values. Creation snapshots cover the complete selected scope;
connection snapshots cover their selected closure. Neither is a new full
component semantic read. `bd_diff` and identical request replay are offline.

Unknown outcomes stop dependent writes. Explicit recovery reads retained native
terminal evidence, recomputes the dependency request and checks the durable
resolved intent. It never replays a setter or continues later steps.

Group inverse checks all current scopes, native owner/graph/ancestor, exact
node/edge/pin identity, parent order and declaration references. It virtually
reverses every actual patch, including cross-scope model effects, before any
restoration. Real inverse then runs in reverse order with per-step checks. The
group is sequential and non-atomic.

`bd_diff(change_id="flow_...",presentation="show"|"clear")` coalesces actual
geometry per exact canvas. A token prevents an old clear from removing a newer
diff. Native success and screenshot acceptance remain separate evidence levels.

## Scope

Construction includes literal, comment, operator/control, Main hierarchy,
variable/parameter/constant, three message roles, array/matrix/distribution,
one/two-dimensional ordinary/fixed tables, resource/delta_t/implementation_cast,
existing enum and Class definitions, plus data connections. Shape and existing
definition combinations pass shapes02 three rounds on an isolated Module fixture.
New shared enum definitions and same-owner definition selectors pass enum02
three rounds / 12 cases, including declaration conflicts and controlled real
apply/inverse reply loss. Grouped table and existing_model dependencies pass
models02 three rounds / nine cases. Cross-owner shared definition dependencies
remain unavailable. Single-operation tools retain those creation kinds.
Existing hierarchy port create/delete passes ports08 three rounds / 42 cases;
Class interface edits are not yet available.

For an existing hierarchy, `bd_edit.operations` accepts
`{"op":"create_hierarchy_port","target":"Main/n12","direction":"input","name":"InputName"}`
or `{"op":"delete_hierarchy_port","target":"Main/p13"}` using the exact external
pin from its parent structure snapshot. Deletion records incident data edges on
both sides. Actual `scope_effects`, `scope_differences` and `scope_after_snapshots`
cover the child and every descendant boundary context. Inverse preflight checks
all affected scopes before restoring original interfaces, child/parent order and
incident edges. Do not select an interface by name or coordinate. Interface edit
screenshots/lifecycle and graph/database reload remain unverified.

A new Main hierarchy can declare `inputs`/`outputs` and expose those exact
external pins to later steps. The native group preflight checks its child graph,
children identity and order before any inverse; later child edits refuse the
whole inverse. Actual patches include the parent and a distinct child scope
effect. A subsequent child edit can use its scope_after_snapshot without an
extra read; one construction plan still cannot refer to that new child scope.

Cross-Module messages require explicit scope/type/role and the specified
Project's candidate/binding validation. Separate edges do not certify a channel.
Existing `project_messages`, `interfaces` and `project_signal_path` queries give
that static check; execution schedule and runtime delivery remain unverified.

Construction01 (wrong graphical-parent assumption) and construction02 (integer
operator arity treated as an enum string in recovery) failures are retained.
Separate late-cleanup evidence proves normal journal restoration and full
native/public/model baseline recovery. See [the report](bde-tools-experiment-report.md).
