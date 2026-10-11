"Capture existing outgoing targets' original inbound records within the same prepared edit."
[:decoder | [:component :material :database |
 | stage |
 stage := 'binding'.
 component handleExceptionsIn: [
 | root owner backend leaf file record full outgoing ownerKey targets rows total slot bytes describe fields
   tokens originals values report summary semantic logicalTotal rawTotal failed |
 root := material at: 'root'. owner := material at: 'ownerDB'. backend := material at: 'backend'.
 ((root at: 'owner') == component item and: [(material at: 'owner') == component item and: [
   (material at: 'generation') = (root at: 'generation') and: [(material at: 'phase') = 'captured' and: [
   (material at: 'access') == database dbAccess and: [(material at: 'controller') == database dbInterface and: [
   ((material at: 'editRecord') at: 'commitResourceMaterial') == material and: [
   ((material at: 'editRecord') at: 'state') = 'prepared']]]]]]])
     ifFalse: [component error: 'Exact same-dispatch original reciprocal preparation required'].
 (material includesKey: 'reciprocalMaterial') ifTrue: [component error: 'Original reciprocal capture cannot replay'].
 (material includesKey: 'controlMaterial') ifFalse: [component error: 'Original all-leaf control material required'].
 slot := [:object :name | | names index |
   names := (object class allInstVarNames collect: [:field | field asString]) asArray.
   index := names indexOf: name. index > 0 ifFalse: [component error: 'Original reciprocal resource slot unavailable: ', name].
   object instVarAt: index].
 ownerKey := owner uniqueKeyValue.
 (ownerKey class == ByteArray and: [ownerKey size = 20 and: [
   (slot value: owner value: 'interface') == backend and: [backend class name asString = 'DBReferenceInterface32']]])
     ifFalse: [component error: 'Exact original owner and reference backend required'].
 leaf := slot value: backend value: 'referenceInterface'.
 leaf class name asString = 'CTreeLocalVariableAttributeInterface'
   ifFalse: [component error: 'Exact original reciprocal reference leaf required'].
 file := slot value: leaf value: 'ctIFIL'.
 file class name asString = 'CTSpaceCheckingIFil' ifFalse: [component error: 'Exact original reciprocal file required'].
 outgoing := (material at: 'records') at: 2.
 (outgoing at: 'length_profile' ifAbsent: [nil]) = 'reference_payload_v2'
   ifFalse: [component error: 'Fresh complete original outgoing payload required'].
 tokens := material at: 'tokens'. originals := IdentityDictionary new. values := IdentityDictionary new.
 rows := OrderedCollection new. total := 0. logicalTotal := 0. rawTotal := 0. failed := false.
 record := Dictionary new at: 'phase' put: 'capturing'; at: 'root' put: root; at: 'owner' put: component item;
   at: 'backend' put: backend; at: 'leaf' put: leaf; at: 'file' put: file;
   at: 'generation' put: (root at: 'generation'); at: 'originals' put: originals; at: 'values' put: values;
   at: 'rawReads' put: OrderedCollection new; at: 'readSnapshots' put: OrderedCollection new; yourself.
 material at: 'reciprocalMaterial' put: record.
 bytes := [:object | | result |
   object size <= 4194304 ifFalse: [component error: 'Complete reciprocal record bound exceeded'].
   result := ((1 to: object size) collect: [:index | | byte |
     byte := object at: index.
     (byte class == SmallInteger and: [byte >= 0 and: [byte <= 255]])
       ifFalse: [component error: 'Exact reciprocal byte required']. byte]) asArray.
   total := total + result size. total <= 16777216 ifFalse: [component error: 'Complete reciprocal capture bound exceeded'].
   result].
 describe := [:object | | answer |
   answer := Dictionary new at: 'class' put: object class name asString; yourself.
   (object isNil or: [object isNumber or: [object == true or: [object == false or: [object isKindOf: Symbol]]]])
     ifTrue: [answer at: 'kind' put: 'atom'; at: 'value' put: object printString]
     ifFalse: [answer at: 'ref' put: (tokens at: object ifAbsentPut: [
       tokens size >= 16384 ifTrue: [component error: 'Complete reciprocal identity bound exceeded'].
       'r', (tokens size + 1) printString]).
       (object isString or: [object isKindOf: ByteArray]) ifTrue: [
         values at: object ifAbsentPut: [object copy].
         answer at: 'kind' put: 'value'; at: 'value' put: (bytes value: object asCebraString)
       ] ifFalse: [answer at: 'kind' put: 'boundary']]. answer].
 fields := [:object | | names current |
   names := (object class allInstVarNames collect: [:name | name asString]) asArray.
   names size <= 512 ifFalse: [component error: 'Complete reciprocal schema bound exceeded'].
   current := ((1 to: names size) collect: [:index | object instVarAt: index]) asArray.
   originals at: object ifAbsentPut: [Array with: object class with: names copy with: current].
   (record at: 'readSnapshots') add: (Array with: object with: names copy with: current).
   Dictionary new at: 'binding' put: (describe value: object); at: 'field_names' put: names;
     at: 'fields' put: ((1 to: names size) collect: [:index | Dictionary new at: 'slot' put: index;
       at: 'name' put: (names at: index); at: 'value' put: (describe value: (current at: index)); yourself]) asArray; yourself].
 full := Dictionary new at: 'profile' put: 'native_original_reciprocal_records_v1';
   at: 'component_oid' put: component getOID; at: 'generation' put: (root at: 'generation');
   at: 'owner_key' put: (bytes value: ownerKey); at: 'outgoing_record' put: outgoing;
   at: 'records' put: #(); at: 'summary' put: nil; yourself.
 record at: 'capture' put: full.
 semantic := decoder value: outgoing value: (full at: 'owner_key').
 targets := OrderedCollection new.
 (semantic at: 'entries') do: [:entry | | key |
   key := entry at: 'global_id'. (targets includes: key) ifFalse: [targets add: key]].
 record at: 'targets' put: targets asArray.
 stage := 'inbound-read'.
 targets do: [:target | failed ifFalse: [
   | key proxy actualKey persistent before after row fixed blob decoded ownerCount global |
   global := ByteArray new: 20.
   1 to: 20 do: [:index | global at: index put: (target at: index)].
   proxy := DBLinkProxy new initializeInstances.
   proxy globalId: global; dbInterface: backend; istate: 0; attributeName: 'DBReferencedByList'.
   proxy recordClass name asString = 'CTreeVariableAttributeRecord'
     ifFalse: [component error: 'Reciprocal proxy record class differs'].
   key := proxy uniqueKeyValue. actualKey := leaf keyClass keyValueFor: proxy.
   (key = actualKey and: [(bytes value: key) = (target, 'DBReferencedByList' asCebraString asArray)])
     ifFalse: [component error: 'Reciprocal exact target/file key differs'].
   before := fields value: leaf.
   persistent := leaf readRecord: proxy.
   after := fields value: leaf.
   (record at: 'rawReads') add: (Array with: proxy with: leaf with: file with: persistent copy).
   row := Dictionary new at: 'role' put: 'owner_referenced_by'; at: 'attribute' put: 'DBReferencedByList';
     at: 'route' put: 'referenceInterface'; at: 'query_key' put: (bytes value: key);
     at: 'actual_file_key' put: (bytes value: actualKey); at: 'record_class_requested' put: 'CTreeVariableAttributeRecord';
     at: 'leaf_class' put: leaf class name asString; at: 'file_class' put: file class name asString;
     at: 'ctree_before' put: before; at: 'ctree_after' put: after; yourself.
   rows add: row. full at: 'records' put: rows asArray.
   persistent isCTError ifTrue: [
     row at: 'read_status' put: 'error'; at: 'error' put: (fields value: persistent).
     record at: 'phase' put: 'read-error'. failed := true
   ] ifFalse: [
     (persistent class name asString = 'CTreeVariableAttributeRecord' and: [persistent globalId = global and: [
       persistent attributeName asString = 'DBReferencedByList']])
         ifFalse: [component error: 'Actual reciprocal persisted owner/attribute differs'].
     fixed := persistent class fixedSize. blob := persistent blobSize.
     (fixed = 60 and: [blob class == SmallInteger and: [blob >= 0 and: [persistent size >= (fixed + blob)]]])
       ifFalse: [component error: 'Complete reciprocal raw record required'].
     row at: 'read_status' put: 'record'; at: 'record_class' put: persistent class name asString;
       at: 'global_id' put: (bytes value: global); at: 'record_attribute' put: 'DBReferencedByList';
       at: 'fixed_size' put: fixed; at: 'blob_size' put: blob; at: 'logical_size' put: fixed + blob;
       at: 'allocated_size' put: persistent size; at: 'bytes' put: (bytes value: (persistent copyFrom: 1 to: fixed + blob));
       at: 'allocated_bytes' put: (bytes value: persistent).
     decoded := decoder value: row value: target.
     row at: 'length_profile' put: 'reference_payload_v2'; at: 'declared_size' put: fixed + blob;
       at: 'logical_size' put: (decoded at: 'semantic_size'); at: 'bytes' put: (decoded at: 'semantic_bytes').
     logicalTotal := logicalTotal + (decoded at: 'semantic_size'). rawTotal := rawTotal + persistent size.
     ownerCount := ((decoded at: 'entries') select: [:entry | (entry at: 'global_id') = (full at: 'owner_key')]) size.
     ownerCount = 0 ifTrue: [record at: 'phase' put: 'inconsistent'. failed := true]
   ]
 ]].
 failed ifTrue: [component error: 'Original reciprocal read/membership incomplete; partial raw material retained'].
 summary := Dictionary new at: 'profile' put: 'native_original_reciprocal_capture_v1'; at: 'phase' put: 'captured';
   at: 'component_oid' put: component getOID; at: 'generation' put: (root at: 'generation');
   at: 'outgoing_entry_count' put: (semantic at: 'entries') size; at: 'target_count' put: targets size;
   at: 'record_count' put: rows size; at: 'logical_bytes' put: logicalTotal; at: 'raw_bytes' put: rawTotal;
   at: 'original_material_held' put: true; at: 'same_native_dispatch' put: true;
   at: 'reciprocal_consistent' put: true; at: 'new_outgoing_targets_captured' put: false;
   at: 'write_authorized' put: false; at: 'inverse_authorized' put: false; yourself.
 record at: 'phase' put: 'captured'; at: 'summary' put: summary.
 full at: 'summary' put: summary. summary
 ] ifFail: [:error | 'BDE_COMMIT_RECIPROCAL_ERROR: ', stage, ': ', error messageText]
]]
