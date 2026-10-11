"Research only: load this workbench's own dump once into a private loader.
 Expand RBObjectLoader's one-array extraction branch to retain the loaded root.
 Never install a backend, restore instvars, resolve proxies or write records."
[:collector | [:component :index :finish | component handleExceptionsIn: [
 | registry material source loader graph slot same freeze verifyGraph before payload savedPayload
   instTable classes check used prepared execute project originalVerify db linkClass phase |
 (finish == true or: [finish == false]) ifFalse: [component error: 'Exact fixed finish mode required'].
 registry := Smalltalk at: #DogeBDEFreshSerializerWorkbenchesV1.
 (index isInteger and: [index >= 1 and: [index <= registry size]])
   ifFalse: [component error: 'Exact retained extraction workbench required'].
 material := registry at: index. source := material at: 'source'. loader := material at: 'loader'.
 phase := finish ifTrue: ['extract_failed'] ifFalse: ['dumped'].
 ((material at: 'phase') = phase and: [(material at: 'dumpCalls') = 1 and: [
   (material at: 'dumpOK') == true and: [(material at: 'owner') == component item]]])
   ifFalse: [component error: 'Confirmed dumped workbench required; no replay'].
 slot := [:object :name | | i |
   i := (object class allInstVarNames collect: [:n | n asString]) asArray indexOf: name.
   i > 0 ifFalse: [component error: 'Extraction audited field missing: ', name]. object instVarAt: i].
 same := [:a :b | (a isKindOf: Dictionary) ifTrue: [
   (b isKindOf: Dictionary) and: [a size = b size and: [a keys allSatisfy: [:k |
     (b includesKey: k) and: [same value: (a at: k) value: (b at: k)]]]]]
   ifFalse: [a isArray ifTrue: [b isArray and: [a size = b size and: [
     (1 to: a size) allSatisfy: [:i | same value: (a at: i) value: (b at: i)]]]] ifFalse: [a = b]]].
 freeze := [:x | (x isKindOf: Dictionary) ifTrue: [| d | d := Dictionary new.
   x keysAndValuesDo: [:k :v | d at: k put: (freeze value: v)]. d]
   ifFalse: [x isArray ifTrue: [(x collect: [:v | freeze value: v]) asArray]
     ifFalse: [x isString ifTrue: [x copy] ifFalse: [x]]]].
 graph := material at: 'graphSnapshots'. originalVerify := material at: 'verifyOriginals'.
 verifyGraph := [graph keys allSatisfy: [:object | | image fields indexed |
   image := graph at: object. fields := image at: 2. indexed := image at: 3.
   object class instSize = fields size and: [
     ((1 to: fields size) allSatisfy: [:i | (object instVarAt: i) == (fields at: i)]) and: [
     object basicSize = indexed size and: [image first = 'bytes' ifTrue: [object = indexed]
       ifFalse: [(1 to: indexed size) allSatisfy: [:i | (object basicAt: i) == (indexed at: i)]]]]]]].
 graph keys do: [:object |
   (#('fields' 'bytes') includes: (graph at: object) first)
     ifFalse: [component error: 'First extraction excludes replacement boundaries and Class values'].
   (object class whichClassIncludesSelector: #loadingReplacementForReplacer:) == Object
     ifFalse: [component error: 'Unaudited loading callback: ', object class name asString]].
 ((source class whichClassIncludesSelector: #isDbObject) == SGTopGraphicsBlockDB and: [
   (source class whichClassIncludesSelector: #dbObject) == SGTopGraphicsBlockDB and: [
   (source class whichClassIncludesSelector: #hasReferences) == Object and: [
   (source class whichClassIncludesSelector: #isKnowMyLinks) == Object]]])
     ifFalse: [component error: 'Unaudited extraction root dispatch'].
 (source isDbObject and: [source hasReferences and: [source isKnowMyLinks not]])
   ifFalse: [component error: 'Root extraction route unsupported'].
 db := slot value: source value: 'dbObject'. db isNil ifTrue: [component error: 'No original source DBObject'].
 (db class whichClassIncludesSelector: #asDBReferenceLinkProxy) == DBProxy
   ifFalse: [component error: 'Unaudited fresh link factory'].
 loader dbInterface isNil ifFalse: [component error: 'Private loader must have no backend'].
 "No restoring/migration/class remap is configured by this fixed helper."
 payload := material at: 'dumpPayload'. savedPayload := payload copy.
 (payload class == ByteArray and: [payload size > 0 and: [payload size <= 4194304]])
   ifFalse: [component error: 'Bounded retained native payload required'].
 instTable := slot value: (slot value: (material at: 'dumper') value: 'instVarReplacer') value: 'classesWithInstVarsToReplace'.
 classes := DBProxy proxyClasses.
 before := collector value: component.
 check := [
   ((material at: 'phase') = phase and: [
     (component getDiagram: 'Main') specification specSourceInternalOrNil == source and: [
     (slot value: component item dbObject value: 'interface') == (material at: 'backend') and: [
     (slot value: source value: 'dbObject') == db and: [loader dbInterface isNil]]]])
       ifFalse: [component error: 'Original extraction identity expired'].
   (originalVerify value and: [verifyGraph value and: [payload = savedPayload]])
       ifFalse: [component error: 'Original/config/retained dump changed before extraction'].
   ((same value: before value: (material at: 'dumpAfter')) and: [same value: before value: (collector value: component)])
       ifFalse: [component error: 'Original full records changed before extraction'].
   graph keys do: [:o | (o class whichClassIncludesSelector: #loadingReplacementForReplacer:) == Object
       ifFalse: [component error: 'Loading callback expired']]
 ].
 check value. used := false.
 prepared := Dictionary new at: 'profile' put: 'isolated_fresh_source_extract_prepared_v1';
   at: 'component_oid' put: component getOID; at: 'workbench_index' put: index;
   at: 'before' put: (freeze value: before); at: 'payload_bytes' put: payload asArray;
   at: 'graph_objects' put: graph size; at: 'load_calls' put: (finish ifTrue: [1] ifFalse: [0]);
   at: 'finish_existing_load' put: finish;
   at: 'persistent_write_calls' put: 0; at: 'store_called' put: false;
   at: 'commit_called' put: false; at: 'full_delivery' put: false; yourself.
 execute := [:ignored | component handleExceptionsIn: [
   | loaded extracted link after mapping reverse compare equivalent references proxyRows originalsOK graphOK |
   used ifTrue: [component error: 'One-shot extraction consumed; never replay'].
   used := true. check value.
   finish ifTrue: [
     ((material at: 'loadCalls') = 1 and: [loader currentError = 0 and: [(material includesKey: 'extractedLink') not]])
       ifFalse: [component error: 'Only an existing successful private load can be finished'].
     loaded := material at: 'loadedSource'.
     material at: 'phase' put: 'extract_finishing'
   ] ifFalse: [
     material at: 'phase' put: 'extracting'; at: 'extractBefore' put: before; at: 'loadCalls' put: 1.
     loader currentError: 0. loader extractInstancesOfClasses: classes.
     loader currentError = 0 ifFalse: [component error: 'Extraction class selection failed'].
     loaded := loader loadFromStream: (ReadStream on: payload).
     material at: 'loadedSource' put: loaded
   ].
   (loader currentError = 0 and: [loaded class == source class and: [loaded ~~ source]])
     ifFalse: [component error: 'Native own-bytes load failed; retained, no retry'].
   "Compare every non-omitted slot and index, including sharing, without resolving anything."
   mapping := IdentityDictionary new. reverse := IdentityDictionary new.
   compare := [:a :b :depth | | omitted image |
     depth > 128 ifTrue: [component error: 'Loaded projection depth bound exceeded'].
     (a isNil or: [a isNumber or: [(a isKindOf: Symbol) or: [a == true or: [a == false]]]])
       ifTrue: [a = b] ifFalse: [
       (graph includesKey: a) ifFalse: [component error: 'Projection outside inventoried graph'].
       (graph includesKey: b) ifTrue: [component error: 'Loaded object aliases original graph'].
       (mapping includesKey: a) ifTrue: [(mapping at: a) == b] ifFalse: [
         (reverse includesKey: b) ifTrue: [component error: 'Loaded distinct objects merged'].
         a class == b class ifFalse: [component error: 'Loaded projection class changed'].
         mapping at: a put: b. reverse at: b put: a.
         omitted := instTable at: a class ifAbsent: [LookupTable new].
         image := graph at: a.
         ((1 to: a class instSize) allSatisfy: [:i | (omitted includesKey: i)
           ifTrue: [(b instVarAt: i) isNil]
           ifFalse: [compare value: (a instVarAt: i) value: (b instVarAt: i) value: depth + 1]]) and: [
           a basicSize = b basicSize and: [image first = 'bytes' ifTrue: [a = b]
             ifFalse: [(1 to: a basicSize) allSatisfy: [:i |
               compare value: (a basicAt: i) value: (b basicAt: i) value: depth + 1]]]]
       ]]
   ].
   equivalent := compare value: source value: loaded value: 0.
   equivalent ifFalse: [component error: 'Own-bytes loaded projection differs'].
   extracted := loader requestedNewlyLoadedInstances.
   "The source's embedded DBObject is loaded too. Validate its fresh identity
    against the projection; createReferencesFrom: removes this self reference."
   (extracted size = classes size and: [extracted allSatisfy: [:group | group allSatisfy: [:proxy |
     (reverse includesKey: proxy) and: [(graph includesKey: proxy) not and: [proxy class == DBObject]]]]])
       ifFalse: [component error: 'Extracted proxy outside loaded graph or unsupported class'].
   ((extracted collect: [:group | group size]) inject: 0 into: [:sum :n | sum + n]) = 1
     ifFalse: [component error: 'First extraction requires exactly the embedded source DBObject'].
   link := db asDBReferenceLinkProxy.
   (link class == DBLinkProxy and: [link ~~ db and: [(graph includesKey: link) not]])
     ifFalse: [component error: 'Fresh private DBLinkProxy required'].
   link createReferencesFrom: extracted.
   references := link references.
   references isEmpty ifFalse: [component error: 'Boundary-free extraction has unexpected references'].
   material at: 'extractedLink' put: link; at: 'loadedProjectionMapping' put: mapping.
   after := collector value: component. originalsOK := originalVerify value. graphOK := verifyGraph value.
   material at: 'extractAfter' put: after; at: 'phase' put: 'extracted'.
   Dictionary new at: 'profile' put: 'isolated_fresh_source_extract_result_v1';
     at: 'component_oid' put: component getOID; at: 'workbench_index' put: index;
     at: 'before' put: (freeze value: before); at: 'after' put: after;
     at: 'payload_bytes' put: payload asArray; at: 'load_calls' put: 1;
     at: 'load_calls_this_dispatch' put: (finish ifTrue: [0] ifFalse: [1]);
     at: 'finish_existing_load' put: finish; at: 'extracted_proxy_objects' put: 1;
     at: 'loader_error' put: loader currentError;
     at: 'loaded_class' put: loaded class name asString; at: 'loaded_objects' put: mapping size;
     at: 'source_projection_equivalent' put: equivalent; at: 'original_aliases' put: 0;
     at: 'extracted_references' put: references size; at: 'original_graph_preserved' put: graphOK;
     at: 'original_config_preserved' put: originalsOK; at: 'owner_records_preserved' put: (same value: before value: after);
     at: 'payload_preserved' put: (payload = savedPayload); at: 'loader_has_no_backend' put: loader dbInterface isNil;
     at: 'persistent_write_calls' put: 0; at: 'model_setters_called' put: 0;
     at: 'store_called' put: false; at: 'commit_called' put: false; at: 'automatic_retry' put: false;
     at: 'production_inverse_authorized' put: false; at: 'cross_module_supported' put: false;
     at: 'full_delivery' put: false; yourself
 ] ifFail: [:error | material at: 'phase' put: 'extract_failed'. 'BDE_FRESH_EXTRACT_EXECUTION_ERROR: ', error messageText]].
 Dictionary new at: 'prepared' put: prepared; at: 'execute' put: execute; yourself
] ifFail: [:error | 'BDE_FRESH_EXTRACT_PREPARATION_ERROR: ', error messageText]]]
