[:detached | [:component :token |
 component handleExceptionsIn: [
 | roots materials candidates key candidate material registry same images result |
 (token isString and: [token size = 69 and: [(token copyFrom: 1 to: 5) = 'cand_' and: [
   (token copyFrom: 6 to: 69) allSatisfy: [:character | '0123456789abcdef' includes: character]]]])
   ifFalse: [component error: 'Canonical retained runtime candidate token required'].
 key := component getOID, '/Main'.
 roots := Smalltalk at: #DogeBDEStructureIdentityV2. materials := Smalltalk at: #DogeBDEClassMaterializeV1.
 candidates := Smalltalk at: #DogeBDEClassSourceCandidatesV1.
 candidate := candidates at: (token, '/', key). material := materials at: key.
 (((candidate at: 'verifyRecord') value: candidate) and: [(candidate at: 'verifyCurrent') value and: [
   (candidate at: 'material') == material and: [(material at: 'state') = 'applied']]])
   ifFalse: [component error: 'Retained runtime current candidate changed'].
 registry := candidate at: 'root'. same := registry at: 'sameSource'.
 images := #('original' 'applied') collect: [:phase | | image checkpoint clone source live projection seal wrong copied fieldIndex old detected originalMapped row witness observation metadata |
   image := material at: (phase = 'original' ifTrue: ['originalRuntimeImage'] ifFalse: ['afterRuntimeImage']).
   ((image at: 'verifyImage') value: image) ifFalse: [component error: 'Retained runtime image changed'].
   (image at: 'phase') = phase ifFalse: [component error: 'Retained runtime phase alias changed'].
   source := (candidate at: 'sources') at: phase.
   (same value: source value: (image at: 'source')) ifFalse: [component error: 'Retained runtime source differs from candidate history'].
   checkpoint := image at: 'checkpoint'. clone := image at: 'clone'.
   seal := image at: 'verifyImage'. wrong := image copy.
   (seal value: wrong) ifTrue: [component error: 'Copied retained image accepted'].
   copied := (clone at: 'root'). fieldIndex := copied class allInstVarNames indexOf: 'dynamicGOInfo'.
   fieldIndex > 0 ifFalse: [component error: 'Audited private cache fault field unavailable'].
   old := copied instVarAt: fieldIndex. copied instVarAt: fieldIndex put: Dictionary new.
   detected := (seal value: image) not.
   copied instVarAt: fieldIndex put: old.
   (detected and: [seal value: image]) ifFalse: [component error: 'Private retained field fault not detected or restored'].
   originalMapped := (clone at: 'memo') keys first. old := (clone at: 'memo') at: originalMapped.
   (clone at: 'memo') at: originalMapped put: Dictionary new.
   detected := (seal value: image) not.
   (clone at: 'memo') at: originalMapped put: old.
   (detected and: [seal value: image]) ifFalse: [component error: 'Private retained memo fault not detected or restored'].
   projection := detached value: component value: (checkpoint at: 'diagram').
   (projection isString and: [(projection startsWith: 'BDE_') not])
     ifFalse: [component error: 'Historical live projection unreadable'].
   live := projection = (image at: 'liveFields').
   row := Dictionary new at: 'phase' put: phase; at: 'capture_generation' put: (image at: 'generation');
     at: 'material_binding' put: (phase = 'original' ifTrue: ['originalBindings'] ifFalse: ['afterBindings']);
     at: 'capture_state' put: (phase = 'original' ifTrue: ['prepared'] ifFalse: ['applied']);
     at: 'seal_verified' put: true; at: 'copied_graph_unchanged' put: true;
     at: 'private_seal_negative_checks' put: 3; at: 'private_field_fault_detected' put: true;
     at: 'private_mapping_fault_detected' put: true;
     at: 'historical_live_fields_match_capture' put: live;
     at: 'native_keyed_members' put: (clone at: 'nativeByKey') size;
     at: 'copied_runtime_objects' put: (clone at: 'copied_objects');
     at: 'verified_runtime_fields' put: (clone at: 'verified_graph_fields');
     at: 'private_normalization_changes' put: (image at: 'normalizationChanges');
     at: 'private_normalization_inverse_steps' put: (image at: 'normalizationSteps');
     at: 'private_normalization_restored' put: true;
     at: 'expected_source_graph' put: (image at: 'expectedExport');
     at: 'generated_source_graph' put: (image at: 'generatedExport'); yourself.
   (image includesKey: 'storageWitness') ifTrue: [
     witness := image at: 'storageWitness'. observation := (witness at: 'observations') first.
     #(1 2 4) do: [:index |
       old := observation at: index. observation at: index put: Dictionary new.
       detected := (seal value: image) not.
       observation at: index put: old.
       (detected and: [seal value: image]) ifFalse: [component error: 'Private storage pointer fault not detected or restored']
     ].
     metadata := observation at: 3. old := metadata at: 'source_ref'. metadata at: 'source_ref' put: 0.
     detected := (seal value: image) not. metadata at: 'source_ref' put: old.
     (detected and: [seal value: image]) ifFalse: [component error: 'Private storage row fault not detected or restored'].
     row at: 'storage_witness' put: (witness at: 'report');
       at: 'private_storage_binding_negative_checks' put: 4;
       at: 'private_storage_binding_faults_restored' put: true
   ]. row
 ].
 (((candidate at: 'verifyRecord') value: candidate) and: [(candidate at: 'verifyCurrent') value])
   ifFalse: [component error: 'Current candidate changed during retained runtime audit'].
 result := Dictionary new at: 'profile' put: 'class_retained_runtime_audit_v1'; at: 'token' put: token;
   at: 'oid' put: component getOID; at: 'generation' put: (candidate at: 'generation');
   at: 'captures' put: images; at: 'current_baseline_verified' put: true;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'write_authorized' put: false; at: 'native_merge_executor_available' put: false; yourself.
 (registry at: 'encodeObservation') value: result
 ] ifFail: [:error | 'BDE_CLASS_RETAINED_RUNTIME_ERROR: ', error messageText]
]]
