"Bounded research: three records owned by one isolated Module/source only.
 source outgoing 1 -> 2 -> 1 -> absence; reciprocal inbound entries follow.
 All originals, including raw tails, are retained. No model/store/commit."
[:collector | [:component | component handleExceptionsIn: [
 | owner ownerDB diagram source sourceDB backend leaf file slot key moduleKey proxies
   snapshot original candidates bytes same guard used writes deletes stages outcomes
   expected makeRecord appendSource writeOne phase restoreOne |
 (component class name asString = 'EtasAPIModuleBDE' and: [component item class name asString = 'SGModule'])
   ifFalse: [component error: 'Exact isolated Module required'].
 owner := component item. ownerDB := owner dbObject. diagram := component getDiagram: 'Main'.
 diagram isStateMachineDiagram ifTrue: [component error: 'Ordinary Main required'].
 source := diagram specification specSourceInternalOrNil.
 source class name asString = 'SGTopGraphicsBlockDB' ifFalse: [component error: 'Exact stored source required'].
 slot := [:object :name | | index |
   index := (object class allInstVarNames collect: [:field | field asString]) asArray indexOf: name.
   index = 0 ifTrue: [component error: 'Audited slot missing']. object instVarAt: index].
 sourceDB := slot value: source value: 'dbObject'. backend := slot value: ownerDB value: 'interface'.
 ((slot value: sourceDB value: 'interface') == backend and: [backend class name asString = 'DBReferenceInterface32'])
   ifFalse: [component error: 'Exact shared reference backend required'].
 leaf := slot value: backend value: 'referenceInterface'. file := slot value: leaf value: 'ctIFIL'.
 (leaf class name asString = 'CTreeLocalVariableAttributeInterface' and: [file class name asString = 'CTSpaceCheckingIFil'])
   ifFalse: [component error: 'Audited leaf/file required'].
 key := sourceDB uniqueKeyValue copy. moduleKey := ownerDB uniqueKeyValue copy.
 proxies := (Array with: key with: moduleKey with: key) collect: [:global | | proxy |
   proxy := DBLinkProxy new initializeInstances.
   proxy globalId: global; dbInterface: backend; istate: 0. proxy].
 (proxies at: 1) attributeName: 'DBReferenceList'.
 (proxies at: 2) attributeName: 'DBReferencedByList'.
 (proxies at: 3) attributeName: 'DBReferencedByList'.
 snapshot := collector value: component.
 (snapshot at: 'complete') == true ifFalse: [component error: 'Complete original finite read required'].
 ((snapshot at: 'membership_checks') allSatisfy: [:check | (check at: 'consistent') == true])
   ifFalse: [component error: 'Original reciprocal inconsistency'].
 original := proxies collect: [:proxy | | raw | raw := leaf readRecord: proxy.
   raw isCTError ifTrue: [raw errorNumber = 101 ifFalse: [component error: 'Unexpected original record error']. nil]
     ifFalse: [raw copy]].
 ((original at: 1) isNil and: [(original at: 2) notNil and: [(original at: 3) notNil]])
   ifFalse: [component error: 'Original source absence and both existing inbound records required'].
 bytes := [:raw | ((1 to: raw size) collect: [:index | raw at: index]) asArray].
 ((bytes value: (original at: 2)) = (((snapshot at: 'owners') first at: 'records') last at: 'allocated_bytes')
   and: [(bytes value: (original at: 3)) = (((snapshot at: 'owners') last at: 'records') last at: 'allocated_bytes')])
   ifFalse: [component error: 'Original raw buffers differ from complete before'].
 same := [:left :right |
   (left isKindOf: Dictionary) ifTrue: [
     (right isKindOf: Dictionary) and: [left size = right size and: [left keys allSatisfy: [:name |
       (right includesKey: name) and: [same value: (left at: name) value: (right at: name)]]]]
   ] ifFalse: [left isArray ifTrue: [right isArray and: [left size = right size and: [
     (1 to: left size) allSatisfy: [:index | same value: (left at: index) value: (right at: index)]]]]
   ifFalse: [left = right]]].
 makeRecord := [:proxy :entries :tail | | record count extent offset |
   count := entries size. count <= 4096 ifFalse: [component error: 'Reference count bound'].
   extent := 64 + (21 * count).
   record := CTreeVariableAttributeRecord create: proxy size: extent - 60 + tail size.
   (record class fixedSize = 60 and: [record size = (extent + tail size)])
     ifFalse: [component error: 'Complete semantic allocation required'].
   record setFixedSize; blobSize: count * 21.
   1 to: 20 do: [:index | record at: index + 2 put: (proxy globalId at: index)].
   record uint32At: 60 put: count.
   entries doWithIndex: [:target :index |
     offset := 65 + ((index - 1) * 21). record at: offset put: 1.
     1 to: 20 do: [:octet | record at: offset + octet put: (target at: octet)]].
   1 to: tail size do: [:index | record at: extent + index put: (tail at: index)]. record].
 appendSource := [:index | | raw count entries extent tail |
   raw := original at: index. count := raw uint32At: 60. extent := 64 + (21 * count).
   (count <= 4095 and: [raw blobSize = (count * 21) and: [extent <= raw size]])
     ifFalse: [component error: 'Original inbound semantic extent invalid'].
   entries := OrderedCollection new.
   1 to: count do: [:entry | | offset target |
     offset := 65 + ((entry - 1) * 21).
     (raw at: offset) = 1 ifFalse: [component error: 'Original unsupported inbound tag'].
     target := raw copyFrom: offset + 1 to: offset + 20.
     target = key ifTrue: [component error: 'Source already in original inbound record'].
     entries add: target].
   entries add: key.
   tail := extent = raw size ifTrue: [#()] ifFalse: [raw copyFrom: extent + 1 to: raw size].
   makeRecord value: (proxies at: index) value: entries asArray value: tail].
 candidates := Array with: (makeRecord value: proxies first value: (Array with: moduleKey) value: #())
   with: (makeRecord value: proxies first value: (Array with: moduleKey with: key) value: #())
   with: (appendSource value: 2) with: (appendSource value: 3).
 guard := [ | current |
   current := component getDiagram: 'Main'.
   component item == owner and: [owner dbObject == ownerDB and: [
   current specification == diagram specification and: [current specification specSourceInternalOrNil == source and: [
   (slot value: source value: 'dbObject') == sourceDB and: [(slot value: ownerDB value: 'interface') == backend and: [
   (slot value: sourceDB value: 'interface') == backend and: [(slot value: backend value: 'referenceInterface') == leaf and: [
   (slot value: leaf value: 'ctIFIL') == file]]]]]]]]].
 used := false. writes := 0. deletes := 0. stages := OrderedCollection new. outcomes := OrderedCollection new.
 expected := snapshot.
 writeOne := [:index :record | | outcome readback |
   writes := writes + 1. outcome := leaf write: (proxies at: index) record: record copy.
   outcome isCTError ifTrue: [component error: 'Nonempty leaf write returned CTError; retain originals'].
   readback := leaf readRecord: (proxies at: index).
   (readback isCTError not and: [readback class == record class and: [readback size >= record size and: [
     (readback copyFrom: 1 to: record size) = record]]])
     ifFalse: [component error: 'Exact planned bytes readback failed; retain quarantine'].
   outcomes add: (Dictionary new at: 'operation' put: 'write'; at: 'record_index' put: index;
     at: 'returned_class' put: outcome class name asString; at: 'planned_bytes' put: (bytes value: record);
     at: 'raw_bytes' put: (bytes value: readback); yourself)].
 restoreOne := [:index | | outcome |
   (original at: index) notNil ifTrue: [writeOne value: index value: (original at: index)]
   ifFalse: [deletes := deletes + 1. outcome := leaf deleteRecord: (proxies at: index).
     outcome isCTError ifTrue: [component error: 'Leaf removal returned CTError'].
     outcomes add: (Dictionary new at: 'operation' put: 'delete'; at: 'record_index' put: index;
       at: 'returned_class' put: outcome class name asString; yourself)]].
 phase := [:action | | observed |
   guard value ifFalse: [component error: 'Owner/source/backend expired'].
   (same value: (collector value: component) value: expected)
     ifFalse: [component error: 'Full finite CURRENT conflict; retain quarantine'].
   action value. observed := collector value: component.
   ((observed at: 'membership_checks') allSatisfy: [:check | (check at: 'consistent') == true])
     ifFalse: [component error: 'Reciprocal phase inconsistency; retain originals'].
   stages add: observed. expected := observed].
 Dictionary new at: 'prepared' put: snapshot; at: 'execute' put: [:ignored | component handleExceptionsIn: [
   used ifTrue: [component error: 'Nonempty lifecycle cannot replay']. used := true.
   phase value: [writeOne value: 1 value: (candidates at: 1). writeOne value: 2 value: (candidates at: 3)].
   phase value: [writeOne value: 1 value: (candidates at: 2). writeOne value: 3 value: (candidates at: 4)].
   phase value: [writeOne value: 1 value: (candidates at: 1). restoreOne value: 3].
   phase value: [restoreOne value: 1. restoreOne value: 2].
   (same value: expected value: snapshot) ifFalse: [component error: 'Complete original finite restoration differs'].
   Dictionary new at: 'profile' put: 'finite_reference_leaf_nonempty_result_v1';
     at: 'before' put: snapshot; at: 'stages' put: stages asArray; at: 'outcomes' put: outcomes asArray;
     at: 'after' put: expected; at: 'owner_source_backend_preserved' put: guard value;
     at: 'persistent_leaf_write_calls' put: writes; at: 'persistent_leaf_delete_calls' put: deletes;
     at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'commit_called' put: false;
     at: 'flush_called' put: false; at: 'durable_inverse_verified' put: false; yourself
 ] ifFail: [:error | Dictionary new at: 'profile' put: 'finite_reference_leaf_nonempty_failure_v1';
   at: 'write_dispatched' put: (writes + deletes > 0); at: 'persistent_leaf_write_calls' put: writes;
   at: 'persistent_leaf_delete_calls' put: deletes; at: 'stages' put: stages asArray;
   at: 'outcomes' put: outcomes asArray; at: 'error' put: error messageText;
   at: 'automatic_retry' put: false; yourself]]; yourself
 ] ifFail: [:error | 'BDE_REFERENCE_NONEMPTY_PREPARE_ERROR: ', error messageText]
]]
