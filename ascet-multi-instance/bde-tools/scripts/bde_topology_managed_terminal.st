"Certify and retain an actual completed managed topology; no model setter or store."
[:component :record :context |
 component handleExceptionsIn: [
 | root diagram parent collection plan material proof graphical reader native encode sameOrder
   desiredOrder desiredDrawing orderAfter drawingAfter afterEncoded afterValues nativeAfter sourceAfter
   actualValue removed anchors boundaries guard completed answer restoring terminalState |
 root := record at: 'orderRoot'. diagram := record at: 'diagram'.
 parent := record at: 'orderParent'. collection := record at: 'orderCollection'.
 plan := context at: 'plan'. material := context at: 'material'. proof := record at: 'topologyManagedExecution'.
 graphical := context at: 'graphical'. native := record at: 'topologyNativeBefore'.
 reader := record at: 'materialObservationReader'. encode := root at: 'encodeObservation'.
 ((record at: 'owner') == component item and: [(record at: 'component') = component getOID and: [
   (record at: 'diagramName') = 'Main' and: [#('disconnect_data' 'delete_node') includes: (record at: 'operation')]]])
   ifFalse: [component error: 'Exact retained Main terminal owner required'].
 (((Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main')) == root and: [
   (root at: 'owner') == component item and: [(root at: 'diagram') == diagram and: [
   (root at: 'specification') == diagram specification and: [parent == diagram topGraphicalHierarchy contents and: [
   parent children == collection]]]]]) ifFalse: [component error: 'Actual retained terminal scope expired'].
 ((proof at: 'head_change_id') = (context at: 'owner') and: [
   (proof at: 'result_change_id') = (context at: 'result') and: [(proof at: 'expected_state') = (context at: 'state') and: [
   (proof at: 'execution_sequence') = (record at: 'topologyExecutionSerial') and: [
   (proof at: 'store_completed') == true and: [((material at: 'progress') at: 'state') = 'restored']]]]])
   ifFalse: [component error: 'Actual completed store/normalization/execution context required'].
 (material at: 'verifyDesired') value ifFalse: [component error: 'Managed topology actual native/source target differs'].
 sameOrder := [:left :right | left size = right size and: [
   (1 to: left size) allSatisfy: [:index | (left at: index) == (right at: index)]]].
 desiredOrder := (plan at: 'parentPlan') at: 'merged'. desiredDrawing := (plan at: 'drawingPlan') at: 'merged'.
 restoring := (plan at: 'expectedEndpointMode') = 'attached'.
 terminalState := restoring ifTrue: ['reverted'] ifFalse: ['applied'].
 (proof at: 'after_state') = terminalState ifFalse: [component error: 'Actual terminal direction differs'].
 ((record at: 'edgeDependencyReader') value: component value: record value: (plan at: 'expectedEndpointMode')) == true
   ifFalse: [component error: 'Managed topology terminal endpoint identity differs'].
 ((sameOrder value: collection value: desiredOrder) and: [sameOrder value: parent sortedChildren value: desiredDrawing])
   ifFalse: [component error: 'Actual managed terminal physical/drawing order differs'].
 orderAfter := (record at: 'orderEvidenceReader') value: record value: collection asArray copy.
 drawingAfter := ((record at: 'drawingOrderReader') value: component value: record value: parent sortedChildren asArray copy) value: true.
 (((encode value: (orderAfter at: 'value')) = (encode value: (plan at: 'parentExpected'))) and: [
   (encode value: (drawingAfter at: 'value')) = (encode value: (plan at: 'drawingExpected'))])
   ifFalse: [component error: 'Actual managed terminal roster descriptor differs'].
 afterEncoded := reader value: component value: 'Main' value: #().
 (afterEncoded startsWith: 'BDE_STRUCTURE_ERROR:') ifTrue: [component error: afterEncoded].
 afterEncoded = (context at: 'expectedEncoded') ifFalse: [component error: 'Managed topology complete actual typed target differs'].
 (material at: 'verifyDesired') value ifFalse: [component error: 'Final managed typed read changed actual native/source target'].
 (root at: 'diagram') == diagram ifFalse: [component error: 'Final terminal read replaced original diagram'].
 afterValues := (root at: 'copyObservation') value: (root at: 'observationValues').
 nativeAfter := (native at: 'captureImages') value: ((context at: 'beforeNative') keys, (Array with: diagram topGraphicalHierarchy)).
 sourceAfter := (record at: 'topologySourceMaterialReader') value: component value:
   (Array with: diagram specification specSourceInternalOrNil with: ((context at: 'beforeSource') at: 'snapshots') keys).
 (sourceAfter isKindOf: Dictionary) ifFalse: [component error: sourceAfter asString].
 (((sourceAfter at: 'verify') value) and: [(native at: 'verifyImages') value: nativeAfter])
   ifFalse: [component error: 'Actual managed terminal material drifted'].
 actualValue := (graphical at: 'diff') value.
 (graphical at: 'verifyAfter') value ifFalse: [component error: 'Actual managed graphical proof drifted'].
 removed := (record at: 'operation') = 'disconnect_data'
   ifTrue: [Array with: (record at: 'retained')] ifFalse: [record at: 'retainedSet'].
 guard := nil.
 restoring ifFalse: [
   anchors := (removed collect: [:saved | saved first]) asOrderedCollection.
   boundaries := IdentitySet new. boundaries add: parent; add: diagram topGraphicalHierarchy.
   (record at: 'edgeDependencies') do: [:edgeRow | (edgeRow at: 'pins') do: [:pin |
     anchors add: (pin at: 'registration').
     (removed anySatisfy: [:saved | saved first == (pin at: 'owner')]) ifFalse: [
       #('owner' 'basic' 'manager' 'members' 'pin' 'connector' 'connectorManager' 'point' 'connections')
         do: [:key | boundaries add: (pin at: key)]]]].
   guard := (graphical at: 'freezeTerminalSubset') value: anchors value: boundaries.
   (guard at: 'verify') value ifFalse: [component error: 'Actual managed detached material drifted']
 ].
 completed := Dictionary new at: 'profile' put: 'actual_topology_execution_head_v1';
   at: 'previousHead' put: (context at: 'owner'); at: 'result' put: (context at: 'result');
   at: 'sequence' put: (proof at: 'execution_sequence'); at: 'beforeState' put: (context at: 'state');
   at: 'afterState' put: terminalState; at: 'parent' put: parent; at: 'collection' put: collection;
   at: 'beforeParentOrder' put: (context at: 'beforeOrder'); at: 'afterParentOrder' put: collection asArray copy;
   at: 'beforeDrawingOrder' put: (context at: 'beforeDrawing'); at: 'afterDrawingOrder' put: parent sortedChildren asArray copy;
   at: 'beforeParentEvidence' put: (context at: 'beforeParentEvidence'); at: 'afterParentEvidence' put: (orderAfter at: 'value');
   at: 'beforeDrawingEvidence' put: (context at: 'beforeDrawingEvidence'); at: 'afterDrawingEvidence' put: (drawingAfter at: 'value');
   at: 'beforeEndpointMode' put: (plan at: 'currentEndpointMode'); at: 'afterEndpointMode' put: (plan at: 'expectedEndpointMode');
   at: 'direction' put: (restoring ifTrue: ['undo'] ifFalse: ['forward']);
   at: 'beforeNative' put: (context at: 'beforeNative'); at: 'afterNative' put: nativeAfter;
   at: 'beforeSource' put: (context at: 'beforeSource'); at: 'afterSource' put: sourceAfter;
   at: 'beforeValues' put: (context at: 'current'); at: 'afterValues' put: afterValues; yourself.
 guard notNil ifTrue: [completed at: 'afterDetachedGuard' put: guard].
 record at: 'topologyExecutedHead' put: completed; at: 'lastObserved' put: afterEncoded;
   at: 'lastObservedTargets' put: #(); at: 'state' put: terminalState.
 proof at: 'phase' put: 'terminal'; at: 'terminal_verified' put: true;
   at: 'native_matches_terminal' put: true; at: 'source_matches_terminal' put: true;
   at: 'source_root_preserved' put: (((context at: 'beforeSource') at: 'sourceRoot') == (sourceAfter at: 'sourceRoot'));
   at: 'endpoint_verified' put: true; at: 'parent_order_verified' put: true;
   at: 'drawing_order_verified' put: true; at: 'actual_material_retained' put: true.
 answer := Dictionary new at: 'observation' put: afterValues;
   at: 'parent_order_effects' put: (Array with: (Dictionary new at: 'kind' put: 'parent_order';
     at: 'before' put: (context at: 'beforeParentEvidence'); at: 'after' put: (orderAfter at: 'value'); yourself));
   at: 'drawing_order_effects' put: (Array with: (Dictionary new at: 'kind' put: 'drawing_order';
     at: 'before' put: (context at: 'beforeDrawingEvidence'); at: 'after' put: (drawingAfter at: 'value'); yourself));
   at: 'graphical_current' put: (graphical at: 'originalImage'); at: 'graphical_actual' put: actualValue;
   at: 'topology_execution' put: proof copy; yourself.
 record at: 'topologyManagedTerminalAnswer' put: answer; at: 'topologyManagedGraphical' put: graphical.
 (native at: 'encode') value: answer
 ] ifFail: [:error | 'BDE_TOPOLOGY_MANAGED_TERMINAL_ERROR: ', error messageText]
]
