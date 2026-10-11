# Retained registered SG model patch prerequisite

`bde_registered_model_patch.st` converts the audited SG three-part snapshot
`[kind, ordered field names, original values]` into the native field planner's
two-part image. Native object keys, fields and saved references retain their
original identities. It checks actual runtime schema, complete original-object
membership, immutable kind/schema, supported collection classes and value size.
It delegates three-way field/index/key/member/order guards and execution to
`bde_native_field_patch.st`; it grants no additional production authority.

The fixed read-only `registered_model_patch_preflight` binds the original v6
prepared edit and registered-model capture. It retains a separate bounded query
and patch list with no eviction; CURRENT never becomes an edit-after receipt.
Actual original/current images and differences are exported and independently
recomputed. The existing isolated Module returns 271/271 complete observed
objects, zero candidate cells and compatible=true. No plan executes.

The separate `registered_model_patch_private` control allocates six private
object types: string, point, array, ordered collection, dictionary and set.
Actual forward images contain seven changes. Undo, redo and second undo each
execute seven primitives. Touched scalar overlap rejects execution with zero
primitives; independent field, key, member and order insertion survive both
undo and redo. Missing originals, changed schema, resized values, mutable
opaque boundaries and changed introduced-object contents are rejected.
Terminal original private identities and contents are independently checked.

Both commands are eval-build-only and require
`ASCET_BD_REGISTERED_MODEL_PATCH_STUDY=isolated_v1` plus an exact isolated
`BDE_Tool_Experiments\Trial_*` ordinary Main owner. There is no public Doge
operation exposing these controls. Native compilation/query unknown outcomes
retain helpers and are never replayed.

The initial private control used shared-member reorder; the existing audited
order merge rejects that case (`EDIT_REORDER_UNSUPPORTED`). The failed trace
and original sources remain archived. The successful case uses insertion and
deletion, and does not relax the reorder guard. A local test run also initially
failed because a relative fixture-copy path used the wrong working directory;
the fixture was copied by absolute path and all 44 targeted controls passed.
These failures are not counted as successful online acceptance.

The real v6 before includes explicit DBProxy/DBObject boundaries: 271 observed
objects are not full transitive model coverage. Cache membership, modified
registrations, replacement source identities, CTree control state and persistent
records need their own guarded plans and actual Store/inverse verification.
No Store/Commit or registered SG mutation was dispatched in this checkpoint.
T3.1/T5.1, Message 0/60, 43 required and full_delivery=false remain unchanged.

Evidence: `../analysis/bde-experiments/2026-10-11/bde-registered-model-patch-increment-02/README.md`.

Frozen replay initially failed an eager live-only image_patch import. Moving
the builder import into the experiment entrypoint preserves standalone offline
validation. Portable replay initially failed an existing test assuming resources
lived beside tests; its resource lookup now also uses the package scripts folder.
Both failure logs are retained; the final portable suite passes 389 tests.
