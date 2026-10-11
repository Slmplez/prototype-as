"Fixed read-only inventory of retained variable declaration roles. This is not a
 complete body capture or inverse authorization; arbitrary object graphs stay opaque."
[:component :token |
 component handleExceptionsIn: [
 | record material root model owner primitive complex tokens describe fields objects rows roles bindings collections |
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated retained declaration audit only'].
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 ((record at: 'component') = component getOID and: [(record at: 'owner') == component item and: [
   (record at: 'operation') = 'create_block' and: [(record at: 'args') first = 'variable' and: [
   (record at: 'diagramName') = 'Main' and: [(record at: 'state') = 'applied']]]]])
   ifFalse: [component error: 'Exact live retained variable creation required'].
 material := record at: 'createMaterial'.
 model := (material at: 'createdModel') element. owner := component item.
 ((record at: 'createdModel') element == model and: [(material at: 'phase') = 'attached'])
   ifFalse: [component error: 'Retained original declaration identity changed'].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 (root at: 'owner') == owner ifFalse: [component error: 'Declaration owner scope expired'].
 (owner respondsTo: #primitiveVariables) ifFalse: [component error: 'Audited primitive declaration dictionary unavailable'].
 (owner respondsTo: #complexVariables) ifFalse: [component error: 'Audited complex declaration dictionary unavailable'].
 primitive := owner primitiveVariables. complex := owner complexVariables.
 ((#('Dictionary' 'LookupTable') includes: primitive class name asString) and: [
   (#('Dictionary' 'LookupTable') includes: complex class name asString) and: [primitive size <= 4096 and: [complex size <= 4096]]])
   ifFalse: [component error: 'Bounded actual declaration dictionaries required: ',
     primitive class name asString, '/', complex class name asString].
 (primitive values select: [:value | value == model]) size = 1
   ifFalse: [component error: 'Exactly one original primitive declaration membership required'].
 tokens := IdentityDictionary new.
 describe := [:value |
   | answer ref |
   answer := Dictionary new at: 'native_class' put: value class name asString; yourself.
   (value isNil or: [value isNumber or: [value == true or: [value == false or: [value isKindOf: Symbol]]]])
     ifTrue: [answer at: 'kind' put: 'atom'; at: 'value' put: value printString]
     ifFalse: [
       ref := tokens at: value ifAbsentPut: ['d', (tokens size + 1) printString].
       answer at: 'ref' put: ref.
       (value isString or: [value isKindOf: ByteArray]) ifTrue: [
         value size <= 8192 ifFalse: [component error: 'Declaration inventory value bound exceeded'].
         answer at: 'kind' put: 'value'; at: 'value' put: value asCebraString asArray
       ] ifFalse: [answer at: 'kind' put: 'opaque']
     ]. answer
 ].
 fields := [:object :role |
   | names values |
   names := object class allInstVarNames collect: [:name | name asString].
   names size <= 512 ifFalse: [component error: 'Declaration inventory field bound exceeded'].
   values := (1 to: object class instSize) collect: [:slot |
     Dictionary new at: 'slot' put: slot; at: 'field' put: (names at: slot);
       at: 'value' put: (describe value: (object instVarAt: slot)); yourself].
   Dictionary new at: 'role' put: role; at: 'binding' put: (describe value: object);
     at: 'field_names' put: names asArray; at: 'fields' put: values asArray; yourself
 ].
 roles := Dictionary new at: 'owner' put: (describe value: owner); at: 'model' put: (describe value: model);
   at: 'primitive_dictionary' put: (describe value: primitive); at: 'complex_dictionary' put: (describe value: complex); yourself.
 rows := Array with: (fields value: owner value: 'owner') with: (fields value: model value: 'model')
   with: (fields value: primitive value: 'primitive_dictionary') with: (fields value: complex value: 'complex_dictionary').
 collections := Array with: primitive with: complex.
 bindings := collections collect: [:collection |
   | pairs |
   pairs := collection keys asSortedCollection collect: [:key |
     Dictionary new at: 'key' put: (describe value: key); at: 'value' put: (describe value: (collection at: key));
       at: 'is_created_model' put: ((collection at: key) == model); yourself].
   Dictionary new at: 'binding' put: (describe value: collection); at: 'entries' put: pairs asArray; yourself
 ].
 objects := Dictionary new at: 'profile' put: 'retained_declaration_inventory_v1';
   at: 'component_oid' put: component getOID; at: 'native_token' put: token;
   at: 'generation' put: (root at: 'generation'); at: 'roles' put: roles;
   at: 'objects' put: rows; at: 'collections' put: bindings asArray;
   at: 'created_model_oid' put: model xmlOID asArray;
   at: 'created_original_member_verified' put: true; at: 'complete_body_capture' put: false;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'inverse_authorized' put: false; yourself.
 (root at: 'encodeObservation') value: objects
 ] ifFail: [:error | 'BDE_DECLARATION_INVENTORY_ERROR: ', error messageText]
]
