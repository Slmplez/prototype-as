"Bind audited enum body collector to an exact existing-definition creation record."
[:collector :token | [:component :models |
 component handleExceptionsIn: [
 | record definition capture actual expected root |
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 ((record at: 'owner') == component item and: [(record at: 'component') = component getOID and: [
   (record at: 'operation') = 'create_block' and: [(record at: 'diagramName') = 'Main' and: [
   (record at: 'args') first = 'enumeration' and: [(record includesKey: 'enumFolder') not]]]]])
   ifFalse: [component error: 'Exact existing-definition Main enumeration record required'].
 (#('prepared' 'applied') includes: (record at: 'state'))
   ifFalse: [component error: 'Original enum capture requires current factory state'].
 definition := record at: 'definition'.
 ((definition isKindOf: EtasAPIEnumeration) and: [definition item class name asString = 'SGEnumerationDB'])
   ifFalse: [component error: 'Original existing enumeration API required'].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 (root at: 'owner') == component item ifFalse: [component error: 'Original enum scope owner expired'].
 capture := collector value: component value: definition.
 capture isString ifTrue: [component error: capture].
 actual := capture at: 'models'. expected := models.
 (actual size = expected size and: [(1 to: actual size) allSatisfy: [:index |
   (actual at: index) == (expected at: index)]])
   ifFalse: [component error: 'Complete original enum declaration model roster differs'].
 capture at: 'definitionOID' put: definition getOID;
   at: 'definitionPath' put: definition getFolderPathName;
   at: 'generation' put: (root at: 'generation').
 capture
 ] ifFail: [:error | 'BDE_ENUM_CREATION_CAPTURE_ERROR: ', error messageText]
]]
