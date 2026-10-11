"Finite existing Module/source reference-record observation. No model/store/write
 dispatch and no whole-file census. Read effects on the CTree cursor are not
 restoration proof. This current observation must never replace an old before."
[:decoder | [:component |
 | owner ownerDB diagram source sourceDB backend leaf file slot bytes read rows owners targets
   ownerKeys total addTarget reciprocal checks complete freshDiagram |
 (component class name asString = 'EtasAPIModuleBDE' and: [component item class name asString = 'SGModule'])
   ifFalse: [component error: 'Exact existing Module BDE required for finite references'].
 owner := component item. ownerDB := owner dbObject. diagram := component getDiagram: 'Main'.
 diagram isStateMachineDiagram ifTrue: [component error: 'Ordinary Main diagram required'].
 source := diagram specification specSourceInternalOrNil.
 source class name asString = 'SGTopGraphicsBlockDB'
   ifFalse: [component error: 'Existing stored Main source required'].
 slot := [:object :name | | index |
   index := (object class allInstVarNames collect: [:field | field asString]) asArray indexOf: name.
   index = 0 ifTrue: [component error: 'Finite reference resource slot missing: ', name].
   object instVarAt: index].
 sourceDB := slot value: source value: 'dbObject'.
 (ownerDB class name asString = 'DBObject' and: [sourceDB class name asString = 'DBObject'])
   ifFalse: [component error: 'Original distinct Module/source DBObjects required'].
 backend := slot value: ownerDB value: 'interface'.
 (backend class name asString = 'DBReferenceInterface32' and: [
   (slot value: sourceDB value: 'interface') == backend and: [ownerDB ~~ sourceDB]])
   ifFalse: [component error: 'Exact distinct owners and shared reference backend required'].
 leaf := slot value: backend value: 'referenceInterface'. file := slot value: leaf value: 'ctIFIL'.
 (leaf class name asString = 'CTreeLocalVariableAttributeInterface' and: [file class name asString = 'CTSpaceCheckingIFil'])
   ifFalse: [component error: 'Audited finite reference leaf/file required'].
 total := 0. complete := true.
 bytes := [:value | | answer |
   value size > 4194304 ifTrue: [component error: 'Finite reference record byte bound exceeded'].
   total := total + value size. total > 16777216 ifTrue: [component error: 'Finite reference capture byte budget exceeded'].
   answer := ((1 to: value size) collect: [:index | | octet | octet := value at: index.
     (octet isInteger and: [octet >= 0 and: [octet <= 255]])
       ifFalse: [component error: 'Exact finite reference byte required']. octet]) asArray. answer].
 read := [:global :role | | proxy attribute query actual record row fixed blob decoded |
   attribute := role = 'owner_references' ifTrue: ['DBReferenceList'] ifFalse: ['DBReferencedByList'].
   (global class == ByteArray and: [global size = 20]) ifFalse: [component error: 'Exact reference global ID required'].
   proxy := DBLinkProxy new initializeInstances.
   proxy globalId: global; dbInterface: backend; istate: 0; attributeName: attribute.
   proxy recordClass name asString = 'CTreeVariableAttributeRecord'
     ifFalse: [component error: 'Audited reference proxy record required'].
   query := proxy uniqueKeyValue. actual := leaf keyClass keyValueFor: proxy.
   (query = actual and: [query = (global, attribute asCebraString)])
     ifFalse: [component error: 'Exact finite reference file key differs'].
   row := Dictionary new at: 'role' put: role; at: 'attribute' put: attribute;
     at: 'global_id' put: (bytes value: global); at: 'query_key' put: (bytes value: query);
     at: 'actual_file_key' put: (bytes value: actual);
     at: 'record_class_requested' put: 'CTreeVariableAttributeRecord'; yourself.
   record := leaf readRecord: proxy.
   record isCTError ifTrue: [
     row at: 'read_status' put: 'error'; at: 'error_class' put: record class name asString;
       at: 'error_number' put: record errorNumber;
       at: 'uerr_code' put: record uerrCode printString; at: 'sysio_code' put: record sysioCode printString.
     record errorNumber = 101 ifTrue: [
       row at: 'read_status' put: 'absent'; at: 'absence_profile' put: 'exact_reference_undefined_v1'
     ] ifFalse: [complete := false]
   ] ifFalse: [
     (record class name asString = 'CTreeVariableAttributeRecord' and: [record globalId = global and: [record attributeName asString = attribute]])
       ifFalse: [component error: 'Actual finite record identity differs'].
     fixed := record class fixedSize. blob := record blobSize.
     (fixed = 60 and: [blob isInteger and: [blob >= 0 and: [record size >= (fixed + blob)]]])
       ifFalse: [component error: 'Complete finite raw record required'].
     row at: 'read_status' put: 'record'; at: 'record_class' put: record class name asString;
       at: 'record_attribute' put: attribute; at: 'fixed_size' put: fixed; at: 'blob_size' put: blob;
       at: 'logical_size' put: fixed + blob; at: 'allocated_size' put: record size;
       at: 'bytes' put: (bytes value: (record copyFrom: 1 to: fixed + blob));
       at: 'allocated_bytes' put: (bytes value: record).
     decoded := decoder value: row value: (row at: 'global_id').
     row at: 'length_profile' put: 'reference_payload_v2'; at: 'declared_size' put: fixed + blob;
       at: 'logical_size' put: (decoded at: 'semantic_size'); at: 'bytes' put: (decoded at: 'semantic_bytes')
   ]. row
 ].
 owners := OrderedCollection new. targets := OrderedCollection new. ownerKeys := OrderedCollection new.
 addTarget := [:key | (targets includes: key) ifFalse: [
   targets size >= 8192 ifTrue: [component error: 'Finite reciprocal target bound exceeded']. targets add: key copy]].
 (Array with: ownerDB with: sourceDB) doWithIndex: [:db :index | | key entry outgoing incoming |
   key := db uniqueKeyValue. key size = 20 ifFalse: [component error: 'Exact existing owner key required'].
   (ownerKeys includes: key asArray) ifTrue: [component error: 'Distinct finite reference owners required'].
   ownerKeys add: key asArray.
   outgoing := read value: key value: 'owner_references'. incoming := read value: key value: 'owner_referenced_by'.
   entry := Dictionary new at: 'role' put: (#('component' 'spec_source') at: index);
     at: 'oid' put: db globalIdString; at: 'key' put: key asArray;
     at: 'records' put: (Array with: outgoing with: incoming); yourself. owners add: entry.
   (outgoing at: 'read_status') = 'record' ifTrue: [
     ((decoder value: outgoing value: key asArray) at: 'entries') do: [:reference | addTarget value: (reference at: 'global_id')]]
 ].
 reciprocal := OrderedCollection new. checks := OrderedCollection new.
 targets := (targets asSortedCollection: [:a :b | | index | index := 1.
   [index <= 20 and: [(a at: index) = (b at: index)]] whileTrue: [index := index + 1].
   index <= 20 and: [(a at: index) < (b at: index)]]) asArray.
 targets do: [:target | | key row |
   key := ByteArray new: 20. 1 to: 20 do: [:index | key at: index put: (target at: index)].
   row := read value: key value: 'owner_referenced_by'. reciprocal add: row.
   (row at: 'read_status') ~= 'error' ifTrue: [
     owners do: [:entry | | outgoing expected count |
       outgoing := (entry at: 'records') first.
       (outgoing at: 'read_status') ~= 'error' ifTrue: [
         expected := (outgoing at: 'read_status') = 'record' and: [
           ((decoder value: outgoing value: (entry at: 'key')) at: 'entries')
             anySatisfy: [:reference | (reference at: 'global_id') = target]].
         count := (row at: 'read_status') = 'absent' ifTrue: [0] ifFalse: [
           (((decoder value: row value: target) at: 'entries')
             select: [:reference | (reference at: 'global_id') = (entry at: 'key')]) size].
         checks add: (Dictionary new at: 'owner_key' put: (entry at: 'key'); at: 'target_key' put: target;
           at: 'outgoing_member' put: expected; at: 'inbound_owner_count' put: count;
           at: 'consistent' put: (expected = (count > 0)); yourself)
       ]
     ]
   ]
 ].
 freshDiagram := component getDiagram: 'Main'.
 (component item == owner and: [owner dbObject == ownerDB and: [
   freshDiagram specification == diagram specification and: [
   freshDiagram specification specSourceInternalOrNil == source and: [
   (slot value: source value: 'dbObject') == sourceDB and: [
   (slot value: ownerDB value: 'interface') == backend and: [
   (slot value: sourceDB value: 'interface') == backend and: [
   (slot value: backend value: 'referenceInterface') == leaf and: [(slot value: leaf value: 'ctIFIL') == file]]]]]]]])
   ifFalse: [component error: 'Finite reference owner/source/backend expired during read'].
 Dictionary new at: 'profile' put: 'native_module_persistent_reference_snapshot_v1';
   at: 'component_oid' put: component getOID; at: 'owners' put: owners asArray;
   at: 'reciprocal_targets' put: targets; at: 'reciprocal_records' put: reciprocal asArray;
   at: 'membership_checks' put: checks asArray; at: 'complete' put: complete;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'commit_called' put: false;
   at: 'original_edit_before_bound' put: false; at: 'cross_process_atomic' put: false;
   at: 'full_commit_resource_closure' put: false; at: 'write_authorized' put: false; at: 'inverse_authorized' put: false; yourself
]]
