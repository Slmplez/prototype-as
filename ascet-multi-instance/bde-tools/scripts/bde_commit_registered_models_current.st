"Current SG images include original retained objects; no DB proxy resolution or setters."
[:component :material :comparison |
 | stage |
 stage := 'binding'.
 component handleExceptionsIn: [
 | root original tokens snapshots values roots selected rootClasses fieldClasses collectionClasses
   slot describe walk image rows total boundaries classes changes equal compareRows mapped old fresh
   rootsImage membersImage baseline report |
 root := material at: 'root'. original := material at: 'registeredModelMaterial'.
 ((root at: 'owner') == component item and: [(material at: 'owner') == component item and: [
   (original at: 'owner') == component item and: [(original at: 'root') == root and: [
   (original at: 'generation') = (root at: 'generation') and: [(original at: 'phase') = 'captured']]]]])
   ifFalse: [component error: 'Exact retained SG original binding required'].
 (comparison isArray and: [comparison size = 2 and: [
   #('since_preparation' 'query_read_effect') includes: comparison first]])
   ifFalse: [component error: 'Fixed SG original/current comparison required'].
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
   index := schema indexOf: name. index > 0 ifFalse: [component error: 'Current SG cache slot missing'].
   object instVarAt: index].
 tokens := original at: 'tokens'. snapshots := IdentityDictionary new. values := IdentityDictionary new.
 roots := OrderedCollection new. selected := OrderedCollection new. boundaries := Dictionary new.
 classes := Dictionary new. total := 0.
 (material at: 'storage') size > 4096 ifTrue: [component error: 'Full current SG cache census bound exceeded'].
 (material at: 'storage') keysAndValuesDo: [:key :entry | | object name |
   entry class name asString = 'DBCacheObject' ifFalse: [component error: 'Current SG cache entry class differs'].
   object := slot value: entry value: 'object'. name := object class name asString.
   (name startsWith: 'SG') ifTrue: [
     (rootClasses includes: name) ifFalse: [component error: 'Unaudited current SG registered root: ', name].
     (roots anySatisfy: [:owned | owned == object]) ifFalse: [roots add: object].
     selected add: (Array with: key with: entry with: object).
     classes at: name put: (classes at: name ifAbsent: [0]) + 1]].
 describe := [:value | | answer reference |
   answer := Dictionary new at: 'class' put: value class name asString; yourself.
   (value isNil or: [value isNumber or: [value == true or: [value == false or: [value isKindOf: Symbol]]]])
     ifTrue: [answer at: 'kind' put: 'constant'; at: 'value' put: value printString.
       (value isKindOf: Float) ifTrue: [answer at: 'bits' put: value asCebraString asArray]]
     ifFalse: [reference := tokens at: value ifAbsentPut: [
       tokens size >= 16384 ifTrue: [component error: 'Current SG complete identity bound exceeded'].
       'r', (tokens size + 1) printString]. answer at: 'ref' put: reference]. answer].
 walk := [:object :depth | | name kind saved fields originalEntry |
   depth > 128 ifTrue: [component error: 'Current SG depth bound exceeded'].
   name := object class name asString.
   (object isNil or: [object isNumber or: [object == true or: [object == false or: [object isKindOf: Symbol]]]])
     ifFalse: [describe value: object.
       (snapshots includesKey: object) ifFalse: [
         snapshots size >= 16384 ifTrue: [component error: 'Current SG complete image bound exceeded'].
         kind := 'boundary'. saved := nil. fields := #().
         originalEntry := (original at: 'snapshots') at: object ifAbsent: [nil].
         (object isString or: [object isKindOf: ByteArray]) ifTrue: [
           object size > 4194304 ifTrue: [component error: 'Current SG complete value bound exceeded'].
           total := total + object size. total > 16777216 ifTrue: [component error: 'Current SG complete value budget exceeded'].
           kind := 'value'. saved := object copy. values at: object put: saved
         ] ifFalse: [(collectionClasses includes: name) ifTrue: [
           object size > 16384 ifTrue: [component error: 'Current SG complete collection bound exceeded'].
           kind := 'collection'. saved := object copy
         ] ifFalse: [
           ((roots anySatisfy: [:owned | owned == object]) or: [
             (originalEntry notNil and: [originalEntry first = 'fields']) or: [
             (fieldClasses includes: name) or: [(object isKindOf: RBGraphicObject) or: [
               object isKindOf: RBGraphicObjectCollection]]]]) ifTrue: [
             object class isVariable ifFalse: [
               fields := (object class allInstVarNames collect: [:field | field asString]) asArray.
               fields size > 512 ifTrue: [component error: 'Current SG complete schema bound exceeded'].
               fields size = object class instSize ifFalse: [component error: 'Current SG direct schema differs'].
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
 stage := 'current-image'.
 (original at: 'snapshots') keys do: [:object | walk value: object value: 0].
 comparison last notNil ifTrue: [(comparison last at: 'snapshots') keys do: [:object | walk value: object value: 0]].
 roots do: [:object | walk value: object value: 0].
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
 rootsImage := [:objects | ((objects collect: [:object | describe value: object])
   asSortedCollection: [:a :b | (a at: 'ref') < (b at: 'ref')]) asArray].
 membersImage := [:entries | ((entries collect: [:entry | Dictionary new
   at: 'key' put: (describe value: entry first); at: 'entry' put: (describe value: entry second);
   at: 'object' put: (describe value: entry last); yourself])
   asSortedCollection: [:a :b | ((a at: 'entry') at: 'ref') < ((b at: 'entry') at: 'ref')]) asArray].
 baseline := comparison last.
 baseline isNil ifTrue: [baseline := Dictionary new at: 'image' put: (original at: 'originalImage');
   at: 'registered_roots' put: (rootsImage value: (original at: 'roots'));
   at: 'registered_members' put: (membersImage value: (original at: 'selectedCacheMembers')); yourself].
 report := Dictionary new at: 'profile' put: 'native_registered_sg_check_v1';
   at: 'component_oid' put: component getOID; at: 'generation' put: (root at: 'generation');
   at: 'category' put: comparison first; at: 'image' put: rows;
   at: 'registered_roots' put: (rootsImage value: roots);
   at: 'registered_members' put: (membersImage value: selected);
   at: 'root_class_counts' put: classes; at: 'boundary_class_counts' put: boundaries;
   at: 'original_objects_retained' put: (original at: 'snapshots') size;
   at: 'original_material_held' put: true; at: 'db_proxies_resolved' put: false;
   at: 'full_model_transitive_closure' put: false; at: 'write_authorized' put: false;
   at: 'inverse_authorized' put: false; at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'snapshots' put: snapshots; at: 'values' put: values; yourself.
 stage := 'actual-diff'. changes := OrderedCollection new.
 equal := [:left :right | ((root at: 'encodeObservation') value: left) = ((root at: 'encodeObservation') value: right)].
 compareRows := [:oldRow :freshRow | | locus oldContents freshContents |
   locus := 'sg/', ((oldRow at: 'binding') at: 'ref').
   ((equal value: (oldRow at: 'binding') value: (freshRow at: 'binding')) and: [
     (oldRow at: 'kind') = (freshRow at: 'kind') and: [(oldRow at: 'field_names') = (freshRow at: 'field_names')]])
     ifFalse: [changes add: (Dictionary new at: 'category' put: comparison first; at: 'locus' put: locus;
       at: 'field' put: '$identity_schema'; at: 'before' put: oldRow; at: 'after' put: freshRow; yourself)]
     ifTrue: [
       oldContents := oldRow at: 'value'. freshContents := freshRow at: 'value'.
       (oldRow at: 'kind') = 'fields' ifTrue: [
         (oldRow at: 'field_names') doWithIndex: [:name :index |
           (equal value: (oldContents at: index) value: (freshContents at: index)) ifFalse: [
             changes add: (Dictionary new at: 'category' put: comparison first; at: 'locus' put: locus;
               at: 'field' put: name; at: 'before' put: (oldContents at: index);
               at: 'after' put: (freshContents at: index); yourself)]]
       ] ifFalse: [
         ((oldRow at: 'kind') = 'collection' and: [
           #('Dictionary' 'IdentityDictionary' 'Set' 'IdentitySet') includes: ((oldRow at: 'binding') at: 'class')]) ifTrue: [
           oldContents := (oldContents asSortedCollection: [:a :b | ((root at: 'encodeObservation') value: a) < ((root at: 'encodeObservation') value: b)]) asArray.
           freshContents := (freshContents asSortedCollection: [:a :b | ((root at: 'encodeObservation') value: a) < ((root at: 'encodeObservation') value: b)]) asArray].
         (equal value: oldContents value: freshContents) ifFalse: [
           changes add: (Dictionary new at: 'category' put: comparison first; at: 'locus' put: locus;
             at: 'field' put: '$contents'; at: 'before' put: (oldRow at: 'value');
             at: 'after' put: (freshRow at: 'value'); yourself)]]].
 ].
 mapped := [:images | | result | result := Dictionary new.
   images do: [:row | | key | key := (row at: 'binding') at: 'ref'.
     (result includesKey: key) ifTrue: [component error: 'Current SG identity collision'].
     result at: key put: row]. result].
 old := mapped value: (baseline at: 'image'). fresh := mapped value: rows.
 old keys asSortedCollection do: [:key |
   (fresh includesKey: key) ifFalse: [component error: 'Original retained SG object missing from current image'].
   compareRows value: (old at: key) value: (fresh at: key)].
 fresh keys asSortedCollection do: [:key | (old includesKey: key) ifFalse: [
   changes add: (Dictionary new at: 'category' put: comparison first; at: 'locus' put: 'sg/', key;
     at: 'field' put: '$new_observed_object'; at: 'before' put: nil; at: 'after' put: (fresh at: key); yourself)]].
 #('registered_roots' 'registered_members') do: [:role |
   (equal value: (baseline at: role) value: (report at: role)) ifFalse: [
     changes add: (Dictionary new at: 'category' put: comparison first; at: 'locus' put: 'sg_registry';
       at: 'field' put: role; at: 'before' put: (baseline at: role); at: 'after' put: (report at: role); yourself)]].
 report at: 'actual_changes' put: changes asArray.
 report
 ] ifFail: [:error | 'BDE_COMMIT_REGISTERED_MODELS_CURRENT_ERROR: ', stage, ': ', error messageText]
]
