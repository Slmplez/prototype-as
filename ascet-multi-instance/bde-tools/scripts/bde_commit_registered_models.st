"Capture loaded registered SG roots and audited mutable values without resolving DB proxies."
[:component :material |
 | stage |
 stage := 'binding'.
 component handleExceptionsIn: [
 | root record tokens snapshots values selected classes boundaries slot describe walk image rows names
   rootClasses fieldClasses collectionClasses total count summary proof roots |
 root := material at: 'root'.
 ((root at: 'owner') == component item and: [(material at: 'owner') == component item and: [
   (material at: 'generation') = (root at: 'generation') and: [(material at: 'phase') = 'captured']]])
   ifFalse: [component error: 'Original prepared loaded-model binding required'].
 (material includesKey: 'registeredModelMaterial') ifTrue: [component error: 'Original loaded-model capture cannot replay'].
 rootClasses := #('SGClass' 'SGModule' 'SGProject' 'SGEnumeration' 'SGLibrary' 'SGDBSettings'
   'SGClassImplConfig' 'SGClassValueConfig' 'SGImplConfiguration' 'SGValueConfiguration' 'SGTopGraphicsBlockDB').
 fieldClasses := #('SGVariable' 'SGReal' 'SGSignedInteger' 'SGUnsignedInteger' 'SGBoolean'
   'SGAliasVariable' 'SGSelfClass' 'SGMethod' 'SGMethodProcess' 'SGBdSpecification'
   'SGCategory' 'SGCodeGODB' 'SGConnectionGODB' 'SGLiteralGODB' 'SGOperatorGODB'
   'SGCodeArchive' 'SGMethodImplementation' 'ASDAdditionalImplInfo' 'SGExtraImplInfo'
   'Point' 'Rectangle' 'LookupTable' 'RBAreaStyle' 'RBLineStyle' 'CgRGBColor' 'RBConnectionPointBranch'
   'RBArithmeticElement' 'RBDataEnumeration' 'RBDataBoolean' 'RBDataDescription'
   'RBBoundedLattice' 'RBInterval' 'RBTypedValue' 'RBBoolean' 'RBFloat' 'RBInt16Signed'
   'RBInt32Unsigned' 'RBInt32Signed' 'RBInt16Unsigned' 'RBInt8Unsigned' 'RBInt8Signed'
   'RBStringType' 'RBFormulaId' 'RBFormulaEnum' 'RBFormulaString' 'RBOneDCharTable'
   'RBTwoDCharTable' 'RBImplBoolean' 'RBDataVector' 'RBDataMatrix' 'RBDiscreteDistribution'
   'Infinity' 'RBBit' 'RBEnumeration' 'Vector' 'Matrix' 'SortedCollection' 'ASDEnumerationEntry'
   'Association' 'SGASDLCodeVariantKey').
 collectionClasses := #('Array' 'OrderedCollection' 'Dictionary' 'IdentityDictionary' 'Set' 'IdentitySet').
 slot := [:object :name | | schema index |
   schema := (object class allInstVarNames collect: [:field | field asString]) asArray.
   index := schema indexOf: name. index > 0 ifFalse: [component error: 'Registered model cache slot unavailable'].
   object instVarAt: index].
 roots := OrderedCollection new. selected := OrderedCollection new. classes := Dictionary new.
 (material at: 'originalCacheMembers') do: [:association | | entry object name |
   entry := association last. object := slot value: entry value: 'object'. name := object class name asString.
   (name startsWith: 'SG') ifTrue: [
     (rootClasses includes: name) ifFalse: [component error: 'Unaudited registered SG root class: ', name].
     (roots anySatisfy: [:original | original == object]) ifFalse: [roots add: object].
     selected add: (Array with: association first with: entry with: object).
     classes at: name put: (classes at: name ifAbsent: [0]) + 1
   ]].
 (roots anySatisfy: [:object | object == component item])
   ifFalse: [component error: 'Original owner missing from loaded registered model roots'].
 tokens := material at: 'tokens'. snapshots := IdentityDictionary new. values := IdentityDictionary new.
 boundaries := Dictionary new. total := 0.
 record := Dictionary new at: 'phase' put: 'capturing'; at: 'root' put: root;
   at: 'owner' put: component item; at: 'generation' put: (root at: 'generation');
   at: 'selectedCacheMembers' put: selected asArray; at: 'roots' put: roots asArray;
   at: 'snapshots' put: snapshots; at: 'values' put: values; at: 'tokens' put: tokens; yourself.
 material at: 'registeredModelMaterial' put: record.
 describe := [:value | | answer reference |
   answer := Dictionary new at: 'class' put: value class name asString; yourself.
   (value isNil or: [value isNumber or: [value == true or: [value == false or: [value isKindOf: Symbol]]]])
     ifTrue: [answer at: 'kind' put: 'constant'; at: 'value' put: value printString.
       (value isKindOf: Float) ifTrue: [answer at: 'bits' put: value asCebraString asArray]]
     ifFalse: [reference := tokens at: value ifAbsentPut: [
       tokens size >= 16384 ifTrue: [component error: 'Registered model identity bound exceeded'].
       'r', (tokens size + 1) printString]. answer at: 'ref' put: reference]. answer].
 walk := [:object :depth | | name kind saved fields |
   depth > 128 ifTrue: [component error: 'Registered model depth bound exceeded'].
   name := object class name asString.
   (object isNil or: [object isNumber or: [object == true or: [object == false or: [object isKindOf: Symbol]]]])
     ifFalse: [describe value: object.
       (snapshots includesKey: object) ifFalse: [
         snapshots size >= 16384 ifTrue: [component error: 'Registered model image bound exceeded'].
         kind := 'boundary'. saved := nil. fields := #().
         (object isString or: [object isKindOf: ByteArray]) ifTrue: [
           object size > 4194304 ifTrue: [component error: 'Complete registered model value bound exceeded'].
           total := total + object size. total > 16777216 ifTrue: [component error: 'Complete registered model value budget exceeded'].
           kind := 'value'. saved := object copy. values at: object put: saved
         ] ifFalse: [(collectionClasses includes: name) ifTrue: [
           object size > 16384 ifTrue: [component error: 'Complete registered model collection bound exceeded'].
           kind := 'collection'. saved := object copy
         ] ifFalse: [
           ((roots anySatisfy: [:owned | owned == object]) or: [(fieldClasses includes: name) or: [
             (object isKindOf: RBGraphicObject) or: [object isKindOf: RBGraphicObjectCollection]]]) ifTrue: [
             object class isVariable ifFalse: [
               fields := (object class allInstVarNames collect: [:field | field asString]) asArray.
               fields size > 512 ifTrue: [component error: 'Complete registered model schema bound exceeded'].
               fields size = object class instSize ifFalse: [component error: 'Registered model schema size differs'].
               kind := 'fields'. saved := ((1 to: fields size) collect: [:index | object instVarAt: index]) asArray]
           ]]].
         snapshots at: object put: (Array with: kind with: fields with: saved).
         kind = 'boundary' ifTrue: [boundaries at: name put: (boundaries at: name ifAbsent: [0]) + 1].
         kind = 'fields' ifTrue: [saved do: [:value | walk value: value value: depth + 1]].
         kind = 'collection' ifTrue: [
           (#('Dictionary' 'IdentityDictionary') includes: name)
             ifTrue: [saved keysAndValuesDo: [:key :value | walk value: key value: depth + 1. walk value: value value: depth + 1]]
             ifFalse: [saved do: [:value | walk value: value value: depth + 1]]]
       ]].
 ].
 stage := 'capture'. roots do: [:object | walk value: object value: 0].
 image := [:object :entry | | kind saved contents |
   kind := entry first. saved := entry last. contents := nil.
   kind = 'value' ifTrue: [contents := saved asCebraString asArray].
   kind = 'fields' ifTrue: [contents := saved collect: [:value | describe value: value]].
   kind = 'collection' ifTrue: [
     (#('Dictionary' 'IdentityDictionary') includes: object class name asString)
       ifTrue: [contents := saved keys collect: [:key | Array with: (describe value: key) with: (describe value: (saved at: key))]]
       ifFalse: [contents := saved collect: [:value | describe value: value]]].
   Dictionary new at: 'binding' put: (describe value: object); at: 'kind' put: kind;
     at: 'field_names' put: (entry at: 2); at: 'value' put: contents; yourself].
 rows := ((snapshots keys collect: [:object | image value: object value: (snapshots at: object)])
   asSortedCollection: [:a :b | ((a at: 'binding') at: 'ref') < ((b at: 'binding') at: 'ref')]) asArray.
 proof := Dictionary new at: 'profile' put: 'native_registered_sg_capture_v1';
   at: 'phase' put: 'captured'; at: 'component_oid' put: component getOID; at: 'generation' put: (root at: 'generation');
   at: 'registered_sg_roots' put: roots size; at: 'registered_sg_cache_entries' put: selected size;
   at: 'root_class_counts' put: classes; at: 'objects' put: snapshots size;
   at: 'field_objects' put: (snapshots values select: [:entry | entry first = 'fields']) size;
   at: 'value_objects' put: values size; at: 'boundary_class_counts' put: boundaries;
   at: 'original_material_held' put: true; at: 'db_proxies_resolved' put: false;
   at: 'full_model_transitive_closure' put: false; at: 'model_setters_called' put: 0;
   at: 'store_called' put: false; at: 'write_authorized' put: false; at: 'inverse_authorized' put: false; yourself.
 record at: 'phase' put: 'captured'; at: 'originalImage' put: rows; at: 'proof' put: proof.
 proof
 ] ifFail: [:error | 'BDE_COMMIT_REGISTERED_MODELS_ERROR: ', stage, ': ', error messageText]
]
