"Export exact retained message declarations and CURRENT in the original namespace.
 No material reconciliation, model setters, source replacement or release."
[:cacheGuard | [:component :token |
 component handleExceptionsIn: [
 | record material capture root images recorded current beforeSchema currentSchema answer
   owner model combined persisted cacheCheck originalRefs currentRefs fields index tables membership |
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 material := record at: 'createMaterial'. capture := material at: 'declarationBefore'.
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 owner := component item. model := (material at: 'createdModel') element.
 ((material at: 'messageDeclaration' ifAbsent: [false]) and: [
   component class name asString = 'EtasAPIModuleBDE' and: [owner class name asString = 'SGModule' and: [
   (record at: 'owner') == owner and: [(record at: 'component') = component getOID and: [
   (capture at: 'owner') == owner and: [(root at: 'owner') == owner and: [
   (root at: 'generation') = (capture at: 'generation') and: [
   (record at: 'operation') = 'create_block' and: [(record at: 'diagramName') = 'Main' and: [
   (#('receive_message' 'send_message' 'send_receive_message') includes: (record at: 'args') first) and: [
   (record at: 'state') = 'applied' and: [(material at: 'phase') = 'attached' and: [
   (record at: 'createdModel') element == model]]]]]]]]]]]]])
   ifFalse: [component error: 'Exact original attached Module message diagnostic required'].
 images := capture at: 'images'. recorded := material at: 'declarationAfterSnapshots'.
 originalRefs := (material at: 'declarationAfter') at: 'models'.
 fields := (owner class allInstVarNames collect: [:name | name asString]) asArray.
 currentRefs := OrderedCollection new. membership := 0.
 #('primitiveVariables' 'complexVariables') do: [:name | | table names storage |
   index := fields indexOf: name. index > 0 ifFalse: [component error: 'Original Module declaration slot missing'].
   table := owner instVarAt: index.
   table class name asString = 'LookupTable' ifFalse: [component error: 'Original Module declaration LookupTable required'].
   names := (table class allInstVarNames collect: [:field | field asString]) asArray.
   index := names indexOf: 'values'. index > 0 ifFalse: [component error: 'Original declaration storage missing'].
   storage := table instVarAt: index.
   storage do: [:value | value isNil ifFalse: [currentRefs add: value.
     value == model ifTrue: [membership := membership + 1]]]
 ].
 combined := (capture at: 'referenceRows') value: owner dbObject readReferences.
 persisted := (capture at: 'referenceRows') value: owner dbObject readIsReferencedByOnly.
 current := (images at: 'captureImages') value: recorded keys.
 (((images at: 'verifyImages') value: current) and: [membership = 1 and: [
   currentRefs size = originalRefs size and: [originalRefs allSatisfy: [:original |
     (currentRefs select: [:value | value == original]) size = 1]]]])
   ifFalse: [component error: 'Current declaration capture/membership changed; retain originals'].
 cacheCheck := cacheGuard value: component value:
   (Array with: recorded with: current with: owner with: 'module_message_cache_v1').
 beforeSchema := (images at: 'diagnosticsFor') value: recorded.
 currentSchema := (images at: 'diagnosticsFor') value: current.
 answer := Dictionary new at: 'profile' put: 'native_message_material_diagnostic_v1';
   at: 'native_token' put: token; at: 'component_oid' put: component getOID;
   at: 'generation' put: (capture at: 'generation'); at: 'state' put: (record at: 'state');
   at: 'kind' put: (capture at: 'kind'); at: 'request_name' put: (capture at: 'requestName');
   at: 'model_type' put: (capture at: 'modelType'); at: 'message_scope' put: (capture at: 'messageScope');
   at: 'owner_ref' put: ((images at: 'tokens') at: owner);
   at: 'created_model_ref' put: ((((images at: 'imageFor') value: (IdentityDictionary new
     at: model put: (recorded at: model); yourself)) at: 'objects') first at: 'ref');
   at: 'recorded' put: ((images at: 'imageFor') value: recorded); at: 'recorded_schema' put: beforeSchema;
   at: 'current' put: ((images at: 'imageFor') value: current); at: 'current_schema' put: currentSchema;
   at: 'recorded_unchanged' put: ((images at: 'verifyImages') value: recorded);
   at: 'current_capture_stable' put: ((images at: 'verifyImages') value: current);
   at: 'native_after_unchanged' put: (((material at: 'nativeAfter') at: 'verifyImages') value: (material at: 'combinedNativeAfter'));
   at: 'source_after_unchanged' put: (((material at: 'sourceAfter') at: 'verify') value);
   at: 'cache_guard' put: cacheCheck;
   at: 'owner_references_recorded' put: ((material at: 'declarationAfter') at: 'ownerReferences');
   at: 'owner_references_current' put: combined;
   at: 'owner_database_record_references_recorded' put: ((material at: 'declarationAfter') at: 'ownerDatabaseReferences');
   at: 'owner_database_record_references_current' put: persisted;
   at: 'membership_count' put: membership; at: 'original_material_retained' put: true;
   at: 'write_authorized' put: false; at: 'model_setters_called' put: 0; at: 'store_called' put: false; yourself.
 (root at: 'encodeObservation') value: answer
 ] ifFail: [:error | 'BDE_MESSAGE_MATERIAL_DIAGNOSTIC_ERROR: ', error messageText]
]]
