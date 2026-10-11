"Finite leaf executor for isolated Module/source research. Production v3 stays
 preparation-only. Complete CURRENT precedes all writes; no replay/auto inverse."
[:decoder | [:collector | [:component |
 | owner ownerDB diagram source sourceDB backend leaf file slot keys same clone
   physical identity validRow project guard setupOID |
 (component class name asString = 'EtasAPIModuleBDE' and: [component item class name asString = 'SGModule'])
   ifFalse: [component error: 'Exact isolated Module required'].
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated Trial namespace required'].
 owner := component item. ownerDB := owner dbObject. diagram := component getDiagram: 'Main'.
 diagram isStateMachineDiagram ifTrue: [component error: 'Ordinary Main required'].
 source := diagram specification specSourceInternalOrNil.
 source class name asString = 'SGTopGraphicsBlockDB'
   ifFalse: [component error: 'Exact stored source required'].
 slot := [:object :name | | index |
   index := (object class allInstVarNames collect: [:field | field asString]) asArray indexOf: name.
   index = 0 ifTrue: [component error: 'Audited resource slot missing']. object instVarAt: index].
 sourceDB := slot value: source value: 'dbObject'. backend := slot value: ownerDB value: 'interface'.
 (backend class name asString = 'DBReferenceInterface32' and: [(slot value: sourceDB value: 'interface') == backend])
   ifFalse: [component error: 'Exact shared reference backend required'].
 leaf := slot value: backend value: 'referenceInterface'. file := slot value: leaf value: 'ctIFIL'.
 (leaf class name asString = 'CTreeLocalVariableAttributeInterface' and: [file class name asString = 'CTSpaceCheckingIFil'])
   ifFalse: [component error: 'Audited leaf/file required'].
 keys := Array with: ownerDB uniqueKeyValue asArray with: sourceDB uniqueKeyValue asArray.
 setupOID := component getOID.
 same := [:a :b | (a isKindOf: Dictionary) ifTrue: [
   (b isKindOf: Dictionary) and: [a size = b size and: [a keys allSatisfy: [:k |
     (b includesKey: k) and: [same value: (a at: k) value: (b at: k)]]]]
   ] ifFalse: [a isArray ifTrue: [b isArray and: [a size = b size and: [
     (1 to: a size) allSatisfy: [:i | same value: (a at: i) value: (b at: i)]]]] ifFalse: [a = b]]].
 clone := [:a | (a isKindOf: Dictionary) ifTrue: [ | copy |
   copy := Dictionary new. a keysAndValuesDo: [:k :v | copy at: k put: (clone value: v)]. copy
   ] ifFalse: [a isArray ifTrue: [(a collect: [:v | clone value: v]) asArray] ifFalse: [a copy]]].
 identity := [:row | Array with: (row at: 'global_id') with: (row at: 'role')].
 physical := [:image | | rows add |
   rows := Dictionary new. add := [:row | | key old |
     key := identity value: row. old := rows at: key ifAbsent: [nil].
     (old notNil and: [(same value: old value: row) not])
       ifTrue: [component error: 'Duplicate physical observations differ'].
     rows at: key put: row].
   (image at: 'owners') do: [:entry | (entry at: 'records') do: [:row | add value: row]].
   (image at: 'reciprocal_records') do: [:row | add value: row]. rows].
 validRow := [:row :key :role | | attribute raw parsed expectedQuery blob required |
   attribute := role = 'owner_references' ifTrue: ['DBReferenceList'] ifFalse: ['DBReferencedByList'].
   (#('owner_references' 'owner_referenced_by') includes: role) ifFalse: [component error: 'Exact reference role required'].
   expectedQuery := key, attribute asCebraString asArray.
   ((row at: 'role') = role and: [(row at: 'attribute') = attribute and: [(row at: 'global_id') = key and: [
     (row at: 'query_key') = expectedQuery and: [(row at: 'actual_file_key') = expectedQuery and: [
     (row at: 'record_class_requested') = 'CTreeVariableAttributeRecord']]]]])
     ifFalse: [component error: 'Exact candidate physical route required'].
   (row at: 'read_status') = 'absent' ifTrue: [
     required := #('role' 'attribute' 'global_id' 'query_key' 'actual_file_key' 'record_class_requested'
       'read_status' 'error_class' 'error_number' 'uerr_code' 'sysio_code' 'absence_profile').
     (row size = required size and: [required allSatisfy: [:name | row includesKey: name]])
       ifFalse: [component error: 'Exact absent candidate fields required'].
     ((row at: 'absence_profile') = 'exact_reference_undefined_v1' and: [(row at: 'error_class') = 'CTError' and: [
       (row at: 'error_number') isInteger and: [(row at: 'error_number') = 101 and: [
       (row at: 'sysio_code') isString and: [(row at: 'uerr_code') isString]]]]])
       ifFalse: [component error: 'Exact retained absence required']
   ] ifFalse: [
     (row at: 'read_status') = 'record' ifFalse: [component error: 'Error records cannot be written'].
     required := #('role' 'attribute' 'global_id' 'query_key' 'actual_file_key' 'record_class_requested'
       'read_status' 'record_class' 'record_attribute' 'fixed_size' 'blob_size' 'logical_size' 'allocated_size'
       'bytes' 'allocated_bytes' 'length_profile' 'declared_size').
     (row size = required size and: [required allSatisfy: [:name | row includesKey: name]])
       ifFalse: [component error: 'Exact existing candidate fields required'].
     (#('fixed_size' 'blob_size' 'logical_size' 'allocated_size' 'declared_size') allSatisfy: [:name |
       (row at: name) isInteger and: [(row at: name) >= 0]])
       ifFalse: [component error: 'Exact integer candidate extents required'].
     raw := row at: 'allocated_bytes'.
     (raw isArray and: [raw size <= 4194304 and: [raw allSatisfy: [:octet |
       octet isInteger and: [octet >= 0 and: [octet <= 255]]]]])
       ifFalse: [component error: 'Bounded complete octets required'].
     parsed := decoder value: row value: key.
     blob := (raw at: 57) + ((raw at: 58) * 256) + ((raw at: 59) * 65536) + ((raw at: 60) * 16777216).
     ((raw copyFrom: 3 to: 22) = key and: [
        (raw copyFrom: 23 to: 56) = (attribute asCebraString asArray, ((1 to: 34 - attribute size) collect: [:i | 0]) asArray) and: [
       blob = (row at: 'blob_size') and: [(row at: 'length_profile') = 'reference_payload_v2']]])
       ifFalse: [component error: 'Candidate full raw header differs from route']
   ]. row].
 project := [:image :patches | | result replace targets |
   result := clone value: image.
   replace := [:row | | patch |
     patch := patches detect: [:p | (identity value: (p at: 'candidate')) = (identity value: row)] ifNone: [nil].
     patch isNil ifTrue: [row] ifFalse: [clone value: (patch at: 'candidate')]].
   (result at: 'owners') do: [:entry | entry at: 'records' put: (((entry at: 'records') collect: replace) asArray)].
   result at: 'reciprocal_records' put: (((result at: 'reciprocal_records') collect: replace) asArray).
   targets := result at: 'reciprocal_targets'.
   (result at: 'owners') do: [:entry | | out |
     out := (entry at: 'records') first.
     (out at: 'read_status') = 'record' ifTrue: [
       ((decoder value: out value: (entry at: 'key')) at: 'entries') do: [:target |
         (targets includes: (target at: 'global_id')) ifFalse: [component error: 'Candidate target lacks original finite capture']]]].
   result at: 'membership_checks' put: ((result at: 'membership_checks') collect: [:check | | current entry out incoming member count |
     current := clone value: check.
     entry := (result at: 'owners') detect: [:o | (o at: 'key') = (check at: 'owner_key')].
     out := (entry at: 'records') first.
     member := (out at: 'read_status') = 'record' and: [
       ((decoder value: out value: (entry at: 'key')) at: 'entries') anySatisfy: [:e | (e at: 'global_id') = (check at: 'target_key')]].
     incoming := (result at: 'reciprocal_records') detect: [:r | (r at: 'global_id') = (check at: 'target_key')].
     count := (incoming at: 'read_status') = 'absent' ifTrue: [0] ifFalse: [
       (((decoder value: incoming value: (check at: 'target_key')) at: 'entries') select: [:e | (e at: 'global_id') = (entry at: 'key')]) size].
     member = (count > 0) ifFalse: [component error: 'Candidate reciprocal membership inconsistency'].
     current at: 'outgoing_member' put: member; at: 'inbound_owner_count' put: count; at: 'consistent' put: true. current]) asArray.
   result].
 guard := [ | current |
   current := component getDiagram: 'Main'.
   component getOID = setupOID and: [component item == owner and: [owner dbObject == ownerDB and: [
   current specification == diagram specification and: [current specification specSourceInternalOrNil == source and: [
   (slot value: source value: 'dbObject') == sourceDB and: [(slot value: ownerDB value: 'interface') == backend and: [
   (slot value: sourceDB value: 'interface') == backend and: [(slot value: backend value: 'referenceInterface') == leaf and: [
   (slot value: leaf value: 'ctIFIL') == file and: [ownerDB uniqueKeyValue asArray = keys first and: [
     sourceDB uniqueKeyValue asArray = keys last]]]]]]]]]]]].
 [:expectedInput :patchInput | | expected patches projected used |
   expected := clone value: expectedInput. patches := clone value: patchInput.
   (patches isArray and: [patches size <= 4]) ifFalse: [component error: 'At most four owned physical records required'].
   guard value ifFalse: [component error: 'Owner/source/backend expired'].
   (same value: expected value: (collector value: component))
     ifFalse: [component error: 'Complete finite CURRENT conflict before preparation'].
   ((expected at: 'complete') == true and: [(expected at: 'component_oid') = setupOID and: [
     (expected at: 'membership_checks') allSatisfy: [:c | (c at: 'consistent') == true]]])
     ifFalse: [component error: 'Complete consistent CURRENT required'].
   [ | rows seen total |
     rows := physical value: expected. seen := Set new. total := 0.
     patches do: [:patch | | key role id current candidate operation actual |
       patch size = 5 ifFalse: [component error: 'Exact fixed patch fields required'].
       key := patch at: 'global_id'. role := patch at: 'role'. operation := patch at: 'operation'.
       (keys includes: key) ifFalse: [component error: 'Only isolated Module/source keys allowed'].
       current := patch at: 'current'. candidate := patch at: 'candidate'.
       validRow value: current value: key value: role. validRow value: candidate value: key value: role.
       id := Array with: key with: role.
       (seen includes: id) ifTrue: [component error: 'Duplicate physical patch']. seen add: id.
       actual := rows at: id ifAbsent: [component error: 'Original physical observation missing'].
       (same value: actual value: current) ifFalse: [component error: 'Patch CURRENT differs from complete observation'].
       operation = ((candidate at: 'read_status') = 'absent' ifTrue: ['delete_record'] ifFalse: [
         (current at: 'read_status') = 'absent' ifTrue: ['create_original_record'] ifFalse: ['write_original_or_merged_record']])
         ifFalse: [component error: 'Patch operation differs from existence transition'].
       ((current at: 'read_status') = 'absent' and: [(candidate at: 'read_status') = 'absent'])
         ifTrue: [component error: 'Absence diagnostic is not a record patch'].
       (same value: current value: candidate) ifTrue: [component error: 'No-op patch is not an actual difference'].
       (candidate at: 'read_status') = 'record' ifTrue: [total := total + (candidate at: 'allocated_size')].
       total > 16777216 ifTrue: [component error: 'Finite patch byte budget exceeded']
     ]
   ] value.
   projected := project value: expected value: patches. used := false.
   Dictionary new at: 'profile' put: 'finite_reference_patch_prepared_v1'; at: 'before' put: (clone value: expected);
     at: 'candidate' put: (clone value: projected); at: 'patches' put: (clone value: patches);
     at: 'execute' put: [:ignored | | writes deletes outcomes observed phase diagnostics |
       writes := 0. deletes := 0. outcomes := OrderedCollection new. diagnostics := OrderedCollection new. phase := 'guard'.
       component handleExceptionsIn: [
         used ifTrue: [component error: 'Finite patch execution cannot replay']. used := true.
         guard value ifFalse: [component error: 'Owner/source/backend expired before execution'].
         (same value: expected value: (collector value: component))
           ifFalse: [component error: 'Complete finite CURRENT conflict before dispatch'].
         phase := 'write'.
         patches do: [:patch | | proxy key row raw record outcome readback |
           key := ByteArray new: 20. 1 to: 20 do: [:i | key at: i put: ((patch at: 'global_id') at: i)].
           proxy := DBLinkProxy new initializeInstances.
           proxy globalId: key; dbInterface: backend; istate: 0;
             attributeName: ((patch at: 'role') = 'owner_references' ifTrue: ['DBReferenceList'] ifFalse: ['DBReferencedByList']).
           row := patch at: 'candidate'.
           (row at: 'read_status') = 'absent' ifTrue: [
             deletes := deletes + 1. outcome := leaf deleteRecord: proxy.
             outcome isCTError ifTrue: [component error: 'Leaf removal failed; retain original material'].
             readback := leaf readRecord: proxy.
             (readback isCTError and: [readback errorNumber = 101])
               ifFalse: [component error: 'Exact absence readback failed; retain original material']
           ] ifFalse: [
             raw := row at: 'allocated_bytes'.
             record := CTreeVariableAttributeRecord create: proxy size: raw size - 60.
             record size = raw size ifFalse: [component error: 'Complete native allocation differs'].
             1 to: raw size do: [:i | record at: i put: (raw at: i)].
             writes := writes + 1. outcome := leaf write: proxy record: record.
             outcome isCTError ifTrue: [component error: 'Leaf write failed; retain original material'].
             readback := leaf readRecord: proxy.
             (readback isCTError not and: [readback class == record class and: [readback = record]])
               ifFalse: [component error: 'Complete raw readback differs; retain original material']
           ].
           outcomes add: (Dictionary new at: 'global_id' put: (patch at: 'global_id'); at: 'role' put: (patch at: 'role');
             at: 'operation' put: (patch at: 'operation'); at: 'returned_class' put: outcome class name asString; yourself)
         ].
         phase := 'observe'. observed := collector value: component.
         [ | normalized |
           normalized := clone value: observed.
           (normalized at: 'owners') do: [:entry | (entry at: 'records') do: [:row | | planned |
             planned := (physical value: projected) at: (identity value: row) ifAbsent: [nil].
             (planned notNil and: [(planned at: 'read_status') = 'absent' and: [(row at: 'read_status') = 'absent']]) ifTrue: [
               (row at: 'sysio_code') ~= (planned at: 'sysio_code') ifTrue: [diagnostics add: (Dictionary new
                 at: 'global_id' put: (row at: 'global_id'); at: 'role' put: (row at: 'role');
                 at: 'before' put: (planned at: 'sysio_code'); at: 'after' put: (row at: 'sysio_code'); yourself)].
               row at: 'sysio_code' put: (planned at: 'sysio_code')]]].
           (normalized at: 'reciprocal_records') do: [:row | | planned |
             planned := (physical value: projected) at: (identity value: row).
             ((planned at: 'read_status') = 'absent' and: [(row at: 'read_status') = 'absent'])
               ifTrue: [row at: 'sysio_code' put: (planned at: 'sysio_code')]].
           (same value: projected value: normalized) ifFalse: [component error: 'Full candidate readback differs']
         ] value.
         guard value ifFalse: [component error: 'Original resource identity changed'].
         Dictionary new at: 'profile' put: 'finite_reference_patch_result_v1'; at: 'before' put: expected;
           at: 'candidate' put: projected; at: 'after' put: observed; at: 'outcomes' put: outcomes asArray;
           at: 'diagnostic_changes' put: diagnostics asArray; at: 'exact_observation_matches' put: (same value: projected value: observed);
           at: 'persistent_records_match' put: true; at: 'owner_source_backend_preserved' put: true;
           at: 'persistent_leaf_write_calls' put: writes; at: 'persistent_leaf_delete_calls' put: deletes;
           at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'commit_called' put: false;
           at: 'automatic_retry' put: false; at: 'full_commit_resource_closure' put: false; yourself
       ] ifFail: [:error | Dictionary new at: 'profile' put: 'finite_reference_patch_failure_v1';
         at: 'phase' put: phase; at: 'error' put: error messageText; at: 'write_dispatched' put: (writes + deletes > 0);
         at: 'persistent_leaf_write_calls' put: writes; at: 'persistent_leaf_delete_calls' put: deletes;
         at: 'outcomes' put: outcomes asArray; at: 'automatic_retry' put: false; yourself]
     ]; yourself
 ]
]]]
