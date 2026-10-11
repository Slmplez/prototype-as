"Plan the next inverse from its retained actual topology owner. This fixed
 planner never executes native normalization, setters, store or order splices.
 The coordinator must separately retain durable ORDER/graphical proofs."
[:helpers | [:component :record :context |
 | phase |
 phase := 'identity'.
 component handleExceptionsIn: [
 | owner state head root diagram parent collection sameOrder reader scoped full current
   typed local physical drawing currentPhysical currentDrawing desiredPhysical desiredDrawing
   currentParentEvidence currentDrawingEvidence desiredParentEvidence desiredDrawingEvidence
   verify endpointMode result encodeGraph historyMatches drawingSlot snapshots |
 (helpers isArray and: [helpers size = 3 and: [context isArray and: [context size = 2]]])
   ifFalse: [component error: 'Fixed actual-head topology helpers and owner/state required'].
 owner := context first. state := context last.
 ((record at: 'owner') == component item and: [(record at: 'component') = component getOID and: [
   (record at: 'diagramName') = 'Main' and: [#('disconnect_data' 'delete_node') includes: (record at: 'operation')]]])
   ifFalse: [component error: 'Exact retained ordinary Main topology required'].
 head := record at: 'topologyOwnedHead' ifAbsent: [component error: 'Actual owned topology head unavailable'].
 historyMatches := [
   head == (record at: 'topologyOwnedHead') and: [
   (head at: 'ownershipProfile') = 'actual_topology_owned_head_v1' and: [
   (record at: 'materialProtocol' ifAbsent: [nil]) = 'retained_inverse_v1' and: [
   (record at: 'topologyHeadId') = owner and: [(record at: 'managedInverseId') = owner and: [
   (head at: 'owner') = owner and: [(head at: 'afterState') = state and: [
   (record at: 'state') = state and: [(head at: 'beforeState') ~= state and: [
   (head at: 'sequence') = (record at: 'topologyExecutionSerial')]]]]]]]]]].
 ((#('applied' 'reverted') includes: state) and: [historyMatches value])
   ifFalse: [component error: 'Actual topology owner/state/sequence expired'].
 #('beforeParentEvidence' 'afterParentEvidence' 'beforeDrawingEvidence' 'afterDrawingEvidence') do: [:key |
   (head includesKey: key) ifFalse: [component error: 'Historical actual order evidence unavailable; cannot reconstruct it']].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 diagram := record at: 'diagram'. parent := head at: 'parent'. collection := head at: 'collection'.
 ((root at: 'owner') == component item and: [(root at: 'diagram') == diagram and: [
   (root at: 'specification') == diagram specification and: [parent == (record at: 'orderParent') and: [
   parent == diagram topGraphicalHierarchy contents and: [collection == (record at: 'orderCollection') and: [
   parent children == collection]]]]]]) ifFalse: [component error: 'Actual topology parent identity expired'].
 sameOrder := [:left :right | left size = right size and: [
   (1 to: left size) allSatisfy: [:index | (left at: index) == (right at: index)]]].
 encodeGraph := root at: 'encodeObservation'. reader := record at: 'materialObservationReader'.
 scoped := reader value: component value: 'Main' value: (record at: 'targets').
 (scoped startsWith: 'BDE_STRUCTURE_ERROR:') ifTrue: [component error: scoped].
 [full := reader value: component value: 'Main' value: #().
   (full startsWith: 'BDE_STRUCTURE_ERROR:') ifTrue: [component error: full].
   current := (root at: 'copyObservation') value: (root at: 'observationValues')]
   ensure: [(reader value: component value: 'Main' value: (record at: 'targets')) = scoped
     ifFalse: [component error: 'Scoped actual topology changed during full planning read']].
 phase := 'typed'.
 typed := helpers at: 2. typed := typed value: component
   value: (Array with: (head at: 'beforeValues') with: (head at: 'afterValues') with: current)
   value: (record at: 'operation').
 ((typed isKindOf: Dictionary) and: [(typed at: 'compatible') == true])
   ifFalse: [component error: 'Actual owned topology typed conflict: ', typed printString].
 phase := 'order'.
 currentPhysical := parent children asArray copy. currentDrawing := parent sortedChildren asArray copy.
 physical := helpers last value: component value: (Array with: (head at: 'beforeParentOrder')
   with: (head at: 'afterParentOrder') with: currentPhysical).
 drawing := helpers last value: component value: (Array with: (head at: 'beforeDrawingOrder')
   with: (head at: 'afterDrawingOrder') with: currentDrawing).
 ((physical isKindOf: Dictionary) and: [(drawing isKindOf: Dictionary) and: [
   (physical at: 'compatible') == true and: [(drawing at: 'compatible') == true]]])
   ifFalse: [component error: 'Actual owned topology physical/drawing conflict'].
 desiredPhysical := physical at: 'merged'. desiredDrawing := drawing at: 'merged'.
 (desiredPhysical size = desiredDrawing size and: [desiredPhysical allSatisfy: [:object |
   desiredDrawing anySatisfy: [:peer | peer == object]]])
   ifFalse: [component error: 'Actual topology physical/drawing member targets disagree'].
 currentParentEvidence := (record at: 'orderEvidenceReader') value: record value: currentPhysical.
 currentDrawingEvidence := (record at: 'drawingOrderReader') value: component value: record value: currentDrawing.
 currentDrawingEvidence := currentDrawingEvidence value: true.
 desiredParentEvidence := (record at: 'orderEvidenceReader') value: record value: desiredPhysical.
 desiredDrawingEvidence := (record at: 'drawingOrderReader') value: component value: record value: desiredDrawing.
 desiredDrawingEvidence := desiredDrawingEvidence value: false.
 phase := 'material'.
 local := helpers first value: component value: record
   value: (Array with: current with: (typed at: 'expected') with: head).
 ((local isKindOf: Dictionary) and: [(local at: 'profile') = 'ordinary_topology_owned_material_inverse_v1'])
   ifFalse: [component error: local asString].
 snapshots := local at: 'nativeDesired'.
 ((snapshots at: collection) first = 'collection' and: [
   sameOrder value: (snapshots at: collection) last value: desiredPhysical])
   ifFalse: [component error: 'Native material and independent physical target differ'].
 desiredDrawing doWithIndex: [:object :index | | basic saved |
   basic := object basicGraphObject. saved := snapshots at: basic.
   drawingSlot := (basic class allInstVarNames collect: [:name | name asString]) indexOf: 'drawingOrder'.
   (drawingSlot > 0 and: [saved first = 'fields' and: [(saved last at: drawingSlot) = index]])
     ifFalse: [component error: 'Native material and independent causal drawing target differ']].
 endpointMode := head at: 'afterEndpointMode'.
 ((record at: 'edgeDependencyReader') value: component value: record value: endpointMode) == true
   ifFalse: [component error: 'Current actual topology endpoint identity differs'].
 verify := [historyMatches value and: [(local at: 'verifyBeforeDispatch') value and: [
   parent children == collection and: [(sameOrder value: collection value: currentPhysical) and: [
   (sameOrder value: parent sortedChildren value: currentDrawing) and: [
   ((record at: 'edgeDependencyReader') value: component value: record value: endpointMode) == true]]]]]].
 verify value ifFalse: [component error: 'Actual topology CURRENT changed during planning'].
 result := Dictionary new at: 'profile' put: 'actual_owned_topology_inverse_plan_v1';
   at: 'owner' put: owner; at: 'state' put: state; at: 'sequence' put: (head at: 'sequence');
   at: 'beforeValues' put: (head at: 'beforeValues'); at: 'afterValues' put: (head at: 'afterValues');
   at: 'currentValues' put: current; at: 'values' put: typed; at: 'material' put: local;
   at: 'parentPlan' put: physical; at: 'drawingPlan' put: drawing;
   at: 'parentBefore' put: (head at: 'beforeParentEvidence');
   at: 'parentAfter' put: (head at: 'afterParentEvidence');
   at: 'drawingBefore' put: (head at: 'beforeDrawingEvidence');
   at: 'drawingAfter' put: (head at: 'afterDrawingEvidence');
   at: 'parentCurrent' put: (currentParentEvidence at: 'value');
   at: 'parentExpected' put: (desiredParentEvidence at: 'value');
   at: 'drawingCurrent' put: (currentDrawingEvidence at: 'value');
   at: 'drawingExpected' put: (desiredDrawingEvidence at: 'value');
   at: 'currentEndpointMode' put: endpointMode; at: 'expectedEndpointMode' put: (head at: 'beforeEndpointMode');
   at: 'verifyBeforeDispatch' put: verify; at: 'write_authorized' put: false;
   at: 'managed_inverse_enabled' put: false; at: 'model_setters_called' put: 0; at: 'store_called' put: false; yourself.
 result
 ] ifFail: [:error | 'BDE_TOPOLOGY_OWNED_INVERSE_ERROR: ', phase, ' ', error messageText]
]]
