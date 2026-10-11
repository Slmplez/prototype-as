"Fixed raw-version lifecycle: source edit, other owner edit, source inverse,
 other inverse, source redo and inverse. Not a serialized graphical edit."
[:collector | [:patchFactory | [:component | component handleExceptionsIn: [
 | before expected factory clone same patch changed originalSource originalOwner
   targetSource targetOwner planEmpty controls preparationControls results used
   prepare invoke probeControl |
 before := collector value: component. expected := before. factory := patchFactory value: component.
 clone := [:a | (a isKindOf: Dictionary) ifTrue: [ | copy |
   copy := Dictionary new. a keysAndValuesDo: [:k :v | copy at: k put: (clone value: v)]. copy
   ] ifFalse: [a isArray ifTrue: [(a collect: [:v | clone value: v]) asArray] ifFalse: [a copy]]].
 same := [:a :b | (a isKindOf: Dictionary) ifTrue: [
   (b isKindOf: Dictionary) and: [a size = b size and: [a keys allSatisfy: [:k |
     (b includesKey: k) and: [same value: (a at: k) value: (b at: k)]]]]
   ] ifFalse: [a isArray ifTrue: [b isArray and: [a size = b size and: [
     (1 to: a size) allSatisfy: [:i | same value: (a at: i) value: (b at: i)]]]] ifFalse: [a = b]]].
 patch := [:current :candidate | Dictionary new at: 'role' put: (current at: 'role');
   at: 'global_id' put: (current at: 'global_id'); at: 'operation' put: 'write_existing_owner_record';
   at: 'current' put: current; at: 'candidate' put: candidate; yourself].
 changed := [:row | | answer raw version |
   answer := clone value: row. raw := answer at: 'allocated_bytes'. version := (answer at: 'stored_version') + 1.
   version > 4294967295 ifTrue: [component error: 'Bounded raw version experiment required'].
   0 to: 3 do: [:i | raw at: 109 + i put: ((version // (256 raisedTo: i)) \\ 256)].
   answer at: 'stored_version' put: version; at: 'bytes' put: (raw copyFrom: 1 to: (answer at: 'logical_size')). answer].
 originalOwner := (before at: 'owners') first. originalSource := (before at: 'owners') last.
 targetOwner := changed value: originalOwner. targetSource := changed value: originalSource.
 controls := OrderedCollection new. preparationControls := OrderedCollection new. results := OrderedCollection new.
 prepare := [:candidate | factory value: before value: (Array with: candidate)].
 probeControl := [:name :candidate | | message |
   message := component handleExceptionsIn: [prepare value: candidate. 'unexpected acceptance']
     ifFail: [:error | error messageText].
   message = 'unexpected acceptance' ifTrue: [component error: 'Owner native guard accepted malformed patch'].
   preparationControls add: (Dictionary new at: 'name' put: name; at: 'error' put: message;
     at: 'rejected' put: true; at: 'write_dispatched' put: false; yourself)].
 [ | bad | bad := patch value: originalSource value: targetSource. bad at: 'extra' put: true.
   probeControl value: 'extra_field' value: bad] value.
 [ | bad | bad := patch value: originalSource value: targetSource. bad at: 'operation' put: 'delete_record'.
   probeControl value: 'delete_operation' value: bad] value.
 [ | bad | bad := clone value: (patch value: originalSource value: targetSource).
   (bad at: 'global_id') at: 1 put: 99. probeControl value: 'foreign_key' value: bad] value.
 [ | bad | bad := clone value: (patch value: originalSource value: targetSource).
   (bad at: 'candidate') at: 'allocated_size' put: true. probeControl value: 'boolean_extent' value: bad] value.
 [ | bad raw | bad := clone value: (patch value: originalSource value: targetSource).
   raw := (bad at: 'candidate') at: 'allocated_bytes'. raw at: 1 put: ((raw at: 1) + 1) \\ 256.
   ((bad at: 'candidate') at: 'bytes') at: 1 put: raw first. probeControl value: 'immutable_header' value: bad] value.
 [ | bad | bad := clone value: (patch value: originalSource value: targetSource).
   (bad at: 'candidate') at: 'stored_version' put: (targetSource at: 'stored_version') + 1.
   probeControl value: 'getter_mismatch' value: bad] value.
 [ | bad message | bad := patch value: originalSource value: targetSource.
   message := component handleExceptionsIn: [factory value: before value: (Array with: bad with: bad).
     'unexpected acceptance'] ifFail: [:error | error messageText].
   message = 'Distinct exact owned search key required' ifFalse: [component error: 'Duplicate owner guard differs'].
   preparationControls add: (Dictionary new at: 'name' put: 'duplicate'; at: 'error' put: message;
     at: 'rejected' put: true; at: 'write_dispatched' put: false; yourself)] value.
 "Returned image mutation must not change private expected/candidate."
 [ | empty actual |
   empty := factory value: before value: #().
   (empty at: 'before') at: 'owners' put: #(). (empty at: 'candidate') at: 'owners' put: #().
   actual := (empty at: 'execute') value: nil.
   ((actual at: 'profile') = 'isolated_persistent_owner_patch_result_v1' and: [
     (actual at: 'persistent_leaf_write_calls') = 0 and: [same value: before value: (actual at: 'after')]])
     ifFalse: [component error: 'Owner patch private exports changed']
 ] value.
 planEmpty := factory value: before value: #(). used := false.
 invoke := [:index :candidate | | plan actual replay |
   plan := factory value: expected value: (Array with: (patch value: ((expected at: 'owners') at: index) value: candidate)).
   actual := (plan at: 'execute') value: nil. results add: actual.
   (actual at: 'profile') = 'isolated_persistent_owner_patch_result_v1'
     ifFalse: [component error: 'Owner patch result failed; retain originals'].
   replay := (plan at: 'execute') value: nil. controls add: replay.
   ((replay at: 'profile') = 'isolated_persistent_owner_patch_failure_v1' and: [
     (replay at: 'error') = 'Owner patch execution cannot replay' and: [(replay at: 'write_dispatched') == false]])
     ifFalse: [component error: 'Owner replay did not refuse'].
   expected := actual at: 'after'.
   (same value: expected value: (collector value: component)) ifFalse: [component error: 'Full post-phase owner observation differs']].
 Dictionary new at: 'prepared' put: (clone value: before); at: 'execute' put: [:ignored | component handleExceptionsIn: [
   used ifTrue: [component error: 'Owner patch experiment cannot replay']. used := true.
   invoke value: 2 value: targetSource. controls add: ((planEmpty at: 'execute') value: nil).
   [ | message |
     message := component handleExceptionsIn: [prepare value: (patch value: originalSource value: targetSource).
       'unexpected acceptance'] ifFail: [:error | error messageText].
     message = 'Complete owner CURRENT conflict before preparation'
       ifFalse: [component error: 'Stale owner CURRENT preparation guard differs'].
     controls add: (Dictionary new at: 'profile' put: 'owner_patch_preparation_refusal_v1';
       at: 'error' put: message; at: 'write_dispatched' put: false; yourself)] value.
   invoke value: 1 value: targetOwner. invoke value: 2 value: originalSource.
   "Phase 3 must preserve the unrelated actual Module record change."
   (same value: ((expected at: 'owners') first) value: targetOwner)
     ifFalse: [component error: 'Source inverse damaged unrelated owner modification'].
   invoke value: 1 value: originalOwner. invoke value: 2 value: targetSource. invoke value: 2 value: originalSource.
   Dictionary new at: 'profile' put: 'isolated_persistent_owner_patch_probe_result_v1';
     at: 'before' put: before; at: 'after' put: expected; at: 'results' put: results asArray;
     at: 'controls' put: controls asArray; at: 'preparation_controls' put: preparationControls asArray;
     at: 'detached_exports_isolated' put: true; at: 'unrelated_owner_change_preserved' put: true;
     at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'commit_called' put: false;
     at: 'full_commit_resource_closure' put: false; at: 'automatic_retry' put: false; yourself
 ] ifFail: [:error | Dictionary new at: 'profile' put: 'isolated_persistent_owner_patch_probe_failure_v1';
   at: 'error' put: error messageText; at: 'results' put: results asArray; at: 'controls' put: controls asArray;
   at: 'automatic_retry' put: false; yourself]]; yourself
 ] ifFail: [:error | 'BDE_OWNER_PATCH_PREPARE_ERROR: ', error messageText]
]]]
