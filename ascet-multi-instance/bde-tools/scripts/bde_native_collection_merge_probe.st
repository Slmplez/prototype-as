[:bindingReader :mergeReader :planReader | [:component :action :checkpoint |
 component handleExceptionsIn: [
 | collections selected order a x b extra checks sameOrder cases run result roots wrongParents parentRefused currentMatches keyedPlan planNegatives rejectPlan candidate parentName keyedSummary |
 (#('capture' 'audit') includes: action) ifFalse: [component error: 'Unknown collection merge research action'].
 action = 'capture' ifTrue: [
   checkpoint isNil ifFalse: [component error: 'Capture cannot replace native material'].
   result := bindingReader value: component value: 'capture'.
   (result isKindOf: Dictionary) ifFalse: [component error: result]. result
 ] ifFalse: [
   ((checkpoint isKindOf: Dictionary) and: [(checkpoint at: 'profile' ifAbsent: ['']) = 'native_collections_v1'])
     ifFalse: [component error: 'Exact native collection checkpoint required'].
   (checkpoint at: 'owner') == component item ifFalse: [component error: 'Native checkpoint owner changed'].
   ((checkpoint at: 'verifyCurrent') value) ifFalse: [component error: 'Native collections changed before merge research'].
   collections := checkpoint at: 'collections'. selected := nil.
   collections do: [:entry | (entry at: 'order') size >= 3 ifTrue: [selected := entry]].
   selected isNil ifTrue: [component error: 'Three retained native members required for research'].
   order := selected at: 'order'. a := order first. x := order at: 2. b := order at: 3.
   extra := Object new. cases := OrderedCollection new.
   run := [:name :orders :expected | | value ok text |
     value := mergeReader value: component value: orders.
     (value isKindOf: Dictionary) ifFalse: [component error: value].
     ((value at: 'write_authorized') == false and: [(value at: 'model_setters_called') = 0])
       ifFalse: [component error: 'Unexpected native merge authority'].
     expected isString ifTrue: [
       ok := (value at: 'compatible') == false and: [(value at: 'conflicts') includes: expected].
       ok := ok and: [(value at: 'merged') isEmpty and: [(value at: 'splices') isEmpty and: [(value at: 'copyAfter') isNil]]]
     ] ifFalse: [
       ok := (value at: 'compatible') == true and: [(sameOrder value: (value at: 'merged') value: expected) and: [
         sameOrder value: (value at: 'copyAfter') value: expected]]
     ].
     ok ifFalse: [component error: ('Native collection merge case failed: ', name)].
     text := '{"name":"', name, '","passed":true,"splices":', (value at: 'splices') size printString, '}'.
     cases add: text
   ].
   sameOrder := [:left :right | left size = right size and: [
     ((1 to: left size) anySatisfy: [:i | (left at: i) ~~ (right at: i)]) not]].
   run value: 'restore_preserve_prefix' value: (Array with: (Array with: a with: x with: b)
     with: (Array with: a with: b) with: (Array with: extra with: a with: b)) value: (Array with: extra with: a with: x with: b).
   run value: 'restore_preserve_append' value: (Array with: (Array with: a with: x with: b)
     with: (Array with: a with: b) with: (Array with: a with: b with: extra)) value: (Array with: a with: x with: b with: extra).
   run value: 'ambiguous_gap' value: (Array with: (Array with: a with: x with: b)
     with: (Array with: a with: b) with: (Array with: a with: extra with: b)) value: 'RESTORE_GAP_AMBIGUOUS'.
   run value: 'undo_create_preserve_prefix' value: (Array with: (Array with: a with: b)
     with: (Array with: a with: x with: b) with: (Array with: extra with: a with: x with: b)) value: (Array with: extra with: a with: b).
   run value: 'preserve_independent_delete' value: (Array with: (Array with: a with: x with: b)
     with: (Array with: a with: b) with: (Array with: b)) value: (Array with: x with: b).
   run value: 'empty_parent_restore' value: (Array with: (Array with: x) with: #() with: #()) value: (Array with: x).
   run value: 'empty_parent_ambiguous' value: (Array with: (Array with: x) with: #() with: (Array with: extra)) value: 'RESTORE_GAP_AMBIGUOUS'.
   run value: 'identity_collision' value: (Array with: (Array with: a with: x with: b)
     with: (Array with: a with: b) with: (Array with: a with: x with: b)) value: 'RESTORE_MEMBER_ALREADY_PRESENT'.
   run value: 'created_member_missing' value: (Array with: (Array with: a with: b)
     with: (Array with: a with: x with: b) with: (Array with: a with: b)) value: 'REMOVE_MEMBER_MISSING'.
   run value: 'current_reordered' value: (Array with: (Array with: a with: x with: b)
     with: (Array with: a with: b) with: (Array with: b with: a)) value: 'CURRENT_ORDER_CONFLICT'.
   run value: 'edit_reordered' value: (Array with: (Array with: a with: b)
     with: (Array with: b with: a) with: (Array with: b with: a)) value: 'EDIT_REORDER_UNSUPPORTED'.
   result := mergeReader value: component value: (Array with: (Array with: a with: a) with: #() with: #()).
   (result isString and: [result startsWith: 'BDE_COLLECTION_MERGE_ERROR: Duplicate exact native member'])
     ifFalse: [component error: 'Duplicate exact native member was accepted'].
   cases add: '{"name":"duplicate_member","passed":true,"splices":0}'.
   roots := checkpoint at: 'scopeParents'. wrongParents := roots copy.
   roots keys do: [:name | wrongParents at: name put: nil].
   parentRefused := ((checkpoint at: 'verifyScopeParents') value: wrongParents) not.
   currentMatches := ((checkpoint at: 'verifyCurrent') value) and: [parentRefused].
   currentMatches ifFalse: [component error: 'Native parent binding changed or negative accepted'].
   keyedPlan := planReader value: component value: (Array with: checkpoint with: checkpoint with: checkpoint) value: #().
   (keyedPlan isKindOf: Dictionary) ifFalse: [component error: keyedPlan].
   ((keyedPlan at: 'compatible') and: [(keyedPlan at: 'plans') isEmpty and: [
     (keyedPlan at: 'verifiedCollections') = collections size and: [(keyedPlan at: 'verifyBeforeApply') value]]])
     ifFalse: [component error: 'Complete bound current-checkpoint no-op plan differs'].
   planNegatives := 0.
   rejectPlan := [:saved :names |
     result := planReader value: component value: saved value: names.
     (result isString and: [result startsWith: 'BDE_KEYED_PLAN_ERROR:'])
       ifFalse: [component error: 'Invalid bound native collection plan accepted'].
     planNegatives := planNegatives + 1].
   candidate := checkpoint copy. candidate removeKey: 'keyedProfile'.
   rejectPlan value: (Array with: candidate with: checkpoint with: checkpoint) value: #().
   candidate := checkpoint copy. candidate at: 'owner' put: nil.
   rejectPlan value: (Array with: checkpoint with: candidate with: checkpoint) value: #().
   candidate := checkpoint copy. candidate at: 'generation' put: ((checkpoint at: 'generation') + 1).
   rejectPlan value: (Array with: checkpoint with: checkpoint with: candidate) value: #().
   candidate := checkpoint copy. candidate at: 'nativeByKey' put: Dictionary new.
   rejectPlan value: (Array with: checkpoint with: candidate with: checkpoint) value: #().
   rejectPlan value: (Array with: checkpoint with: checkpoint with: checkpoint) value: #('unknown collection').
   parentName := (checkpoint at: 'collectionBindings') keys asArray first.
   rejectPlan value: (Array with: checkpoint with: checkpoint with: checkpoint) value: (Array with: parentName with: parentName).
   keyedSummary := '{"profile":"native_keyed_collection_plan_v1","verified_collections":', (keyedPlan at: 'verifiedCollections') printString,
     ',"splices":0,"negative_count":', planNegatives printString,
     ',"current_native_members_preserved":true,"actual_changed_checkpoint_tested":false,"write_authorized":false,"model_setters_called":0}'.
   checks := WriteStream on: String new. checks nextPutAll: '['.
   cases doWithIndex: [:entry :index | index > 1 ifTrue: [checks nextPut: $,]. checks nextPutAll: entry]. checks nextPut: $].
   '{"profile":"native_collection_copy_merge_v1","case_count":', cases size printString,
     ',"scope_parent_count":', roots size printString, ',"collection_count":', collections size printString,
     ',"member_count":', (checkpoint at: 'memberCount') printString,
     ',"current_registry_matches":true,"wrong_scope_parent_refused":true,"cases":', checks contents,
     ',"keyed_plan":', keyedSummary,
     ',"model_setters_called":0,"native_merge_executor_available":false,"write_authorized":false}'
 ]
 ] ifFail: [:error | 'BDE_COLLECTION_MERGE_PROBE_ERROR: ', error messageText]
]]
