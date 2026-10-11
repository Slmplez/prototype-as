[:mergeReader | [:component :record :parent |
 component handleExceptionsIn: [
 | before after current collection saved removed sameOrder merge restores positions verify detached result desired originalPositions originalRestores originalEntries drawingBefore drawingAfter drawingCurrent drawingMerge drawingDesired drawingConflicts witness candidates witnessMembers witnessProof witnessSourceEncoded translated bindings sourceIds targetIds desiredSet beforeSet currentSet witnessBindings witnessRoot witnessDiagram |
 (#('disconnect_data' 'delete_node') includes: (record at: 'operation'))
   ifFalse: [component error: 'Ordinary deletion order plan required'].
 before := record at: 'beforeOrder'. after := record at: 'afterOrder'.
 collection := record at: 'orderCollection' ifAbsent: [component error: 'Original parent collection binding unavailable'].
 parent == (record at: 'orderParent') ifFalse: [component error: 'Original parent identity changed'].
 parent children == collection ifFalse: [component error: 'Original parent collection identity changed'].
 collection class = OrderedCollection ifFalse: [component error: 'Ordered native parent collection required'].
 saved := (record at: 'operation') = 'disconnect_data'
   ifTrue: [Array with: (record at: 'retained')] ifFalse: [(record at: 'retainedSet') asArray].
 (saved isEmpty or: [saved size > 100000]) ifTrue: [component error: 'Bounded original deleted objects required'].
 sameOrder := [:left :right | left size = right size and: [
   ((1 to: left size) anySatisfy: [:i | (left at: i) ~~ (right at: i)]) not]].
 removed := IdentityDictionary new. detached := OrderedCollection new.
 saved do: [:entry | | object points |
   (entry size = 4 and: [(entry at: 2) == parent])
     ifFalse: [component error: 'Exact retained parent binding required'].
   object := entry first. points := entry last.
   (removed includesKey: object) ifTrue: [component error: 'Duplicate retained deletion identity'].
   ((entry at: 3) isInteger and: [(entry at: 3) > 0 and: [(entry at: 3) <= before size and: [
     (before at: (entry at: 3)) == object]]])
     ifFalse: [component error: 'Original deletion slot changed'].
   "Native removeGO keeps manager; absence from children defines removal."
   (object manager == parent and: [(collection anySatisfy: [:member | member == object]) not])
     ifFalse: [component error: 'Retained deleted object ownership or membership changed'].
   points isEmpty ifFalse: [
     (points size = 2 and: [sameOrder value: object connectionPoints value: points])
       ifFalse: [component error: 'Retained edge endpoint identity changed'].
     (points anySatisfy: [:point | point isNil or: [point connections includesKey: object]])
       ifTrue: [component error: 'Retained deleted edge remains registered at an endpoint']].
   removed at: object put: entry.
   detached add: (Array with: object with: object basicGraphObject with: object identifier with: points asArray copy)].
 (sameOrder value: (before reject: [:object | removed includesKey: object]) value: after)
   ifFalse: [component error: 'Retained deletion does not exactly explain parent order patch'].
 current := collection asArray copy.
 (current anySatisfy: [:object | object manager ~~ parent])
   ifTrue: [component error: 'Current parent member ownership changed'].
 merge := mergeReader value: component value: (Array with: before with: after with: current).
 ((merge isKindOf: Dictionary) and: [(merge at: 'profile' ifAbsent: ['']) = 'native_collection_order_inverse_v1' and: [
   (merge at: 'model_setters_called' ifAbsent: [-1]) = 0 and: [(merge at: 'write_authorized' ifAbsent: [true]) == false]]])
   ifFalse: [component error: 'Unexpected native order kernel result'].
 positions := IdentityDictionary new. restores := OrderedCollection new.
 (merge at: 'compatible') ifTrue: [
   (merge at: 'splices') do: [:step |
     (step first = 'insert' and: [removed includesKey: step last])
       ifFalse: [component error: 'Deletion inverse may only insert exact retained originals'].
     positions at: step last put: (step at: 2).
     restores add: (removed at: step last)].
   positions size = removed size ifFalse: [component error: 'Deletion inverse original roster differs']].
 desired := (merge at: 'merged') asArray copy.
 drawingBefore := record at: 'drawingBeforeOrder' ifAbsent: [component error: 'Original drawing checkpoint unavailable'].
 drawingAfter := record at: 'drawingAfterOrder' ifAbsent: [component error: 'Applied drawing checkpoint unavailable'].
 (sameOrder value: (drawingBefore reject: [:object | removed includesKey: object]) value: drawingAfter)
   ifFalse: [component error: 'Deletion does not explain drawing order patch'].
 drawingCurrent := parent sortedChildren asArray copy.
 drawingMerge := mergeReader value: component value: (Array with: drawingBefore with: drawingAfter with: drawingCurrent).
 (drawingMerge isKindOf: Dictionary) ifFalse: [component error: drawingMerge asString].
 drawingDesired := (drawingMerge at: 'merged') asArray copy.
 desiredSet := IdentityDictionary new. desired do: [:member | desiredSet at: member put: true].
 beforeSet := IdentityDictionary new. drawingBefore do: [:member | beforeSet at: member put: true].
 currentSet := IdentityDictionary new. drawingCurrent do: [:member | currentSet at: member put: true].
 "A verified prior inverse can explain restored originals in an otherwise ambiguous gap."
 ((merge at: 'compatible') and: [(drawingMerge at: 'conflicts') asArray = #('RESTORE_GAP_AMBIGUOUS')]) ifTrue: [
   candidates := OrderedCollection new.
   (record at: 'drawingCausalWitnesses' ifAbsent: [#()]) do: [:candidate | | members proposed valid memberSet |
     valid := (candidate at: 'owner') == component item.
     valid := valid and: [(candidate at: 'root') == (record at: 'orderRoot')].
     valid := valid and: [(candidate at: 'diagram') == (record at: 'diagram')].
     valid := valid and: [(candidate at: 'diagramName') = (record at: 'diagramName')].
     valid := valid and: [(candidate at: 'parent') == parent and: [(candidate at: 'collection') == collection]].
     valid := valid and: [(candidate at: 'generation') = (record at: 'orderGeneration')].
     valid := valid and: [((candidate at: 'root') at: 'generation') = (candidate at: 'generation')].
     valid := valid and: [((candidate at: 'root') at: 'diagram') == (candidate at: 'diagram')].
     members := candidate at: 'members'.
     memberSet := IdentityDictionary new. members do: [:member | memberSet at: member put: true].
     valid := valid and: [members size <= 100000 and: [memberSet size = members size]].
     valid := valid and: [(desired anySatisfy: [:member | (memberSet includesKey: member) not]) not].
     valid := valid and: [sameOrder value: (members select: [:member | beforeSet includesKey: member]) value: drawingBefore].
     valid := valid and: [sameOrder value: (members select: [:member | currentSet includesKey: member]) value: drawingCurrent].
     valid ifTrue: [
       proposed := (members select: [:member | desiredSet includesKey: member]) asArray.
       candidates add: (Array with: candidate with: proposed)
     ]
   ].
   candidates isEmpty ifFalse: [
     ((candidates anySatisfy: [:candidate | (sameOrder value: candidate last value: candidates first last) not]) not) ifTrue: [
       witness := candidates first first. witnessMembers := (witness at: 'members') asArray copy.
       drawingDesired := candidates first last.
       sourceIds := witness at: 'sourceIds'.
       translated := ((record at: 'drawingOrderReader') value: component value: record value: witnessMembers) value: false.
       targetIds := record at: 'orderIds'. bindings := OrderedCollection new.
       witnessRoot := witness at: 'root'. witnessDiagram := witness at: 'diagram'.
       witnessBindings := OrderedCollection new.
       witnessBindings add: (Array with: parent with: (sourceIds at: parent) with: (targetIds at: parent));
         add: (Array with: collection with: (sourceIds at: collection) with: (targetIds at: collection)).
       witnessMembers do: [:member | witnessBindings add: (Array with: member with: (sourceIds at: member) with: (targetIds at: member))].
       bindings add: (Array with: (sourceIds at: parent) with: (targetIds at: parent));
         add: (Array with: (sourceIds at: collection) with: (targetIds at: collection)).
       witnessMembers do: [:member | bindings add: (Array with: (sourceIds at: member) with: (targetIds at: member))].
       witnessProof := Dictionary new at: 'profile' put: 'native_drawing_causal_witness_v1';
         at: 'source_token' put: (witness at: 'sourceToken'); at: 'source_inverse_id' put: (witness at: 'inverseId');
         at: 'source_order' put: (witness at: 'sourceOrder') deepCopy; at: 'translated_order' put: (translated at: 'value') deepCopy;
         at: 'bindings' put: bindings asArray; at: 'generation' put: (witness at: 'generation');
         at: 'component_oid' put: component getOID; at: 'diagram' put: (record at: 'diagramName'); yourself.
       witnessSourceEncoded := (record at: 'encodeObservation') value: (witness at: 'sourceOrder').
       drawingMerge := drawingMerge copy. drawingMerge at: 'compatible' put: true; at: 'conflicts' put: #(); at: 'merged' put: drawingDesired
     ]
   ]
 ].
 drawingConflicts := (merge at: 'conflicts') asOrderedCollection.
 (drawingMerge at: 'conflicts') do: [:conflict | drawingConflicts add: 'DRAWING_', conflict].
 ((merge at: 'compatible') and: [drawingMerge at: 'compatible']) ifTrue: [
   (desired size = drawingDesired size and: [(drawingDesired anySatisfy: [:member |
     (desiredSet includesKey: member) not]) not])
     ifFalse: [component error: 'Merged drawing and physical membership differ']
 ].
 originalPositions := positions copy. originalRestores := restores asArray copy.
 originalEntries := restores collect: [:entry | entry asArray copy].
 verify := [| matches |
   matches := (merge at: 'compatible') and: [drawingMerge at: 'compatible'].
   matches := matches and: [(record at: 'orderParent') == parent].
   matches := matches and: [(record at: 'orderCollection') == collection and: [parent children == collection]].
   matches := matches and: [(sameOrder value: (result at: 'merged') value: desired) and: [
     sameOrder value: (result at: 'restores') value: originalRestores]].
   matches := matches and: [(sameOrder value: (result at: 'drawingMerged') value: drawingDesired) and: [
     sameOrder value: parent sortedChildren value: drawingCurrent]].
   witness notNil ifTrue: [
     matches := matches and: [(record at: 'drawingCausalWitnesses') anySatisfy: [:candidate | candidate == witness]].
     matches := matches and: [sameOrder value: (witness at: 'members') value: witnessMembers].
     matches := matches and: [(witness at: 'owner') == component item and: [(witnessRoot at: 'owner') == component item]].
     matches := matches and: [(witness at: 'root') == witnessRoot and: [(record at: 'orderRoot') == witnessRoot]].
     matches := matches and: [(witness at: 'diagram') == witnessDiagram and: [(record at: 'diagram') == witnessDiagram and: [
       (witnessRoot at: 'diagram') == witnessDiagram]]].
     matches := matches and: [(witness at: 'diagramName') = (witnessProof at: 'diagram') and: [
       (record at: 'diagramName') = (witnessProof at: 'diagram')]].
     matches := matches and: [(witness at: 'parent') == parent and: [(witness at: 'collection') == collection]].
     matches := matches and: [(witness at: 'generation') = (witnessProof at: 'generation') and: [
       (record at: 'orderGeneration') = (witnessProof at: 'generation') and: [
       (witnessRoot at: 'generation') = (witnessProof at: 'generation')]]].
     matches := matches and: [(witness at: 'sourceIds') == sourceIds and: [(record at: 'orderIds') == targetIds]].
     matches := matches and: [(witnessBindings anySatisfy: [:binding |
       (sourceIds at: binding first ifAbsent: [nil]) ~= (binding at: 2) or: [
       (targetIds at: binding first ifAbsent: [nil]) ~= (binding at: 3)]]) not].
     matches := matches and: [(witness at: 'sourceToken') = (witnessProof at: 'source_token') and: [
       (witness at: 'inverseId') = (witnessProof at: 'source_inverse_id')]].
     matches := matches and: [((record at: 'encodeObservation') value: (witness at: 'sourceOrder')) = witnessSourceEncoded]
   ].
   matches := matches and: [((1 to: originalRestores size) anySatisfy: [:i |
     (sameOrder value: (originalRestores at: i) value: (originalEntries at: i)) not]) not].
   matches := matches and: [(result at: 'positions') == positions and: [positions size = originalPositions size and: [
     (originalPositions keys anySatisfy: [:object |
       | position | position := positions at: object ifAbsent: [nil].
       (position isInteger and: [position = (originalPositions at: object)]) not]) not]]].
   matches := matches and: [(sameOrder value: collection value: current) and: [
     (collection anySatisfy: [:object | object manager ~~ parent]) not]].
   matches and: [(detached anySatisfy: [:entry | | object points |
     object := entry first. points := entry last.
     (object manager == parent and: [(collection anySatisfy: [:member | member == object]) not and: [
       object basicGraphObject == (entry at: 2) and: [
       object identifier = (entry at: 3) and: [points isEmpty or: [
         (sameOrder value: object connectionPoints value: points) and: [
           (points anySatisfy: [:point | point connections includesKey: object]) not]]]]]]) not]) not]
 ].
 result := Dictionary new at: 'profile' put: 'native_parent_order_inverse_v1';
   at: 'compatible' put: ((merge at: 'compatible') and: [drawingMerge at: 'compatible']); at: 'conflicts' put: drawingConflicts asArray;
   at: 'current' put: current; at: 'merged' put: (merge at: 'merged');
   at: 'drawingCurrent' put: drawingCurrent; at: 'drawingMerged' put: drawingDesired;
   at: 'drawingWitness' put: witnessProof;
   at: 'restores' put: restores asArray; at: 'positions' put: positions;
   at: 'verifyBeforeApply' put: verify;
   at: 'write_authorized' put: false; at: 'model_setters_called' put: 0; yourself.
 result
 ] ifFail: [:error | 'BDE_PARENT_ORDER_ERROR: ', error messageText]
]]
