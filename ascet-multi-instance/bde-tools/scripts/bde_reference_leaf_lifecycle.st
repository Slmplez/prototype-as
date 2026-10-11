"Fixed research only: absent source DBReferenceList -> empty record -> exact
 absence. No model identity is created/deleted, and no commit/store/flush occurs.
 Both leaf calls are one bounded plan; unexpected readback is quarantined,
 never retried or deleted by guessed identity. Not a production inverse."
[:collector | [:component |
 component handleExceptionsIn: [
 | owner ownerDB diagram source sourceDB backend leaf file slot key proxy
   snapshot beforeRow candidate bytes guard same used writes deletes |
 (component class name asString = 'EtasAPIModuleBDE' and: [component item class name asString = 'SGModule'])
   ifFalse: [component error: 'Exact existing isolated Module required'].
 owner := component item. ownerDB := owner dbObject. diagram := component getDiagram: 'Main'.
 diagram isStateMachineDiagram ifTrue: [component error: 'Ordinary Main source required'].
 source := diagram specification specSourceInternalOrNil.
 source class name asString = 'SGTopGraphicsBlockDB' ifFalse: [component error: 'Exact stored source required'].
 slot := [:object :name | | index |
   index := (object class allInstVarNames collect: [:field | field asString]) asArray indexOf: name.
   index = 0 ifTrue: [component error: 'Audited leaf slot unavailable']. object instVarAt: index].
 sourceDB := slot value: source value: 'dbObject'. backend := slot value: ownerDB value: 'interface'.
 ((slot value: sourceDB value: 'interface') == backend and: [backend class name asString = 'DBReferenceInterface32'])
   ifFalse: [component error: 'Exact shared reference backend required'].
 leaf := slot value: backend value: 'referenceInterface'. file := slot value: leaf value: 'ctIFIL'.
 (leaf class name asString = 'CTreeLocalVariableAttributeInterface' and: [file class name asString = 'CTSpaceCheckingIFil'])
   ifFalse: [component error: 'Audited reference leaf required'].
 key := sourceDB uniqueKeyValue copy.
 proxy := DBLinkProxy new initializeInstances.
 proxy globalId: key; dbInterface: backend; istate: 0; attributeName: 'DBReferenceList'.
 snapshot := collector value: component.
 (snapshot at: 'complete') == true ifFalse: [component error: 'Complete original finite observation required'].
 beforeRow := ((snapshot at: 'owners') last at: 'records') first.
 ((beforeRow at: 'read_status') = 'absent' and: [(beforeRow at: 'error_number') = 101])
   ifFalse: [component error: 'Exact original absent source reference record required'].
 "Audited factory allocates header + four count bytes. The legacy blob field
 excludes those four bytes. Identity bytes derive solely from this source key."
 candidate := CTreeVariableAttributeRecord create: proxy size: 4.
 (candidate class name asString = 'CTreeVariableAttributeRecord' and: [candidate size = 64 and: [candidate class fixedSize = 60]])
   ifFalse: [component error: 'Exact empty reference factory buffer required'].
 candidate setFixedSize; blobSize: 0.
 1 to: 20 do: [:index | candidate at: index + 2 put: (key at: index)].
 candidate uint32At: 60 put: 0.
 (candidate globalId = key and: [candidate attributeName asString = 'DBReferenceList' and: [candidate blobSize = 0]])
   ifFalse: [component error: 'Exact empty reference header required'].
 bytes := [:raw | ((1 to: raw size) collect: [:index | raw at: index]) asArray].
 same := [:left :right |
   (left isKindOf: Dictionary) ifTrue: [
     (right isKindOf: Dictionary) and: [left size = right size and: [left keys allSatisfy: [:name |
       (right includesKey: name) and: [same value: (left at: name) value: (right at: name)]]]]
   ] ifFalse: [left isArray ifTrue: [
     right isArray and: [left size = right size and: [(1 to: left size) allSatisfy: [:index |
       same value: (left at: index) value: (right at: index)]]]
   ] ifFalse: [left = right]]].
 used := false. writes := 0. deletes := 0.
 guard := [ | currentDiagram |
   currentDiagram := component getDiagram: 'Main'.
   component item == owner and: [owner dbObject == ownerDB and: [
   currentDiagram specification == diagram specification and: [
   currentDiagram specification specSourceInternalOrNil == source and: [
   (slot value: source value: 'dbObject') == sourceDB and: [
   (slot value: ownerDB value: 'interface') == backend and: [
   (slot value: sourceDB value: 'interface') == backend and: [
   (slot value: backend value: 'referenceInterface') == leaf and: [(slot value: leaf value: 'ctIFIL') == file]]]]]]]]].
 Dictionary new at: 'prepared' put: snapshot; at: 'owner_key' put: key asArray;
   at: 'execute' put: [:ignored | component handleExceptionsIn: [
     | current outcome inserted created removal after status deleteStatus |
     used ifTrue: [component error: 'Research lifecycle cannot replay'].
     guard value ifFalse: [component error: 'Research owner/source/backend expired'].
     (same value: (collector value: component) value: snapshot)
       ifFalse: [component error: 'Original full finite observation changed'].
     current := leaf readRecord: proxy.
     (current isCTError and: [current errorNumber = 101])
       ifFalse: [component error: 'Original absent source record changed'].
     used := true. writes := 1.
     outcome := leaf write: proxy record: candidate copy.
     status := Dictionary new at: 'returned_class' put: outcome class name asString;
       at: 'is_ct_error' put: outcome isCTError; yourself.
     outcome isCTError ifTrue: [component error: 'Reference create returned CTError'].
     created := leaf readRecord: proxy.
     (created class name asString = 'CTreeVariableAttributeRecord' and: [created size >= 64 and: [
       (created copyFrom: 1 to: 64) = candidate]])
       ifFalse: [component error: 'Created record differs from exact planned empty bytes; retain quarantine'].
     created := created copy. inserted := collector value: component.
     guard value ifFalse: [component error: 'Identity expired before planned empty record removal'].
     (leaf readRecord: proxy) = created
       ifFalse: [component error: 'Created record changed before removal; retain quarantine'].
     deletes := 1. removal := leaf deleteRecord: proxy.
     deleteStatus := Dictionary new at: 'returned_class' put: removal class name asString;
       at: 'is_ct_error' put: removal isCTError; yourself.
     removal isCTError ifTrue: [component error: 'Reference delete returned CTError'].
     after := collector value: component.
     Dictionary new at: 'profile' put: 'finite_reference_leaf_lifecycle_result_v1';
       at: 'before' put: snapshot; at: 'inserted' put: inserted; at: 'after' put: after;
       at: 'owner_key' put: key asArray; at: 'candidate_bytes' put: (bytes value: candidate);
       at: 'created_raw_bytes' put: (bytes value: created);
       at: 'outcome' put: status; at: 'delete_outcome' put: deleteStatus;
       at: 'owner_source_backend_preserved' put: guard value;
       at: 'persistent_leaf_write_calls' put: writes; at: 'persistent_leaf_delete_calls' put: deletes;
       at: 'model_setters_called' put: 0; at: 'store_called' put: false;
       at: 'commit_called' put: false; at: 'flush_called' put: false;
       at: 'durable_inverse_verified' put: false; yourself
   ] ifFail: [:error | Dictionary new at: 'profile' put: 'finite_reference_leaf_lifecycle_failure_v1';
     at: 'write_dispatched' put: used; at: 'persistent_leaf_write_calls' put: writes;
     at: 'persistent_leaf_delete_calls' put: deletes; at: 'error' put: error messageText;
     at: 'automatic_retry' put: false; yourself]]; yourself
 ] ifFail: [:error | 'BDE_REFERENCE_LIFECYCLE_PREPARE_ERROR: ', error messageText]
]]
