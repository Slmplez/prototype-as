[:component :orders |
 component handleExceptionsIn: [
 | before after current original applied now shared restore remove anchors conflicts mapFor sameOrder originalShared afterShared originalAnchors currentAnchors base restoredGaps independentGaps gap merged splices copied result |
 ((orders isKindOf: Array) and: [orders size = 3]) ifFalse: [component error: 'Three exact native orders required'].
 before := orders first. after := orders at: 2. current := orders last.
 mapFor := [:order | | map |
   ((order isKindOf: Array) or: [order isKindOf: OrderedCollection])
     ifFalse: [component error: 'Bounded native member array required'].
   order size > 100000 ifTrue: [component error: 'Native member order bound exceeded'].
   map := IdentityDictionary new.
   order do: [:member |
     (map includesKey: member) ifTrue: [component error: 'Duplicate exact native member'].
     map at: member put: true]. map
 ].
 sameOrder := [:left :right | left size = right size and: [
   ((1 to: left size) anySatisfy: [:i | (left at: i) ~~ (right at: i)]) not]].
 original := mapFor value: before. applied := mapFor value: after. now := mapFor value: current.
 shared := IdentityDictionary new. restore := IdentityDictionary new. remove := IdentityDictionary new.
 anchors := IdentityDictionary new. conflicts := OrderedCollection new.
 before do: [:member | (applied includesKey: member)
   ifTrue: [shared at: member put: true. (now includesKey: member) ifTrue: [anchors at: member put: true]]
   ifFalse: [restore at: member put: true]].
 after do: [:member | (original includesKey: member) ifFalse: [remove at: member put: true]].
 originalShared := before select: [:member | shared includesKey: member].
 afterShared := after select: [:member | shared includesKey: member].
 (sameOrder value: originalShared value: afterShared) ifFalse: [conflicts add: 'EDIT_REORDER_UNSUPPORTED'].
 (restore keys anySatisfy: [:member | now includesKey: member])
   ifTrue: [conflicts add: 'RESTORE_MEMBER_ALREADY_PRESENT'].
 (remove keys anySatisfy: [:member | (now includesKey: member) not])
   ifTrue: [conflicts add: 'REMOVE_MEMBER_MISSING'].
 originalAnchors := before select: [:member | anchors includesKey: member].
 currentAnchors := current select: [:member | anchors includesKey: member].
 (sameOrder value: originalAnchors value: currentAnchors) ifFalse: [conflicts add: 'CURRENT_ORDER_CONFLICT'].
 base := current select: [:member | (remove includesKey: member) not].
 restoredGaps := Dictionary new. independentGaps := Set new. gap := 0.
 before do: [:member | (anchors includesKey: member) ifTrue: [gap := gap + 1] ifFalse: [
   (restore includesKey: member) ifTrue: [(restoredGaps at: gap ifAbsentPut: [OrderedCollection new]) add: member]]].
 gap := 0. base do: [:member | (anchors includesKey: member) ifTrue: [gap := gap + 1] ifFalse: [
   ((original includesKey: member) or: [applied includesKey: member]) ifFalse: [independentGaps add: gap]]].
 (restoredGaps keys anySatisfy: [:index | independentGaps includes: index])
   ifTrue: [conflicts add: 'RESTORE_GAP_AMBIGUOUS'].
 merged := OrderedCollection new. splices := OrderedCollection new. copied := nil.
 conflicts isEmpty ifTrue: [
   merged addAll: (restoredGaps at: 0 ifAbsent: [#()]). gap := 0.
   base do: [:member | merged add: member. (anchors includesKey: member) ifTrue: [
     gap := gap + 1. merged addAll: (restoredGaps at: gap ifAbsent: [#()])]].
   current size to: 1 by: -1 do: [:index | (remove includesKey: (current at: index)) ifTrue: [
     splices add: (Array with: 'remove' with: index with: (current at: index))]].
   merged doWithIndex: [:member :index | (restore includesKey: member) ifTrue: [
     splices add: (Array with: 'insert' with: index with: member)]].
   "Only a new local collection is mutated here, never manager collections or member links."
   copied := current asArray asOrderedCollection.
   splices do: [:step | | index member |
     index := step at: 2. member := step last.
     step first = 'remove' ifTrue: [
       (copied at: index) == member ifFalse: [component error: 'Native removal slot changed'].
       copied removeAtIndex: index
     ] ifFalse: [copied add: member beforeIndex: index]].
   (sameOrder value: copied value: merged) ifFalse: [component error: 'Native copied splice result differs']
 ].
 result := Dictionary new at: 'profile' put: 'native_collection_order_inverse_v1';
   at: 'compatible' put: conflicts isEmpty; at: 'conflicts' put: conflicts asArray;
   at: 'merged' put: merged asArray; at: 'splices' put: splices asArray; at: 'copyAfter' put: copied;
   at: 'write_authorized' put: false; at: 'model_setters_called' put: 0; yourself.
 result
 ] ifFail: [:error | 'BDE_COLLECTION_MERGE_ERROR: ', error messageText]
]
