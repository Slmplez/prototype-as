"Read current inbound records through the retained original proxies; never recapture before."
[:decoder | [:component :material :database |
 | stage |
 stage := 'binding'.
 component handleExceptionsIn: [
 | root saved leaf file slot tokens record rows report checks total bytes describe fields changes add equal
   logicalEqual rawEqual summary ownerKey originals values |
 root := material at: 'root'. saved := material at: 'reciprocalMaterial'.
 slot := [:object :name | | names index |
   names := (object class allInstVarNames collect: [:field | field asString]) asArray.
   index := names indexOf: name. index > 0 ifFalse: [component error: 'Required reciprocal current slot unavailable: ', name].
   object instVarAt: index].
 leaf := saved at: 'leaf'. file := saved at: 'file'.
 ((saved at: 'phase') = 'captured' and: [(saved at: 'root') == root and: [
   (saved at: 'owner') == component item and: [(root at: 'owner') == component item and: [
   (saved at: 'generation') = (root at: 'generation') and: [(material at: 'generation') = (root at: 'generation') and: [
   (material at: 'access') == database dbAccess and: [(material at: 'controller') == database dbInterface and: [
   (saved at: 'backend') == (material at: 'backend') and: [
   (slot value: (material at: 'backend') value: 'referenceInterface') == leaf and: [
   (slot value: leaf value: 'ctIFIL') == file]]]]]]]]]])
     ifFalse: [component error: 'Original reciprocal current binding differs'].
 (leaf class name asString = 'CTreeLocalVariableAttributeInterface' and: [file class name asString = 'CTSpaceCheckingIFil'])
   ifFalse: [component error: 'Original reciprocal current route differs'].
 checks := saved at: 'checks' ifAbsentPut: [OrderedCollection new].
 checks size >= 32 ifTrue: [component error: 'Complete reciprocal query capacity reached; no eviction'].
 tokens := material at: 'tokens'. originals := IdentityDictionary new. values := IdentityDictionary new.
 rows := OrderedCollection new. changes := OrderedCollection new. total := 0. logicalEqual := true. rawEqual := true.
 ownerKey := (saved at: 'capture') at: 'owner_key'.
 report := Dictionary new at: 'profile' put: 'native_current_reciprocal_records_v1';
   at: 'component_oid' put: component getOID; at: 'generation' put: (root at: 'generation');
   at: 'owner_key' put: ownerKey; at: 'phase' put: 'reading'; at: 'records' put: #();
   at: 'actual_changes' put: nil; at: 'summary' put: nil; yourself.
 record := Dictionary new at: 'report' put: report; at: 'rawReads' put: OrderedCollection new;
   at: 'readSnapshots' put: OrderedCollection new; at: 'originals' put: originals; at: 'values' put: values; yourself.
 checks add: record.
 bytes := [:object | | result |
   object size <= 4194304 ifFalse: [component error: 'Complete current reciprocal record bound exceeded'].
   result := ((1 to: object size) collect: [:index | | byte |
     byte := object at: index.
     (byte class == SmallInteger and: [byte >= 0 and: [byte <= 255]])
       ifFalse: [component error: 'Exact current reciprocal byte required']. byte]) asArray.
   total := total + result size. total <= 16777216 ifFalse: [component error: 'Complete current reciprocal capture bound exceeded'].
   result].
 describe := [:object | | answer |
   answer := Dictionary new at: 'class' put: object class name asString; yourself.
   (object isNil or: [object isNumber or: [object == true or: [object == false or: [object isKindOf: Symbol]]]])
     ifTrue: [answer at: 'kind' put: 'atom'; at: 'value' put: object printString]
     ifFalse: [answer at: 'ref' put: (tokens at: object ifAbsentPut: [
       tokens size >= 16384 ifTrue: [component error: 'Complete current reciprocal identity bound exceeded'].
       'r', (tokens size + 1) printString]).
       (object isString or: [object isKindOf: ByteArray]) ifTrue: [
         values at: object ifAbsentPut: [object copy].
         answer at: 'kind' put: 'value'; at: 'value' put: (bytes value: object asCebraString)
       ] ifFalse: [answer at: 'kind' put: 'boundary']]. answer].
 fields := [:object | | names current |
   names := (object class allInstVarNames collect: [:name | name asString]) asArray.
   names size <= 512 ifFalse: [component error: 'Complete current reciprocal schema bound exceeded'].
   current := ((1 to: names size) collect: [:index | object instVarAt: index]) asArray.
   originals at: object ifAbsentPut: [Array with: object class with: names copy with: current].
   (record at: 'readSnapshots') add: (Array with: object with: names copy with: current).
   Dictionary new at: 'binding' put: (describe value: object); at: 'field_names' put: names;
     at: 'fields' put: ((1 to: names size) collect: [:index | Dictionary new at: 'slot' put: index;
       at: 'name' put: (names at: index); at: 'value' put: (describe value: (current at: index)); yourself]) asArray; yourself].
 equal := [:a :b | ((root at: 'encodeObservation') value: a) = ((root at: 'encodeObservation') value: b)].
 add := [:location :a :b | (equal value: a value: b) ifFalse: [
   changes add: (Dictionary new at: 'category' put: location first; at: 'locus' put: location last;
     at: 'field' put: (location at: 2); at: 'before' put: a; at: 'after' put: b; yourself)]].
 ((saved at: 'targets') size = (saved at: 'rawReads') size and: [
   (saved at: 'targets') size = (((saved at: 'capture') at: 'records') size)])
     ifFalse: [component error: 'Complete retained reciprocal target roster required'].
 stage := 'current-inbound-read'.
 (saved at: 'targets') doWithIndex: [:target :index |
   | retained proxy key actualKey persistent before after row fixed blob decoded old oldDecoded location |
   retained := (saved at: 'rawReads') at: index. proxy := retained first.
   old := ((saved at: 'capture') at: 'records') at: index.
   ((retained at: 2) == leaf and: [(retained at: 3) == file and: [
     (slot value: proxy value: 'interface') == (material at: 'backend') and: [
     (bytes value: proxy globalId) = target and: [proxy attributeName asString = 'DBReferencedByList']]]])
       ifFalse: [component error: 'Original reciprocal proxy identity/key differs'].
   key := proxy uniqueKeyValue. actualKey := leaf keyClass keyValueFor: proxy.
   ((bytes value: key) = (old at: 'query_key') and: [(bytes value: actualKey) = (old at: 'actual_file_key')])
     ifFalse: [component error: 'Original reciprocal query/file key differs'].
   before := fields value: leaf. persistent := leaf readRecord: proxy. after := fields value: leaf.
   (record at: 'rawReads') add: (Array with: proxy with: leaf with: file with: persistent copy).
   row := Dictionary new at: 'role' put: 'owner_referenced_by'; at: 'attribute' put: 'DBReferencedByList';
     at: 'route' put: 'referenceInterface'; at: 'query_key' put: (bytes value: key);
     at: 'actual_file_key' put: (bytes value: actualKey); at: 'record_class_requested' put: 'CTreeVariableAttributeRecord';
     at: 'leaf_class' put: leaf class name asString; at: 'file_class' put: file class name asString;
     at: 'ctree_before' put: before; at: 'ctree_after' put: after; yourself.
   rows add: row. report at: 'records' put: rows asArray.
   persistent isCTError ifTrue: [
     row at: 'read_status' put: 'error'; at: 'error' put: (fields value: persistent).
     report at: 'phase' put: 'read-error'. component error: 'Current reciprocal read failed; no absence inference; material retained'].
   (persistent class name asString = 'CTreeVariableAttributeRecord' and: [
     (bytes value: persistent globalId) = target and: [persistent attributeName asString = 'DBReferencedByList']])
       ifFalse: [component error: 'Actual current reciprocal persisted key differs'].
   fixed := persistent class fixedSize. blob := persistent blobSize.
   (fixed = 60 and: [blob class == SmallInteger and: [blob >= 0 and: [persistent size >= (fixed + blob)]]])
     ifFalse: [component error: 'Complete current reciprocal raw record required'].
   row at: 'read_status' put: 'record'; at: 'record_class' put: persistent class name asString;
     at: 'global_id' put: target; at: 'record_attribute' put: 'DBReferencedByList';
     at: 'fixed_size' put: fixed; at: 'blob_size' put: blob; at: 'logical_size' put: fixed + blob;
     at: 'allocated_size' put: persistent size; at: 'bytes' put: (bytes value: (persistent copyFrom: 1 to: fixed + blob));
     at: 'allocated_bytes' put: (bytes value: persistent).
   decoded := decoder value: row value: target. oldDecoded := decoder value: old value: target.
   row at: 'length_profile' put: 'reference_payload_v2'; at: 'declared_size' put: fixed + blob;
     at: 'logical_size' put: (decoded at: 'semantic_size'); at: 'bytes' put: (decoded at: 'semantic_bytes').
   logicalEqual := logicalEqual and: [(decoded at: 'semantic_bytes') = (oldDecoded at: 'semantic_bytes')].
   rawEqual := rawEqual and: [(row at: 'allocated_bytes') = (old at: 'allocated_bytes')].
   location := Array with: 'since_preparation' with: '$logical_bytes' with: 'reciprocal_record/', index printString.
   add value: location value: (oldDecoded at: 'semantic_bytes') value: (decoded at: 'semantic_bytes').
   location := Array with: 'since_preparation' with: '$unparsed_record_tail' with: 'reciprocal_record/', index printString.
   add value: location value: (oldDecoded at: 'raw_tail') value: (decoded at: 'raw_tail').
   ((equal value: (before at: 'binding') value: (after at: 'binding')) and: [(before at: 'field_names') = (after at: 'field_names')])
     ifTrue: [(before at: 'fields') doWithIndex: [:a :slotIndex |
       location := Array with: 'query_read_effect' with: (a at: 'name') with: 'ctree_reciprocal/', index printString.
       add value: location value: (a at: 'value') value: (((after at: 'fields') at: slotIndex) at: 'value')]]
     ifFalse: [
       location := Array with: 'query_read_effect' with: '$identity_schema' with: 'ctree_reciprocal/', index printString.
       add value: location value: before value: after].
 ].
 changes size <= 4096 ifFalse: [component error: 'Complete current reciprocal diff bound exceeded; material retained'].
 summary := Dictionary new at: 'profile' put: 'native_reciprocal_status_v1';
   at: 'component_oid' put: component getOID; at: 'generation' put: (root at: 'generation');
   at: 'target_count' put: (saved at: 'targets') size; at: 'record_count' put: rows size;
   at: 'actual_change_count' put: changes size; at: 'logical_records_match_retained' put: logicalEqual;
   at: 'raw_records_match_retained' put: rawEqual; at: 'original_targets_only' put: true;
   at: 'original_material_held' put: true; at: 'new_outgoing_targets_captured' put: false;
   at: 'write_authorized' put: false; at: 'inverse_authorized' put: false; yourself.
 report at: 'phase' put: 'checked'; at: 'actual_changes' put: changes asArray; at: 'summary' put: summary.
 report
 ] ifFail: [:error | 'BDE_COMMIT_RECIPROCAL_CURRENT_ERROR: ', stage, ': ', error messageText]
]]
