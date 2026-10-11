"Fixed reciprocal sequence exercising the new executor, not a model connection."
[:collector | [:patchFactory | [:component | component handleExceptionsIn: [
 | before moduleKey sourceKey original targetOne targetTwo makeRow appendSource
   patches execute used results controls expected invoke same deferredPlan |
 before := collector value: component.
 moduleKey := ((before at: 'owners') first at: 'key'). sourceKey := ((before at: 'owners') last at: 'key').
 original := Array with: (((before at: 'owners') last at: 'records') first)
   with: (((before at: 'owners') first at: 'records') last)
   with: (((before at: 'owners') last at: 'records') last).
 "Explicit original preconditions, before any dispatch."
 ((original first at: 'read_status') = 'absent' and: [
   ((original at: 2) at: 'read_status') = 'record' and: [((original at: 3) at: 'read_status') = 'record']])
   ifFalse: [component error: 'Original source absence and existing inbound required'].
 makeRow := [:route :entries :tail | | attribute raw count extent row key role |
   key := route first. role := route last.
   attribute := role = 'owner_references' ifTrue: ['DBReferenceList'] ifFalse: ['DBReferencedByList'].
   count := entries size. extent := 64 + (21 * count). raw := Array new: extent + tail size.
   1 to: raw size do: [:i | raw at: i put: 0].
   raw at: 2 put: 60.
   1 to: 20 do: [:i | raw at: i + 2 put: (key at: i)].
   1 to: attribute size do: [:i | raw at: i + 22 put: (attribute asCebraString at: i)].
   0 to: 3 do: [:i | raw at: 57 + i put: (((count * 21) // (256 raisedTo: i)) \\ 256).
     raw at: 61 + i put: ((count // (256 raisedTo: i)) \\ 256)].
   entries doWithIndex: [:target :i | | start | start := 65 + ((i - 1) * 21). raw at: start put: 1.
     1 to: 20 do: [:octet | raw at: start + octet put: (target at: octet)]].
   1 to: tail size do: [:i | raw at: extent + i put: (tail at: i)].
   row := Dictionary new at: 'role' put: role; at: 'attribute' put: attribute; at: 'record_attribute' put: attribute;
     at: 'global_id' put: key; at: 'query_key' put: key, attribute asCebraString asArray;
     at: 'actual_file_key' put: key, attribute asCebraString asArray; at: 'record_class_requested' put: 'CTreeVariableAttributeRecord';
     at: 'read_status' put: 'record'; at: 'record_class' put: 'CTreeVariableAttributeRecord'; at: 'fixed_size' put: 60;
     at: 'blob_size' put: count * 21; at: 'declared_size' put: 60 + (count * 21); at: 'logical_size' put: extent;
     at: 'allocated_size' put: raw size; at: 'allocated_bytes' put: raw; at: 'bytes' put: (raw copyFrom: 1 to: extent);
     at: 'length_profile' put: 'reference_payload_v2'; yourself. row].
 appendSource := [:row | | raw count extent entries tail |
   raw := row at: 'allocated_bytes'. count := (raw at: 61) + ((raw at: 62) * 256) + ((raw at: 63) * 65536) + ((raw at: 64) * 16777216).
   extent := 64 + (count * 21). entries := OrderedCollection new.
   1 to: count do: [:i | | start target | start := 65 + ((i - 1) * 21).
     target := raw copyFrom: start + 1 to: start + 20.
     target = sourceKey ifTrue: [component error: 'Source already in original inbound'].
     entries add: target]. entries add: sourceKey.
   tail := extent = raw size ifTrue: [#()] ifFalse: [raw copyFrom: extent + 1 to: raw size].
   makeRow value: (Array with: (row at: 'global_id') with: 'owner_referenced_by') value: entries asArray value: tail].
 targetOne := Array with: (makeRow value: (Array with: sourceKey with: 'owner_references') value: (Array with: moduleKey) value: #())
   with: (appendSource value: (original at: 2)) with: (original at: 3).
 targetTwo := Array with: (makeRow value: (Array with: sourceKey with: 'owner_references') value: (Array with: moduleKey with: sourceKey) value: #())
   with: (targetOne at: 2) with: (appendSource value: (original at: 3)).
 same := [:a :b | (a isKindOf: Dictionary) ifTrue: [
   (b isKindOf: Dictionary) and: [a size = b size and: [a keys allSatisfy: [:k |
     (b includesKey: k) and: [same value: (a at: k) value: (b at: k)]]]]
   ] ifFalse: [a isArray ifTrue: [b isArray and: [a size = b size and: [
     (1 to: a size) allSatisfy: [:i | same value: (a at: i) value: (b at: i)]]]] ifFalse: [a = b]]].
 patches := [:image :desired | | present result |
   present := Array with: (((image at: 'owners') last at: 'records') first)
     with: (((image at: 'owners') first at: 'records') last) with: (((image at: 'owners') last at: 'records') last).
   result := OrderedCollection new.
   present doWithIndex: [:row :i | | candidate operation |
     candidate := desired at: i.
     "Absent diagnostics are not patchable data; skip already absent."
     (((row at: 'read_status') = 'absent' and: [(candidate at: 'read_status') = 'absent']) or: [same value: row value: candidate]) ifFalse: [
       operation := (candidate at: 'read_status') = 'absent' ifTrue: ['delete_record'] ifFalse: [
         (row at: 'read_status') = 'absent' ifTrue: ['create_original_record'] ifFalse: ['write_original_or_merged_record']].
       result add: (Dictionary new at: 'global_id' put: (candidate at: 'global_id'); at: 'role' put: (candidate at: 'role');
         at: 'operation' put: operation; at: 'current' put: row; at: 'candidate' put: candidate; yourself)]
   ]. result asArray].
 execute := patchFactory value: component. used := false. results := OrderedCollection new. controls := OrderedCollection new.
 deferredPlan := execute value: before value: #().
 expected := before.
 invoke := [:desired | | plan actual replay |
   plan := execute value: expected value: (patches value: expected value: desired).
   actual := (plan at: 'execute') value: nil. results add: actual.
   (actual at: 'profile') = 'finite_reference_patch_result_v1'
     ifFalse: [component error: 'Finite patch result failed; retain originals'].
   replay := (plan at: 'execute') value: nil. controls add: replay.
   ((replay at: 'profile') = 'finite_reference_patch_failure_v1' and: [(replay at: 'write_dispatched') == false and: [
     (replay at: 'error') = 'Finite patch execution cannot replay']])
     ifFalse: [component error: 'Replay refusal did not prove zero writer calls'].
   expected := actual at: 'after'.
   (same value: expected value: (collector value: component))
     ifFalse: [component error: 'Independent post-phase read differs']].
 Dictionary new at: 'prepared' put: before; at: 'execute' put: [:ignored | component handleExceptionsIn: [
   used ifTrue: [component error: 'Fixed patch experiment cannot replay']. used := true.
   invoke value: targetOne.
   controls add: ((deferredPlan at: 'execute') value: nil).
   [ | stale |
     stale := component handleExceptionsIn: [execute value: before value: (patches value: before value: targetOne).
       'unexpected preparation'] ifFail: [:error | error messageText].
     stale = 'Complete finite CURRENT conflict before preparation'
       ifFalse: [component error: 'Stale CURRENT did not refuse before write'].
     controls add: (Dictionary new at: 'profile' put: 'finite_reference_patch_preparation_refusal_v1';
       at: 'error' put: stale; at: 'write_dispatched' put: false; yourself)
   ] value.
   invoke value: targetTwo. invoke value: targetOne. invoke value: original.
   "Undo the inverse and undo that redo, using genuine retained raw records."
   invoke value: targetTwo. invoke value: original.
   Dictionary new at: 'profile' put: 'finite_reference_patch_probe_result_v1'; at: 'before' put: before;
     at: 'results' put: results asArray; at: 'controls' put: controls asArray; at: 'after' put: expected;
     at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'commit_called' put: false;
     at: 'full_commit_resource_closure' put: false; at: 'automatic_retry' put: false; yourself
 ] ifFail: [:error | Dictionary new at: 'profile' put: 'finite_reference_patch_probe_failure_v1';
   at: 'results' put: results asArray; at: 'controls' put: controls asArray; at: 'error' put: error messageText;
   at: 'automatic_retry' put: false; yourself]]; yourself
 ] ifFail: [:error | 'BDE_FINITE_PATCH_PREPARE_ERROR: ', error messageText]
]]]
