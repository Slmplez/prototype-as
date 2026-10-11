"Research-only bounded existing-record writer check. This only writes an exact
 copy of the original Module DBReferenceList. No new identity, record removal,
 model setter, StoreToCache, commit, abort or global savepoint is dispatched."
[:collector | [:component |
 component handleExceptionsIn: [
 | owner ownerDB diagram source sourceDB backend leaf file slot key proxy original
   snapshot beforeRow toBytes guard used |
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
   ifFalse: [component error: 'Audited existing reference leaf required'].
 key := ownerDB uniqueKeyValue copy.
 proxy := DBLinkProxy new initializeInstances.
 proxy globalId: key; dbInterface: backend; istate: 0; attributeName: 'DBReferenceList'.
 snapshot := collector value: component.
 (snapshot at: 'complete') == true ifFalse: [component error: 'Complete original finite observation required'].
 beforeRow := ((snapshot at: 'owners') first at: 'records') first.
 (beforeRow at: 'read_status') = 'record' ifFalse: [component error: 'No-op cannot create an absent record'].
 original := leaf readRecord: proxy.
 original class name asString = 'CTreeVariableAttributeRecord' ifFalse: [component error: 'Exact original variable record required'].
 toBytes := [:raw | ((1 to: raw size) collect: [:index | raw at: index]) asArray].
 (toBytes value: original) = (beforeRow at: 'allocated_bytes') ifFalse: [component error: 'Original raw source record changed during preparation'].
 original := original copy. used := false.
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
   at: 'execute' put: [:ignored | component handleExceptionsIn: [ | current outcome after status |
     used ifTrue: [component error: 'Research leaf dispatch cannot replay'].
     guard value ifFalse: [component error: 'Research leaf owner/source/backend expired'].
     current := leaf readRecord: proxy.
     (current class name asString = 'CTreeVariableAttributeRecord' and: [current = original])
       ifFalse: [component error: 'Research no-op current differs from original raw record'].
     used := true.
     outcome := leaf write: proxy record: original copy.
     status := Dictionary new at: 'returned_class' put: outcome class name asString;
       at: 'is_ct_error' put: outcome isCTError; yourself.
     outcome isCTError ifTrue: [status at: 'error_number' put: outcome errorNumber].
     after := collector value: component.
     Dictionary new at: 'profile' put: 'finite_reference_leaf_noop_result_v1';
       at: 'before' put: snapshot; at: 'after' put: after; at: 'owner_key' put: key asArray;
       at: 'outcome' put: status; at: 'owner_source_backend_preserved' put: guard value;
       at: 'raw_readback_equal' put: ((toBytes value: (leaf readRecord: proxy)) = (toBytes value: original));
       at: 'persistent_leaf_write_calls' put: 1; at: 'model_setters_called' put: 0;
       at: 'store_called' put: false; at: 'commit_called' put: false;
       at: 'flush_called' put: false; at: 'durable_inverse_verified' put: false; yourself
   ] ifFail: [:error | Dictionary new at: 'profile' put: 'finite_reference_leaf_noop_failure_v1';
     at: 'write_dispatched' put: used; at: 'error' put: error messageText;
     at: 'automatic_retry' put: false; yourself]]; yourself
 ] ifFail: [:error | 'BDE_REFERENCE_NOOP_PREPARE_ERROR: ', error messageText]
]]
