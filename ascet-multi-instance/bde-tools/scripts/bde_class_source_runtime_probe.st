[:cloneGraph :sourceDump :detached | [:planReader :executionReader | [:storageReader | [:component :token |
 component handleExceptionsIn: [
 | roots candidates key record registry checkpoint same copy source image frozen clone root liveFields result generated unchanged plan capture before after changes summaries reverse exactClone normalizationSteps restored witness witnessedChanges witnessedSummaries |
 (token isString and: [token size = 69 and: [(token copyFrom: 1 to: 5) = 'cand_' and: [
   (token copyFrom: 6 to: 69) allSatisfy: [:character | '0123456789abcdef' includes: character]]]])
   ifFalse: [component error: 'Canonical runtime source candidate token required'].
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated runtime source owner required'].
 key := component getOID, '/Main'.
 roots := Smalltalk at: #DogeBDEStructureIdentityV2.
 candidates := Smalltalk at: #DogeBDEClassSourceCandidatesV1.
 record := candidates at: (token, '/', key).
 ((record at: 'verifyRecord') value: record) ifFalse: [component error: 'Runtime candidate metadata changed'].
 (record at: 'verifyCurrent') value ifFalse: [component error: 'Runtime candidate baseline changed'].
 registry := record at: 'root'. checkpoint := record at: 'bindings'.
 same := registry at: 'sameSource'. copy := registry at: 'copySource'.
 source := (record at: 'sources') at: 'current'. frozen := copy value: source.
 liveFields := detached value: component value: (checkpoint at: 'diagram').
 (liveFields isString and: [(liveFields startsWith: 'BDE_') not])
   ifFalse: [component error: 'Complete runtime fields required'].
 clone := cloneGraph value: component value: checkpoint value: 'clone'.
 (clone isKindOf: Dictionary) ifFalse: [component error: clone].
 ((clone at: 'verifyCorrespondence') value: clone)
   ifFalse: [component error: 'Private runtime lineage differs'].
 plan := planReader value: component value: clone value: OrderedCollection new.
 (plan isKindOf: Dictionary) ifFalse: [component error: plan].
 capture := executionReader value: component value: clone value: plan.
 (capture isKindOf: Dictionary) ifFalse: [component error: capture].
 before := capture at: 'currentCheckpoint'.
 image := copy value: source. image == source ifTrue: [component error: 'Private runtime source aliases current source'].
 root := clone at: 'root'. root == (checkpoint at: 'diagram') topGraphicalHierarchy
   ifTrue: [component error: 'Private runtime root aliases current graph'].
 root createStorageObjectsFor: image.
 generated := sourceDump value: component value: image.
 exactClone := (clone at: 'verifyInitialGraph') value.
 after := (capture at: 'captureCheckpoint') value.
 changes := (capture at: 'diffCheckpoints') value: before value: after.
 reverse := IdentityDictionary new.
 (clone at: 'nativeByKey') keysAndValuesDo: [:name :member | reverse at: member put: name].
 summaries := changes collect: [:entry | | object index summary |
   object := entry at: 'object'. index := entry at: 'index' ifAbsent: [0].
   summary := Dictionary new at: 'kind' put: (entry at: 'kind');
     at: 'native_class' put: object class name asString;
     at: 'native_key' put: (reverse at: object ifAbsent: [nil]); at: 'index' put: index; yourself.
   (entry at: 'kind') = 'fields' ifTrue: [
     summary at: 'field' put: (object class allInstVarNames at: index) asString;
       at: 'before_class' put: (entry at: 'before') class name asString;
       at: 'after_class' put: (entry at: 'after') class name asString
   ] ifFalse: [summary at: 'before_size' put: (entry at: 'before') size;
     at: 'after_size' put: (entry at: 'after') size]. summary
 ].
 plan := planReader value: component value: clone value: changes.
 (plan isKindOf: Dictionary) ifFalse: [component error: plan].
 (plan at: 'compatible') ifFalse: [component error: 'Private source normalization inverse conflict'].
 normalizationSteps := (plan at: 'execute') value.
 restored := ((capture at: 'diffCheckpoints') value: before value: (capture at: 'captureCheckpoint') value) isEmpty
   and: [(clone at: 'verifyInitialGraph') value].
 restored ifFalse: [component error: 'Private source normalization not exactly restored'].
 witness := nil.
 storageReader notNil ifTrue: [
   witness := storageReader value: component value: clone value: (copy value: source).
   (witness isKindOf: Dictionary) ifFalse: [component error: witness].
   (same value: (witness at: 'source') value: frozen)
     ifFalse: [component error: 'Witnessed runtime storage differs from native source'].
   witnessedChanges := (capture at: 'diffCheckpoints') value: before value: (capture at: 'captureCheckpoint') value.
   witnessedSummaries := witnessedChanges collect: [:entry | | object index row |
     object := entry at: 'object'. index := entry at: 'index' ifAbsent: [0].
     row := Dictionary new at: 'kind' put: (entry at: 'kind'); at: 'native_class' put: object class name asString;
       at: 'native_key' put: (reverse at: object ifAbsent: [nil]); at: 'index' put: index; yourself.
     (entry at: 'kind') = 'fields' ifTrue: [
       row at: 'field' put: (object class allInstVarNames at: index) asString;
         at: 'before_class' put: (entry at: 'before') class name asString;
         at: 'after_class' put: (entry at: 'after') class name asString
     ] ifFalse: [row at: 'before_size' put: (entry at: 'before') size; at: 'after_size' put: (entry at: 'after') size]. row].
   plan := planReader value: component value: clone value: witnessedChanges.
   (plan isKindOf: Dictionary) ifFalse: [component error: plan].
   (plan at: 'compatible') ifFalse: [component error: 'Witness normalization inverse conflict'].
   (witness at: 'report') at: 'private_normalization_changes' put: witnessedSummaries asArray;
     at: 'private_normalization_inverse_steps' put: (plan at: 'execute') value.
   (((capture at: 'diffCheckpoints') value: before value: (capture at: 'captureCheckpoint') value) isEmpty
     and: [(clone at: 'verifyInitialGraph') value]) ifFalse: [component error: 'Witness private graph not restored'].
   (witness at: 'report') at: 'private_normalization_restored' put: true.
   ((witness at: 'verifyBindings') value: witness) ifFalse: [component error: 'Runtime storage binding seal differs']
 ].
 unchanged := (record at: 'verifyCurrent') value and: [
   ((record at: 'verifyRecord') value: record) and: [
   ((roots at: key) == registry and: [same value: source value: frozen]) and: [
   (detached value: component value: (checkpoint at: 'diagram')) = liveFields]]].
 unchanged ifFalse: [component error: 'Native original changed during private runtime storage'].
 ((clone at: 'verifyCorrespondence') value: clone)
   ifFalse: [component error: 'Private runtime mappings changed during storage'].
 result := Dictionary new at: 'profile' put: 'class_source_runtime_storage_v1';
   at: 'token' put: token; at: 'oid' put: component getOID;
   at: 'generation' put: (record at: 'generation');
   at: 'native_graph_clone_profile' put: (clone at: 'profile');
   at: 'native_keyed_members' put: (clone at: 'nativeByKey') size;
   at: 'copied_runtime_objects' put: (clone at: 'copied_objects');
   at: 'verified_runtime_fields' put: (clone at: 'verified_graph_fields');
   at: 'private_graph_unchanged' put: exactClone;
   at: 'private_normalization_changes' put: summaries asArray;
   at: 'private_normalization_inverse_steps' put: normalizationSteps;
   at: 'private_normalization_restored' put: true;
   at: 'native_private_create_storage_calls' put: 1;
   at: 'live_original_unchanged' put: true; at: 'native_source_matches' put: (same value: image value: frozen);
   at: 'expected_source_graph' put: (sourceDump value: component value: frozen);
   at: 'generated_source_graph' put: generated;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'store_to_cache_called' put: false; at: 'spec_source_setter_called' put: false;
   at: 'write_authorized' put: false; at: 'native_merge_executor_available' put: false; yourself.
 witness notNil ifTrue: [result at: 'storage_witness' put: (witness at: 'report')].
 (registry at: 'encodeObservation') value: result
 ] ifFail: [:error | 'BDE_CLASS_SOURCE_RUNTIME_ERROR: ', error messageText]
]]]]
