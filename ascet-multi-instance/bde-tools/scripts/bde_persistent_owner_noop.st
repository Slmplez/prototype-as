"Two existing object records, each written from its retained full original copy.
 No object creation/delete, model setter, serializer, store or commit."
[:collector | [:component | component handleExceptionsIn: [
 | before owner ownerDB diagram source sourceDB backend slot retained used writes outcomes
   same clone bytes guard expected |
 before := collector value: component. owner := component item. ownerDB := owner dbObject.
 diagram := component getDiagram: 'Main'. source := diagram specification specSourceInternalOrNil.
 slot := [:object :name | | index |
   index := (object class allInstVarNames collect: [:field | field asString]) asArray indexOf: name.
   index = 0 ifTrue: [component error: 'Audited owner resource field missing']. object instVarAt: index].
 sourceDB := slot value: source value: 'dbObject'. backend := slot value: ownerDB value: 'interface'.
 retained := (Array with: ownerDB with: sourceDB) collect: [:db | | leaf file raw |
   leaf := backend getInterfaceForProxy: db. file := slot value: leaf value: 'ctIFIL'. raw := leaf readRecord: db.
   raw isCTError ifTrue: [component error: 'Original no-op search record unavailable'].
   Array with: db with: leaf with: (Array with: file with: raw copy)].
 bytes := [:raw | ((1 to: raw size) collect: [:i | raw at: i]) asArray].
 retained doWithIndex: [:row :index |
   (bytes value: row last last) = (((before at: 'owners') at: index) at: 'allocated_bytes')
     ifFalse: [component error: 'Retained original no-op bytes differ']].
 same := [:a :b | (a isKindOf: Dictionary) ifTrue: [
   (b isKindOf: Dictionary) and: [a size = b size and: [a keys allSatisfy: [:k |
     (b includesKey: k) and: [same value: (a at: k) value: (b at: k)]]]]
   ] ifFalse: [a isArray ifTrue: [b isArray and: [a size = b size and: [
     (1 to: a size) allSatisfy: [:i | same value: (a at: i) value: (b at: i)]]]] ifFalse: [a = b]]].
 clone := [:a | (a isKindOf: Dictionary) ifTrue: [ | copy |
   copy := Dictionary new. a keysAndValuesDo: [:k :v | copy at: k put: (clone value: v)]. copy
   ] ifFalse: [a isArray ifTrue: [(a collect: [:v | clone value: v]) asArray] ifFalse: [a copy]]].
 guard := [component item == owner and: [owner dbObject == ownerDB and: [
   (component getDiagram: 'Main') specification == diagram specification and: [
   diagram specification specSourceInternalOrNil == source and: [(slot value: source value: 'dbObject') == sourceDB and: [
   (slot value: ownerDB value: 'interface') == backend and: [(slot value: sourceDB value: 'interface') == backend and: [
   retained allSatisfy: [:row | (backend getInterfaceForProxy: row first) == (row at: 2) and: [
     (slot value: (row at: 2) value: 'ctIFIL') == row last first]]]]]]]]]].
 used := false. writes := 0. outcomes := OrderedCollection new. expected := before.
 Dictionary new at: 'prepared' put: (clone value: before); at: 'execute' put: [:ignored | component handleExceptionsIn: [
   used ifTrue: [component error: 'Owner no-op cannot replay']. used := true.
   guard value ifFalse: [component error: 'Original owner leaf identities expired'].
   (same value: before value: (collector value: component))
     ifFalse: [component error: 'Complete owner CURRENT differs before dispatch'].
   retained doWithIndex: [:row :index | | outcome readback original |
     original := row last last. writes := writes + 1.
     outcome := (row at: 2) write: row first record: original copy.
     outcome isCTError ifTrue: [component error: 'Object leaf no-op write failed; retain original'].
     readback := (row at: 2) readRecord: row first.
     (readback isCTError not and: [readback class == original class and: [readback = original]])
       ifFalse: [component error: 'Complete original object raw readback differs; retain original'].
     outcomes add: (Dictionary new at: 'role' put: (#('component' 'spec_source') at: index);
       at: 'planned_bytes' put: (bytes value: original); at: 'actual_bytes' put: (bytes value: readback);
       at: 'returned_class' put: outcome class name asString; yourself).
     expected := collector value: component.
     (same value: before value: expected) ifFalse: [component error: 'Complete owner/reference no-op observation differs']
   ].
   guard value ifFalse: [component error: 'Original no-op owner identity changed'].
   Dictionary new at: 'profile' put: 'isolated_persistent_owner_noop_result_v1'; at: 'before' put: before;
     at: 'after' put: expected; at: 'outcomes' put: outcomes asArray; at: 'persistent_leaf_write_calls' put: writes;
     at: 'persistent_leaf_delete_calls' put: 0; at: 'owner_source_backend_preserved' put: true;
     at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'commit_called' put: false;
     at: 'full_commit_resource_closure' put: false; at: 'automatic_retry' put: false; yourself
 ] ifFail: [:error | Dictionary new at: 'profile' put: 'isolated_persistent_owner_noop_failure_v1';
   at: 'error' put: error messageText; at: 'write_dispatched' put: (writes > 0);
   at: 'persistent_leaf_write_calls' put: writes; at: 'persistent_leaf_delete_calls' put: 0;
   at: 'outcomes' put: outcomes asArray; at: 'automatic_retry' put: false; yourself]]; yourself
 ] ifFail: [:error | 'BDE_PERSISTENT_OWNER_PREPARE_ERROR: ', error messageText]
]]
