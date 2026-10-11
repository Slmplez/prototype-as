[:mergeReader | [:component :clone :edits |
 component handleExceptionsIn: [
 | checkpoint owned memberKeys bindings sameOrder sameContents currentClone plans summaries conflicts mutationCount verify execute result parents dependencies depend dependencyCurrent dependencyMatches affected removedMembers endpointDependencies edgeDependencies endpointCurrent stableEndpoints physicalLineage |
 checkpoint := clone at: 'originalCheckpoint'.
 currentClone := [((clone at: 'verifyCorrespondence') value: clone) and: [(checkpoint at: 'verifyCurrent') value]].
 currentClone value ifFalse: [component error: 'Private inverse native lineage changed'].
 owned := IdentitySet new. owned addAll: (clone at: 'memo') values.
 memberKeys := IdentityDictionary new. (clone at: 'nativeByKey') keysAndValuesDo: [:key :member | memberKeys at: member put: key].
 bindings := IdentityDictionary new. parents := IdentityDictionary new.
 (checkpoint at: 'collectionBindings') keysAndValuesDo: [:key :entry | | manager collection |
   manager := (clone at: 'memo') at: (entry at: 'manager').
   collection := (clone at: 'memo') at: (entry at: 'collection').
   bindings at: collection put: (Dictionary new at: 'key' put: key; at: 'manager' put: manager;
     at: 'selector' put: (entry at: 'selector');
     at: 'owner' put: ((clone at: 'memo') at: ((entry at: 'slot') at: 'owner'));
     at: 'role' put: ((entry at: 'slot') at: 'role'); at: 'collection' put: collection; yourself)].
 (checkpoint at: 'collectionBindings') values do: [:entry |
   (entry at: 'order') do: [:member | | copied |
     copied := (clone at: 'memo') at: member.
     (parents includesKey: copied) ifTrue: [component error: 'Ambiguous private member parent binding'].
     parents at: copied put: (bindings at: ((clone at: 'memo') at: (entry at: 'collection')))
   ]
 ].
 sameOrder := [:left :right | left size = right size and: [
   ((1 to: left size) anySatisfy: [:index | (left at: index) ~~ (right at: index)]) not]].
 sameContents := [:left :right | left size = right size and: [
   (left isKindOf: Dictionary) ifTrue: [(right keys anySatisfy: [:key |
     ((left includesKey: key) and: [(left at: key) == (right at: key)]) not]) not] ifFalse: [
   ((left isKindOf: Set) or: [left isKindOf: IdentitySet])
     ifTrue: [(right anySatisfy: [:member | (left anySatisfy: [:entry | entry == member]) not]) not]
     ifFalse: [sameOrder value: left value: right]]]].
 ((edits isKindOf: OrderedCollection) and: [edits size <= 100000])
   ifFalse: [component error: 'Exact bounded private graphical patch required'].
 plans := OrderedCollection new. summaries := OrderedCollection new. conflicts := OrderedCollection new. mutationCount := 0.
 dependencies := Dictionary new.
 depend := [:binding | | owner parent |
   (dependencies includesKey: (binding at: 'key')) ifFalse: [
     dependencies size >= 16384 ifTrue: [component error: 'Private dependency bound exceeded'].
     dependencies at: (binding at: 'key') put: binding.
     owner := binding at: 'owner'.
     (parents includesKey: owner) ifTrue: [parent := parents at: owner. depend value: parent]
       ifFalse: [owner == (clone at: 'root') ifFalse: [component error: 'Private dependency does not reach exact root']]
   ]
 ].
 dependencyMatches := [:activeCollection :retainedMembers | (dependencies values anySatisfy: [:binding | | owner manager collection role parent parentMembers |
   owner := binding at: 'owner'. manager := binding at: 'manager'.
   collection := binding at: 'collection'. role := binding at: 'role'.
   (((manager perform: (binding at: 'selector')) == collection and: [
     role = 'scope_children' ifTrue: [owner contents == manager] ifFalse: [
     role = 'node_ports' ifTrue: [owner basicGraphObject == manager] ifFalse: [
     role = 'port_pins' and: [owner == manager]]]]) and: [
       (parents includesKey: owner) ifTrue: [
         parent := parents at: owner.
         parentMembers := (parent at: 'collection') == activeCollection
           ifTrue: [retainedMembers] ifFalse: [parent at: 'collection'].
         owner manager == (parent at: 'manager') and: [
           (parentMembers select: [:member | member == owner]) size = 1]
       ] ifFalse: [owner == (clone at: 'root')]]) not
 ]) not].
 dependencyCurrent := [dependencyMatches value: nil value: nil].
 edits do: [:entry | | object kind before after saved binding current merged plan keysFor |
   object := entry at: 'object'. kind := entry at: 'kind'. before := entry at: 'before'. after := entry at: 'after'.
   (owned includes: object) ifFalse: [component error: 'Private inverse target is not memo owned'].
   saved := entry copy.
   kind = 'fields' ifTrue: [
     ((object instVarAt: (entry at: 'index')) == after)
       ifFalse: [conflicts add: 'TOUCHED_FIELD_CHANGED']
       ifTrue: [plans add: saved. mutationCount := mutationCount + 1]
   ] ifFalse: [kind = 'collection' ifFalse: [component error: 'Unsupported private patch kind'].
     (object class = OrderedCollection and: [bindings includesKey: object]) ifTrue: [
       binding := bindings at: object. current := object asArray copy.
       depend value: binding.
       ((binding at: 'manager') perform: (binding at: 'selector')) == object
         ifFalse: [component error: 'Private keyed parent collection binding changed'].
       (current anySatisfy: [:member | (memberKeys includesKey: member) not or: [member manager ~~ (binding at: 'manager')]])
         ifTrue: [component error: 'Private current member ownership/key binding changed'].
       ((before anySatisfy: [:member | (memberKeys includesKey: member) not]) or: [
         after anySatisfy: [:member | (memberKeys includesKey: member) not]])
         ifTrue: [component error: 'Private retained member key unavailable'].
       merged := mergeReader value: component value: (Array with: before asArray with: after asArray with: current).
       (merged isKindOf: Dictionary) ifFalse: [component error: merged].
       ((merged at: 'profile') = 'native_collection_order_inverse_v1' and: [
         (merged at: 'write_authorized') == false and: [(merged at: 'model_setters_called') = 0]])
         ifFalse: [component error: 'Unexpected native private merge authority'].
       (merged at: 'compatible') ifFalse: [conflicts addAll: (merged at: 'conflicts')] ifTrue: [
         saved at: 'kind' put: 'ordered'; at: 'binding' put: binding;
           at: 'current' put: current; at: 'desired' put: (merged at: 'merged'); at: 'splices' put: (merged at: 'splices').
         plans add: saved. mutationCount := mutationCount + (merged at: 'splices') size.
         keysFor := [:order | order collect: [:member | memberKeys at: member]].
         summaries add: (Dictionary new at: 'binding_key' put: (binding at: 'key');
           at: 'before' put: (keysFor value: before); at: 'after' put: (keysFor value: after);
           at: 'current' put: (keysFor value: current); at: 'merged' put: (keysFor value: (merged at: 'merged'));
           at: 'splices' put: ((merged at: 'splices') collect: [:step |
             Array with: step first with: (step at: 2) with: (memberKeys at: step last)]); yourself)
       ]
     ] ifFalse: [
       (sameContents value: object value: after) ifFalse: [conflicts add: 'TOUCHED_COLLECTION_CHANGED']
         ifTrue: [plans add: saved. mutationCount := mutationCount + 1]
     ]
   ]
 ].
 affected := IdentitySet new. edits do: [:entry | affected add: (entry at: 'object')].
 removedMembers := IdentitySet new.
 edits do: [:entry |
   ((entry at: 'kind') = 'collection' and: [bindings includesKey: (entry at: 'object')]) ifTrue: [
     (entry at: 'before') do: [:member |
       ((entry at: 'after') anySatisfy: [:remaining | remaining == member])
         ifFalse: [removedMembers add: member]
     ]
   ]
 ].
 endpointDependencies := Dictionary new. edgeDependencies := OrderedCollection new.
 (checkpoint at: 'edgeEndpoints') do: [:row | | edge points |
   edge := (clone at: 'memo') at: row first diagramElement.
   ((affected includes: edge) or: [(removedMembers includes: edge) or: [affected includes: edge basicGraphObject]]) ifTrue: [
     points := row last collect: [:point | (clone at: 'memo') at: point].
     edgeDependencies add: (Array with: edge with: points).
     (Array with: (row at: 2) with: (row at: 3)) do: [:originalPin | | pin binding managerEdits expectedManager |
       pin := (clone at: 'memo') at: originalPin. binding := parents at: pin.
       depend value: binding.
       managerEdits := edits select: [:entry | (entry at: 'object') == pin and: [
         (entry at: 'kind') = 'fields' and: [
           (pin class allInstVarNames at: (entry at: 'index')) = 'manager']]].
       managerEdits size > 1 ifTrue: [component error: 'Ambiguous private endpoint manager edit'].
       expectedManager := managerEdits isEmpty ifTrue: [binding at: 'manager']
         ifFalse: [managerEdits first at: 'after'].
       endpointDependencies at: (memberKeys at: pin) put: (Dictionary new
         at: 'pin' put: pin; at: 'binding' put: binding; at: 'manager' put: expectedManager;
         at: 'point' put: ((clone at: 'memo') at: originalPin getExternalConnectorGO connectionPoint); yourself)
     ]
   ]
 ].
 endpointCurrent := [(edgeDependencies anySatisfy: [:pair |
   (sameOrder value: pair first connectionPoints value: pair last) not]) not and: [
   (endpointDependencies values anySatisfy: [:entry | | pin binding manager |
     pin := entry at: 'pin'. binding := entry at: 'binding'. manager := entry at: 'manager'.
     (pin manager == manager and: [pin getExternalConnectorGO connectionPoint == (entry at: 'point') and: [
       ((binding at: 'collection') select: [:member | member == pin]) size = (manager isNil ifTrue: [0] ifFalse: [1])]]) not
   ]) not]].
 dependencyCurrent value ifFalse: [conflicts add: 'PRIVATE_PARENT_LINEAGE_CHANGED'].
 endpointCurrent value ifFalse: [conflicts add: 'PRIVATE_ENDPOINT_DEPENDENCY_CHANGED'].
 conflicts isEmpty ifFalse: [plans := OrderedCollection new. summaries := OrderedCollection new. mutationCount := 0].
 verify := [conflicts isEmpty and: [currentClone value and: [dependencyCurrent value and: [endpointCurrent value and: [(plans anySatisfy: [:entry | | object binding |
   object := entry at: 'object'.
   (entry at: 'kind') = 'fields' ifTrue: [(object instVarAt: (entry at: 'index')) ~~ (entry at: 'after')]
     ifFalse: [(entry at: 'kind') = 'ordered' ifTrue: [
       binding := entry at: 'binding'.
       (((binding at: 'manager') perform: (binding at: 'selector')) == object and: [
         (sameOrder value: object value: (entry at: 'current')) and: [
           (object anySatisfy: [:member | member manager ~~ (binding at: 'manager')]) not]]) not
     ] ifFalse: [(sameContents value: object value: (entry at: 'after')) not]]]) not]]]]].
 execute := [
   verify value ifFalse: [component error: 'Private inverse touched field conflict'].
   plans do: [:entry | | object value |
     object := entry at: 'object'. value := entry at: 'before'.
     (entry at: 'kind') = 'fields' ifTrue: [object instVarAt: (entry at: 'index') put: value] ifFalse: [
     (entry at: 'kind') = 'ordered' ifTrue: [
       (entry at: 'splices') do: [:step | | index member |
         index := step at: 2. member := step last.
         step first = 'remove' ifTrue: [
           (object at: index) == member ifFalse: [component error: 'Private inverse removal index changed'].
           object removeAtIndex: index
         ] ifFalse: [object add: member beforeIndex: index]]
     ] ifFalse: [
       (object isKindOf: Dictionary) ifTrue: [object keys asArray do: [:key | object removeKey: key].
         value keysAndValuesDo: [:key :member | object at: key put: member]] ifFalse: [
       object class = Array ifTrue: [1 to: value size do: [:index | object at: index put: (value at: index)]]
         ifFalse: [object removeAll: object asArray. object addAll: value]]]]
   ].
   (plans anySatisfy: [:entry | | object |
     object := entry at: 'object'. (entry at: 'kind') = 'fields'
       ifTrue: [(object instVarAt: (entry at: 'index')) ~~ (entry at: 'before')]
       ifFalse: [(sameContents value: object value: ((entry at: 'kind') = 'ordered'
         ifTrue: [entry at: 'desired'] ifFalse: [entry at: 'before'])) not]])
       ifTrue: [component error: 'Private graphical inverse result differs'].
   mutationCount
 ].
 stableEndpoints := [
   (edgeDependencies anySatisfy: [:pair | (sameOrder value: pair first connectionPoints value: pair last) not]) not and: [
   (endpointDependencies values anySatisfy: [:entry |
     (entry at: 'pin') getExternalConnectorGO connectionPoint ~~ (entry at: 'point')]) not]].
 physicalLineage := [:entry | | activeCollection retainedMembers |
   (owned includes: (entry at: 'object')) ifFalse: [component error: 'Physical lineage target is not private owned'].
   activeCollection := nil. retainedMembers := nil.
   (entry at: 'kind') = 'collection' ifTrue: [
     activeCollection := entry at: 'object'. retainedMembers := entry at: 'after'].
   currentClone value and: [(dependencyMatches value: activeCollection value: retainedMembers) and: [stableEndpoints value]]
 ].
 result := Dictionary new at: 'profile' put: 'native_private_graph_inverse_plan_v1';
   at: 'compatible' put: conflicts isEmpty; at: 'conflicts' put: conflicts asArray;
   at: 'ordered_plans' put: summaries; at: 'mutation_count' put: mutationCount;
   at: 'dependency_bindings' put: dependencies keys asSortedCollection asArray;
   at: 'endpoint_dependency_keys' put: endpointDependencies keys asSortedCollection asArray;
   at: 'private_entries' put: plans asArray;
   at: 'verifyStableLineage' put: [currentClone value and: [dependencyCurrent value and: [stableEndpoints value]]];
   at: 'verifyPhysicalLineage' put: physicalLineage;
   at: 'verifyBeforeApply' put: verify; at: 'execute' put: execute;
   at: 'write_authorized' put: false; at: 'model_setters_called' put: 0; yourself.
 result
 ] ifFail: [:error | 'BDE_PRIVATE_GRAPH_PLAN_ERROR: ', error messageText]
]]
