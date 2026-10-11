"Read the original Module, message role/type/scope and both inbound reference sets."
[:component :context |
 component handleExceptionsIn: [
 | record material head images capture originalAfter owner model fields readSlot originalFields proxy nativeType
   root kind modelType scope expectedType attributes expectedSend expectedReceive membership ownerFields table
   tableFields storage originalProxy originalType tokens combined persisted referenceRows expectedPresent modelOID answer phase target closing reportedPhase |
 (context isArray and: [#(4 5) includes: context size])
   ifFalse: [component error: 'Fixed original message history guard context required'].
 record := context first. material := context at: 2. head := context at: 3. images := context at: 4.
 phase := context size = 5 ifTrue: [context last] ifFalse: ['current'].
 (#('current' 'target' 'finalize_current' 'finalize_target') includes: phase)
   ifFalse: [component error: 'Fixed message history guard phase required'].
 closing := #('finalize_current' 'finalize_target') includes: phase.
 reportedPhase := phase = 'finalize_current' ifTrue: ['current'] ifFalse: [
   phase = 'finalize_target' ifTrue: ['target'] ifFalse: [phase]].
 target := phase = 'target'.
 owner := component item. model := (material at: 'createdModel') element.
 capture := material at: 'declarationBefore'. originalAfter := material at: 'declarationAfter'.
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 kind := capture at: 'kind'. modelType := capture at: 'modelType'. scope := capture at: 'messageScope'.
 ((material at: 'messageDeclaration' ifAbsent: [false]) and: [
   component class name asString = 'EtasAPIModuleBDE' and: [owner class name asString = 'SGModule' and: [
   (record at: 'owner') == owner and: [(capture at: 'owner') == owner and: [
   (originalAfter at: 'owner') == owner and: [(root at: 'owner') == owner and: [
   (root at: 'generation') = (capture at: 'generation') and: [
   (record at: 'args') first = kind and: [(record at: 'createdModel') element == model]]]]]]]]])
   ifFalse: [component error: 'Original Module message owner/type/namespace changed'].
 (#('receive_message' 'send_message' 'send_receive_message') includes: kind)
   ifFalse: [component error: 'Fixed primitive message communication role required'].
 (#('cont' 'sdisc' 'udisc' 'log') includes: modelType)
   ifFalse: [component error: 'Independent enum/complex message history required'].
 expectedType := (#('SGReal' 'SGSignedInteger' 'SGUnsignedInteger' 'SGBoolean')
   at: (#('cont' 'sdisc' 'udisc' 'log') indexOf: modelType)).
 fields := (model class allInstVarNames collect: [:field | field asString]) asArray.
 model class name asString = 'SGVariable' ifFalse: [component error: 'Original SGVariable message required'].
 readSlot := [:name | | index | index := fields indexOf: name.
   index > 0 ifFalse: [component error: 'Original message slot unavailable: ', name]. model instVarAt: index].
 originalFields := ((material at: 'declarationAfterSnapshots') at: model) last.
 proxy := readSlot value: 'owner'. nativeType := readSlot value: 'sgClass'.
 originalProxy := originalFields at: (fields indexOf: 'owner').
 originalType := originalFields at: (fields indexOf: 'sgClass').
 ((proxy isKindOf: DBProxy) and: [proxy == originalProxy and: [proxy className = 'SGModule' and: [
   proxy globalIdString = component getOID and: [
   (proxy getObjectIfUndefined: [component error: 'Original message owner unresolved']) == owner]]]])
   ifFalse: [component error: 'Original message Module DBProxy identity changed'].
 (nativeType == originalType and: [nativeType class name asString = expectedType])
   ifFalse: [component error: 'Original message primitive type pointer changed'].
 attributes := readSlot value: 'attributes'.
 attributes isInteger ifFalse: [component error: 'Audited original message role attributes required'].
 expectedSend := #('send_message' 'send_receive_message') includes: kind.
 expectedReceive := #('receive_message' 'send_receive_message') includes: kind.
 (((attributes bitAnd: 134217728) ~= 0) = expectedSend and: [
   ((attributes bitAnd: 67108864) ~= 0) = expectedReceive])
   ifFalse: [component error: 'Original message communication role changed'].
 ((readSlot value: 'kind') = scope and: [(readSlot value: 'elementName') = (capture at: 'requestName')])
   ifFalse: [component error: 'Original message scope/name changed'].
 closing ifTrue: [
   ((head at: 'state') = 'reverted' and: [(record at: 'state') = 'reverted' and: [
     (material at: 'createdDefinition') isNil]])
     ifFalse: [component error: 'Original detached message history required for finalization']].
 expectedPresent := closing ifTrue: [false] ifFalse: [
   (head at: 'state') = (target ifTrue: ['reverted'] ifFalse: ['applied'])].
 ownerFields := (owner class allInstVarNames collect: [:name | name asString]) asArray.
 membership := 0.
 #('primitiveVariables' 'complexVariables') do: [:name | | index |
   index := ownerFields indexOf: name. index > 0 ifFalse: [component error: 'Original Module declaration slot missing'].
   table := owner instVarAt: index. table class name asString = 'LookupTable'
     ifFalse: [component error: 'Original Module declaration LookupTable required'].
   tableFields := (table class allInstVarNames collect: [:field | field asString]) asArray.
   index := tableFields indexOf: 'values'. index > 0 ifFalse: [component error: 'Original declaration values storage missing'].
   storage := table instVarAt: index.
   membership := membership + (storage select: [:value | value == model]) size
 ].
 membership = (expectedPresent ifTrue: [1] ifFalse: [0])
   ifFalse: [component error: 'Original message declaration membership differs from the retained head'].
 expectedPresent ifTrue: [
   (((material at: 'createdModel') isValid) and: [
     (material at: 'createdModel') getModelType = modelType and: [
     (material at: 'createdModel') class name asString =
       (#('EtasAPIModelReceiveMessage' 'EtasAPIModelSendMessage' 'EtasAPIModelSendReceiveMessage')
         at: (#('receive_message' 'send_message' 'send_receive_message') indexOf: kind))]])
     ifFalse: [component error: 'Original attached message public role/type differs']
 ].
 referenceRows := capture at: 'referenceRows'.
 combined := referenceRows value: owner dbObject readReferences.
 persisted := referenceRows value: owner dbObject readIsReferencedByOnly.
 (combined = (closing ifTrue: [capture at: 'ownerReferences'] ifFalse: [
   head at: (target ifTrue: ['beforeOwnerReferences'] ifFalse: ['afterOwnerReferences'])]) and: [
   persisted = (closing ifTrue: [capture at: 'ownerDatabaseReferences'] ifFalse: [
   head at: (target ifTrue: ['beforeOwnerDatabaseReferences'] ifFalse: ['afterOwnerDatabaseReferences'])])])
   ifFalse: [component error: 'Original Module database/loaded inbound reference head changed'].
 tokens := images at: 'tokens'.
 modelOID := (material at: 'afterModelOIDs') at: ((material at: 'afterModelRefs') indexOf: model).
 answer := Dictionary new at: 'profile' put: (closing ifTrue: ['native_message_owner_finalize_evidence_v1']
   ifFalse: ['native_message_owner_history_evidence_v1']);
   at: 'component_oid' put: component getOID; at: 'generation' put: (capture at: 'generation');
   at: 'kind' put: kind; at: 'request_name' put: (capture at: 'requestName');
   at: 'model_type' put: modelType; at: 'message_scope' put: scope;
   at: 'owner_ref' put: (tokens at: owner); at: 'created_model_ref' put: (tokens at: model);
   at: 'created_model_oid' put: modelOID; at: 'owner_proxy_ref' put: (tokens at: proxy);
   at: 'owner_proxy_oid' put: proxy globalIdString; at: 'owner_proxy_class' put: proxy className;
   at: 'type_ref' put: (tokens at: nativeType); at: 'native_type_class' put: expectedType;
   at: 'phase' put: reportedPhase; at: 'model_present' put: expectedPresent;
   at: 'target_model_present' put: (closing ifTrue: [false] ifFalse: [expectedPresent not]); at: 'same_original_owner' put: true;
   at: 'owner_proxy_resolves_to_original' put: true; at: 'same_created_model_retained' put: true;
   at: 'reference_source' put: 'readReferences_loaded_and_database';
   at: 'persisted_reference_source' put: 'readIsReferencedByOnly';
   at: 'owner_references_original_before' put: (capture at: 'ownerReferences');
   at: 'owner_references_original_after' put: (originalAfter at: 'ownerReferences');
   at: 'owner_references_current' put: combined;
   at: 'owner_references_expected' put: (closing ifTrue: [capture at: 'ownerReferences'] ifFalse: [
     head at: (target ifTrue: ['afterOwnerReferences'] ifFalse: ['beforeOwnerReferences'])]);
   at: 'owner_database_record_references_original_before' put: (capture at: 'ownerDatabaseReferences');
   at: 'owner_database_record_references_original_after' put: (originalAfter at: 'ownerDatabaseReferences');
   at: 'owner_database_record_references_current' put: persisted;
   at: 'owner_database_record_references_expected' put: (closing ifTrue: [capture at: 'ownerDatabaseReferences'] ifFalse: [
     head at: (target ifTrue: ['afterOwnerDatabaseReferences'] ifFalse: ['beforeOwnerDatabaseReferences'])]);
   at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'write_authorized' put: false; yourself.
 answer
 ] ifFail: [:error | 'BDE_MESSAGE_HISTORY_GUARD_ERROR: ', error messageText]
]
