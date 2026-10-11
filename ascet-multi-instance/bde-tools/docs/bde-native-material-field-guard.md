# Native Class recovery material field guard

Latest collection extension: the current recovery-v3 probe also checks retained
original/after actual scope/object bindings and complete immediate parent member
order/links. The graphical projection below remains the separate field guard;
the earlier recovery-v2 evidence is historical. Actual detached-original inverse
and native local splice/WAL remain unaccepted.
[Collection checkpoint contract](bde-native-collection-checkpoints.md).

Status: fixed native graphical projection and refusal integration implemented.
Current-state read-only projection passes three independently public-bookended
rounds. Positive detached-original capture/verification after real deletion and
merged native inverse remain unaccepted. AEB_1's restoration hold is unchanged.

## The Missing Check

The original recovery material kept native object references and verified their
ordered identity list. A detached object could keep its identity while its fields
changed. Restoring its whole diagram could then publish modified geometry, text,
pin ordering or routes, even though current collected values matched actual-after.

`bde_class_detached_projection.st` reads a supplied native diagram directly. It
does not select/reload the component's live diagram, change the structural registry,
create recovery records, call setters or call `StoreToCache`. Its values are
serialized immediately into a private immutable string checkpoint.

Collected fields are ordered scopes/nodes/pins/edges/comments, native IDs/classes,
node anchor and frame, selected node text/type/element alias, connector/method
aliases, pin owner/direction, sequence identity/number/alias/label/frame and routes.
Scope depth/count, object count, text and payload are bounded. This is a declared
graphical projection, not all native instVars/styles or complete detached model
contents. Those broader restoration gates remain required.

## Integration

`bde_class_materialize.st` captures `detachedProfile=collected_graphics_v1` and
`detachedFields` during preparation before the record is published. It compares
the original retained diagram to that string in inverse preflight, before owner
restore setters, and during stored-inverse reconciliation. Existing records
without the field checkpoint refuse; no current state is substituted for before.

The earlier fixed recovery probe reported `class_native_recovery_v2` with:

- `detached_fields_profile`.
- `current_graphical_fields_observed`.
- `original_graphical_fields_checkpoint_present`.
- `original_graphical_fields_match`.

Python validates exact JSON boolean types, profile and per-owner coverage. A changed
or missing original field checkpoint produces `NATIVE_RECOVERY_CONFLICT` when an
applied material record exists. An absent material still produces the separate
unavailable refusal. The tools do not deliver the full graphical checkpoint to
the agent. It is retained only in native memory, not restart recovery material.

The block reader is bound through a one-argument outer block, followed by the
existing three-argument call. In this tested bridge the direct four-argument
`value:value:value:value:` call failed with error 102; currying passed. The failed
native compile/call experiments remain in detached-preview01/02. The current
preview additionally compiles/binds the material template without invoking any
prepare/restore action.

The existing strict all-owner inverse remains in place. This guard is a prerequisite
for a future local inverse, not an implementation of a merged restore. Native
merge/WAL execution, signature/dependencies, new effective configuration guards,
partial outcomes and positive retained recovery still require acceptance.

## Evidence And Reproduction

`bde-class-detached-oracle-02` passes three current-state rounds, each with four
owners/seven scopes/31 nodes/59 pins/23 edges and no comments. Field-by-field public
bookends and complete collected observations are unchanged. The oracle compares
every declared node/pin/route value available from those observations. Public API
node position is the frame origin, distinct from the native anchor. No comments
in this fixture means no positive comment-family acceptance.

The three measured middle observations take 950.197-1059.379 ms and 208 request
frames each. Those intervals exclude public bookends and are neither a 30-sample
performance gate nor formal `bd_read` latency. No model edit or original-state
restoration is performed. Actual detached-original post-deletion positive checks
remain unverified.

```powershell
E:\PYTHON\python.exe scripts\bde_class_detached_projection_experiment.py `
  --component 'BDE_Tool_Experiments\Trial_GeneralClass_20261002_050256_d0e048' `
  --repeats 3 --output analysis\bde-experiments\2026-10-03\fresh-detached-oracle
```

Use a fresh output directory. The experiment observes current diagrams only,
preserves the existing hold and never prepares retained recovery material.
Offline negative oracle tests use recorded native values; they are not native
mutation or restoration evidence.

The pure three-way inverse analyzer also rejects a restored edge when an existing
unrelated edge was later redirected onto its input. This includes edges whose
IDs already existed in actual-after; dependency checks are not restricted to
newly created edges. Conflicting resources expose no candidate merged patch.
