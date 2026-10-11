[:bindingReader :cloneReader :helpers |
 | planner evidenceReader edgeGuard |
 planner := helpers first. evidenceReader := helpers at: 2. edgeGuard := helpers last.
 [:component |
 component handleExceptionsIn: [
 | checkpoint cases sameOrder out encode endpointCases |
 checkpoint := bindingReader value: component value: 'capture'.
 (checkpoint isKindOf: Dictionary) ifFalse: [component error: checkpoint].
 sameOrder := [:left :right | left size = right size and: [
   ((1 to: left size) anySatisfy: [:i | (left at: i) ~~ (right at: i)]) not]].
 cases := OrderedCollection new.
 endpointCases := OrderedCollection new.
 #('exact' 'independent_addition' 'independent_deletion' 'stale_current' 'changed_ids' 'changed_ids_binding') do: [:mode |
   | clone memo entry parent collection original primary peer record token saved beforeImage currentImage expectedImage actualImage plan extra current refused initialIds |
   clone := cloneReader value: component value: checkpoint value: 'clone'.
   (clone isKindOf: Dictionary) ifFalse: [component error: clone]. memo := clone at: 'memo'.
   entry := ((checkpoint at: 'collectionBindings') values select: [:binding |
     ((binding at: 'slot') at: 'role') = 'scope_children' and: [
       ((binding at: 'order') select: [:object | (object isKindOf: RBConnectionWrapperGO) not]) size >= 3]]) first.
   parent := memo at: (entry at: 'manager'). collection := parent children. original := collection asArray copy.
   primary := (original select: [:object | (object isKindOf: RBConnectionWrapperGO) not]) at: 2.
   peer := (original select: [:object | object ~~ primary and: [(object isKindOf: RBConnectionWrapperGO) not]]) last.
   token := 'edit_0000000000000000000000000000000000000000000000000000000000000000' copy.
   token at: token size put: ('0123456789abcdef' at: cases size + 1).
   saved := Array with: primary with: parent with: (collection indexOf: primary) with: #().
   record := Dictionary new at: 'operation' put: 'delete_node'; at: 'orderParent' put: parent;
     at: 'orderCollection' put: collection; at: 'beforeOrder' put: original;
     at: 'afterOrder' put: (original reject: [:object | object == primary]);
     at: 'retainedSet' put: (Array with: saved); at: 'orderToken' put: token;
     at: 'diagramName' put: ((entry at: 'slot') at: 'scope'); at: 'orderIds' put: IdentityDictionary new; yourself.
   beforeImage := evidenceReader value: record value: original.
   initialIds := (record at: 'orderIds') copy.
   record at: 'orderIdsBinding' put: (record at: 'orderIds'); at: 'orderOriginalIds' put: initialIds.
   collection remove: primary.
   extra := nil. refused := false.
   mode = 'independent_addition' ifTrue: [extra := SGCommentGO new. extra manager: parent. collection add: extra beforeIndex: 1].
   mode = 'independent_deletion' ifTrue: [collection remove: peer. peer manager: nil].
   current := collection asArray copy.
   currentImage := evidenceReader value: record value: current.
   plan := planner value: component value: record value: parent.
   ((plan isKindOf: Dictionary) and: [(plan at: 'compatible') and: [(plan at: 'verifyBeforeApply') value]])
     ifFalse: [component error: 'Evidence study requires a compatible private inverse plan'].
   expectedImage := evidenceReader value: record value: (plan at: 'merged').
   mode = 'stale_current' ifTrue: [
     collection remove: peer. peer manager: nil.
     refused := ((evidenceReader value: record value: collection asArray copy) at: 'signature') ~= (currentImage at: 'signature').
     collection removeAll: collection asArray; addAll: current. peer manager: parent].
   mode = 'changed_ids' ifTrue: [
     (record at: 'orderIds') at: primary put: 'o999999'.
     component handleExceptionsIn: [evidenceReader value: record value: current] ifFail: [:error | refused := true].
     (record at: 'orderIds') at: primary put: (initialIds at: primary)].
   mode = 'changed_ids_binding' ifTrue: [
     record at: 'orderIds' put: (record at: 'orderIds') copy.
     component handleExceptionsIn: [evidenceReader value: record value: current] ifFail: [:error | refused := true].
     record at: 'orderIds' put: (record at: 'orderIdsBinding')].
   (#('stale_current' 'changed_ids' 'changed_ids_binding') includes: mode) ifTrue: [
     refused ifFalse: [component error: 'Stale native parent evidence accepted']].
   "Use only memo-owned member arrays/manager links; never addGO/store/model setters."
   (plan at: 'restores') do: [:item |
     collection add: item first beforeIndex: ((plan at: 'positions') at: item first). item first manager: parent].
   (sameOrder value: collection value: (plan at: 'merged')) ifFalse: [component error: 'Actual private roster differs from expected'].
   actualImage := evidenceReader value: record value: collection asArray copy.
   cases add: (Dictionary new at: 'scenario' put: mode; at: 'before' put: (beforeImage at: 'value');
     at: 'applied' put: ((evidenceReader value: record value: (record at: 'afterOrder')) at: 'value');
     at: 'current' put: (currentImage at: 'value'); at: 'expected' put: (expectedImage at: 'value');
     at: 'actual' put: (actualImage at: 'value'); at: 'signature' put: (currentImage at: 'signature');
     at: 'stale_refused' put: refused; at: 'private_reset' put: true; yourself).
   extra notNil ifTrue: [extra manager: nil].
   collection removeAll: collection asArray; addAll: original. original do: [:object | object manager: parent].
   ((clone at: 'verifyInitialGraph') value) ifFalse: [component error: 'Parent evidence private reset differs'].
   ((checkpoint at: 'verifyCurrent') value) ifFalse: [component error: 'Public graph changed during evidence study']
 ].
 #('exact' 'pin_parent_changed' 'point_owner_changed' 'map_rebound' 'input_occupied' 'owner_detached' 'incident_ghost') do: [:mode |
   | clone privateDiagram edge native parent original position points maps record snapshots targetPin savedPin savedPoint savedOwner savedMap occupant accepted verdict |
   clone := cloneReader value: component value: checkpoint value: 'clone'.
   (clone isKindOf: Dictionary) ifFalse: [component error: clone].
   privateDiagram := clone at: 'diagram'. edge := privateDiagram getAllDiagramConnections first.
   native := edge diagramElement. parent := native manager. original := parent children asArray copy.
   position := parent children indexOf: native. points := native connectionPoints asArray copy.
   maps := IdentityDictionary new. points do: [:point | maps at: point put: point connections copy].
   record := Dictionary new at: 'operation' put: 'disconnect_data'; at: 'orderParent' put: parent;
     at: 'retained' put: (Array with: native with: parent with: position with: points);
     at: 'deletedEdgeAPIs' put: (Array with: edge); yourself.
   verdict := edgeGuard value: component value: record value: 'capture'.
   verdict == true ifFalse: [component error: 'Endpoint capture failed: ', verdict].
   (edgeGuard value: component value: record value: 'attached') == true
     ifFalse: [component error: 'Initial endpoint binding is not verified'].
   snapshots := record at: 'edgeDependencies'. targetPin := ((snapshots first at: 'pins') at: 2).
   ((targetPin at: 'input') == true and: [((snapshots first at: 'pins') first at: 'output') == true])
     ifFalse: [component error: 'Exact input/output endpoint roles required for study'].
   savedPin := targetPin at: 'pin'. savedPoint := targetPin at: 'point'. savedOwner := targetPin at: 'owner'.
   parent children remove: native.
   points do: [:point | point connections removeKey: native ifAbsent: []].
   savedMap := savedPoint connections. occupant := nil.
   mode = 'pin_parent_changed' ifTrue: [savedPin manager: nil].
   mode = 'point_owner_changed' ifTrue: [savedPoint instVarAt: (targetPin at: 'pointOwnerIndex') put: Object new].
   mode = 'map_rebound' ifTrue: [savedPoint instVarNamed: 'connections' put: savedMap copy].
   mode = 'owner_detached' ifTrue: [savedOwner manager: nil].
   mode = 'input_occupied' ifTrue: [
     occupant := native shallowCopy. occupant manager: parent. parent children add: occupant.
     savedMap at: occupant put: ((maps at: savedPoint) at: native)].
   mode = 'incident_ghost' ifTrue: [
     occupant := Object new. savedMap at: occupant put: ((maps at: savedPoint) at: native)].
   verdict := edgeGuard value: component value: record value: 'detached'. accepted := verdict == true.
   accepted == (mode = 'exact') ifFalse: [component error: 'Endpoint guard verdict differs: ', mode, ' ', verdict printString].
   savedPin manager: (targetPin at: 'manager'). savedOwner manager: parent.
   savedPoint instVarAt: (targetPin at: 'pointOwnerIndex') put: (targetPin at: 'pointOwner').
   savedPoint instVarNamed: 'connections' put: savedMap.
   occupant notNil ifTrue: [mode = 'input_occupied' ifTrue: [occupant manager: nil]].
   parent children removeAll: parent children asArray; addAll: original. native manager: parent.
   maps keysAndValuesDo: [:point :saved |
     point connections keys asArray do: [:key | point connections removeKey: key].
     saved keysAndValuesDo: [:key :value | point connections at: key put: value]].
   ((clone at: 'verifyInitialGraph') value) ifFalse: [component error: 'Endpoint private graph reset differs'].
   ((checkpoint at: 'verifyCurrent') value) ifFalse: [component error: 'Public graph changed during endpoint study'].
   endpointCases add: (Dictionary new at: 'scenario' put: mode; at: 'accepted' put: accepted;
     at: 'private_reset' put: true; at: 'input_endpoint_checked' put: true; yourself)
 ].
 out := WriteStream on: String new.
 encode := [:value |
   value isString ifTrue: [out nextPut: $"; nextPutAll: value; nextPut: $"] ifFalse: [
   ((value == true or: [value == false]) or: [value isInteger]) ifTrue: [out nextPutAll: value printString] ifFalse: [
   (value isKindOf: Dictionary) ifTrue: [out nextPut: ${.
     value keys asSortedCollection doWithIndex: [:key :i | i > 1 ifTrue: [out nextPut: $,].
       encode value: key. out nextPut: $:. encode value: (value at: key)]. out nextPut: $}]
     ifFalse: [out nextPut: $[. value doWithIndex: [:item :i | i > 1 ifTrue: [out nextPut: $,]. encode value: item]. out nextPut: $]]]]].
 encode value: (Dictionary new at: 'profile' put: 'native_parent_order_evidence_probe_v1';
   at: 'cases' put: cases; at: 'endpoint_cases' put: endpointCases; at: 'model_setters_called' put: 0; at: 'production_dispatch' put: false;
   at: 'complete_acceptance' put: false; yourself). out contents
 ] ifFail: [:error | 'BDE_PARENT_ORDER_EVIDENCE_ERROR: ', error messageText]
]]
