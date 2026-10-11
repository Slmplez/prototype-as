"Fixed read-only Module declaration audit; descriptors are not editable handles."
[:component |
 component handleExceptionsIn: [
 | owner root tokens describe fields rows addRole primitive complex models declarations
   memberships referenceRows references databaseReferences configs configClasses answer |
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated message declaration inventory only'].
 (component class name asString = 'EtasAPIModuleBDE' and: [component messagesPossible])
   ifFalse: [component error: 'Exact native Module BDE API required: ', component class name asString].
 owner := component item.
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 (root at: 'owner') == owner ifFalse: [component error: 'Original Module inventory owner expired'].
 tokens := IdentityDictionary new.
 describe := [:value | | item ref |
   item := Dictionary new at: 'native_class' put: value class name asString; yourself.
   (value isNil or: [value isNumber or: [value == true or: [value == false or: [value isKindOf: Symbol]]]])
     ifTrue: [item at: 'kind' put: 'atom'; at: 'value' put: value printString]
     ifFalse: [
       ref := tokens at: value ifAbsentPut: ['d', (tokens size + 1) printString].
       item at: 'ref' put: ref.
       (value isString or: [value isKindOf: ByteArray]) ifTrue: [
         value size > 8192 ifTrue: [component error: 'Message inventory value bound exceeded'].
         item at: 'kind' put: 'value'; at: 'value' put: (value isString ifTrue: [value] ifFalse: [value asArray])
       ] ifFalse: [
         item at: 'kind' put: 'opaque'.
         (value isKindOf: DBProxy) ifTrue: [item at: 'database_oid' put: value globalIdString;
           at: 'database_class' put: value className]
       ]
     ]. item
 ].
 fields := [:object :role | | names values |
   names := (object class allInstVarNames collect: [:field | field asString]) asArray.
   (names size <= 512 and: [names size = object class instSize])
     ifFalse: [component error: 'Message inventory complete slot schema required'].
   values := (1 to: names size) collect: [:slot | Dictionary new
     at: 'slot' put: slot; at: 'field' put: (names at: slot);
     at: 'value' put: (describe value: (object instVarAt: slot)); yourself].
   Dictionary new at: 'role' put: role; at: 'binding' put: (describe value: object);
     at: 'field_names' put: names; at: 'fields' put: values asArray; yourself
 ].
 rows := OrderedCollection new.
 addRole := [:object :role | rows add: (fields value: object value: role)].
 addRole value: owner value: 'owner'.
 primitive := owner primitiveVariables. complex := owner complexVariables.
 (primitive size <= 4096 and: [complex size <= 4096])
   ifFalse: [component error: 'Message declaration membership bound exceeded'].
 addRole value: primitive value: 'primitiveVariables'. addRole value: complex value: 'complexVariables'.
 memberships := (Array with: primitive with: complex) collect: [:collection |
   Dictionary new at: 'binding' put: (describe value: collection);
     at: 'entries' put: (collection keys asSortedCollection collect: [:key | Array
       with: (describe value: key) with: (describe value: (collection at: key))]) asArray; yourself].
 models := (component getAllVariables collect: [:api | api element]) asArray.
 models size > 4096 ifTrue: [component error: 'Message model inventory bound exceeded'].
 declarations := models collect: [:model | | name names slot type scope |
   model class name asString = 'SGVariable'
     ifFalse: [component error: 'Audited SGVariable message declaration required'].
   name := model label.
   addRole value: model value: ('model:', name).
   names := (model class allInstVarNames collect: [:field | field asString]) asArray.
   slot := names indexOf: 'sgClass'. slot > 0 ifFalse: [component error: 'Original message type slot unavailable'].
   type := model instVarAt: slot.
   (type isKindOf: DBProxy) ifFalse: [addRole value: type value: ('type:', name)].
   scope := model isLocal ifTrue: ['local'] ifFalse: [model isImported ifTrue: ['imported']
     ifFalse: [model isExported ifTrue: ['exported'] ifFalse: ['unsupported']]].
   Dictionary new at: 'name' put: name; at: 'binding' put: (describe value: model);
     at: 'xml_oid' put: model xmlOID; at: 'type' put: (describe value: type);
     at: 'attributes' put: model attributes; at: 'raw_kind' put: (describe value: (model instVarAt: (names indexOf: 'kind')));
     at: 'scope' put: scope; at: 'send' put: model isSend; at: 'receive' put: model isReceive;
     at: 'message' put: model isMessage; yourself
 ].
 referenceRows := [:record |
   record isError ifTrue: [component error: 'Module original inbound reference query failed'].
   record isReferencedBys size > 4096 ifTrue: [component error: 'Module inbound reference bound exceeded'].
   ((record isReferencedBys collect: [:key | Array with: key globalIdString with: key className])
     asSortedCollection: [:a :b | a first = b first ifTrue: [a last < b last] ifFalse: [a first < b first]]) asArray
 ].
 references := referenceRows value: owner dbObject readReferences.
 databaseReferences := referenceRows value: owner dbObject readIsReferencedByOnly.
 configClasses := #('SGClassImplConfig' 'SGClassValueConfig' 'SGImplConfiguration' 'SGValueConfiguration').
 configs := references select: [:pair | configClasses includes: pair last].
 answer := Dictionary new at: 'profile' put: 'message_declaration_inventory_v1';
   at: 'component_oid' put: component getOID; at: 'component_path' put: component getFolderPathName;
   at: 'api_class' put: component class name asString; at: 'messages_possible' put: component messagesPossible;
   at: 'generation' put: (root at: 'generation'); at: 'owner' put: (describe value: owner);
   at: 'objects' put: rows asArray; at: 'collections' put: memberships asArray;
   at: 'declarations' put: declarations; at: 'owner_references' put: references;
   at: 'owner_database_record_references' put: databaseReferences; at: 'configuration_references' put: configs;
   at: 'complete_body_capture' put: false; at: 'creation_before_bound' put: false;
   at: 'inverse_authorized' put: false; at: 'editable_refs' put: false;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false; yourself.
 (root at: 'encodeObservation') value: answer
 ] ifFail: [:error | 'BDE_MESSAGE_DECLARATION_INVENTORY_ERROR: ', error messageText]
]
