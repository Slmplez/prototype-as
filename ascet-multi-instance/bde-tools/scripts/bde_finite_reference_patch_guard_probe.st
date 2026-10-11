"Native preparation controls only; isolated complete observations, zero leaf writes."
[:patchFactory | [:collector | [:component |
 | before execute clone row candidate patch request controls refuse exports result |
 before := collector value: component. execute := patchFactory value: component.
 clone := [:a | (a isKindOf: Dictionary) ifTrue: [ | copy |
   copy := Dictionary new. a keysAndValuesDo: [:k :v | copy at: k put: (clone value: v)]. copy
   ] ifFalse: [a isArray ifTrue: [(a collect: [:v | clone value: v]) asArray] ifFalse: [a copy]]].
 row := ((before at: 'owners') first at: 'records') last.
 candidate := clone value: row.
 (candidate at: 'allocated_size') > (candidate at: 'logical_size')
   ifFalse: [component error: 'Original unparsed tail needed for detached controls'].
 (candidate at: 'allocated_bytes') at: (candidate at: 'allocated_size') put:
   (((candidate at: 'allocated_bytes') last + 1) \\ 256).
 patch := Dictionary new at: 'global_id' put: (row at: 'global_id'); at: 'role' put: (row at: 'role');
   at: 'operation' put: 'write_original_or_merged_record'; at: 'current' put: row; at: 'candidate' put: candidate; yourself.
 request := Array with: patch. controls := OrderedCollection new.
 refuse := [:name :expectedError :action | | error |
   error := component handleExceptionsIn: [action value. 'unexpected preparation'] ifFail: [:failure | failure messageText].
   error = expectedError ifFalse: [component error: 'Native preparation control differs: ', name, ': ', error].
   controls add: (Dictionary new at: 'name' put: name; at: 'error' put: error;
     at: 'rejected' put: true; at: 'write_dispatched' put: false; yourself)].
 refuse value: 'duplicate_physical_patch' value: 'Duplicate physical patch' value: [
   execute value: before value: (Array with: patch with: (clone value: patch))].
 refuse value: 'unexpected_candidate_field' value: 'Exact existing candidate fields required' value: [ | p |
   p := clone value: patch. (p at: 'candidate') at: 'extra' put: true. execute value: before value: (Array with: p)].
 refuse value: 'noninteger_extent' value: 'Exact integer candidate extents required' value: [ | p |
   p := clone value: patch. (p at: 'candidate') at: 'allocated_size' put: (row at: 'allocated_size') asFloat.
   execute value: before value: (Array with: p)].
 refuse value: 'raw_header_route' value: 'Candidate full raw header differs from route' value: [ | p raw |
   p := clone value: patch. raw := (p at: 'candidate') at: 'allocated_bytes'. raw at: 3 put: ((raw at: 3) + 1) \\ 256.
   (p at: 'candidate') at: 'bytes' put: (raw copyFrom: 1 to: (row at: 'logical_size')).
   execute value: before value: (Array with: p)].
 refuse value: 'operation_mismatch' value: 'Patch operation differs from existence transition' value: [ | p |
   p := clone value: patch. p at: 'operation' put: 'delete_record'. execute value: before value: (Array with: p)].
 refuse value: 'foreign_physical_key' value: 'Only isolated Module/source keys allowed' value: [ | p key |
   p := clone value: patch. key := (p at: 'global_id') copy. key at: 1 put: ((key first + 1) \\ 256).
   p at: 'global_id' put: key. execute value: before value: (Array with: p)].
 refuse value: 'incomplete_reciprocal_patch' value: 'Candidate reciprocal membership inconsistency' value: [ | p |
   p := clone value: patch. p at: 'operation' put: 'delete_record';
     at: 'current' put: (clone value: (((before at: 'owners') last at: 'records') last));
     at: 'candidate' put: (clone value: (((before at: 'owners') last at: 'records') first));
     at: 'global_id' put: ((p at: 'current') at: 'global_id').
   (p at: 'candidate') at: 'role' put: 'owner_referenced_by'; at: 'attribute' put: 'DBReferencedByList';
     at: 'query_key' put: ((p at: 'current') at: 'query_key'); at: 'actual_file_key' put: ((p at: 'current') at: 'actual_file_key').
   execute value: before value: (Array with: p)].
 exports := execute value: before value: #().
 (exports at: 'before') at: 'component_oid' put: 'changed-export'.
 (exports at: 'candidate') at: 'component_oid' put: 'changed-export'.
 result := (exports at: 'execute') value: nil.
 ((result at: 'profile') = 'finite_reference_patch_result_v1' and: [(result at: 'persistent_leaf_write_calls') = 0 and: [
   (result at: 'persistent_leaf_delete_calls') = 0 and: [(result at: 'exact_observation_matches') == true and: [
   ((result at: 'before') at: 'component_oid') = (before at: 'component_oid') and: [
   ((result at: 'after') at: 'component_oid') = (before at: 'component_oid')]]]]])
   ifFalse: [component error: 'Private execution images changed through detached exports'].
 Dictionary new at: 'profile' put: 'finite_reference_patch_native_guards_v1'; at: 'before' put: before;
   at: 'controls' put: controls asArray; at: 'detached_exports_isolated' put: true;
   at: 'empty_result' put: result; at: 'persistent_leaf_write_calls' put: 0; at: 'persistent_leaf_delete_calls' put: 0;
   at: 'after' put: (collector value: component); yourself
]]]
