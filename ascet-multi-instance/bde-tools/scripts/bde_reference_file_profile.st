"Bind the existing reference file and fixed native read dispatches; no scan or write."
[:component :token :database |
 | stage |
 stage := 'binding'.
 component handleExceptionsIn: [
 | material root owner backend slot leaf file probes context method matches association library unique keys fixed
   gvClass gvSize functions functionRefs functionBytes methodEvidence profileMethod selectors support report bytes schema poolRefs |
 material := (Smalltalk at: #DogeBDECommitResourceWitnessesV1) at: ('commit_', (token copyFrom: 6 to: token size)).
 root := material at: 'root'. owner := material at: 'owner'. backend := material at: 'backend'.
 ((material at: 'editToken') = token and: [owner == component item and: [(root at: 'owner') == owner and: [
   (material at: 'access') == database dbAccess and: [(material at: 'controller') == database dbInterface and: [
   (material at: 'generation') = (root at: 'generation') and: [(material at: 'phase') = 'captured']]]]]])
     ifFalse: [component error: 'Exact retained reference file binding required'].
 (material includesKey: 'reciprocalMaterial') ifFalse: [component error: 'Original reciprocal reference material required'].
 slot := [:object :name | | names index |
   names := (object class allInstVarNames collect: [:field | field asString]) asArray.
   index := names indexOf: name. index > 0 ifFalse: [component error: 'Reference file slot unavailable: ', name].
   object instVarAt: index].
 bytes := [:object |
   object size <= 65536 ifFalse: [component error: 'Complete reference file profile value bound exceeded'].
   ((1 to: object size) collect: [:index | object at: index]) asArray].
 leaf := slot value: backend value: 'referenceInterface'. file := slot value: leaf value: 'ctIFIL'.
 (backend class name asString = 'DBReferenceInterface32' and: [
   leaf class name asString = 'CTreeLocalVariableAttributeInterface' and: [file class name asString = 'CTSpaceCheckingIFil']])
     ifFalse: [component error: 'Fixed original reference file route required'].
 probes := material at: 'referenceFileProfiles' ifAbsentPut: [OrderedCollection new].
 probes size >= 16 ifTrue: [component error: 'Reference profile capacity reached; original material retained'].
 context := Dictionary new at: 'phase' put: 'profiling'; at: 'material' put: material; at: 'root' put: root;
   at: 'owner' put: owner; at: 'backend' put: backend; at: 'leaf' put: leaf; at: 'file' put: file;
   at: 'generation' put: (root at: 'generation'); at: 'token' put: token; yourself.
 probes add: context.
 method := CTIFil compiledMethodAt: #getFirstRecord:.
 matches := method allLiterals select: [:literal |
   literal class == Association and: [literal key asString = 'CTreeLibrary']].
 matches size = 1 ifFalse: [component error: 'One original compiled reference library association required'].
 association := matches first. library := association value.
 library class name asString = 'CTreestdFputFgetDLL'
   ifFalse: [component error: 'Exact existing multi-user reference library required'].
 context at: 'libraryAssociation' put: association; at: 'library' put: library.
 stage := 'file-schema'.
 unique := slot value: leaf value: 'uniqueIndex'. keys := slot value: leaf value: 'ctKey'.
 fixed := slot value: leaf value: 'fixedRecord'.
 schema := Dictionary new at: 'unique_name' put: unique key asString;
   at: 'unique_number' put: unique value1; at: 'key_class' put: unique value2 class name asString;
   at: 'key_length' put: (keys keyLengthFor: 0); at: 'key_duplicate_code' put: (keys keyDupFor: 0);
   at: 'record_class' put: fixed class name asString; at: 'data_number' put: file tfilnum; yourself.
 context at: 'schema' put: schema.
 (unique key asString = 'globalId' and: [unique value1 = 0 and: [unique value2 class == DBGlobalAttributeIdKey and: [
   (keys keyLengthFor: 0) = 53 and: [(keys keyDupFor: 0) = 0 and: [
   fixed class == CTreeVariableAttributeRecord and: [file tfilnum >= 0]]]]]])
     ifFalse: [component error: 'Exact unique reference key and open file schema required: ', ((root at: 'encodeObservation') value: schema)].
 gvClass := library gvClass. gvSize := gvClass fixedSize.
 (gvClass == CTGVCTreestdFputFget and: [gvSize isInteger and: [gvSize > 0 and: [gvSize <= 4096]]])
   ifFalse: [component error: 'Fixed current reference GV class/size required'].
 context at: 'uniqueNumber' put: 0; at: 'keyLength' put: 53; at: 'recordClass' put: fixed class;
   at: 'dataNumber' put: file tfilnum; at: 'indexNumber' put: (file indexFileNumber: 0);
   at: 'gvClass' put: gvClass; at: 'gvSize' put: gvSize.
 stage := 'fixed-native-dispatch'.
 functionRefs := OrderedCollection new. functionBytes := OrderedCollection new. methodEvidence := OrderedCollection new.
 context at: 'functionRefs' put: functionRefs; at: 'functionBytes' put: functionBytes; at: 'methodEvidence' put: methodEvidence.
 profileMethod := [:requestedClass :selector | | defining dictionary array count position raw currentMethod code |
   defining := requestedClass whichClassIncludesSelector: selector.
   defining isNil ifTrue: [component error: 'Fixed reference method unavailable: ', selector asString].
   dictionary := defining methodDictionary.
   dictionary class name asString = 'EsMBADictionary' ifFalse: [component error: 'Fixed compact method dictionary required'].
   array := slot value: dictionary value: 'methodsArray'.
   array isNil ifTrue: [array := slot value: defining value: 'methodsArray'].
   (array class name asString = 'EsMethodArray' and: [array basicSize <= 65536])
     ifFalse: [component error: 'Complete reference method array required'].
   count := 0. position := 0.
   1 to: array basicSize by: 2 do: [:index |
     (array basicAt: index) == selector ifTrue: [count := count + 1. position := index]].
   count = 1 ifFalse: [component error: 'Exact original reference method slot required'].
   raw := array basicAt: position + 1. currentMethod := defining compiledMethodAt: selector.
   (raw class == SmallInteger and: [(slot value: currentMethod value: 'startPC') = raw])
     ifFalse: [component error: 'Reference native method identity differs'].
   code := bytes value: currentMethod bytecodes.
   methodEvidence add: (Array with: requestedClass with: defining with: array with: selector with: position with: raw).
   Array with: currentMethod with: (Dictionary new at: 'requested_class' put: requestedClass name asString;
     at: 'defining_class' put: defining name asString; at: 'selector' put: selector asString;
     at: 'selector_index' put: position; at: 'method_slot' put: raw; at: 'bytecodes' put: code; yourself)].
 selectors := #('firstRecord:recPtr:' 'nextRecord:recPtr:' 'firstKey:idxval:' 'nextKey:idxval:'
   'getCTreeGV' 'nbrOfKeyEntries:' 'vRecordLength:' 'rereadVRecord:recPtr:varLen:' 'transformKey:target:' 'switchCTree:').
 functions := selectors collect: [:text | | pair native row |
   pair := profileMethod value: library class value: text asSymbol.
   native := pair first allLiterals select: [:literal | literal class name asString = 'PlatformFunction'].
   native size = 1 ifFalse: [component error: 'One original native PlatformFunction literal required: ', text].
   functionRefs add: native first. functionBytes add: (bytes value: native first).
   row := pair last. row at: 'platform_function_bytes' put: functionBytes last. row].
 context at: 'functions' put: functions asArray.
 support := OrderedCollection new.
 poolRefs := OrderedCollection new. context at: 'gvBindings' put: poolRefs.
 (Array with: (Array with: gvClass class with: #('fixedSize'))
        with: (Array with: gvClass with: #('sisam_err' 'suerr_cod' 'ssysiocod' 'sisam_fil'))) do: [:group |
   group last do: [:text | | pair row |
     pair := profileMethod value: group first value: text asSymbol. row := pair last.
     row at: 'literals' put: ((pair first allLiterals collect: [:literal |
       (#('Association' 'EsPoolAssociation') includes: literal class name asString) ifTrue: [
         literal value isInteger ifFalse: [component error: 'Exact integer GV offset/size pool binding required'].
         poolRefs add: (Array with: literal with: literal key with: literal value).
         Dictionary new at: 'kind' put: 'association'; at: 'class' put: literal class name asString; at: 'key' put: literal key asString;
           at: 'value' put: literal value; yourself
       ] ifFalse: [Dictionary new at: 'kind' put: 'atom'; at: 'class' put: literal class name asString;
         at: 'value' put: literal printString; yourself]]) asArray).
     support add: row]].
 stage := 'binding-recheck'.
 methodEvidence do: [:key | | defining dictionary array |
   defining := key first whichClassIncludesSelector: (key at: 4).
   dictionary := defining methodDictionary. array := slot value: dictionary value: 'methodsArray'.
   array isNil ifTrue: [array := slot value: defining value: 'methodsArray'].
   (defining == (key at: 2) and: [array == (key at: 3) and: [
     (array basicAt: (key at: 5)) == (key at: 4) and: [(array basicAt: (key at: 5) + 1) = key last]]])
       ifFalse: [component error: 'Reference method identity changed during profile']].
 functionRefs doWithIndex: [:function :index |
   (bytes value: function) = (functionBytes at: index)
     ifFalse: [component error: 'Reference PlatformFunction binding changed during profile']].
 poolRefs size = 5 ifFalse: [component error: 'Complete GV size and four error offsets required'].
 poolRefs do: [:entry |
   (entry first key = (entry at: 2) and: [entry first value = entry last])
     ifFalse: [component error: 'GV size/offset binding changed during profile']].
 (association value == library and: [(slot value: backend value: 'referenceInterface') == leaf and: [
   (slot value: leaf value: 'ctIFIL') == file]]) ifFalse: [component error: 'Original reference file binding changed'].
 report := Dictionary new at: 'profile' put: 'native_reference_file_profile_v2'; at: 'profile_index' put: probes size;
   at: 'native_token' put: token; at: 'component_oid' put: component getOID; at: 'generation' put: (root at: 'generation');
   at: 'library_class' put: library class name asString; at: 'leaf_class' put: leaf class name asString;
   at: 'file_class' put: file class name asString; at: 'gv_class' put: gvClass name asString; at: 'gv_size' put: gvSize;
   at: 'unique_number' put: 0; at: 'key_length' put: 53; at: 'key_duplicates' put: false;
   at: 'data_number' put: (context at: 'dataNumber'); at: 'index_number' put: (context at: 'indexNumber');
   at: 'ct_key_bytes' put: (bytes value: (keys memcpyFrom: 0 to: keys size - 1)); at: 'functions' put: functions asArray; at: 'gv_methods' put: support asArray;
   at: 'method_identity_rechecked' put: true; at: 'function_bytes_unchanged' put: true;
   at: 'gv_pool_bindings_rechecked' put: true;
   at: 'scan_executed' put: false; at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'commit_called' put: false; at: 'write_authorized' put: false; at: 'inverse_authorized' put: false;
   at: 'complete_before_authorized' put: false; at: 'atomic_snapshot_verified' put: false; yourself.
 context at: 'phase' put: 'profiled'; at: 'report' put: report.
 (root at: 'encodeObservation') value: report
 ] ifFail: [:error | 'BDE_REFERENCE_FILE_PROFILE_ERROR: ', stage, ': ', error messageText]
]
