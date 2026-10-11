"Capture both actual persistent BDE owners before any model mutation."
[:referenceDecoder | [:component :material :database |
 | stage capture |
 stage := 'binding'.
 component handleExceptionsIn: [
  | root edit source backend tokens originals values slot bytes describe fields roles models owners nativeOwners targets summary total |
  root := material at: 'root'. edit := material at: 'editRecord'.
  ((material at: 'owner') == component item and: [(material at: 'root') == root and: [
    (material at: 'generation') = (root at: 'generation') and: [(edit at: 'state') = 'prepared' and: [
    (edit at: 'commitResourceMaterial') == material and: [(material at: 'access') == database dbAccess and: [
    (material at: 'controller') == database dbInterface]]]]]])
      ifFalse: [component error: 'Original live prepared resource binding required'].
  (material includesKey: 'persistentOwnerMaterial') ifTrue: [component error: 'Persistent owner capture cannot replay'].
  capture := Dictionary new at: 'phase' put: 'capturing'; at: 'root' put: root; at: 'preparedEdit' put: edit;
    at: 'resourceMaterial' put: material; at: 'nativeOwners' put: OrderedCollection new;
    at: 'owners' put: OrderedCollection new; at: 'rawReads' put: OrderedCollection new; yourself.
  material at: 'persistentOwnerMaterial' put: capture.
  source := (root at: 'diagram') specification specSourceInternalOrNil.
  source class name asString = 'SGTopGraphicsBlockDB' ifFalse: [component error: 'Original stored SGTopGraphicsBlockDB source required'].
  (((material at: 'registeredModelMaterial') at: 'roots') anySatisfy: [:model | model == source])
    ifFalse: [component error: 'Source must belong to the original registered model capture'].
  (#('SGClass' 'SGModule') includes: component item class name asString)
    ifFalse: [component error: 'Fixed ordinary component class required'].
  backend := material at: 'backend'. tokens := material at: 'tokens'. originals := material at: 'originals'. values := material at: 'values'.
  slot := [:object :name | | schema index |
    schema := (object class allInstVarNames collect: [:field | field asString]) asArray.
    index := schema indexOf: name. index = 0 ifTrue: [component error: 'Persistent owner slot missing: ', name].
    object instVarAt: index].
  total := 0.
  bytes := [:value | | result |
    value size > 4194304 ifTrue: [component error: 'Persistent owner value bound exceeded'].
    total := total + value size. total > 16777216 ifTrue: [component error: 'Persistent owner byte budget exceeded'].
    result := (1 to: value size) collect: [:index | | octet | octet := value at: index.
      (octet isInteger and: [octet >= 0 and: [octet <= 255]]) ifFalse: [component error: 'Exact owner byte required'].
      octet]. result asArray].
  describe := [:value | | result ref |
    result := Dictionary new at: 'class' put: value class name asString; yourself.
    (value isNil or: [value isNumber or: [value == true or: [value == false or: [value isKindOf: Symbol]]]])
      ifTrue: [result at: 'kind' put: 'atom'; at: 'value' put: value printString]
      ifFalse: [ref := tokens at: value ifAbsentPut: [
        tokens size >= 16384 ifTrue: [component error: 'Original owner identity bound exceeded'].
        'r', (tokens size + 1) printString]. result at: 'ref' put: ref.
        (value isString or: [value isKindOf: ByteArray]) ifTrue: [
          values at: value ifAbsentPut: [value copy].
          result at: 'kind' put: 'value'; at: 'value' put: (bytes value: value asCebraString)
        ] ifFalse: [result at: 'kind' put: 'boundary']]. result].
  fields := [:object | | names |
    names := (object class allInstVarNames collect: [:name | name asString]) asArray.
    names size > 512 ifTrue: [component error: 'Owner schema bound exceeded'].
    originals at: object ifAbsentPut: [Array with: object class with: names copy
      with: ((1 to: names size) collect: [:index | object instVarAt: index]) asArray].
    Dictionary new at: 'binding' put: (describe value: object); at: 'field_names' put: names;
      at: 'fields' put: ((1 to: names size) collect: [:index |
        Dictionary new at: 'slot' put: index; at: 'name' put: (names at: index);
          at: 'value' put: (describe value: (object instVarAt: index)); yourself]) asArray; yourself].
  roles := #('component' 'spec_source'). models := Array with: component item with: source.
  owners := capture at: 'owners'. nativeOwners := capture at: 'nativeOwners'.
  targets := Array with: (Array with: 'owner' with: nil with: 'CTreeSearchObjectRecord')
    with: (Array with: 'owner_references' with: 'DBReferenceList' with: 'CTreeVariableAttributeRecord')
    with: (Array with: 'owner_referenced_by' with: 'DBReferencedByList' with: 'CTreeVariableAttributeRecord').
  models doWithIndex: [:model :index | | db entry ownerKey rows dbBefore |
    stage := 'owner-', (roles at: index).
    db := slot value: model value: 'dbObject'.
    (db class name asString = 'DBObject' and: [(slot value: db value: 'interface') == backend])
      ifFalse: [component error: 'Original persistent DBObject and common backend required'].
    (nativeOwners anySatisfy: [:prior | (prior at: 2) == db or: [(prior at: 2) uniqueKeyValue = db uniqueKeyValue]])
      ifTrue: [component error: 'Component and source must have distinct persistent owner identities'].
    ownerKey := bytes value: db uniqueKeyValue. ownerKey size = 20 ifFalse: [component error: 'Exact persistent owner global ID required'].
    nativeOwners add: (Array with: model with: db).
    describe value: model. describe value: db. dbBefore := fields value: db. rows := OrderedCollection new.
    entry := Dictionary new at: 'role' put: (roles at: index);
      at: 'model_binding' put: (Dictionary new at: 'class' put: model class name asString; at: 'ref' put: (tokens at: model); yourself);
      at: 'db_binding' put: (Dictionary new at: 'class' put: db class name asString; at: 'ref' put: (tokens at: db); yourself);
      at: 'oid' put: db globalIdString; at: 'key' put: ownerKey;
      at: 'db_before' put: dbBefore; at: 'records' put: rows; yourself.
    owners add: entry.
    targets do: [:target | | proxy leaf file key actualKey row persistent fixed blob semantic |
      stage := (roles at: index), '/', target first.
      proxy := target second isNil ifTrue: [db] ifFalse: [target second = 'DBReferenceList'
        ifTrue: [db asDBReferenceLinkProxy] ifFalse: [db asDBReferencedByLinkProxy]].
      proxy recordClass name asString = target last ifFalse: [component error: 'Persistent owner record class differs'].
      leaf := target second isNil ifTrue: [backend getInterfaceForProxy: proxy]
        ifFalse: [slot value: backend value: 'referenceInterface'].
      leaf class name asString = (target second isNil ifTrue: ['CTreeLocalSearchInterface'] ifFalse: ['CTreeLocalVariableAttributeInterface'])
        ifFalse: [component error: 'Persistent owner leaf class differs'].
      file := slot value: leaf value: 'ctIFIL'.
      file class name asString = 'CTSpaceCheckingIFil' ifFalse: [component error: 'Persistent owner file class differs'].
      key := proxy uniqueKeyValue. actualKey := leaf keyClass keyValueFor: proxy.
      key = actualKey ifFalse: [component error: 'Persistent owner logical/file key differs'].
      row := Dictionary new at: 'role' put: target first; at: 'attribute' put: target second;
        at: 'route' put: (target second isNil ifTrue: ['getInterfaceForProxy:'] ifFalse: ['referenceInterface']);
        at: 'query_key' put: (bytes value: key); at: 'actual_file_key' put: (bytes value: actualKey);
        at: 'record_class_requested' put: target last; at: 'leaf_class' put: leaf class name asString;
        at: 'file_class' put: file class name asString; at: 'ctree_before' put: (fields value: leaf); yourself.
      rows add: row.
      persistent := leaf readRecord: proxy.
      (capture at: 'rawReads') add: (Array with: proxy with: leaf with: file with: persistent copy).
      row at: 'ctree_after' put: (fields value: leaf).
      persistent isCTError ifTrue: [
        (target second notNil and: [persistent errorNumber = 101])
          ifTrue: [
            "A DBReferenceList/DBReferencedByList may be absent for an otherwise valid owner.
             Preserve that exact undefined-record result; it is not an empty fabricated record."
            row at: 'read_status' put: 'absent'; at: 'record_class' put: target last;
              at: 'global_id' put: ownerKey; at: 'record_attribute' put: target second;
              at: 'fixed_size' put: 0; at: 'blob_size' put: 0; at: 'logical_size' put: 0;
              at: 'allocated_size' put: 0; at: 'bytes' put: #(); at: 'allocated_bytes' put: #();
              at: 'length_profile' put: 'absent_record_v1'; at: 'declared_size' put: 0;
              at: 'error_number' put: persistent errorNumber; at: 'error_class' put: persistent class name asString;
              at: 'error_text' put: persistent messageText
          ]
          ifFalse: [row at: 'read_status' put: 'error'; at: 'error' put: (fields value: persistent).
            component error: 'Persistent original owner record read failed; partial material retained']
      ].
      persistent isCTError ifFalse: [
        (persistent class name asString = target last and: [persistent globalId = db uniqueKeyValue])
          ifFalse: [component error: 'Persisted owner record identity differs'].
        fixed := persistent class fixedSize. blob := persistent blobSize.
        (fixed isInteger and: [fixed > 0 and: [blob isInteger and: [blob >= 0 and: [persistent size >= (fixed + blob)]]]])
          ifFalse: [component error: 'Complete original owner logical record required'].
        row at: 'read_status' put: 'record'; at: 'record_class' put: persistent class name asString;
          at: 'global_id' put: (bytes value: persistent globalId);
          at: 'record_attribute' put: (target second isNil ifTrue: [nil] ifFalse: [persistent attributeName asString]);
          at: 'fixed_size' put: fixed; at: 'blob_size' put: blob; at: 'logical_size' put: fixed + blob;
          at: 'allocated_size' put: persistent size; at: 'bytes' put: (bytes value: (persistent copyFrom: 1 to: fixed + blob));
          at: 'allocated_bytes' put: (bytes value: persistent).
        target second notNil ifTrue: [semantic := referenceDecoder value: row value: ownerKey.
          row at: 'length_profile' put: 'reference_payload_v2'; at: 'declared_size' put: fixed + blob;
            at: 'logical_size' put: (semantic at: 'semantic_size'); at: 'bytes' put: (semantic at: 'semantic_bytes')]
      ].
    entry at: 'records' put: rows asArray; at: 'db_after' put: (fields value: db)]].
  ((root at: 'diagram') specification specSourceInternalOrNil == source)
    ifFalse: [component error: 'Original persistent source changed during capture'].
  summary := Dictionary new at: 'profile' put: 'native_persistent_owners_capture_v1'; at: 'phase' put: 'captured';
    at: 'native_token' put: (material at: 'editToken'); at: 'component_oid' put: component getOID;
    at: 'generation' put: (root at: 'generation'); at: 'owners' put: (owners collect: [:entry |
      Dictionary new at: 'role' put: (entry at: 'role'); at: 'model_class' put: ((entry at: 'model_binding') at: 'class');
        at: 'model_ref' put: ((entry at: 'model_binding') at: 'ref'); at: 'db_ref' put: ((entry at: 'db_binding') at: 'ref');
        at: 'oid' put: (entry at: 'oid'); at: 'key' put: (entry at: 'key');
        at: 'records' put: ((entry at: 'records') collect: [:row | Dictionary new at: 'role' put: (row at: 'role');
          at: 'logical_size' put: (row at: 'logical_size'); at: 'allocated_size' put: (row at: 'allocated_size'); yourself]); yourself]) asArray;
    at: 'original_material_held' put: true; at: 'same_native_dispatch' put: true;
    at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'commit_called' put: false;
    at: 'write_authorized' put: false; at: 'inverse_authorized' put: false; yourself.
  capture at: 'phase' put: 'captured'; at: 'source' put: source; at: 'proof' put: summary;
    at: 'report' put: (Dictionary new at: 'profile' put: 'native_persistent_owners_records_v1';
      at: 'native_token' put: (material at: 'editToken'); at: 'component_oid' put: component getOID;
      at: 'generation' put: (root at: 'generation'); at: 'summary' put: summary; at: 'owners' put: owners asArray; yourself).
  summary
 ] ifFail: [:error |
   capture notNil ifTrue: [capture at: 'phase' put: 'failed'; at: 'failedStage' put: stage; at: 'error' put: error messageText].
   'BDE_PERSISTENT_OWNERS_ERROR: ', stage, ': ', error messageText]
]]
