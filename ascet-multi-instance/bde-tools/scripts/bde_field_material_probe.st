[:component :token |
 component handleExceptionsIn: [
 | record current roots root phases out plans actualPlans localPlans |
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 ((record at: 'owner') == component item and: [(record at: 'component') = component getOID])
   ifFalse: [component error: 'Native field material owner differs'].
 (#('set_literal' 'set_comment' 'move_node' 'set_edge_route') includes: (record at: 'operation'))
   ifFalse: [component error: 'Native field material operation unavailable'].
 roots := Smalltalk at: #DogeBDEStructureIdentityV2.
 root := roots at: (component getOID, '/', ((record at: 'diagramName') subStrings: $/) first).
 ((root at: 'owner') == component item and: [(root at: 'diagram') == (record at: 'diagram') and: [
   (root at: 'specification') == (record at: 'diagram') specification]])
   ifFalse: [component error: 'Native field material scope expired'].
 current := record at: 'fieldNativeBefore' ifAbsent: [component error: 'Complete original field material unavailable'].
 phases := Dictionary new.
 #(('prepared' 'fieldNativePreparedImages' 'fieldNativePreparedActual')
   ('original_applied' 'fieldOriginalAfterImages' 'fieldOriginalAfterActual')
   ('applied_pre_store' 'fieldAppliedPreStoreImages' 'fieldAppliedPreStoreActual')
   ('applied_post_store' 'fieldAppliedPostStoreImages' 'fieldAppliedPostStoreActual')
   ('applied' 'fieldAppliedImages' 'fieldAppliedActual')
   ('reverted_pre_store' 'fieldRevertedPreStoreImages' 'fieldRevertedPreStoreActual')
   ('reverted_post_store' 'fieldRevertedPostStoreImages' 'fieldRevertedPostStoreActual')
   ('reverted' 'fieldRevertedImages' 'fieldRevertedActual')) do: [:phase |
     (record includesKey: (phase at: 2)) ifTrue: [phases at: phase first put: (Dictionary new
       at: 'graph' put: ((current at: 'imageFor') value: (record at: (phase at: 2)));
       at: 'fields' put: ((current at: 'diagnosticsFor') value: (record at: (phase at: 2)));
       at: 'actual' put: (record at: (phase at: 3)); yourself)]] .
 plans := Dictionary new.
 (record includesKey: 'fieldNativePatchFactory') ifTrue: [
   #('undo' 'redo') do: [:direction | | plan |
     plan := (record at: 'fieldNativePatchFactory') value: component
       value: (Array with: (current at: 'snapshots') with: (record at: 'fieldNativePreparedImages')) value: direction.
     (plan isKindOf: Dictionary) ifFalse: [component error: plan asString].
     plans at: direction put: (Dictionary new
       at: 'profile' put: (plan at: 'profile'); at: 'direction' put: (plan at: 'direction');
       at: 'cell_count' put: (plan at: 'cells') size;
       at: 'introduced_object_count' put: (plan at: 'introduced') size;
       at: 'progress' put: (plan at: 'progress') copy;
       at: 'current_matches_expected' put: (plan at: 'verifyBeforeApply') value;
       at: 'current_matches_desired' put: (plan at: 'verifyDesired') value;
       at: 'write_authorized' put: (plan at: 'write_authorized');
       at: 'execute_called' put: false; yourself)
   ]
 ].
 actualPlans := Dictionary new.
 localPlans := Dictionary new.
 ((record includesKey: 'fieldLocalProfile') and: [(record at: 'state') = 'prepared']) ifTrue: [| privateRecord typed |
   privateRecord := record copy. typed := record at: 'fieldLocalHeadBeforeValues'.
   privateRecord at: 'fieldLocalHeadAfterNative' put: (record at: 'fieldLocalHeadBeforeNative');
     at: 'fieldLocalHeadAfterSource' put: (record at: 'fieldLocalHeadBeforeSource');
     at: 'fieldLocalHeadAfterValues' put: typed.
   #('undo' 'redo') do: [:direction | | plan |
     plan := (record at: 'fieldLocalPlanner') value: component value: privateRecord value: (Array with: typed with: direction).
     (plan isKindOf: Dictionary) ifFalse: [component error: plan asString].
     localPlans at: direction put: (Dictionary new at: 'profile' put: (plan at: 'profile');
       at: 'compatible' put: ((plan at: 'values') at: 'compatible');
       at: 'native_cells' put: ((plan at: 'nativePatch') at: 'cells') size;
       at: 'source_cells' put: ((plan at: 'sourcePatch') at: 'cells') size;
       at: 'current_verified' put: (plan at: 'verifyBeforeDispatch') value;
       at: 'execute_called' put: false; yourself)
   ]
 ].
 #(('undo' 'fieldOriginalUndoPatch') ('redo' 'fieldOriginalRedoPatch')) do: [:entry |
   (record includesKey: entry last) ifTrue: [| plan |
     plan := record at: entry last.
     actualPlans at: entry first put: (Dictionary new
       at: 'profile' put: (plan at: 'profile'); at: 'direction' put: (plan at: 'direction');
       at: 'cell_count' put: (plan at: 'cells') size;
       at: 'introduced_object_count' put: (plan at: 'introduced') size;
       at: 'progress' put: (plan at: 'progress') copy;
       at: 'current_matches_expected' put: (plan at: 'verifyBeforeApply') value;
       at: 'write_authorized' put: (plan at: 'write_authorized'); yourself)
   ]
 ].
 out := Dictionary new at: 'profile' put: 'native_field_material_v1'; at: 'token' put: token;
   at: 'component_oid' put: component getOID; at: 'diagram' put: (record at: 'diagramName');
   at: 'operation' put: (record at: 'operation'); at: 'state' put: (record at: 'state');
   at: 'original_graph' put: (current at: 'originalImage');
   at: 'original_fields' put: (current at: 'fieldDiagnostics') value;
   at: 'phases' put: phases; at: 'source_before_retained' put: (record includesKey: 'fieldNativeSourceBefore');
   at: 'native_source_images_before_retained' put: (record includesKey: 'fieldSourceMaterialBefore');
   at: 'native_source_images_after_retained' put: (record includesKey: 'fieldSourceMaterialAfter');
   at: 'native_source_images_before_objects' put: ((record includesKey: 'fieldSourceMaterialBefore')
     ifTrue: [((record at: 'fieldSourceMaterialBefore') at: 'snapshots') size] ifFalse: [0]);
   at: 'native_source_images_after_objects' put: ((record includesKey: 'fieldSourceMaterialAfter')
     ifTrue: [((record at: 'fieldSourceMaterialAfter') at: 'snapshots') size] ifFalse: [0]);
   at: 'native_source_root_preserved' put: (record at: 'fieldSourceMaterialRootPreserved' ifAbsent: [nil]);
   at: 'field_patch_preflight' put: plans;
   at: 'actual_field_patch_plans' put: actualPlans;
   at: 'local_inverse_preflight' put: localPlans;
   at: 'local_inverse_profile' put: (record at: 'fieldLocalProfile' ifAbsent: [nil]);
   at: 'local_inverse_head_id' put: (record at: 'fieldLocalHeadId' ifAbsent: [nil]);
   at: 'field_execution' put: ((record includesKey: 'fieldStatusReader')
     ifTrue: [(record at: 'fieldStatusReader') value: component value: record value: token] ifFalse: [nil]);
   at: 'original_after_source_retained' put: (record includesKey: 'fieldOriginalAfterSource');
   at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'native_identity_recreatable_from_export' put: false; yourself.
 (current at: 'encode') value: out
 ] ifFail: [:error | 'BDE_FIELD_MATERIAL_ERROR: ', error messageText]
]
