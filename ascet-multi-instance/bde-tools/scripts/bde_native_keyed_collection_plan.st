[:mergeReader | [:component :checkpoints :selectedKeys |
 component handleExceptionsIn: [
 | original applied current beforeBindings afterBindings nowBindings beforeNative afterNative nowNative names unique tokens tokenNames ordersFor sameOrder conflicts plans verified result guard |
 ((checkpoints isKindOf: Array) and: [checkpoints size = 3])
   ifFalse: [component error: 'Three retained native checkpoints required'].
 original := checkpoints first. applied := checkpoints at: 2. current := checkpoints last.
 checkpoints do: [:saved |
   ((saved isKindOf: Dictionary) and: [(saved at: 'profile' ifAbsent: ['']) = 'native_collections_v1' and: [
     (saved at: 'keyedProfile' ifAbsent: ['']) = 'native_keyed_collections_v1']])
     ifFalse: [component error: 'Retained keyed native checkpoint required'].
   ((saved at: 'verifyKeyed') value: saved) ifFalse: [component error: 'Keyed native checkpoint changed'].
   (saved at: 'owner') == component item ifFalse: [component error: 'Native checkpoint owner changed'].
   (saved at: 'specification') == (current at: 'specification')
     ifFalse: [component error: 'Native checkpoint specification changed'].
   (saved at: 'generation') = (current at: 'generation')
     ifFalse: [component error: 'Native checkpoint generation changed; audited lineage required']
 ].
 ((original at: 'verify') value) ifFalse: [component error: 'Retained original native contents changed'].
 ((current at: 'verifyCurrent') value) ifFalse: [component error: 'Current native checkpoint changed'].
 beforeBindings := original at: 'collectionBindings'. afterBindings := applied at: 'collectionBindings'.
 nowBindings := current at: 'collectionBindings'. beforeNative := original at: 'nativeByKey'.
 afterNative := applied at: 'nativeByKey'. nowNative := current at: 'nativeByKey'.
 ((selectedKeys isKindOf: Array) or: [selectedKeys isKindOf: OrderedCollection])
   ifFalse: [component error: 'Exact bounded collection selection required'].
 selectedKeys size > 16384 ifTrue: [component error: 'Native collection selection bound exceeded'].
 unique := Set new.
 selectedKeys do: [:name |
   (name isString and: [(unique includes: name) not])
     ifFalse: [component error: 'Duplicate or invalid native collection selection'].
   ((beforeBindings includesKey: name) or: [afterBindings includesKey: name])
     ifFalse: [component error: 'Selected native collection unavailable'].
   unique add: name].
 selectedKeys isEmpty ifTrue: [unique addAll: beforeBindings keys; addAll: afterBindings keys].
 unique size > 16384 ifTrue: [component error: 'Native collection plan bound exceeded'].
 names := unique asSortedCollection. conflicts := OrderedCollection new. plans := OrderedCollection new. verified := 0.
 tokens := Dictionary new. tokenNames := IdentityDictionary new.
 ordersFor := [:saved :entry | (entry at: 'order') collect: [:member | | name token |
   name := (saved at: 'memberKeys') at: member ifAbsent: [component error: 'Native member key unavailable'].
   token := tokens at: name ifAbsentPut: [Object new]. tokenNames at: token put: name. token]].
 sameOrder := [:left :right | left size = right size and: [
   ((1 to: left size) anySatisfy: [:i | (left at: i) ~~ (right at: i)]) not]].
 "Tokens unify only the exact saved keys whose real references are checked below."
 beforeNative keys do: [:name | (afterNative includesKey: name) ifTrue: [
   (beforeNative at: name) == (afterNative at: name) ifFalse: [
     conflicts add: (Array with: 'DETACHED_MEMBER_LINEAGE_REQUIRED' with: name)]]].
 afterNative keys do: [:name | (nowNative includesKey: name) ifTrue: [
   (afterNative at: name) == (nowNative at: name) ifFalse: [
     conflicts add: (Array with: 'CURRENT_MEMBER_IDENTITY_CHANGED' with: name)]]].
 names do: [:name | | beforeEntry afterEntry nowEntry beforeSlot afterSlot nowSlot merged splices orderPlan actualOrder |
   beforeEntry := beforeBindings at: name ifAbsent: [nil]. afterEntry := afterBindings at: name ifAbsent: [nil].
   nowEntry := nowBindings at: name ifAbsent: [nil].
   (beforeEntry isNil or: [afterEntry isNil]) ifTrue: [
     conflicts add: (Array with: 'SUBTREE_PARENT_LINEAGE_REQUIRED' with: name)
   ] ifFalse: [nowEntry isNil ifTrue: [
     conflicts add: (Array with: 'CURRENT_PARENT_MISSING' with: name)
   ] ifFalse: [
     beforeSlot := beforeEntry at: 'slot'. afterSlot := afterEntry at: 'slot'. nowSlot := nowEntry at: 'slot'.
     ((#('scope' 'role' 'ownerKey') anySatisfy: [:field |
       (beforeSlot at: field) ~= (afterSlot at: field) or: [(afterSlot at: field) ~= (nowSlot at: field)]]) or: [
       (afterEntry at: 'manager') ~~ (nowEntry at: 'manager') or: [
       (afterEntry at: 'collection') ~~ (nowEntry at: 'collection') or: [
       (afterSlot at: 'owner') ~~ (nowSlot at: 'owner')]]]) ifTrue: [
       conflicts add: (Array with: 'CURRENT_PARENT_IDENTITY_CHANGED' with: name)
     ] ifFalse: [
       orderPlan := mergeReader value: component value: (Array
         with: (ordersFor value: original value: beforeEntry)
         with: (ordersFor value: applied value: afterEntry)
         with: (ordersFor value: current value: nowEntry)).
       (orderPlan isKindOf: Dictionary) ifFalse: [component error: orderPlan].
       (orderPlan at: 'compatible') ifFalse: [
         (orderPlan at: 'conflicts') do: [:reason | conflicts add: (Array with: reason with: name)]
       ] ifTrue: [
         verified := verified + 1. splices := OrderedCollection new.
         (orderPlan at: 'splices') do: [:step | | memberKey native |
           memberKey := tokenNames at: step last.
           native := step first = 'remove' ifTrue: [nowNative at: memberKey] ifFalse: [beforeNative at: memberKey].
           splices add: (Array with: step first with: (step at: 2) with: native)].
         merged := (orderPlan at: 'merged') collect: [:token | | memberKey |
           memberKey := tokenNames at: token.
           nowNative at: memberKey ifAbsent: [beforeNative at: memberKey]].
         actualOrder := (nowEntry at: 'order') asArray asOrderedCollection.
         "Replay the bound steps only on a private collection; live managers and links stay untouched."
         splices do: [:step | step first = 'remove' ifTrue: [
           (actualOrder at: (step at: 2)) == step last ifFalse: [component error: 'Bound removal identity changed'].
           actualOrder removeAtIndex: (step at: 2)
         ] ifFalse: [actualOrder add: step last beforeIndex: (step at: 2)]].
         (sameOrder value: actualOrder value: merged) ifFalse: [component error: 'Bound private replay differs'].
         splices isEmpty ifFalse: [plans add: (Dictionary new
           at: 'bindingKey' put: name; at: 'slot' put: nowSlot copy;
           at: 'manager' put: (nowEntry at: 'manager'); at: 'selector' put: (nowEntry at: 'selector');
           at: 'collection' put: (nowEntry at: 'collection'); at: 'expectedOrder' put: (nowEntry at: 'order') copy;
           at: 'expectedLinks' put: (nowEntry at: 'links') copy;
           at: 'splices' put: splices asArray; at: 'mergedOrder' put: merged; yourself)]
       ]
     ]
   ]]
 ].
 conflicts isEmpty ifFalse: [plans := OrderedCollection new].
 guard := [conflicts isEmpty and: [((original at: 'verify') value) and: [
   ((applied at: 'verifyKeyed') value: applied) and: [(current at: 'verifyCurrent') value]]]].
 result := Dictionary new at: 'profile' put: 'native_keyed_collection_plan_v1';
   at: 'compatible' put: conflicts isEmpty; at: 'conflicts' put: conflicts asArray;
   at: 'verifiedCollections' put: verified; at: 'plans' put: plans asArray;
   at: 'verifyBeforeApply' put: guard;
   at: 'write_authorized' put: false; at: 'native_merge_executor_available' put: false;
   at: 'model_setters_called' put: 0; yourself.
 result
 ] ifFail: [:error | 'BDE_KEYED_PLAN_ERROR: ', error messageText]
]]
