"Fixed retained resources. Native receipt mode is used only by the prepared-edit binder."
[:referenceDecoder | [:component :context :database |
 | stage |
 stage := 'identity'.
 component handleExceptionsIn: [
 | root registry action token record owner routing cache storage tokens originals values
   slot bytes describe fields observe modifiedRows before after targets rows total failed
   nativeRows answer recordsEqual resourcesBeforeEqual resourcesAfterEqual equal semantic retainedBytes rawEqual |
 (context isArray and: [context size = 2 or: [context size = 3]])
   ifFalse: [component error: 'Fixed commit capture context required'].
 context size = 3 ifTrue: [(context last = 'native_v1')
   ifFalse: [component error: 'Fixed native commit receipt mode required']].
 action := context first. token := context at: 2.
 (#('capture' 'check') includes: action) ifFalse: [component error: 'Read-only commit material action required'].
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated ordinary BDE commit capture only'].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 ((root at: 'owner') == component item and: [(root at: 'diagram') isStateMachineDiagram not])
   ifFalse: [component error: 'Exact original ordinary Main namespace required'].
 (#('SGModule' 'SGClass') includes: component item class name asString)
   ifFalse: [component error: 'Audited original Module/Class owner required'].
 database dbInterface class name asString = 'ASDPersistenceController'
   ifFalse: [component error: 'Separate database controller profile required'].
 slot := [:object :name | | names index |
   names := (object class allInstVarNames collect: [:field | field asString]) asArray.
   index := names indexOf: name. index > 0 ifFalse: [component error: 'Original commit resource slot missing: ', name].
   object instVarAt: index].
 owner := component item dbObject. routing := slot value: owner value: 'interface'.
 routing class name asString = 'DBReferenceInterface32'
   ifFalse: [component error: 'Exact original reference backend required'].
 cache := slot value: routing value: 'objectCache'.
 cache class name asString = 'DBObjectCache' ifFalse: [component error: 'Audited original object cache required'].
 storage := slot value: cache value: 'objects'.
 storage class name asString = 'AbtHighCapacityLookupTable'
   ifFalse: [component error: 'Audited original cache storage required: ', storage class name asString].
 storage size > 4096 ifTrue: [component error: 'Complete cache census bound exceeded; no truncation'].
 registry := Smalltalk at: #DogeBDECommitResourceWitnessesV1 ifAbsentPut: [Dictionary new].
 action = 'capture' ifTrue: [
   (registry includesKey: token) ifTrue: [component error: 'Original commit capture cannot replay'].
   registry size >= 32 ifTrue: [component error: 'Original commit material capacity reached; no eviction'].
   tokens := IdentityDictionary new. originals := IdentityDictionary new. values := IdentityDictionary new.
   record := Dictionary new at: 'root' put: root; at: 'owner' put: component item;
     at: 'ownerDB' put: owner; at: 'backend' put: routing; at: 'cache' put: cache; at: 'storage' put: storage;
     at: 'access' put: database dbAccess; at: 'controller' put: database dbInterface;
     at: 'generation' put: (root at: 'generation'); at: 'tokens' put: tokens;
     at: 'originals' put: originals; at: 'values' put: values; at: 'phase' put: 'capturing'; yourself.
   registry at: token put: record
 ] ifFalse: [
   record := registry at: token ifAbsent: [component error: 'Original commit material unavailable'].
   ((record at: 'root') == root and: [(record at: 'owner') == component item and: [
     (record at: 'ownerDB') == owner and: [(record at: 'backend') == routing and: [
     (record at: 'cache') == cache and: [(record at: 'storage') == storage and: [
     (record at: 'access') == database dbAccess and: [(record at: 'controller') == database dbInterface and: [
     (record at: 'generation') = (root at: 'generation') and: [(record at: 'phase') = 'captured']]]]]]]]])
       ifFalse: [component error: 'Original commit resource/session/generation binding differs'].
   tokens := record at: 'tokens'. originals := record at: 'originals'. values := record at: 'values'
 ].
 total := 0. bytes := [:value | | result |
   value size > 4194304 ifTrue: [component error: 'Complete commit value bound exceeded'].
   result := (1 to: value size) collect: [:index | | byte | byte := value at: index.
     (byte isInteger and: [byte >= 0 and: [byte <= 255]]) ifFalse: [component error: 'Exact commit byte required'].
     byte].
   total := total + value size. total > 16777216 ifTrue: [component error: 'Complete commit byte budget exceeded'].
   result asArray].
 describe := [:value | | row ref |
   row := Dictionary new at: 'class' put: value class name asString; yourself.
   (value isNil or: [value isNumber or: [value == true or: [value == false or: [value isKindOf: Symbol]]]])
     ifTrue: [row at: 'kind' put: 'atom'; at: 'value' put: value printString]
     ifFalse: [
       ref := tokens at: value ifAbsentPut: [
         tokens size >= 16384 ifTrue: [component error: 'Original commit identity budget exceeded'].
         'r', (tokens size + 1) printString].
       row at: 'ref' put: ref.
       (value isString or: [value isKindOf: ByteArray]) ifTrue: [
         action = 'capture' ifTrue: [values at: value ifAbsentPut: [value copy]].
         row at: 'kind' put: 'value'; at: 'value' put: (bytes value: value asCebraString)
       ] ifFalse: [row at: 'kind' put: 'boundary']]. row].
 fields := [:object | | names |
   names := (object class allInstVarNames collect: [:name | name asString]) asArray.
   names size > 512 ifTrue: [component error: 'Complete commit schema budget exceeded'].
   action = 'capture' ifTrue: [originals at: object ifAbsentPut: [
     Array with: object class with: names copy
       with: ((1 to: names size) collect: [:index | object instVarAt: index]) asArray]].
   Dictionary new at: 'binding' put: (describe value: object); at: 'field_names' put: names;
     at: 'fields' put: ((1 to: names size) collect: [:index | Dictionary new
       at: 'slot' put: index; at: 'name' put: (names at: index);
       at: 'value' put: (describe value: (object instVarAt: index)); yourself]) asArray; yourself].
 modifiedRows := [ | modified |
   modified := routing getModifiedObjects asArray.
   modified size > 4096 ifTrue: [component error: 'Complete modified census bound exceeded'].
   ((modified collect: [:proxy |
     proxy class name asString = 'DBObject' ifFalse: [component error: 'Exact modified DBObject required'].
     (slot value: proxy value: 'interface') == routing ifFalse: [component error: 'Foreign modified backend'].
     Dictionary new at: 'oid' put: proxy globalIdString; at: 'proxy' put: (describe value: proxy);
       at: 'image' put: (fields value: proxy); at: 'modified' put: proxy isModified; yourself])
       asSortedCollection: [:a :b | (a at: 'oid') < (b at: 'oid')]) asArray].
 observe := [ | entries modified |
   entries := OrderedCollection new.
   storage keysAndValuesDo: [:key :entry |
     entry class name asString = 'DBCacheObject' ifFalse: [component error: 'Exact original cache entry required'].
     entries add: (Dictionary new at: 'key_text' put: key printString; at: 'key' put: (describe value: key);
       at: 'entry' put: (describe value: entry); at: 'image' put: (fields value: entry);
       at: 'registered_object' put: (describe value: (slot value: entry value: 'object')); yourself)].
   modified := modifiedRows value.
   Dictionary new at: 'owner' put: (fields value: owner); at: 'backend' put: (fields value: routing);
     at: 'cache' put: (fields value: cache); at: 'storage' put: (describe value: storage);
     at: 'cache_size' put: storage size;
     at: 'cache_entries' put: ((entries asSortedCollection: [:a :b | (a at: 'key_text') < (b at: 'key_text')]) asArray);
     at: 'modified_objects' put: modified; yourself].
 equal := [:left :right |
   ((root at: 'encodeObservation') value: left) = ((root at: 'encodeObservation') value: right)].
 stage := 'before-read'. before := observe value.
 action = 'capture' ifTrue: [
   record at: 'beforeRead' put: before; at: 'originalCacheMembers' put:
     ((storage associations collect: [:association | Array with: association key with: association value]) asArray);
     at: 'rawReads' put: OrderedCollection new].
 targets := Array with: (Array with: 'owner' with: nil with: 'CTreeSearchObjectRecord')
   with: (Array with: 'owner_references' with: 'DBReferenceList' with: 'CTreeVariableAttributeRecord')
   with: (Array with: 'owner_referenced_by' with: 'DBReferencedByList' with: 'CTreeVariableAttributeRecord').
 rows := OrderedCollection new. failed := false.
 targets do: [:target | failed ifFalse: [
   | proxy leaf file key actualKey persistent row fixed blob leafBefore leafAfter |
   proxy := target second isNil ifTrue: [owner] ifFalse: [target second = 'DBReferenceList'
     ifTrue: [owner asDBReferenceLinkProxy] ifFalse: [owner asDBReferencedByLinkProxy]].
   proxy recordClass name asString = target last ifFalse: [component error: 'Actual commit record class differs'].
   leaf := target second isNil ifTrue: [routing getInterfaceForProxy: proxy]
     ifFalse: [slot value: routing value: 'referenceInterface'].
   leaf class name asString = (target second isNil ifTrue: ['CTreeLocalSearchInterface'] ifFalse: ['CTreeLocalVariableAttributeInterface'])
     ifFalse: [component error: 'Actual commit leaf profile differs'].
   file := slot value: leaf value: 'ctIFIL'.
   file class name asString = 'CTSpaceCheckingIFil' ifFalse: [component error: 'Actual commit file profile differs'].
   key := proxy uniqueKeyValue. actualKey := leaf keyClass keyValueFor: proxy.
   key = actualKey ifFalse: [component error: 'Commit logical/file key differs'].
   leafBefore := fields value: leaf.
   stage := 'read-', target first. persistent := leaf readRecord: proxy.
   leafAfter := fields value: leaf.
   action = 'capture' ifTrue: [(record at: 'rawReads') add:
     (Array with: proxy with: leaf with: file with: persistent copy)].
   row := Dictionary new at: 'role' put: target first; at: 'attribute' put: target second;
     at: 'route' put: (target second isNil ifTrue: ['getInterfaceForProxy:'] ifFalse: ['referenceInterface']);
     at: 'query_key' put: (bytes value: key); at: 'actual_file_key' put: (bytes value: actualKey);
     at: 'record_class_requested' put: target last; at: 'leaf_class' put: leaf class name asString;
     at: 'file_class' put: file class name asString;
     at: 'ctree_before' put: leafBefore; at: 'ctree_after' put: leafAfter; yourself.
   persistent isCTError ifTrue: [
     failed := true. row at: 'read_status' put: 'error'; at: 'error' put: (fields value: persistent)
   ] ifFalse: [
     persistent class name asString = target last ifFalse: [component error: 'Actual commit persisted class differs'].
     persistent globalId = owner uniqueKeyValue ifFalse: [component error: 'Actual commit persisted owner differs'].
     fixed := persistent class fixedSize. blob := persistent blobSize.
     (fixed isInteger and: [fixed > 0 and: [blob isInteger and: [blob >= 0 and: [persistent size >= (fixed + blob)]]]])
       ifFalse: [component error: 'Complete commit logical record required'].
     row at: 'read_status' put: 'record'; at: 'record_class' put: persistent class name asString;
       at: 'global_id' put: (bytes value: persistent globalId);
       at: 'record_attribute' put: (target second isNil ifTrue: [nil] ifFalse: [persistent attributeName asString]);
       at: 'fixed_size' put: fixed; at: 'blob_size' put: blob;
       at: 'logical_size' put: fixed + blob; at: 'allocated_size' put: persistent size;
       at: 'bytes' put: (bytes value: (persistent copyFrom: 1 to: fixed + blob));
       at: 'allocated_bytes' put: (bytes value: persistent)
     . target second notNil ifTrue: [
       semantic := referenceDecoder value: row value: (bytes value: owner uniqueKeyValue).
       row at: 'length_profile' put: 'reference_payload_v2'; at: 'declared_size' put: fixed + blob;
         at: 'logical_size' put: (semantic at: 'semantic_size'); at: 'bytes' put: (semantic at: 'semantic_bytes')]
   ]. rows add: row
 ]].
 stage := 'after-read'. after := observe value.
 action = 'capture' ifTrue: [
   record at: 'afterRead' put: after; at: 'records' put: rows asArray;
     at: 'phase' put: (failed ifTrue: ['read-error'] ifFalse: ['captured'])].
 resourcesBeforeEqual := equal value: before value: (record at: 'afterRead').
 resourcesAfterEqual := equal value: after value: (record at: 'afterRead').
 recordsEqual := rows size = (record at: 'records') size.
 rawEqual := recordsEqual. retainedBytes := OrderedCollection new.
 rows doWithIndex: [:row :index | | original |
   original := (record at: 'records') at: index.
   (row at: 'read_status') = 'record' ifTrue: [
     semantic := (original at: 'role') = 'owner' ifTrue: [original at: 'bytes'] ifFalse: [
       (referenceDecoder value: original value: (bytes value: owner uniqueKeyValue)) at: 'semantic_bytes'].
     retainedBytes add: (Dictionary new at: 'role' put: (original at: 'role'); at: 'bytes' put: semantic; yourself).
     recordsEqual := recordsEqual and: [((Array with: 'query_key' with: 'record_class') allSatisfy: [:key | (row at: key) = (original at: key)])
       and: [(row at: 'bytes') = semantic]].
     rawEqual := rawEqual and: [(row at: 'allocated_bytes') = (original at: 'allocated_bytes')]
   ] ifFalse: [recordsEqual := false. rawEqual := false]].
 answer := Dictionary new at: 'profile' put: 'bde_commit_resource_capture_v2';
   at: 'action' put: action; at: 'token' put: token; at: 'phase' put: (record at: 'phase');
   at: 'component_oid' put: component getOID; at: 'generation' put: (root at: 'generation');
   at: 'owner_key' put: (bytes value: owner uniqueKeyValue);
   at: 'before_read' put: before; at: 'after_read' put: after;
   at: 'records' put: rows asArray; at: 'stopped_on_read_error' put: failed;
   at: 'retained_original_fields' put: originals size; at: 'retained_original_values' put: values size;
   at: 'original_material_held' put: true; at: 'current_read_resources_unchanged' put: (equal value: before value: after);
   at: 'matches_retained_before_read' put: resourcesBeforeEqual;
   at: 'matches_retained_after_read' put: resourcesAfterEqual;
   at: 'logical_records_match_retained' put: recordsEqual;
   at: 'record_comparison_profile' put: 'complete_reference_payload_v2';
   at: 'retained_record_bytes' put: retainedBytes asArray; at: 'raw_records_match_retained' put: rawEqual;
   at: 'has_unrelated_pending_objects' put: ((before at: 'modified_objects') anySatisfy: [:row | (row at: 'oid') ~= component getOID]);
   at: 'coverage' put: 'owner_raw_records_and_full_cache_membership_modified_census_direct_fields';
   at: 'registered_models_transitively_captured' put: false; at: 'ctree_transitive_state_captured' put: false;
   at: 'full_commit_resource_closure' put: false; at: 'old_edit_before_material' put: false;
   at: 'write_authorized' put: false; at: 'inverse_authorized' put: false;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'commit_called' put: false; yourself.
 action = 'capture' ifTrue: [record at: 'receipt' put: answer].
 stage := 'encode'. context size = 3 ifTrue: [answer]
   ifFalse: [(root at: 'encodeObservation') value: answer]
 ] ifFail: [:error | 'BDE_COMMIT_RESOURCE_ERROR: ', stage, ': ', error messageText]
]]
