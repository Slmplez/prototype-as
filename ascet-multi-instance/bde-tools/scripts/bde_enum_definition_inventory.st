"Read-only bounded enum library role inventory. No creation, deletion or inverse authority."
[:component :folder :name |
 component handleExceptionsIn: [
 | root keys definitions definition owner tokens describe fields rows collections addRole child answer |
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated Main enum definition inventory only'].
 (folder isKindOf: EtasAPIFolder) ifFalse: [component error: 'Exact isolated enum folder required'].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 (root at: 'owner') == component item ifFalse: [component error: 'Original inventory owner expired'].
 keys := folder item childrenKeys.
 keys size > 4096 ifTrue: [component error: 'Enum folder inventory bound exceeded'].
 definitions := (keys select: [:key | key className = 'SGEnumerationDB']) collect: [:key | key getObject getAPIHandle].
 definitions size > 256 ifTrue: [component error: 'Enum definition inventory bound exceeded'].
 answer := Dictionary new at: 'profile' put: 'enum_definition_inventory_v1';
   at: 'component_oid' put: component getOID; at: 'folder_oid' put: folder getOID;
   at: 'definitions' put: (definitions collect: [:api | Dictionary new
     at: 'name' put: api item label; at: 'path' put: api getFolderPathName;
     at: 'oid' put: api getOID; at: 'native_class' put: api item class name asString; yourself]) asArray;
   at: 'selected' put: nil; at: 'full_body_capture' put: false;
   at: 'inverse_authorized' put: false; at: 'model_setters_called' put: 0; at: 'store_called' put: false; yourself.
 name isEmpty ifFalse: [
   definition := definitions detect: [:api | api item label = name]
     ifNone: [component error: 'Exact existing isolated enum definition not found'].
   owner := component item. tokens := IdentityDictionary new.
   describe := [:value | | item ref |
     item := Dictionary new at: 'native_class' put: value class name asString; yourself.
     (value isNil or: [value isNumber or: [value == true or: [value == false or: [value isKindOf: Symbol]]]])
       ifTrue: [item at: 'kind' put: 'atom'; at: 'value' put: value printString]
       ifFalse: [
         ref := tokens at: value ifAbsentPut: ['d', (tokens size + 1) printString].
         item at: 'ref' put: ref.
         (value isString or: [value isKindOf: ByteArray]) ifTrue: [
           value size > 8192 ifTrue: [component error: 'Enum inventory value bound exceeded'].
           item at: 'kind' put: 'value'; at: 'value' put: value asCebraString asArray
         ] ifFalse: [item at: 'kind' put: 'opaque']
       ]. item
   ].
   fields := [:object :role | | names values |
     names := (object class allInstVarNames collect: [:field | field asString]) asArray.
     names size > 512 ifTrue: [component error: 'Enum inventory field bound exceeded'].
     values := (1 to: names size) collect: [:slot | Dictionary new
       at: 'slot' put: slot; at: 'field' put: (names at: slot);
       at: 'value' put: (describe value: (object instVarAt: slot)); yourself].
     Dictionary new at: 'role' put: role; at: 'binding' put: (describe value: object);
       at: 'field_names' put: names; at: 'fields' put: values asArray; yourself
   ].
   rows := OrderedCollection new. collections := OrderedCollection new.
   addRole := [:object :role |
     rows add: (fields value: object value: role).
     (#('LookupTable' 'Dictionary' 'IdentityDictionary') includes: object class name asString) ifTrue: [
       object size > 4096 ifTrue: [component error: 'Enum inventory container bound exceeded'].
       collections add: (Dictionary new at: 'role' put: role;
         at: 'entries' put: (object keys asSortedCollection collect: [:key | Array
           with: (describe value: key) with: (describe value: (object at: key))]) asArray; yourself)
     ]
   ].
   addRole value: owner value: 'owner'. addRole value: definition item value: 'definition'.
   #('primitiveVariables' 'complexVariables') do: [:field | | names slot |
     names := (owner class allInstVarNames collect: [:each | each asString]) asArray.
     slot := names indexOf: field. slot > 0 ifFalse: [component error: 'Original declaration slot unavailable'].
     addRole value: (owner instVarAt: slot) value: field
   ].
   (definition item class allInstVarNames collect: [:each | each asString]) doWithIndex: [:field :slot |
     child := definition item instVarAt: slot.
     (#('LookupTable' 'Dictionary' 'IdentityDictionary' 'SGEnumeration') includes: child class name asString)
       ifTrue: [addRole value: child value: ('definition.', field)]
   ].
   answer at: 'selected' put: (Dictionary new at: 'oid' put: definition getOID;
     at: 'objects' put: rows asArray; at: 'collections' put: collections asArray; yourself)
 ].
 (root at: 'encodeObservation') value: answer
 ] ifFail: [:error | 'BDE_ENUM_DEFINITION_INVENTORY_ERROR: ', error messageText]
]
