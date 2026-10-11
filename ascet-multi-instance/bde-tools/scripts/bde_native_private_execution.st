[:component :clone :plan |
 component handleExceptionsIn: [
 | memo owned ownedObjects extras sameOrder sameContents copyCollection capture diff matches restoredMatches current latest steps append apply restore guarded verifyRecover execute executeNext verifyDesired recover recoverNext recoveryEntries status state executed recovered stableLineage result physical cellValue cellSame physicalOthers finishPhysical beginPhysical nextPhysical reconcilePhysical disturbPhysical resetPhysical disturbance |
 ((plan isKindOf: Dictionary) and: [(plan at: 'profile') = 'native_private_graph_inverse_plan_v1' and: [
   (plan at: 'write_authorized') == false and: [(plan at: 'model_setters_called') = 0]]])
   ifFalse: [component error: 'Exact private plan required for execution'].
 ((plan at: 'compatible') and: [(plan at: 'verifyBeforeApply') value])
   ifFalse: [component error: 'Private execution preparation conflict'].
 memo := clone at: 'memo'. owned := IdentitySet new. owned addAll: memo values.
 extras := clone at: 'executionOwnedExtras' ifAbsent: [#()].
 (extras anySatisfy: [:object | (owned includes: object) or: [
   (memo includesKey: object) or: [(#('Set' 'Point') includes: object class name asString) not]]])
   ifTrue: [component error: 'Unaudited private execution allocation'].
 owned addAll: extras. ownedObjects := owned asArray.
 stableLineage := plan at: 'verifyStableLineage'.
 sameOrder := [:left :right | left size = right size and: [
   ((1 to: left size) anySatisfy: [:index | (left at: index) ~~ (right at: index)]) not]].
 sameContents := [:object :saved | object size = saved size and: [
   (object isKindOf: Dictionary) ifTrue: [(saved keys anySatisfy: [:key |
     ((object includesKey: key) and: [(object at: key) == (saved at: key)]) not]) not]
   ifFalse: [((object isKindOf: Set) or: [object isKindOf: IdentitySet])
     ifTrue: [(saved anySatisfy: [:entry | (object anySatisfy: [:value | value == entry]) not]) not]
     ifFalse: [sameOrder value: object value: saved]]]].
 copyCollection := [:object | | copied |
   (object isKindOf: Dictionary) ifTrue: [
     copied := object class new.
     object keysAndValuesDo: [:key :value | copied at: key put: value]. copied
   ] ifFalse: [object copy]
 ].
 capture := [| saved |
   saved := IdentityDictionary new.
   ownedObjects do: [:object | | kind value |
     (#('Array' 'OrderedCollection' 'Dictionary' 'IdentityDictionary' 'Set' 'IdentitySet') includes: object class name asString)
       ifTrue: [kind := 'collection'. value := copyCollection value: object] ifFalse: [
       (object isString or: [object isKindOf: ByteArray]) ifTrue: [kind := 'value'. value := object copy]
         ifFalse: [kind := 'fields'. value := ((1 to: object class instSize) collect: [:index | object instVarAt: index]) asArray]].
     saved at: object put: (Dictionary new at: 'kind' put: kind; at: 'value' put: value; yourself)
   ]. saved
 ].
 diff := [:before :after | | edits |
   before size = after size ifFalse: [component error: 'Private CURRENT object roster changed'].
   edits := OrderedCollection new.
   before keysAndValuesDo: [:object :old | | now kind left right |
     now := after at: object. kind := old at: 'kind'.
     kind = (now at: 'kind') ifFalse: [component error: 'Private CURRENT object kind changed'].
     left := old at: 'value'. right := now at: 'value'.
     kind = 'fields' ifTrue: [1 to: left size do: [:index |
       (left at: index) ~~ (right at: index) ifTrue: [edits add: (Dictionary new at: 'object' put: object;
         at: 'kind' put: kind; at: 'index' put: index; at: 'before' put: (left at: index); at: 'after' put: (right at: index); yourself)]]
     ] ifFalse: [kind = 'value' ifTrue: [left = right ifFalse: [component error: 'Unsupported private CURRENT indexed value mutation']]
       ifFalse: [(sameContents value: left value: right) ifFalse: [edits add: (Dictionary new at: 'object' put: object;
         at: 'kind' put: kind; at: 'before' put: left; at: 'after' put: right; yourself)]]]
   ]. edits
 ].
 matches := [:edits | (edits anySatisfy: [:entry |
   (entry at: 'kind') = 'fields'
     ifTrue: [((entry at: 'object') instVarAt: (entry at: 'index')) ~~ (entry at: 'after')]
     ifFalse: [(sameContents value: (entry at: 'object') value: (entry at: 'after')) not]]) not].
 current := capture value. latest := current. steps := OrderedCollection new.
 append := [:kind :object :payload |
   (owned includes: object) ifFalse: [component error: 'Private primitive target is not memo owned'].
   steps size >= 100000 ifTrue: [component error: 'Private primitive bound exceeded'].
   steps add: (Array with: kind with: object with: payload first with: payload last)
 ].
 (plan at: 'private_entries') do: [:entry | | object value kind |
   object := entry at: 'object'. value := entry at: 'before'. kind := entry at: 'kind'.
   kind = 'fields' ifTrue: [append value: 'field' value: object value: (Array with: (entry at: 'index') with: value)] ifFalse: [
   kind = 'ordered' ifTrue: [(entry at: 'splices') do: [:step |
     append value: step first value: object value: (Array with: (step at: 2) with: step last)
   ]] ifFalse: [
   (object isKindOf: Dictionary) ifTrue: [
     object keys do: [:key | (value includesKey: key) ifFalse: [append value: 'dict_remove' value: object value: (Array with: key with: nil)]].
     value keysAndValuesDo: [:key :member |
       ((object includesKey: key) and: [(object at: key) == member])
         ifFalse: [append value: 'dict_put' value: object value: (Array with: key with: member)]]
   ] ifFalse: [object class = Array ifTrue: [
     1 to: value size do: [:index | (object at: index) ~~ (value at: index)
       ifTrue: [append value: 'array_put' value: object value: (Array with: index with: (value at: index))]]
   ] ifFalse: [
     ((object isKindOf: Set) or: [object isKindOf: IdentitySet]) ifFalse: [component error: 'Unsupported private primitive collection'].
     object do: [:member | (value anySatisfy: [:original | original == member])
       ifFalse: [append value: 'set_remove' value: object value: (Array with: nil with: member)]].
     value do: [:member | (object anySatisfy: [:existing | existing == member])
       ifFalse: [append value: 'set_add' value: object value: (Array with: nil with: member)]]
   ]]]]
 ].
 apply := [:step | | kind object index value |
   kind := step first. object := step at: 2. index := step at: 3. value := step last.
   kind = 'field' ifTrue: [object instVarAt: index put: value] ifFalse: [
   (#('array_put' 'dict_put') includes: kind) ifTrue: [object at: index put: value] ifFalse: [
   kind = 'dict_remove' ifTrue: [object removeKey: index] ifFalse: [
   kind = 'remove' ifTrue: [(object at: index) == value ifFalse: [component error: 'Private primitive removal changed'].
     object removeAtIndex: index] ifFalse: [
   kind = 'insert' ifTrue: [object add: value beforeIndex: index] ifFalse: [
   kind = 'set_remove' ifTrue: [object remove: value] ifFalse: [
   kind = 'set_add' ifTrue: [object add: value] ifFalse: [component error: 'Unknown private primitive']]]]]]]
 ].
 restore := [:entry | | object value |
   object := entry at: 'object'. value := entry at: 'before'.
   (entry at: 'kind') = 'fields' ifTrue: [object instVarAt: (entry at: 'index') put: value] ifFalse: [
     (object isKindOf: Dictionary) ifTrue: [object keys asArray do: [:key | object removeKey: key].
       value keysAndValuesDo: [:key :member | object at: key put: member]] ifFalse: [
     object class = Array ifTrue: [1 to: value size do: [:index | object at: index put: (value at: index)]]
       ifFalse: [object removeAll: object asArray. object addAll: value]]]
 ].
 state := 'prepared'. executed := 0. recovered := 0. guarded := OrderedCollection new. recoveryEntries := nil.
 physical := nil. disturbance := nil.
 restoredMatches := [:entries | (entries anySatisfy: [:entry |
   (entry at: 'kind') = 'fields'
     ifTrue: [((entry at: 'object') instVarAt: (entry at: 'index')) ~~ (entry at: 'before')]
     ifFalse: [(sameContents value: (entry at: 'object') value: (entry at: 'before')) not]]) not].
 verifyRecover := [(#('partial' 'applied' 'recovering') includes: state) and: [stableLineage value and: [
   state = 'recovering' ifTrue: [
     (restoredMatches value: (recoveryEntries copyFrom: 1 to: recovered)) and: [
       matches value: (recoveryEntries copyFrom: recovered + 1 to: recoveryEntries size)]]
     ifFalse: [matches value: guarded]]]].
 verifyDesired := [( (plan at: 'private_entries') anySatisfy: [:entry |
   (entry at: 'kind') = 'fields'
     ifTrue: [((entry at: 'object') instVarAt: (entry at: 'index')) ~~ (entry at: 'before')]
     ifFalse: [(sameContents value: (entry at: 'object') value: ((entry at: 'kind') = 'ordered'
       ifTrue: [entry at: 'desired'] ifFalse: [entry at: 'before'])) not]]) not].
 executeNext := [:expectedIndex |
   ((expectedIndex isInteger) and: [expectedIndex >= 1 and: [expectedIndex <= steps size]])
     ifFalse: [component error: 'Exact bounded private primitive index required'].
   (#('prepared' 'partial') includes: state) ifFalse: [component error: 'Private execution cannot replay'].
   expectedIndex = (executed + 1) ifFalse: [component error: 'Private primitive expectation changed'].
   executed >= steps size ifTrue: [component error: 'Private primitives already completed'].
   (stableLineage value and: [(diff value: latest value: capture value) isEmpty])
     ifFalse: [component error: 'Private CURRENT changed before primitive'].
   state = 'prepared' ifTrue: [(plan at: 'verifyBeforeApply') value
     ifFalse: [component error: 'Private CURRENT changed before execution']].
   state := 'primitive_started'. apply value: (steps at: executed + 1).
   executed := executed + 1. latest := capture value.
   guarded := diff value: current value: latest. state := 'partial'.
   executed = steps size ifTrue: [verifyDesired value
     ifFalse: [component error: 'Private primitive desired result differs']].
   executed
 ].
 execute := [:failAfter |
   ((failAfter isInteger) and: [failAfter >= 0 and: [failAfter <= steps size]])
     ifFalse: [component error: 'Exact bounded private fault index required'].
   state = 'prepared' ifFalse: [component error: 'Private execution cannot replay'].
   ((plan at: 'verifyBeforeApply') value and: [(diff value: current value: capture value) isEmpty])
     ifFalse: [component error: 'Private CURRENT changed before execution'].
   steps do: [:step |
     executeNext value: executed + 1.
     executed = failAfter ifTrue: [component error: 'Injected private primitive completion failure']
   ].
   state := 'applied'. executed
 ].
 recoverNext := [:expectedIndex |
   ((expectedIndex isInteger) and: [expectedIndex >= 1 and: [expectedIndex = (recovered + 1)]])
     ifFalse: [component error: 'Exact next private recovery index required'].
   verifyRecover value ifFalse: [component error: 'Private CURRENT recovery conflict'].
   recoveryEntries isNil ifTrue: [recoveryEntries := guarded reverse asArray].
   expectedIndex <= recoveryEntries size ifFalse: [component error: 'Private recovery index out of range'].
   state := 'recovery_started'. restore value: (recoveryEntries at: expectedIndex).
   recovered := recovered + 1. latest := capture value. state := 'recovering'.
   recovered = recoveryEntries size ifTrue: [
     (guarded anySatisfy: [:entry |
     (entry at: 'kind') = 'fields'
       ifTrue: [((entry at: 'object') instVarAt: (entry at: 'index')) ~~ (entry at: 'before')]
       ifFalse: [(sameContents value: (entry at: 'object') value: (entry at: 'before')) not]])
       ifTrue: [component error: 'Private CURRENT recovery result differs'].
     state := 'recovered'
   ]. recovered
 ].
 recover := [
   verifyRecover value ifFalse: [component error: 'Private CURRENT recovery conflict'].
   guarded isEmpty ifTrue: [state := 'recovered'] ifFalse: [
     [state ~= 'recovered'] whileTrue: [recoverNext value: recovered + 1]
   ]. recovered
 ].
 cellValue := [:entry | (entry at: 'kind') = 'fields'
   ifTrue: [(entry at: 'object') instVarAt: (entry at: 'index')]
   ifFalse: [copyCollection value: (entry at: 'object')]].
 cellSame := [:entry :left :right | (entry at: 'kind') = 'fields'
   ifTrue: [left == right] ifFalse: [sameContents value: left value: right]].
 physicalOthers := [physical notNil and: [((plan at: 'verifyPhysicalLineage') value: (physical at: 'entry')) and: [
   (restoredMatches value: (recoveryEntries copyFrom: 1 to: recovered)) and: [
   matches value: (recoveryEntries copyFrom: recovered + 2 to: recoveryEntries size)]]]].
 finishPhysical := [| entry |
   entry := physical at: 'entry'.
   stableLineage value ifFalse: [component error: 'Private completed physical lineage conflict'].
   (cellSame value: entry value: (cellValue value: entry) value: (entry at: 'before'))
     ifFalse: [component error: 'Private physical unit result differs'].
   recovered := recovered + 1. latest := capture value. state := 'recovering'.
   physical := nil.
   recovered = recoveryEntries size ifTrue: [
     (restoredMatches value: guarded) ifFalse: [component error: 'Private physical recovery result differs'].
     state := 'recovered'
   ]. recovered
 ].
 beginPhysical := [:expectedUnit | | entry object desired primitiveSteps add |
   (expectedUnit isInteger and: [expectedUnit = (recovered + 1)])
     ifFalse: [component error: 'Exact next private physical recovery unit required'].
   verifyRecover value ifFalse: [component error: 'Private CURRENT recovery conflict'].
   recoveryEntries isNil ifTrue: [recoveryEntries := guarded reverse asArray].
   expectedUnit <= recoveryEntries size ifFalse: [component error: 'Private physical unit out of range'].
   entry := recoveryEntries at: expectedUnit. object := entry at: 'object'. desired := entry at: 'before'.
   (owned includes: object) ifFalse: [component error: 'Private physical target is not owned'].
   primitiveSteps := OrderedCollection new.
   add := [:kind :index :value |
     primitiveSteps size >= 100000 ifTrue: [component error: 'Private physical step bound exceeded'].
     primitiveSteps add: (Array with: kind with: object with: index with: value)].
   (entry at: 'kind') = 'fields' ifTrue: [add value: 'field' value: (entry at: 'index') value: desired]
   ifFalse: [(object isKindOf: Dictionary) ifTrue: [
     object keys asArray do: [:key | add value: 'dict_remove' value: key value: nil].
     desired keysAndValuesDo: [:key :member | add value: 'dict_put' value: key value: member]
   ] ifFalse: [object class = Array ifTrue: [
     1 to: desired size do: [:index | (object at: index) ~~ (desired at: index)
       ifTrue: [add value: 'array_put' value: index value: (desired at: index)]]
   ] ifFalse: [object class = OrderedCollection ifTrue: [
     object size to: 1 by: -1 do: [:index | add value: 'remove' value: index value: (object at: index)].
     desired doWithIndex: [:member :index | add value: 'insert' value: index value: member]
   ] ifFalse: [((object class = Set) or: [object class = IdentitySet])
     ifFalse: [component error: 'Unsupported private physical collection'].
     object asArray do: [:member | add value: 'set_remove' value: nil value: member].
     desired do: [:member | add value: 'set_add' value: nil value: member]
   ]]]].
   primitiveSteps isEmpty ifTrue: [component error: 'Private physical unit has no changed steps'].
   physical := Dictionary new at: 'entry' put: entry; at: 'unit' put: expectedUnit;
     at: 'steps' put: primitiveSteps asArray; at: 'completed' put: 0; at: 'awaiting' put: 0;
     at: 'before' put: nil; at: 'after' put: nil; at: 'outcome' put: 'prepared'; yourself.
   state := 'physical_recovery_prepared'. primitiveSteps size
 ].
 nextPhysical := [:expectedIndex :fault | | entry step before predicted simulated |
   (#('none' 'before_write' 'after_write') includes: fault)
     ifFalse: [component error: 'Unknown fixed private physical fault'].
   (physical notNil and: [state = 'physical_recovery_prepared' and: [
     expectedIndex isInteger and: [expectedIndex = ((physical at: 'completed') + 1) and: [
     expectedIndex <= (physical at: 'steps') size]]]])
     ifFalse: [component error: 'Private physical expectation changed or unknown'].
   physicalOthers value ifFalse: [component error: 'Private physical dependency conflict'].
   entry := physical at: 'entry'. before := cellValue value: entry.
   (physical at: 'completed') = 0
     ifTrue: [(cellSame value: entry value: before value: (entry at: 'after'))
       ifFalse: [component error: 'Private physical CURRENT changed']]
     ifFalse: [(cellSame value: entry value: before value: (physical at: 'after'))
       ifFalse: [component error: 'Private physical CURRENT changed']].
   step := (physical at: 'steps') at: expectedIndex.
   (entry at: 'kind') = 'fields' ifTrue: [predicted := step last] ifFalse: [
     predicted := copyCollection value: before. simulated := step copy. simulated at: 2 put: predicted. apply value: simulated].
   (cellSame value: entry value: before value: predicted)
     ifTrue: [component error: 'Ambiguous unchanged private physical primitive'].
   physical at: 'before' put: before; at: 'after' put: predicted; at: 'awaiting' put: expectedIndex;
     at: 'outcome' put: 'unknown'. state := 'physical_recovery_started'.
   fault = 'before_write' ifTrue: [component error: 'Injected private physical failure before write'].
   apply value: step.
   fault = 'after_write' ifTrue: [component error: 'Injected private physical failure after write before observation'].
   (cellSame value: entry value: (cellValue value: entry) value: predicted)
     ifFalse: [component error: 'Private physical actual result differs'].
   physical at: 'completed' put: expectedIndex; at: 'awaiting' put: 0; at: 'outcome' put: 'applied'.
   latest := capture value. state := 'physical_recovery_prepared'.
   expectedIndex = (physical at: 'steps') size ifTrue: [finishPhysical value]. expectedIndex
 ].
 reconcilePhysical := [:expectedIndex | | entry actual outcome |
   (physical notNil and: [state = 'physical_recovery_started' and: [
     expectedIndex isInteger and: [expectedIndex = (physical at: 'awaiting')]]])
       ifFalse: [component error: 'Exact unresolved private physical expectation required'].
   physicalOthers value ifFalse: [component error: 'Private physical dependency conflict'].
   entry := physical at: 'entry'. actual := cellValue value: entry.
   outcome := (cellSame value: entry value: actual value: (physical at: 'after'))
     ifTrue: ['applied'] ifFalse: [(cellSame value: entry value: actual value: (physical at: 'before'))
       ifTrue: ['not_applied'] ifFalse: [component error: 'Private physical CURRENT conflict']].
   outcome = 'applied' ifTrue: [physical at: 'completed' put: expectedIndex].
   outcome = 'not_applied' ifTrue: [physical at: 'after' put: actual].
   physical at: 'awaiting' put: 0; at: 'outcome' put: outcome.
   latest := capture value. state := 'physical_recovery_prepared'.
   (physical at: 'completed') = (physical at: 'steps') size ifTrue: [finishPhysical value]. outcome
 ].
 disturbPhysical := [| object member trial saved |
   (physical notNil and: [state = 'physical_recovery_started' and: [disturbance isNil]])
     ifFalse: [component error: 'Exact unresolved private physical conflict probe required'].
   object := (physical at: 'entry') at: 'object'.
   saved := copyCollection value: object. trial := copyCollection value: object.
   object class = OrderedCollection ifTrue: [
     member := ((physical at: 'entry') at: 'after') detect: [:candidate |
       trial := copyCollection value: object. trial add: candidate.
       (sameContents value: trial value: (physical at: 'before')) not and: [
         (sameContents value: trial value: (physical at: 'after')) not]]
       ifNone: [component error: 'No distinct retained physical conflict probe member']
   ] ifFalse: [(object isKindOf: Dictionary) ifTrue: [
     (trial includesKey: #BDE_PRIVATE_PHYSICAL_CONFLICT) ifTrue: [component error: 'Physical conflict marker already present'].
     trial at: #BDE_PRIVATE_PHYSICAL_CONFLICT put: nil
   ] ifFalse: [object class = Array ifTrue: [
     trial isEmpty ifTrue: [component error: 'Empty physical Array conflict target'].
     trial at: 1 put: #BDE_PRIVATE_PHYSICAL_CONFLICT
   ] ifFalse: [((object class = Set) or: [object class = IdentitySet])
     ifFalse: [component error: 'Unsupported physical conflict collection'].
     (trial includes: #BDE_PRIVATE_PHYSICAL_CONFLICT) ifTrue: [component error: 'Physical conflict marker already present'].
     trial add: #BDE_PRIVATE_PHYSICAL_CONFLICT
   ]]].
   ((sameContents value: trial value: (physical at: 'before')) or: [
      (sameContents value: trial value: (physical at: 'after'))])
     ifTrue: [component error: 'Physical conflict probe must be a distinct third image'].
   disturbance := Array with: object with: saved with: trial.
   restore value: (Dictionary new at: 'object' put: object; at: 'kind' put: 'collection'; at: 'before' put: trial; yourself).
   object size
 ].
 resetPhysical := [| object |
   disturbance isNil ifTrue: [component error: 'Physical conflict probe is absent'].
   object := disturbance first.
   (sameContents value: object value: disturbance last)
     ifFalse: [component error: 'Physical conflict reset changed'].
   restore value: (Dictionary new at: 'object' put: object; at: 'kind' put: 'collection'; at: 'before' put: (disturbance at: 2); yourself).
   disturbance := nil. object size
 ].
 status := [Dictionary new at: 'state' put: state; at: 'primitive_count' put: steps size;
   at: 'executed' put: executed; at: 'recovered' put: recovered;
   at: 'actual_field_changes' put: (guarded select: [:entry | (entry at: 'kind') = 'fields']) size;
   at: 'actual_collection_changes' put: (guarded select: [:entry | (entry at: 'kind') = 'collection']) size;
   at: 'current_checkpoint_objects' put: current size;
   at: 'current_checkpoint_fields' put: (current values inject: 0 into: [:sum :entry |
     sum + ((entry at: 'kind') = 'fields' ifTrue: [(entry at: 'value') size] ifFalse: [0])]);
   at: 'native_material_retained' put: true; at: 'durable_current_wal' put: false;
   at: 'actual_observation_complete' put: (#('prepared' 'partial' 'applied' 'recovering' 'recovered' 'physical_recovery_prepared') includes: state);
   at: 'desired_result_verified' put: (executed = steps size and: [(#('partial' 'applied') includes: state) and: [verifyDesired value]]);
   at: 'write_authorized' put: false; at: 'model_setters_called' put: 0; yourself].
 result := Dictionary new at: 'profile' put: 'native_private_execution_v1';
   at: 'executeWithFault' put: execute; at: 'recoverCurrent' put: recover;
   at: 'executeNext' put: executeNext;
   at: 'recoverNext' put: recoverNext;
   at: 'beginPhysicalRecovery' put: beginPhysical; at: 'nextPhysicalRecovery' put: nextPhysical;
   at: 'reconcilePhysicalRecovery' put: reconcilePhysical;
   at: 'physicalState' put: [physical]; at: 'disturbPhysical' put: disturbPhysical; at: 'resetPhysical' put: resetPhysical;
   at: 'verifyRecovery' put: verifyRecover; at: 'status' put: status;
   at: 'currentCheckpoint' put: current; at: 'primitiveSteps' put: steps;
   at: 'captureCheckpoint' put: capture; at: 'diffCheckpoints' put: diff;
   at: 'actualChanges' put: [guarded]; at: 'currentMatches' put: [(diff value: current value: capture value) isEmpty];
   at: 'write_authorized' put: false; at: 'model_setters_called' put: 0; yourself.
 result
 ] ifFail: [:error | 'BDE_PRIVATE_EXECUTION_ERROR: ', error messageText]
]
