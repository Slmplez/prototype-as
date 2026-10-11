"Complete original object records for the isolated Module and stored Main source.
 Record queries may change leaf cursors; no store/cache/model writer is invoked."
[:referenceReader | [:component |
 | owner ownerDB diagram source sourceDB backend slot models owners bytes read
   beforeReferences afterReferences same total |
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated persistent owners required'].
 (component class name asString = 'EtasAPIModuleBDE' and: [component item class name asString = 'SGModule'])
   ifFalse: [component error: 'Exact Module owner required'].
 owner := component item. ownerDB := owner dbObject. diagram := component getDiagram: 'Main'.
 source := diagram specification specSourceInternalOrNil.
 source class name asString = 'SGTopGraphicsBlockDB' ifFalse: [component error: 'Exact stored source required'].
 slot := [:object :name | | index |
   index := (object class allInstVarNames collect: [:field | field asString]) asArray indexOf: name.
   index = 0 ifTrue: [component error: 'Audited owner resource field missing']. object instVarAt: index].
 sourceDB := slot value: source value: 'dbObject'. backend := slot value: ownerDB value: 'interface'.
 (backend class name asString = 'DBReferenceInterface32' and: [(slot value: sourceDB value: 'interface') == backend])
   ifFalse: [component error: 'Exact shared owner backend required'].
 models := Array with: owner with: source. total := 0.
 bytes := [:raw | total := total + raw size.
   (raw size <= 4194304 and: [total <= 16777216]) ifFalse: [component error: 'Complete owner byte budget exceeded'].
   ((1 to: raw size) collect: [:index | | octet | octet := raw at: index.
     (octet isInteger and: [octet >= 0 and: [octet <= 255]]) ifFalse: [component error: 'Exact owner octets required'].
     octet]) asArray].
 same := [:a :b | (a isKindOf: Dictionary) ifTrue: [
   (b isKindOf: Dictionary) and: [a size = b size and: [a keys allSatisfy: [:k |
     (b includesKey: k) and: [same value: (a at: k) value: (b at: k)]]]]
   ] ifFalse: [a isArray ifTrue: [b isArray and: [a size = b size and: [
     (1 to: a size) allSatisfy: [:i | same value: (a at: i) value: (b at: i)]]]] ifFalse: [a = b]]].
 beforeReferences := referenceReader value: component.
 read := [:model :role | | db key leaf file query actual raw blob entry |
   db := slot value: model value: 'dbObject'. key := db uniqueKeyValue.
   (db class name asString = 'DBObject' and: [key size = 20 and: [db recordClass name asString = 'CTreeSearchObjectRecord']])
     ifFalse: [component error: 'Exact original owner DBObject record required'].
   leaf := backend getInterfaceForProxy: db. file := slot value: leaf value: 'ctIFIL'.
   (leaf class name asString = 'CTreeLocalSearchInterface' and: [file class name asString = 'CTSpaceCheckingIFil'])
     ifFalse: [component error: 'Audited object leaf/file required'].
   query := db uniqueKeyValue. actual := leaf keyClass keyValueFor: db.
   (query = actual and: [actual = key]) ifFalse: [component error: 'Owner physical route differs'].
   raw := leaf readRecord: db.
   raw isCTError ifTrue: [component error: 'Original object record required; no fabricated absence'].
   (raw class name asString = 'CTreeSearchObjectRecord' and: [raw class fixedSize = 130 and: [raw globalId = key]])
     ifFalse: [component error: 'Exact complete original search record required'].
   blob := raw blobSize.
   (blob isInteger and: [blob >= 0 and: [raw size >= (130 + blob)]])
     ifFalse: [component error: 'Complete search record extent required'].
   entry := Dictionary new at: 'role' put: role; at: 'model_class' put: model class name asString;
     at: 'oid' put: db globalIdString; at: 'global_id' put: (bytes value: key);
     at: 'query_key' put: (bytes value: query); at: 'actual_file_key' put: (bytes value: actual);
     at: 'record_class_requested' put: db recordClass name asString;
     at: 'record_class' put: raw class name asString; at: 'read_status' put: 'record';
     at: 'leaf_class' put: leaf class name asString; at: 'file_class' put: file class name asString;
     at: 'fixed_size' put: 130; at: 'blob_size' put: blob; at: 'logical_size' put: 130 + blob;
     at: 'allocated_size' put: raw size; at: 'bytes' put: (bytes value: (raw copyFrom: 1 to: 130 + blob));
     at: 'allocated_bytes' put: (bytes value: raw); at: 'stored_class' put: raw className;
     at: 'stored_name' put: raw name; at: 'stored_version' put: raw version;
     at: 'stored_object_state' put: raw objectState; at: 'stored_reference_state' put: raw referenceState; yourself.
   entry].
 owners := Array with: (read value: owner value: 'component') with: (read value: source value: 'spec_source').
 afterReferences := referenceReader value: component.
 (same value: beforeReferences value: afterReferences) ifFalse: [component error: 'Owner reads changed full references'].
 (component item == owner and: [owner dbObject == ownerDB and: [
   (component getDiagram: 'Main') specification == diagram specification and: [
   diagram specification specSourceInternalOrNil == source and: [(slot value: source value: 'dbObject') == sourceDB and: [
   (slot value: ownerDB value: 'interface') == backend and: [(slot value: sourceDB value: 'interface') == backend]]]]]])
   ifFalse: [component error: 'Persistent owner identity expired'].
 Dictionary new at: 'profile' put: 'isolated_persistent_owner_records_v1'; at: 'component_oid' put: component getOID;
   at: 'owners' put: owners; at: 'references' put: afterReferences; at: 'complete' put: true;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'commit_called' put: false;
   at: 'full_commit_resource_closure' put: false; at: 'write_authorized' put: false; at: 'inverse_authorized' put: false; yourself
]]
