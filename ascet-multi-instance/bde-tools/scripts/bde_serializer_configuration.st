"Read-only, bounded serializer configuration witness.

This template deliberately does not construct DBLinDeLin/DBSwapperDumperLoader,
call any dumper/loader operation, invoke a replacement block, or write a
database.  It is an evidence collector for a later, separately authorised
fresh serializer experiment.
"
[:component :token :database |
 | stage witness |
 stage := 'binding'.
 component handleExceptionsIn: [
  | registry material root owner backend editToken generation configs
    slot describe tokenFor objects source serializer swapper dumper loader
    classReplacer instReplacer identityReplacer loadingReplacer
    tableSnapshot arraySnapshot fields roles roleSummary config sourceRoot
    sourceMaterial fieldSource persistentOwnerMaterial sourceOwnerEntry sourceRecord sourceRecordSummary |
  registry := Smalltalk at: #DogeBDECommitResourceWitnessesV1.
  material := registry at: ('commit_', (token copyFrom: 6 to: token size)).
  root := material at: 'root'. owner := material at: 'owner'.
  backend := material at: 'backend'. editToken := material at: 'editToken'.
  generation := material at: 'generation'.
  ((editToken = token) and: [owner == component item and: [
    (root at: 'owner') == owner and: [(material at: 'phase') = 'captured']]])
    ifFalse: [component error: 'Exact captured edit material required'].
  (#('SGClass' 'SGModule') includes: owner class name asString)
    ifFalse: [component error: 'Only SGClass or SGModule owner supported'].
  (material includesKey: 'controlMaterial') ifFalse:
    [component error: 'Original control material is required'].
  configs := material at: 'serializerConfigurations'
    ifAbsentPut: [OrderedCollection new].
  configs size >= 16 ifTrue: [component error: 'Configuration witness capacity reached'].
  witness := Dictionary new.
  witness at: 'phase' put: 'binding'; at: 'nativeToken' put: token;
    at: 'generation' put: generation; at: 'owner' put: owner;
    at: 'originals' put: IdentityDictionary new;
    at: 'values' put: IdentityDictionary new.
  configs add: witness.
  slot := [:object :name | | names index |
    object isNil ifTrue: [component error: 'Nil serializer role for ', name].
    names := (object class allInstVarNames collect: [:each | each asString]) asArray.
    index := names indexOf: name.
    index > 0 ifFalse: [component error: 'Serializer slot unavailable: ', name].
    object instVarAt: index].
  tokenFor := IdentityDictionary new.
  objects := OrderedCollection new.
  describe := [:object | | entry cls value |
    entry := Dictionary new.
    object isNil ifTrue: [entry at: 'kind' put: 'nil'] ifFalse: [
      (object == true or: [object == false])
        ifTrue: [entry at: 'kind' put: 'boolean'; at: 'value' put: object]
        ifFalse: [(object isNumber) ifTrue: [entry at: 'kind' put: 'number'; at: 'value' put: object]
          ifFalse: [
            cls := object class name asString.
            entry at: 'class' put: cls.
            (object isString or: [object isKindOf: ByteArray])
              ifTrue: [object size > 4194304 ifTrue: [component error: 'Serializer value bound exceeded'].
                value := object isString
                  ifTrue: [object asCebraString asArray]
                  ifFalse: [((1 to: object size) collect: [:i | object at: i]) asArray].
                entry at: 'kind' put: 'value'; at: 'value' put: value.
                (witness at: 'values') at: object ifAbsentPut: [object copy]]
              ifFalse: [entry at: 'kind' put: 'reference';
                at: 'ref' put: (tokenFor at: object ifAbsentPut: [
                  objects add: object. 'z', objects size printString])]]]].
    entry].
  arraySnapshot := [:array :name | | rows |
    array isNil ifTrue: [Dictionary new at: 'name' put: name; at: 'kind' put: 'nil'; yourself]
      ifFalse: [array class == Array ifFalse: [component error: 'Expected Array: ', name].
        array size > 100000 ifTrue: [component error: 'Serializer array bound exceeded: ', name].
        rows := (array collect: [:item | describe value: item]) asArray.
        Dictionary new at: 'name' put: name; at: 'kind' put: 'array'; at: 'size' put: array size;
          at: 'items' put: rows; yourself]].
  tableSnapshot := [:table :name | | rows |
    table isNil ifTrue: [Dictionary new at: 'name' put: name; at: 'kind' put: 'nil'; yourself]
      ifFalse: [rows := OrderedCollection new.
        table keysAndValuesDo: [:key :value |
          rows size >= 100000 ifTrue: [component error: 'Serializer table bound exceeded: ', name].
          rows add: (Dictionary new at: 'key' put: (describe value: key);
            at: 'value' put: (describe value: value); yourself)].
        Dictionary new at: 'name' put: name; at: 'kind' put: 'table'; at: 'class' put: table class name asString;
          at: 'count' put: rows size; at: 'entries' put: rows asArray; yourself]].
  sourceRoot := material at: 'sourceRoot' ifAbsent: [nil].
  sourceRoot isNil ifTrue: [
    fieldSource := material at: 'fieldSourceMaterialBefore' ifAbsent: [nil].
    fieldSource isNil ifFalse: [sourceRoot := fieldSource at: 'sourceRoot' ifAbsent: [nil]]].
  sourceRoot isNil ifTrue: [
    persistentOwnerMaterial := material at: 'persistentOwnerMaterial' ifAbsent: [nil].
    persistentOwnerMaterial isNil ifFalse: [
      sourceRoot := persistentOwnerMaterial at: 'source' ifAbsent: [nil]]].
  sourceRoot isNil ifTrue: [component error: 'Prepared SGTopGraphicsBlockDB source witness required'].
  sourceRoot class name asString = 'SGTopGraphicsBlockDB'
    ifFalse: [component error: 'SGTopGraphicsBlockDB source witness required'].
  persistentOwnerMaterial isNil ifTrue: [persistentOwnerMaterial := material at: 'persistentOwnerMaterial' ifAbsent: [nil]].
  persistentOwnerMaterial isNil ifTrue: [component error: 'Persistent source owner material required'].
  sourceOwnerEntry := (persistentOwnerMaterial at: 'owners')
    detect: [:entry | (entry at: 'role') = 'spec_source'] ifNone: [nil].
  sourceOwnerEntry isNil ifTrue: [component error: 'Persistent source owner entry required'].
  sourceRecord := (sourceOwnerEntry at: 'records')
    detect: [:row | (row at: 'role') = 'owner'] ifNone: [nil].
  sourceRecord isNil ifTrue: [component error: 'Persistent source owner record required'].
  (sourceRecord at: 'read_status') = 'record' ifFalse: [component error: 'Source owner record must be present'].
  (sourceRecord at: 'record_class') = 'CTreeSearchObjectRecord' ifFalse: [component error: 'Source owner record class mismatch'].
  ((sourceRecord at: 'fixed_size') = 130 and: [(sourceRecord at: 'logical_size') =
    ((sourceRecord at: 'fixed_size') + (sourceRecord at: 'blob_size'))])
    ifFalse: [component error: 'Source owner record length mismatch'].
  sourceRecordSummary := Dictionary new at: 'record_class' put: (sourceRecord at: 'record_class');
    at: 'record_class_requested' put: (sourceRecord at: 'record_class_requested');
    at: 'read_status' put: (sourceRecord at: 'read_status'); at: 'fixed_size' put: (sourceRecord at: 'fixed_size');
    at: 'blob_size' put: (sourceRecord at: 'blob_size'); at: 'logical_size' put: (sourceRecord at: 'logical_size');
    at: 'allocated_size' put: (sourceRecord at: 'allocated_size'); at: 'global_id' put: (sourceRecord at: 'global_id');
    at: 'query_key' put: (sourceRecord at: 'query_key'); at: 'actual_file_key' put: (sourceRecord at: 'actual_file_key');
    at: 'bytes' put: (sourceRecord at: 'bytes'); at: 'allocated_bytes' put: (sourceRecord at: 'allocated_bytes'); yourself.
  serializer := slot value: backend value: 'linDeLin'.
  serializer class name asString = 'DBLinDeLin'
    ifFalse: [component error: 'Audited DBLinDeLin required'].
  swapper := slot value: serializer value: 'swapper'.
  swapper class name asString = 'DBSwapperDumperLoader'
    ifFalse: [component error: 'Audited DBSwapperDumperLoader required'].
  dumper := slot value: swapper value: 'dumper'. loader := slot value: swapper value: 'loader'.
  (dumper class name asString = 'RBObjectDumper' and: [loader class name asString = 'RBObjectLoader'])
    ifFalse: [component error: 'Audited RB dumper/loader roles required'].
  classReplacer := slot value: dumper value: 'classBasedReplacer'.
  instReplacer := slot value: dumper value: 'instVarReplacer'.
  identityReplacer := slot value: dumper value: 'identityReplacer'.
  loadingReplacer := slot value: loader value: 'loadingReplacer'.
  roles := Dictionary new at: 'owner' put: owner; at: 'source' put: sourceRoot;
    at: 'serializer' put: serializer; at: 'swapper' put: swapper;
    at: 'dumper' put: dumper; at: 'loader' put: loader; yourself.
  witness at: 'roles' put: roles.
  fields := Dictionary new.
  roles keysAndValuesDo: [:role :object | | names values |
    names := (object class allInstVarNames collect: [:each | each asString]) asArray.
    names size > 256 ifTrue: [component error: 'Serializer schema bound exceeded'].
    values := (names collect: [:name | describe value: (slot value: object value: name)]) asArray.
    fields at: role put: (Dictionary new at: 'class' put: object class name asString;
      at: 'names' put: names; at: 'values' put: values; yourself)].
  roleSummary := Dictionary new.
  roles keysAndValuesDo: [:role :object | roleSummary at: role put: (describe value: object)].
  config := Dictionary new at: 'profile' put: 'native_serializer_configuration_v1';
    at: 'nativeToken' put: token; at: 'componentOid' put: component getOID;
    at: 'generation' put: generation; at: 'ownerClass' put: owner class name asString;
    at: 'sourceClass' put: sourceRoot class name asString; at: 'roles' put: roleSummary;
    at: 'fields' put: fields; at: 'dumperOmissions' put: (Dictionary new
      at: 'classes' put: (arraySnapshot value: (slot value: dumper value: 'omittedInstOfClasses') value: 'omittedInstOfClasses');
      at: 'indices' put: (arraySnapshot value: (slot value: dumper value: 'omittedInstVars') value: 'omittedInstVars');
      at: 'classesForIndices' put: (arraySnapshot value: (slot value: dumper value: 'omittedInstVarClasses') value: 'omittedInstVarClasses'); yourself);
    at: 'classReplacementTable' put: (tableSnapshot value: (slot value: classReplacer value: 'classBasedReplacementTable') value: 'classBasedReplacementTable');
    at: 'instVarReplacementTable' put: (tableSnapshot value: (slot value: instReplacer value: 'classesWithInstVarsToReplace') value: 'classesWithInstVarsToReplace');
    at: 'identityReplacementTable' put: (tableSnapshot value: (slot value: identityReplacer value: 'identityReplacementTable') value: 'identityReplacementTable');
    at: 'loadingReplacement' put: (Dictionary new
      at: 'relinkArray' put: (arraySnapshot value: (slot value: loadingReplacer value: 'relinkArray') value: 'relinkArray');
      at: 'remappedClassReferences' put: (tableSnapshot value: (slot value: loadingReplacer value: 'remappedClassReferences') value: 'remappedClassReferences');
      at: 'mutatedClasses' put: (tableSnapshot value: (slot value: loadingReplacer value: 'mutatedClasses') value: 'mutatedClasses'); yourself);
    at: 'strategy' put: (Dictionary new
      at: 'dumper' put: (fields at: 'dumper'); at: 'loader' put: (fields at: 'loader'); yourself);
    at: 'omission_replacement_strategy_complete' put: true;
    at: 'sourceRecordPreview' put: sourceRecordSummary; at: 'source_record_preview' put: true;
    at: 'serialization_called' put: false; at: 'store_called' put: false;
    at: 'commit_called' put: false; at: 'write_authorized' put: false;
    at: 'inverse_authorized' put: false; at: 'call_closure_complete' put: false;
    at: 'serialization_authorized' put: false; at: 'source_witness_held' put: true;
    yourself.
  witness at: 'report' put: config; at: 'phase' put: 'captured'.
  (root at: 'encodeObservation') value: config
 ] ifFail: [:error |
   (witness notNil) ifTrue: [witness at: 'phase' put: 'failed'; at: 'error' put: error messageText].
   'BDE_SERIALIZER_CONFIGURATION_ERROR: ', stage, ': ', error messageText]
]
