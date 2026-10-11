# BDE collection merge core

Status: bounded value planning and native splice execution on PRIVATE collection
copies are implemented. A live graph splice/WAL executor is NOT accepted or
enabled. The AEB_1 restoration hold and strict whole-owner inverse guards remain.

The next implemented layer captures complete keyed parent/member references and
builds a conservative fixed native bound plan with current/original refs and
current container/order/links.3 real-current no-op rounds pass; changed-generation/
detached-object/subtree lineage remains refused. No live graph execution or WAL.
[Current contract and evidence](bde-keyed-collection-plan.md).

## Implemented behavior

`scripts/bd_collection_merge.py` compares original, actual-after and current member
orders. It emits minimal removals and insertions, keeps independent current
members in their current relative order, and does not recreate independently
deleted untouched originals. It refuses duplicate identities, a missing edit-added
member, a restore member already present, changed shared ordering, and an
independent insertion occupying the same gap as a restored member. Reordering by
the original edit remains unsupported for this member-splice profile.

For example, undoing `[a,x,b] -> [a,b]` on current `[a,b,new]` yields
`[a,x,b,new]`. Current `[a,new,b]` refuses with `RESTORE_GAP_AMBIGUOUS`; neither the
saved absolute index nor a same-name search proves x's order relative to new.
Identities are exact scoped refs supplied by the surrounding graph analysis.
These strings alone never authorize a native operation.
Python splice slots are zero-based. The private native core uses Smalltalk's
one-based slots; neither representation is a live tool operation.

The Class inverse value analyzer now uses this plan for changed node pin
collections with independent later membership changes. Existing row/field/
generation/dependency and occupied-input checks still apply, as do native
signature/configuration rechecks. `collection_plans` reports conflicts and
compatible ordered value proposals. All plans retain `write_authorized=false`,
and the formal inverse keeps its strict all-owner actual-after baseline gate.
Held/expired records still return `patch_analysis="not_checked"` without Cebra.

`scripts/bde_native_collection_merge.st` implements the same bounded ordering
policy using `IdentityDictionary` and actual native object references. It executes
the minimal splice list only on a NEW local OrderedCollection and checks the
result with `==` identity comparisons. It never sets a member's manager, touches
parent collections, stores a diagram, or swaps a registry. This is an executable
copy-splice core, not the remaining model executor or a model actual diff.
Its traversal/planning uses bounded linear passes; replaying indexed insertions
on an OrderedCollection can be quadratic. No live thousand-node edit latency
claim is made from the offline thousand-member ordering assertion.

## Direct Parent Binding

The native checkpoint now records a parent for EVERY collected scope, including
an empty scope: Main uses `diagram topGraphicalHierarchy contents`; a hierarchy
uses `scope diagramElement contents`. The exact wrapper and contents references
are retained separately and verified across calls. Complete root `children`
membership is captured even when no projected object supplies a manager.
`verifyScopeParents` refuses replaced/missing/wrong contents refs.
It also requires the saved Main wrapper to be the diagram's CURRENT
`topGraphicalHierarchy`, so intact detached old containers cannot pass that
provenance check. A real wrapper reload/fault case remains unaccepted.

The decompiled call chains guiding this implementation are:

- `EtasAPIDiagram>>getAllBlocks` uses `topGraphicalHierarchy contents blockChildren`,
  in `unpacked/smalltalk-source/ASDBase.ic/EtasAPIDiagram.st:1031`.
- `EtasAPIBlockDiagramHierarchy>>getAllDiagramElements` uses
  `diagramElement contents blockChildren`, in its recovered source at line490.
- `RBGraphicObjectCollection>>addGO:display:` also sets the member's manager;
  `SGMethodInterfacePortGO>>addInterfaceGO:` only changes its collection.

The last distinction means copied membership success cannot prove a pin can be
restored into the current method-port manager. Exact pin owners, formal/method
aliases and both current connection points must be bound before a live splice.
Root discovery no longer relies on a surviving sibling. Empty LIVE scopes and
additional hidden-member families are not positively covered by this fixture;
the empty-parent merge cases below use private simulated sequences.

## Evidence

[Native-copy-merge03](../analysis/bde-experiments/2026-10-03/bde-native-copy-merge-03/result.json)
passes3 rounds with complete independent public bookends:4 owners,7 scopes,
31 nodes,59 pins,23 edges,0 comments each. Each round retains113 native objects/
members in51 immediate collections and checks7 direct parent bindings.

Each owner runs12 cases using retained real member refs and locally constructed
orders: preserved prefix/append, deletion inverse, creation inverse, independent
deletion, empty order, ambiguous gap, identity collision, missing removal,
current/edit reorder and duplicate identity. All144 cases pass.48 native checkpoint
negatives and24 existing missing-map/reconstructed-edge negatives also pass.
There are no model setters, native Class recovery/edit allocations or new
assertions; the31-file research source manifest has no drift.

Middle diagnostic elapsed1160.446-1200.124ms/297 request frames includes native
capture and multiple diagnostics, but excludes the independent public bookends.
It is not `bd_read`, edit latency, a30-sampleP95 or a1s acceptance result.
Native-copy-merge01/02 are earlier passing candidates;03 adds the current Main
wrapper provenance check. No performance improvement is inferred from them.

[Offline95](../analysis/bde-experiments/2026-10-03/offline-contract-95/result.json)
passes577 Python tests,21 Doge tests/1042 assertions and version.6 live skips are
unverified. This covers ordering preservation/refusal, bounded/exhaustive small
cases, a1000-member value case, pin-plan integration and typed native summaries.

[Safety11](../analysis/bde-experiments/2026-10-03/bde-continuation-safety-11/result.json)
confirms all29 original files and the hold unchanged; restored=false. Safety09
retains the failed invocation that used a continuation audit without the original
hash baseline; it failed BEFORE comparison, and has no preservation verdict.

```powershell
E:\PYTHON\python.exe scripts\bde_class_detached_projection_experiment.py `
  --component 'BDE_Tool_Experiments\Trial_GeneralClass_20261002_050256_d0e048' `
  --bindings --checkpoints --merge-copies --repeats 3 `
  --output analysis\bde-experiments\2026-10-03\fresh-copy-merge
```

Use a fresh output path; do not dispatch another experiment while one is running.

## Remaining Model Executor

1. Bind original/after/current scoped objects and exact current managers,
   including empty method-port collections and edges with no persistent ID.
   Endpoint/route equality cannot establish an original edge binding.
2. Validate all touched fields and dependencies, then retain and durably journal
   the CURRENT state before setters, with per-step started/observed outcomes.
3. Splice original objects into current collections, rebind managers and current
   pin connection points, and undo only actual touched fields. Do not replace
   the current diagram/registry or replay copy plans as authorization.
4. Independently verify actual unrelated changes, partial/store/transport faults,
   shared callers and original identities. Genuine display01 restoration remains
   separate and is required before further model writes in AEB_1.

Full UI/FLOW/AEB_Core/type coverage and the verified release package remain open.
