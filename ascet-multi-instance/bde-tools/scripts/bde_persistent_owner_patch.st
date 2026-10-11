"Bounded isolated existing owner object record executor, not model/store closure."
[:collector | [:component |
 | beforeOwner ownerDB diagram source sourceDB backend slot routes same clone guard
   validateRow makeRecord oid |
 beforeOwner := component item. ownerDB := beforeOwner dbObject. oid := component getOID.
 diagram := component getDiagram: 'Main'. source := diagram specification specSourceInternalOrNil.
 slot := [:object :name | | index |
   index := (object class allInstVarNames collect: [:field | field asString]) asArray indexOf: name.
   index = 0 ifTrue: [component error: 'Audited owner patch field missing']. object instVarAt: index].
 sourceDB := slot value: source value: 'dbObject'. backend := slot value: ownerDB value: 'interface'.
 "The fixed collector enforces isolated Module, stored source and shared backend."
 collector value: component.
 routes := (Array with: ownerDB with: sourceDB) collect: [:db | | leaf |
   leaf := backend getInterfaceForProxy: db.
   Array with: db with: leaf with: (slot value: leaf value: 'ctIFIL')].
 same := [:a :b | (a isKindOf: Dictionary) ifTrue: [
   (b isKindOf: Dictionary) and: [a size = b size and: [a keys allSatisfy: [:k |
     (b includesKey: k) and: [same value: (a at: k) value: (b at: k)]]]]
   ] ifFalse: [a isArray ifTrue: [b isArray and: [a size = b size and: [
     (1 to: a size) allSatisfy: [:i | same value: (a at: i) value: (b at: i)]]]] ifFalse: [a = b]]].
 clone := [:a | (a isKindOf: Dictionary) ifTrue: [ | copy |
   copy := Dictionary new. a keysAndValuesDo: [:k :v | copy at: k put: (clone value: v)]. copy
   ] ifFalse: [a isArray ifTrue: [(a collect: [:v | clone value: v]) asArray] ifFalse: [a copy]]].
 guard := [component getOID = oid and: [component item == beforeOwner and: [beforeOwner dbObject == ownerDB and: [
   (component getDiagram: 'Main') specification == diagram specification and: [
   diagram specification specSourceInternalOrNil == source and: [(slot value: source value: 'dbObject') == sourceDB and: [
   (slot value: ownerDB value: 'interface') == backend and: [(slot value: sourceDB value: 'interface') == backend and: [
   routes allSatisfy: [:r | (backend getInterfaceForProxy: r first) == (r at: 2) and: [
     (slot value: (r at: 2) value: 'ctIFIL') == r last]]]]]]]]]]].
 makeRecord := [:row | | raw record |
   raw := row at: 'allocated_bytes'. record := CTreeSearchObjectRecord new: raw size.
   1 to: raw size do: [:i | record at: i put: (raw at: i)]. record].
 validateRow := [:row :original | | raw record mutable |
   (row isKindOf: Dictionary) ifFalse: [component error: 'Exact owner candidate dictionary required'].
   (row size = original size and: [original keys allSatisfy: [:k | row includesKey: k]])
     ifFalse: [component error: 'Exact owner candidate fields required'].
   mutable := #('allocated_bytes' 'bytes' 'allocated_size' 'logical_size' 'blob_size'
     'stored_version' 'stored_object_state' 'stored_reference_state').
   original keys do: [:k | (mutable includes: k) ifFalse: [
     (same value: (row at: k) value: (original at: k)) ifFalse: [component error: 'Owner immutable route/class/name differs']]].
   #('allocated_size' 'logical_size' 'blob_size' 'stored_version' 'stored_object_state' 'stored_reference_state') do: [:k |
     ((row at: k) isInteger and: [(row at: k) >= 0]) ifFalse: [component error: 'Exact owner integer extent/state required']].
   raw := row at: 'allocated_bytes'.
   (raw isArray and: [raw size = (row at: 'allocated_size') and: [raw size >= 130 and: [raw size <= 4194304 and: [
     (row at: 'logical_size') = (130 + (row at: 'blob_size')) and: [(row at: 'logical_size') <= raw size and: [
       (row at: 'bytes') isArray and: [(row at: 'bytes') = (raw copyFrom: 1 to: (row at: 'logical_size'))]]]]]]])
     ifFalse: [component error: 'Complete owner raw/prefix extent required'].
   raw do: [:octet | (octet isInteger and: [octet >= 0 and: [octet <= 255]])
     ifFalse: [component error: 'Exact owner octet required']].
   ((raw copyFrom: 1 to: 108) = ((original at: 'allocated_bytes') copyFrom: 1 to: 108) and: [
     (raw copyFrom: 121 to: 126) = ((original at: 'allocated_bytes') copyFrom: 121 to: 126)])
     ifFalse: [component error: 'Owner immutable search header differs'].
   record := makeRecord value: row.
   (record globalId asArray = (row at: 'global_id') and: [record className = (row at: 'stored_class') and: [
     record name = (row at: 'stored_name') and: [record blobSize = (row at: 'blob_size') and: [
     record version = (row at: 'stored_version') and: [record objectState = (row at: 'stored_object_state') and: [
     record referenceState = (row at: 'stored_reference_state')]]]]]])
     ifFalse: [component error: 'Native owner candidate header/getters differ']. row].
 [:expectedInput :patchInput | | expected patches projected used seen total |
   expected := clone value: expectedInput. patches := clone value: patchInput.
   (patches isArray and: [patches size <= 2]) ifFalse: [component error: 'At most two owned search records required'].
   guard value ifFalse: [component error: 'Owner patch identities expired before preparation'].
   (same value: expected value: (collector value: component))
     ifFalse: [component error: 'Complete owner CURRENT conflict before preparation'].
   projected := clone value: expected. seen := Set new. total := 0.
   patches do: [:patch | | index original candidate |
     ((patch isKindOf: Dictionary) and: [patch size = 5 and: [
       #('global_id' 'role' 'operation' 'current' 'candidate') allSatisfy: [:k | patch includesKey: k]]])
       ifFalse: [component error: 'Exact five-field existing owner patch required'].
     (patch at: 'operation') = 'write_existing_owner_record'
       ifFalse: [component error: 'Existing owner write operation required'].
     index := ((expected at: 'owners') findFirst: [:r | (r at: 'role') = (patch at: 'role') and: [
       (r at: 'global_id') = (patch at: 'global_id')]]).
     (index > 0 and: [(seen includes: index) not]) ifFalse: [component error: 'Distinct exact owned search key required'].
     seen add: index. original := (expected at: 'owners') at: index.
     (same value: original value: (patch at: 'current')) ifFalse: [component error: 'Complete owner patch CURRENT differs'].
     candidate := validateRow value: (patch at: 'candidate') value: original.
     total := total + (candidate at: 'allocated_size'). total > 8388608 ifTrue: [component error: 'Owner patch byte budget exceeded'].
     (projected at: 'owners') at: index put: candidate.
   ]. used := false.
   Dictionary new at: 'before' put: (clone value: expected); at: 'candidate' put: (clone value: projected);
     at: 'execute' put: [:ignored | | writes outcomes observed phase |
       writes := 0. outcomes := OrderedCollection new. phase := 'guard'.
       component handleExceptionsIn: [
         used ifTrue: [component error: 'Owner patch execution cannot replay']. used := true.
         guard value ifFalse: [component error: 'Owner patch identities expired before execution'].
         (same value: expected value: (collector value: component))
           ifFalse: [component error: 'Complete owner CURRENT conflict before dispatch'].
         phase := 'write'.
         patches do: [:patch | | index route raw result readback |
           index := ((expected at: 'owners') findFirst: [:r | (r at: 'role') = (patch at: 'role')]).
           route := routes at: index. raw := makeRecord value: (patch at: 'candidate'). writes := writes + 1.
           result := (route at: 2) write: route first record: raw.
           result isCTError ifTrue: [component error: 'Owner leaf write failed; retain originals'].
           readback := (route at: 2) readRecord: route first.
           (readback isCTError not and: [readback class == raw class and: [readback = raw]])
             ifFalse: [component error: 'Full owner raw readback differs; retain originals'].
           outcomes add: (Dictionary new at: 'role' put: (patch at: 'role'); at: 'global_id' put: (patch at: 'global_id');
             at: 'operation' put: (patch at: 'operation'); at: 'returned_class' put: result class name asString; yourself)
         ]. phase := 'readback'. observed := collector value: component.
         guard value ifFalse: [component error: 'Owner patch identities expired after write'].
         (same value: projected value: observed) ifFalse: [component error: 'Full owner/reference candidate readback differs'].
         Dictionary new at: 'profile' put: 'isolated_persistent_owner_patch_result_v1';
           at: 'before' put: expected; at: 'candidate' put: projected; at: 'after' put: observed;
           at: 'outcomes' put: outcomes asArray; at: 'persistent_leaf_write_calls' put: writes;
           at: 'persistent_leaf_delete_calls' put: 0; at: 'owner_source_backend_preserved' put: true;
           at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'commit_called' put: false;
           at: 'full_commit_resource_closure' put: false; at: 'automatic_retry' put: false; yourself
       ] ifFail: [:error | Dictionary new at: 'profile' put: 'isolated_persistent_owner_patch_failure_v1';
         at: 'phase' put: phase; at: 'error' put: error messageText; at: 'write_dispatched' put: (writes > 0);
         at: 'persistent_leaf_write_calls' put: writes; at: 'persistent_leaf_delete_calls' put: 0;
         at: 'outcomes' put: outcomes asArray; at: 'automatic_retry' put: false; yourself]]; yourself
 ]
]]
