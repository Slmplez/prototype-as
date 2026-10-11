"Read original enum identities and DB references for an exact retained history head."
[:component :context |
 component handleExceptionsIn: [
 | record material head images capture definitionAPI definition enumeration model proxy fields index
   referenceResult references expectedReferences tokens originalAfter root persistedReferences version2 phase currentReferences answer
   expectedPresent originalProxy originalFields ownerFields ownerIndex table tableFields storage membership closing reportedPhase |
 (context isArray and: [#(4 5) includes: context size])
   ifFalse: [component error: 'Fixed original enum history guard context required'].
 record := context first. material := context at: 2. head := context at: 3. images := context at: 4.
 version2 := context size = 5. phase := version2 ifTrue: [context last] ifFalse: ['current'].
 (#('current' 'target' 'finalize_current' 'finalize_target') includes: phase)
   ifFalse: [component error: 'Fixed Enum reference guard phase required'].
 closing := #('finalize_current' 'finalize_target') includes: phase.
 reportedPhase := phase = 'finalize_current' ifTrue: ['current'] ifFalse: [
   phase = 'finalize_target' ifTrue: ['target'] ifFalse: [phase]].
 capture := material at: 'declarationBefore'. originalAfter := material at: 'declarationAfter'.
 definitionAPI := record at: 'definition'. definition := capture at: 'definition'.
 enumeration := capture at: 'enumeration'. model := (material at: 'createdModel') element.
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 ((material at: 'enumDeclaration' ifAbsent: [false]) and: [(record includesKey: 'enumFolder') not and: [
   (record at: 'owner') == component item and: [definitionAPI item == definition and: [
   definition class name asString = 'SGEnumerationDB' and: [
   definitionAPI getOID = (capture at: 'definitionOID') and: [
   definitionAPI getFolderPathName = (capture at: 'definitionPath') and: [
   (root at: 'generation') = (capture at: 'generation')]]]]]]])
   ifFalse: [component error: 'Original existing Enum definition/owner/namespace changed'].
 fields := definition class allInstVarNames collect: [:name | name asString].
 index := fields indexOf: 'enumeration'.
 (index > 0 and: [(definition instVarAt: index) == enumeration and: [
   (originalAfter at: 'definition') == definition and: [(originalAfter at: 'enumeration') == enumeration]]])
   ifFalse: [component error: 'Original enum body pointer changed'].
 fields := model class allInstVarNames collect: [:name | name asString].
 index := fields indexOf: 'sgClass'. index > 0 ifFalse: [component error: 'Original Enum model type slot missing'].
 proxy := model instVarAt: index.
 originalFields := ((originalAfter at: 'images') at: 'snapshots') at: model.
 originalProxy := originalFields last at: index.
 ((proxy isKindOf: DBProxy) and: [proxy className = 'SGEnumerationDB' and: [
   proxy globalIdString = (capture at: 'definitionOID') and: [
   proxy == originalProxy and: [
   (proxy getObjectIfUndefined: [component error: 'Original Enum type unresolved']) == definition]]]])
   ifFalse: [component error: 'Original Enum SGVariable type proxy changed'].
 "Detached retained declarations intentionally have invalid public API handles.
  Their original native proxy/body remains strictly bound; never ask an invalid
  public wrapper to certify a detached type. Attached declarations must also
  pass the original public enum/represented-definition checks."
 closing ifTrue: [
   ((head at: 'state') = 'reverted' and: [(record at: 'state') = 'reverted' and: [
     (material at: 'createdDefinition') isNil]])
     ifFalse: [component error: 'Original detached Enum history required for finalization']].
 expectedPresent := closing ifTrue: [false] ifFalse: [
   (head at: 'state') = (phase = 'target' ifTrue: ['reverted'] ifFalse: ['applied'])].
 ownerFields := component item class allInstVarNames collect: [:name | name asString].
 membership := 0.
 #('primitiveVariables' 'complexVariables') do: [:name |
   ownerIndex := ownerFields indexOf: name.
   ownerIndex > 0 ifFalse: [component error: 'Audited original Enum declaration owner slot missing'].
   table := component item instVarAt: ownerIndex.
   table class name asString = 'LookupTable' ifFalse: [component error: 'Audited original Enum declaration container required'].
   tableFields := table class allInstVarNames collect: [:field | field asString].
   ownerIndex := tableFields indexOf: 'values'.
   ownerIndex > 0 ifFalse: [component error: 'Original declaration storage slot missing'].
   storage := table instVarAt: ownerIndex.
   membership := membership + (storage select: [:value | value == model]) size
 ].
 membership = (expectedPresent ifTrue: [1] ifFalse: [0])
   ifFalse: [component error: 'Original Enum declaration membership differs from exact history direction'].
 expectedPresent ifTrue: [
   ((material at: 'createdModel') isValid and: [
     ((material at: 'createdModel') getModelType = 'enum' and: [
       (material at: 'createdModel') getRepresentedClass item == definition])])
     ifFalse: [component error: 'Original attached Enum public type/definition differs']
 ].
 referenceResult := definition dbObject readReferences.
 referenceResult isError ifTrue: [component error: 'Original Enum definition reference query failed'].
 references := referenceResult isReferencedBys.
 references size > 4096 ifTrue: [component error: 'Enum history reference bound exceeded'].
 references := (references collect: [:key | Array with: key globalIdString with: key className])
   asSortedCollection: [:a :b | a first = b first ifTrue: [a last < b last] ifFalse: [a first < b first]].
 references := references asArray.
 currentReferences := closing ifTrue: [capture at: 'definitionReferences'] ifFalse: [
   head at: (phase = 'target' ifTrue: ['beforeDefinitionReferences'] ifFalse: ['afterDefinitionReferences'])].
 references = currentReferences
   ifFalse: [component error: 'Enum CURRENT definition references changed since the retained head'].
 "readReferences merges loaded modified objects. Capture the persisted inbound set separately."
 referenceResult := definition dbObject readIsReferencedByOnly.
 referenceResult isError ifTrue: [component error: 'Persisted Enum definition inbound reference query failed'].
 persistedReferences := referenceResult isReferencedBys.
 persistedReferences size > 4096 ifTrue: [component error: 'Persisted Enum history reference bound exceeded'].
 persistedReferences := (persistedReferences collect: [:key | Array with: key globalIdString with: key className])
   asSortedCollection: [:a :b | a first = b first ifTrue: [a last < b last] ifFalse: [a first < b first]].
 (version2 and: [persistedReferences asArray ~= currentReferences])
   ifTrue: [component error: 'Enum database record references differ from the exact retained target/head'].
 expectedReferences := closing ifTrue: [capture at: 'definitionReferences'] ifFalse: [head at: 'beforeDefinitionReferences'].
 tokens := images at: 'tokens'.
 answer := Dictionary new at: 'profile' put: 'native_enum_definition_history_evidence_v1';
   at: 'component_oid' put: component getOID; at: 'definition_oid' put: (capture at: 'definitionOID');
   at: 'definition_path' put: (capture at: 'definitionPath'); at: 'generation' put: (capture at: 'generation');
   at: 'definition_ref' put: (tokens at: definition); at: 'enumeration_ref' put: (tokens at: enumeration);
   at: 'type_proxy_ref' put: (tokens at: proxy); at: 'type_proxy_class' put: proxy className;
   at: 'type_proxy_oid' put: proxy globalIdString;
   at: 'definition_references_original_before' put: (capture at: 'definitionReferences');
   at: 'definition_references_original_after' put: (originalAfter at: 'definitionReferences');
   at: 'definition_references_current' put: references; at: 'definition_references_expected' put: expectedReferences;
   at: 'definition_references_persisted_current' put: persistedReferences asArray;
   at: 'reference_source' put: 'readReferences_loaded_and_database';
   at: 'persisted_reference_source' put: 'readIsReferencedByOnly';
   at: 'persisted_target_verified' put: (reportedPhase = 'target');
   at: 'same_definition_retained' put: true; at: 'same_enumeration_retained' put: true;
   at: 'type_resolves_to_original' put: true; at: 'model_type' put: 'enum';
   at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'write_authorized' put: false; yourself
 . version2 ifTrue: [answer at: 'profile' put: 'native_enum_definition_history_evidence_v2';
   at: 'phase' put: reportedPhase; at: 'created_model_ref' put: (tokens at: model)].
 closing ifTrue: [answer at: 'profile' put: 'native_enum_definition_finalize_evidence_v1'].
 answer
 ] ifFail: [:error | 'BDE_ENUM_HISTORY_GUARD_ERROR: ', error messageText]
]
