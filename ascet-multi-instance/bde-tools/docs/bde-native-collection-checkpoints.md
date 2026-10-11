# Native collection checkpoints for BDE inverse

Status: fixed native capture/verification and Class material integration are
implemented. Current-state read-only native capture and copied-expectation
negatives have online evidence. Actual before/after retention across deletion,
original-object restoration and a local splice/WAL executor are NOT accepted.
The AEB_1 restoration hold remains unchanged.

The latest private checkpoint additionally captures exact keyed node/method-port
parent slots and every encountered member,including empty ports and hidden pins.
Keyed-plan02 covers92 collections/177 members including54 ports/10 hidden pins;
its276 collection checks are current-state no-op plans,not actual inverse steps.
`verifyKeyed` joins original/current guards; old material without keyed bindings
refuses. [Binding and fixed plan contract](bde-keyed-collection-plan.md).

The checkpoint now explicitly saves `scopeParents`/`scopeParentWrappers` for each
scope and verifies their exact contents refs with `verifyScopeParents`. Main uses
`topGraphicalHierarchy contents`, hierarchy scopes use `diagramElement contents`;
their entire children collections are captured even without a surviving member.
Native-copy-merge03 exercises7 direct parent bindings per round and verifies that
the saved Main wrapper is still the diagram's current root. Empty LIVE scopes
remain untested; empty-order private merge cases are not proof of their lifecycle.
The ordering core/private copy executor is now implemented; live splice/WAL is
still outstanding. [Current implementation](bde-collection-merge-core.md).

## Retained material

`bde_class_local_inverse_bindings.st` now has a private `capture` mode returning
a native Dictionary. It holds genuine object and manager references, exact
scope/ref-to-object maps, hierarchy contents ownership, registry/owner/specification
and generation, plus complete ordered membership of each encountered parent
`children` or pin-manager `interfaceGOs` collection. It saves the actual collection
object, an ordered member-reference array and each member's manager link.
Capture bounds managers, members, scopes, occurrences and source traversal.

Unlike exported manager token strings, these references survive subsequent calls
in the SAME native process while their checkpoint is retained. They are not a
serialized archive and do not survive an ASCET restart.

The checkpoint supplies fixed verifiers:

- `verify`: owner/specification, exact full saved collections/member links,
  hierarchy contents, pin owners and ordered edge connection points.
- `verifyCurrent`: the above plus exact registry diagram/generation/checkpoint/
  counter/edge mappings and current stored graphics source.
- `verifyCollections` / `verifyScopes`: validators for fixed internal diagnostic
  inputs. The agent cannot pass arbitrary native objects or Smalltalk.

"Complete" here describes the ENTIRE membership of each encountered immediate
parent collection. It does not mean all native object instVars/styles, every
descendant container/label in the graphical implementation, model contents or
effective configurations. The earlier checkpoint05 captured113 memberships equal
to113 projected occurrences. The latest keyed profile additionally captures54
method ports and10 hidden pins; this does not certify all other native families.

## Class integration

`bde_class_materialize.st` saves `bindingProfile=native_collections_v1` and
`originalBindings` during preparation, before publication of the recovery record.
After materialization and a complete read it saves `afterBindings` before entering
`applied`. A failed capture leaves the earlier native state outstanding; it never
fabricates a terminal applied/reverted result.

Original collection/manager checks join inverse verification, owner restore and
stored-inverse reconciliation through `verifyDetached`. The strict pre-signature
inverse verification also requires `afterBindings.verifyCurrent`. Records lacking
these checkpoints refuse; old original materials are not filled from the current
diagram. The existing whole-owner equality/generation checks remain in place.

The recovery probe exposes compact `class_native_recovery_v3` fields:

- `native_binding_profile`.
- `original_binding_checkpoint_present` / `original_full_collections_match`.
- `after_binding_checkpoint_present` / `after_native_bindings_match`.

Python enforces exact boolean types, the fixed profile and consistent claims. An
applied record with missing or changed checkpoints is a native recovery conflict.
Absent records remain unavailable for inverse. This extends the existing six tools;
it does not add a new tool or return the full native checkpoint to the agent.

## Online research boundary

The private `bde_class_binding_checkpoint_probe.st` captures a temporary checkpoint
through one Cebra call and verifies it in another. It checks wrong member order,
wrong manager links, a missing collection and a wrong scope/ref-to-object binding.
Negative inputs COPY checkpoint expectations; they do not alter the live graph.
The original checkpoint is verified again after the negatives. Temporary remote
handles are destroyed during normal cleanup; no Class study/recovery/edit record
is prepared or reserved by the probe.

Independent public getter bookends, complete collected observations and the
loopback Cebra counter cover the experiment. This is current-state observation,
not a delete/restore positive case or real setter/store/transport fault injection.
The model hold does not grant write permission for these diagnostics.

```powershell
E:\PYTHON\python.exe scripts\bde_class_detached_projection_experiment.py `
  --component 'BDE_Tool_Experiments\Trial_GeneralClass_20261002_050256_d0e048' `
  --bindings --checkpoints --repeats 3 `
  --output analysis\bde-experiments\2026-10-03\fresh-native-checkpoints
```

Use a fresh output directory. Native-checkpoints01 retains a bracket compilation
failure.04 retains the unsupported `Set>>first` diagnostic; key enumeration now
selects a multi-object scope without assuming Set indexing.02/03 are earlier
passing candidates. Native-checkpoints05 is the final scoped-map candidate.

## Remaining executor

The next executor must use the retained native scope/object bindings to compute
and verify original-object splices into the current graph, preserve independent
objects/fields/order, reconnect exact current pins and journal current-state
recovery BEFORE setters. No original graph is copied over a modified current
registry. Signature/caller/configuration and original detached field guards still
apply. Native merge, durable archive/linking, real partial/fault recovery and the
unrecovered display01 case remain separate required gates.
