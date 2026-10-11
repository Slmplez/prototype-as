[:component :token |
 component handleExceptionsIn: [
 | record root current source phases out head retained owned |
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 ((record at: 'owner') == component item and: [(record at: 'component') = component getOID
   and: [#('disconnect_data' 'delete_node') includes: (record at: 'operation')]])
   ifFalse: [component error: 'Exact retained ordinary topology owner/operation required'].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at:
   (component getOID, '/', ((record at: 'diagramName') subStrings: $/) first).
 ((root at: 'owner') == component item and: [(root at: 'diagram') == (record at: 'diagram')
   and: [(root at: 'specification') == (record at: 'diagram') specification]])
   ifFalse: [component error: 'Topology material scope expired'].
 (record at: 'topologyCaptureProfile' ifAbsent: [nil]) = 'ordinary_topology_material_v1'
   ifFalse: [component error: 'Complete topology source capture unavailable'].
 current := record at: 'topologyNativeBefore'. source := record at: 'topologySourceMaterialBefore'.
 current == (record at: 'graphicalOriginal')
   ifFalse: [component error: 'Topology and original graphical materials differ'].
 phases := Dictionary new.
 phases at: 'prepared' put: (Dictionary new
   at: 'graph' put: ((current at: 'imageFor') value: (record at: 'topologyPreparedImages'));
   at: 'fields' put: ((current at: 'diagnosticsFor') value: (record at: 'topologyPreparedImages'));
   at: 'actual' put: (record at: 'topologyPreparedActual'); yourself).
 head := record at: 'topologyExecutedHead' ifAbsent: [nil].
 head notNil ifTrue: [#('before' 'after') do: [:phase | | native sourceHead |
   native := head at: phase, 'Native'. sourceHead := head at: phase, 'Source'.
   phases at: phase put: (Dictionary new
     at: 'graph' put: ((current at: 'imageFor') value: native);
     at: 'fields' put: ((current at: 'diagnosticsFor') value: native);
     at: 'values' put: (head at: phase, 'Values');
     at: 'source_objects' put: (sourceHead at: 'snapshots') size;
     at: 'source_current_matches' put: (sourceHead at: 'verify') value; yourself)
 ]].
 retained := (record at: 'operation') = 'disconnect_data'
   ifTrue: [Array with: (record at: 'retained')] ifFalse: [record at: 'retainedSet'].
 out := Dictionary new at: 'profile' put: 'ordinary_topology_material_v1';
   at: 'token' put: token; at: 'component_oid' put: component getOID;
   at: 'diagram' put: (record at: 'diagramName'); at: 'operation' put: (record at: 'operation');
   at: 'state' put: (record at: 'state'); at: 'original_graph' put: (current at: 'originalImage');
   at: 'original_fields' put: (current at: 'fieldDiagnostics') value;
   at: 'phases' put: phases; at: 'before_values' put: (record at: 'topologyHeadBeforeValues');
   at: 'source_before_objects' put: (source at: 'snapshots') size;
   at: 'source_before_current_matches' put: (source at: 'verify') value;
   at: 'native_before_current_matches' put: (current at: 'verify') value;
   at: 'source_root_current_same' put: ((source at: 'sourceRoot') ==
     (record at: 'diagram') specification specSourceInternalOrNil);
   at: 'retained_graphical_objects' put: retained size;
   at: 'endpoint_dependencies' put: (record at: 'edgeDependencies') size;
   at: 'parent_order_retained' put: (record includesKey: 'beforeOrder');
   at: 'drawing_order_retained' put: (record includesKey: 'drawingOriginalImage');
   at: 'original_ids_retained' put: (record includesKey: 'orderOriginalIds');
   at: 'execution_sequence' put: (record at: 'topologyExecutionSerial' ifAbsent: [0]);
   at: 'execution_direction' put: (head isNil ifTrue: [nil] ifFalse: [head at: 'direction']);
   at: 'execution_head_retained' put: head notNil;
   at: 'field_executor_bound' put: (record includesKey: 'fieldNativeBefore');
   at: 'managed_topology_inverse_enabled' put: false;
   at: 'local_inverse_profile' put: (record at: 'topologyLocalProfile' ifAbsent: [nil]);
   at: 'native_identity_recreatable_from_export' put: false; yourself.
 owned := record at: 'topologyOwnedHead' ifAbsent: [nil].
 out at: 'head_owner' put: (record at: 'topologyHeadId');
   at: 'owned_head_retained' put: owned notNil.
 owned notNil ifTrue: [out at: 'owned_head' put: (Dictionary new
   at: 'profile' put: (owned at: 'ownershipProfile'); at: 'owner' put: (owned at: 'owner');
   at: 'previous_owner' put: (owned at: 'previousOwner'); at: 'sequence' put: (owned at: 'sequence');
   at: 'before_state' put: (owned at: 'beforeState'); at: 'after_state' put: (owned at: 'afterState');
   at: 'before_values' put: (owned at: 'beforeValues'); at: 'after_values' put: (owned at: 'afterValues');
   at: 'before_parent_count' put: (owned at: 'beforeParentOrder') size;
   at: 'after_parent_count' put: (owned at: 'afterParentOrder') size;
   at: 'before_drawing_count' put: (owned at: 'beforeDrawingOrder') size;
   at: 'after_drawing_count' put: (owned at: 'afterDrawingOrder') size; yourself)].
 owned notNil ifTrue: [#('beforeParentEvidence' 'afterParentEvidence' 'beforeDrawingEvidence' 'afterDrawingEvidence') do: [:key |
   (owned includesKey: key) ifTrue: [(out at: 'owned_head') at: key put: (owned at: key)]]].
 (record includesKey: 'topologyHeadAfterNative') ifTrue: [out
   at: 'original_forward_graph' put: ((current at: 'imageFor') value: (record at: 'topologyHeadAfterNative'));
   at: 'original_forward_values' put: (record at: 'topologyHeadAfterValues')].
 (record includesKey: 'topologyForwardSourceNormalization') ifTrue: [ | plan |
   plan := record at: 'topologyForwardSourceNormalization'. out
     at: 'source_normalization_profile' put: (plan at: 'topology_profile');
     at: 'source_normalization_progress' put: (plan at: 'progress') copy;
     at: 'source_correspondence_statistics' put: (plan at: 'correspondence_statistics') copy].
 (record includesKey: 'topologyLocalInversePlan') ifTrue: [| local |
   local := record at: 'topologyLocalInversePlan'. out
     at: 'local_inverse_progress' put: (local at: 'progress') copy;
     at: 'local_inverse_target_verified' put: (local at: 'verifyDesired') value;
     at: 'local_source_touched_cells' put: ((local at: 'sourceMerge') at: 'touched_cells')].
 (current at: 'encode') value: out
 ] ifFail: [:error | 'BDE_TOPOLOGY_MATERIAL_ERROR: ', error messageText]
]
