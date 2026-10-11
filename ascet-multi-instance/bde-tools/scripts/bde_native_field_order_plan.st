[:component :orders |
 component handleExceptionsIn: [
 | before after current original applied now shared restore remove anchors conflicts mapFor sameOrder desiredAnchors expectedAnchors currentAnchors restoredGaps independentGaps gap base groups targetGap previous next merged copied splices result prefix suffix boundary firstKnown lastKnown |
 ((orders isKindOf: Array) and: [orders size = 3])
   ifFalse: [component error: 'Three retained exact field orders required'].
 before := orders first. after := orders at: 2. current := orders last.
 mapFor := [:order | | map |
   ((order isKindOf: Array) or: [order isKindOf: OrderedCollection])
     ifFalse: [component error: 'Bounded native field order required'].
   order size > 100000 ifTrue: [component error: 'Native field order bound exceeded'].
   map := IdentityDictionary new.
   order do: [:member | (map includesKey: member)
     ifTrue: [component error: 'Ambiguous duplicate exact field order member'].
     map at: member put: true]. map
 ].
 sameOrder := [:left :right | left size = right size and: [
   ((1 to: left size) anySatisfy: [:index | (left at: index) ~~ (right at: index)]) not]].
 original := mapFor value: before. applied := mapFor value: after. now := mapFor value: current.
 shared := IdentityDictionary new. restore := IdentityDictionary new. remove := IdentityDictionary new.
 anchors := IdentityDictionary new. conflicts := OrderedCollection new.
 before do: [:member | (applied includesKey: member)
   ifTrue: [shared at: member put: true. (now includesKey: member) ifTrue: [anchors at: member put: true]]
   ifFalse: [restore at: member put: true]].
 after do: [:member | (original includesKey: member) ifFalse: [remove at: member put: true]].
 (restore keys anySatisfy: [:member | now includesKey: member])
   ifTrue: [conflicts add: 'RESTORE_MEMBER_ALREADY_PRESENT'].
 (remove keys anySatisfy: [:member | (now includesKey: member) not])
   ifTrue: [conflicts add: 'REMOVE_MEMBER_MISSING'].
 desiredAnchors := before select: [:member | anchors includesKey: member].
 expectedAnchors := after select: [:member | anchors includesKey: member].
 currentAnchors := current select: [:member | anchors includesKey: member].
 (sameOrder value: expectedAnchors value: currentAnchors)
   ifFalse: [conflicts add: 'CURRENT_ORDER_CONFLICT'].
 restoredGaps := Dictionary new. gap := 0.
 before do: [:member | (anchors includesKey: member) ifTrue: [gap := gap + 1] ifFalse: [
   (restore includesKey: member) ifTrue: [(restoredGaps at: gap ifAbsentPut: [OrderedCollection new]) add: member]]].
 base := current select: [:member | (remove includesKey: member) not].
 prefix := OrderedCollection new. suffix := OrderedCollection new. boundary := IdentitySet new.
 firstKnown := 0. lastKnown := 0.
 current doWithIndex: [:member :index | ((original includesKey: member) or: [applied includesKey: member])
   ifTrue: [firstKnown = 0 ifTrue: [firstKnown := index]. lastKnown := index]].
 firstKnown = 0 ifTrue: [current isEmpty ifFalse: [conflicts add: 'UNANCHORED_CURRENT_GAP']]
   ifFalse: [1 to: firstKnown - 1 do: [:index | prefix add: (current at: index)].
     lastKnown + 1 to: current size do: [:index | suffix add: (current at: index)]].
 boundary addAll: prefix; addAll: suffix.
 groups := Dictionary new. gap := 0.
 base do: [:member | (anchors includesKey: member) ifTrue: [gap := gap + 1] ifFalse: [
   ((original includesKey: member) or: [(applied includesKey: member) or: [boundary includes: member]]) ifFalse: [
     (groups at: gap ifAbsentPut: [OrderedCollection new]) add: member]]].
 independentGaps := Dictionary new.
 groups keysAndValuesDo: [:index :members |
   targetGap := nil.
   index = 0 ifTrue: [targetGap := 0] ifFalse: [index = expectedAnchors size
     ifTrue: [targetGap := desiredAnchors size] ifFalse: [
       previous := expectedAnchors at: index. next := expectedAnchors at: index + 1.
       1 to: desiredAnchors size - 1 do: [:position |
         ((desiredAnchors at: position) == previous and: [(desiredAnchors at: position + 1) == next])
           ifTrue: [targetGap := position]]]].
   targetGap isNil ifTrue: [conflicts add: 'CURRENT_GAP_ORDER_CONFLICT'] ifFalse: [
     (restoredGaps includesKey: targetGap) ifTrue: [conflicts add: 'RESTORE_GAP_AMBIGUOUS'].
     (independentGaps at: targetGap ifAbsentPut: [OrderedCollection new]) addAll: members]
 ].
 merged := OrderedCollection new. splices := OrderedCollection new. copied := nil.
 conflicts isEmpty ifTrue: [
   merged addAll: prefix; addAll: (restoredGaps at: 0 ifAbsent: [#()]); addAll: (independentGaps at: 0 ifAbsent: [#()]).
   desiredAnchors doWithIndex: [:member :index | merged add: member;
     addAll: (restoredGaps at: index ifAbsent: [#()]); addAll: (independentGaps at: index ifAbsent: [#()])].
   merged addAll: suffix.
   copied := current asArray asOrderedCollection.
   copied size to: 1 by: -1 do: [:index | | member | member := copied at: index.
     (merged anySatisfy: [:wanted | wanted == member]) ifFalse: [
       splices add: (Array with: 'remove' with: index with: member). copied removeAtIndex: index]].
   merged doWithIndex: [:member :index | | position |
     (index <= copied size and: [(copied at: index) == member]) ifFalse: [
       position := 0. 1 to: copied size do: [:i | (copied at: i) == member ifTrue: [position := i]].
       position > 0 ifTrue: [splices add: (Array with: 'remove' with: position with: member).
         copied removeAtIndex: position].
       splices add: (Array with: 'insert' with: index with: member). copied add: member beforeIndex: index]
   ].
   (sameOrder value: copied value: merged) ifFalse: [component error: 'Copied exact field order splice result differs']
 ].
 result := Dictionary new at: 'profile' put: 'native_field_order_inverse_v1';
   at: 'compatible' put: conflicts isEmpty; at: 'conflicts' put: conflicts asArray;
   at: 'merged' put: merged asArray; at: 'splices' put: splices asArray; at: 'copyAfter' put: copied;
   at: 'write_authorized' put: false; at: 'model_setters_called' put: 0; yourself.
 result
 ] ifFail: [:error | 'BDE_FIELD_ORDER_ERROR: ', error printString, ' ', error messageText]
]
