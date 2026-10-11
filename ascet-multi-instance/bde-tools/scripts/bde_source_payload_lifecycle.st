"Persist only the verified PRIVATE coordinate payload to its isolated source
 record, verify exact raw readback, then restore the exact original record.
 No live model/source setter, Store/Commit, backend loader installation or
 graphical cache reload occurs. This is not a production move/inverse."
[:collector | [:patchFactory | [:component :index | component handleExceptionsIn: [
 | registry material source privateSource payload pairs before clone same original row raw logical
   patch factory forwardPlan used guard prepared execute verifyGraph target candidateTarget |
 registry := Smalltalk at: #DogeBDEFreshSerializerWorkbenchesV1.
 (index isInteger and: [index >= 1 and: [index <= registry size]])
   ifFalse: [component error: 'Exact source payload workbench required'].
 material := registry at: index. source := material at: 'source'. privateSource := material at: 'loadedSource'.
 ((material at: 'phase') = 'layout_serialized' and: [(material at: 'layoutPrivateFieldWrites') = 2])
   ifFalse: [component error: 'Confirmed restored private layout after required'].
 payload := material at: 'layoutAfterPayload'. pairs := material at: 'layoutCandidateMapping'.
 clone := [:a | (a isKindOf: Dictionary) ifTrue: [| d | d := Dictionary new.
   a keysAndValuesDo: [:k :v | d at: k put: (clone value: v)]. d]
   ifFalse: [a isArray ifTrue: [(a collect: [:v | clone value: v]) asArray]
     ifFalse: [a isString ifTrue: [a copy] ifFalse: [a]]]].
 same := [:a :b | (a isKindOf: Dictionary) ifTrue: [
   (b isKindOf: Dictionary) and: [a size = b size and: [a keys allSatisfy: [:k |
     (b includesKey: k) and: [same value: (a at: k) value: (b at: k)]]]]]
   ifFalse: [a isArray ifTrue: [b isArray and: [a size = b size and: [
     (1 to: a size) allSatisfy: [:i | same value: (a at: i) value: (b at: i)]]]] ifFalse: [a = b]]].
 verifyGraph := [(material at: 'graphSnapshots') keys allSatisfy: [:o | | image fields indexed |
   image := (material at: 'graphSnapshots') at: o. fields := image at: 2. indexed := image at: 3.
   ((1 to: fields size) allSatisfy: [:i | (o instVarAt: i) == (fields at: i)]) and: [
     o basicSize = indexed size and: [image first = 'bytes' ifTrue: [o = indexed]
       ifFalse: [(1 to: indexed size) allSatisfy: [:i | (o basicAt: i) == (indexed at: i)]]]]]].
 target := pairs keys select: [:o | o class == SGOperatorGODB].
 target size = 1 ifFalse: [component error: 'Exactly one fixed payload operator required'].
 target := target first. candidateTarget := pairs at: target.
 (candidateTarget class == target class and: [candidateTarget iD = target iD and: [
   candidateTarget position x = (target position x + 11) and: [candidateTarget position y = target position y]]])
   ifFalse: [component error: 'Retained decoded coordinate payload no longer matches the original target'].
 before := collector value: component.
 (same value: before value: (material at: 'layoutAfter'))
   ifFalse: [component error: 'Persistent source CURRENT differs from confirmed private layout original'].
 original := (before at: 'owners') last. row := clone value: original.
 logical := 130 + payload size. logical <= 4194304 ifFalse: [component error: 'Candidate payload record bound exceeded'].
 raw := Array new: ((original at: 'allocated_size') max: logical).
 1 to: raw size do: [:i | raw at: i put: 0].
 1 to: (original at: 'allocated_size') do: [:i | raw at: i put: ((original at: 'allocated_bytes') at: i)].
 0 to: 3 do: [:i | raw at: 127 + i put: ((payload size // (256 raisedTo: i)) \\ 256)].
 1 to: payload size do: [:i | raw at: 130 + i put: (payload at: i)].
 row at: 'allocated_bytes' put: raw; at: 'bytes' put: (raw copyFrom: 1 to: logical);
   at: 'blob_size' put: payload size; at: 'logical_size' put: logical; at: 'allocated_size' put: raw size.
 patch := [:current :candidate | Dictionary new at: 'role' put: (current at: 'role');
   at: 'global_id' put: (current at: 'global_id'); at: 'operation' put: 'write_existing_owner_record';
   at: 'current' put: current; at: 'candidate' put: candidate; yourself].
 factory := patchFactory value: component.
 forwardPlan := factory value: before value: (Array with: (patch value: original value: row)).
 guard := [
   ((material at: 'phase') = 'layout_serialized' and: [(material at: 'owner') == component item and: [
     (component getDiagram: 'Main') specification specSourceInternalOrNil == source and: [
     (material at: 'loadedSource') == privateSource and: [(material at: 'layoutAfterPayload') == payload]]]])
       ifFalse: [component error: 'Source payload owner or private material expired'].
   ((material at: 'verifyOriginals') value and: [verifyGraph value and: [same value: before value: (collector value: component)]])
       ifFalse: [component error: 'Source payload original/config/graph/current changed before write']
 ]. guard value. used := false.
 prepared := Dictionary new at: 'profile' put: 'isolated_source_payload_lifecycle_prepared_v1';
   at: 'component_oid' put: component getOID; at: 'workbench_index' put: index;
   at: 'before' put: (clone value: before); at: 'candidate' put: (clone value: (forwardPlan at: 'candidate'));
   at: 'target_logic_id' put: target iD; at: 'before_position' put: (Array with: target position x with: target position y);
   at: 'after_position' put: (Array with: candidateTarget position x with: candidateTarget position y);
   at: 'persistent_leaf_write_calls' put: 0; at: 'store_called' put: false; at: 'commit_called' put: false;
   at: 'full_commit_resource_closure' put: false; at: 'full_delivery' put: false; yourself.
 execute := [:ignored | component handleExceptionsIn: [
   | forward inverse inversePlan observed out |
   used ifTrue: [component error: 'Source payload lifecycle consumed; never replay'].
   used := true. guard value. material at: 'phase' put: 'source_payload_writing'.
   forward := (forwardPlan at: 'execute') value: nil. material at: 'sourcePayloadForwardActual' put: forward.
   (forward at: 'profile') = 'isolated_persistent_owner_patch_result_v1'
     ifFalse: [component error: 'Changed source record write failed; retain actual and original'].
   (same value: (forward at: 'after') value: (forwardPlan at: 'candidate'))
     ifFalse: [component error: 'Changed graphical source raw readback differs'].
   inversePlan := factory value: (forward at: 'after') value: (Array with: (patch value: row value: original)).
   inverse := (inversePlan at: 'execute') value: nil. material at: 'sourcePayloadInverseActual' put: inverse.
   (inverse at: 'profile') = 'isolated_persistent_owner_patch_result_v1'
     ifFalse: [component error: 'Original source record restore failed; retain before and actual'].
   observed := collector value: component.
   material at: 'phase' put: 'source_payload_restored'; at: 'sourcePayloadAfter' put: observed.
   Dictionary new at: 'profile' put: 'isolated_source_payload_lifecycle_result_v1';
     at: 'component_oid' put: component getOID; at: 'workbench_index' put: index;
     at: 'before' put: (clone value: before); at: 'candidate' put: (clone value: (forwardPlan at: 'candidate'));
     at: 'forward' put: forward; at: 'inverse' put: inverse; at: 'after' put: observed;
     at: 'persistent_leaf_write_calls' put: ((forward at: 'persistent_leaf_write_calls') + (inverse at: 'persistent_leaf_write_calls'));
     at: 'persistent_leaf_delete_calls' put: 0; at: 'exact_raw_restoration' put: (same value: before value: observed);
     at: 'original_graph_preserved' put: verifyGraph value; at: 'original_config_preserved' put: (material at: 'verifyOriginals') value;
     at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'commit_called' put: false;
     at: 'graphical_cache_reloaded' put: false; at: 'full_commit_resource_closure' put: false;
     at: 'production_inverse_authorized' put: false; at: 'full_delivery' put: false; yourself
 ] ifFail: [:error | material at: 'phase' put: 'source_payload_failed'. 'BDE_SOURCE_PAYLOAD_EXECUTION_ERROR: ', error messageText]].
 Dictionary new at: 'prepared' put: prepared; at: 'execute' put: execute; yourself
] ifFail: [:error | 'BDE_SOURCE_PAYLOAD_PREPARATION_ERROR: ', error messageText]]]]
