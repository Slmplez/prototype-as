"Fixed ordinary Main managed topology execution from its actual owned head.
 Requests supply identities and durable signatures, never source or selectors."
[:helpers | [:component :context |
 | stage mutationStarted record |
 stage := 'identity'. mutationStarted := false. record := nil.
 component handleExceptionsIn: [
 | mode token owner state resultId root diagram parent collection head planner plan material
   encode reader current expected beforeEncoded expectedEncoded graphical prepared sameOrder
   orderBefore orderExpected drawingBefore drawingExpected desiredOrder desiredDrawing removed
   restoring terminalState proof checkReturn restore beforeNative beforeSource beforeOrder beforeDrawing
   beforeParentEvidence beforeDrawingEvidence nativeAfter sourceAfter actual actualValue orderAfter drawingAfter
   afterEncoded afterValues completed guard anchors boundaries native version answer |
 (helpers isArray and: [helpers size = 3 and: [context isArray and: [context size = 7]]])
   ifFalse: [component error: 'Fixed managed topology helpers and exact execution context required'].
 mode := context first. token := context at: 2. owner := context at: 3.
 state := context at: 4. resultId := context at: 5.
 (#('validate' 'execute') includes: mode) ifFalse: [component error: 'Unknown fixed managed topology command'].
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 ((record at: 'owner') == component item and: [(record at: 'component') = component getOID])
   ifFalse: [component error: 'Managed topology native owner differs'].
 (record at: 'diagramName') = 'Main' ifFalse: [component error: 'Managed topology requires exact Main scope'].
 (#('disconnect_data' 'delete_node') includes: (record at: 'operation'))
   ifFalse: [component error: 'Managed topology operation unavailable'].
 (resultId = owner or: [resultId = token]) ifTrue: [component error: 'Distinct managed topology result owner required'].
 planner := helpers first.
 plan := planner value: component value: record value: (Array with: owner with: state).
 (plan isKindOf: Dictionary) ifFalse: [component error: plan asString].
 (plan at: 'profile') = 'actual_owned_topology_inverse_plan_v1'
   ifFalse: [component error: 'Actual owned topology plan required'].
 head := record at: 'topologyOwnedHead'. material := plan at: 'material'.
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 diagram := record at: 'diagram'. parent := head at: 'parent'. collection := head at: 'collection'.
 encode := root at: 'encodeObservation'. reader := record at: 'materialObservationReader'.
 current := plan at: 'currentValues'. expected := (plan at: 'values') at: 'expected'.
 beforeEncoded := encode value: current. expectedEncoded := encode value: expected.
 sameOrder := [:left :right | left size = right size and: [
   (1 to: left size) allSatisfy: [:index | (left at: index) == (right at: index)]]].
 desiredOrder := (plan at: 'parentPlan') at: 'merged'. desiredDrawing := (plan at: 'drawingPlan') at: 'merged'.
 restoring := (plan at: 'expectedEndpointMode') = 'attached'.
 terminalState := restoring ifTrue: ['reverted'] ifFalse: ['applied'].
 terminalState ~= state ifFalse: [component error: 'Managed topology direction does not invert its actual head'].
 removed := (record at: 'operation') = 'disconnect_data'
   ifTrue: [Array with: (record at: 'retained')] ifFalse: [record at: 'retainedSet'].
 restoring ifTrue: [
   guard := head at: 'afterDetachedGuard' ifAbsent: [component error: 'Actual detached head material unavailable'].
   (guard at: 'verify') value ifFalse: [component error: 'Actual detached topology material changed']
 ].
 stage := 'order'.
 orderBefore := (record at: 'orderEvidenceReader') value: record value: parent children asArray copy.
 orderExpected := (record at: 'orderEvidenceReader') value: record value: desiredOrder.
 drawingBefore := ((record at: 'drawingOrderReader') value: component value: record value: parent sortedChildren asArray copy) value: true.
 drawingExpected := ((record at: 'drawingOrderReader') value: component value: record value: desiredDrawing) value: false.
 #('parentCurrent' 'parentExpected' 'drawingCurrent' 'drawingExpected') doWithIndex: [:key :index |
   | evidence | evidence := (Array with: orderBefore with: orderExpected with: drawingBefore with: drawingExpected) at: index.
   (encode value: (plan at: key)) = (encode value: (evidence at: 'value'))
     ifFalse: [component error: 'Actual managed topology order evidence disagrees']].
 mode = 'validate' ifTrue: [
   stage := 'capture'.
   graphical := (helpers at: 2) value: component value:
     ((record at: 'graphicalOriginal') at: 'snapshots') keys asArray.
   (graphical isKindOf: Dictionary) ifFalse: [component error: graphical asString].
   ((plan at: 'verifyBeforeDispatch') value and: [(graphical at: 'verify') value])
     ifFalse: [component error: 'Managed topology CURRENT changed during preparation'].
   version := (record at: 'topologyManagedPreflightSerial' ifAbsent: [0]) + 1.
   record at: 'topologyManagedPreflightSerial' put: version.
   prepared := Dictionary new at: 'head' put: owner; at: 'state' put: state; at: 'result' put: resultId;
     at: 'plan' put: plan; at: 'current' put: beforeEncoded; at: 'expected' put: expectedEncoded;
     at: 'graphical' put: graphical; at: 'parentSignature' put: (orderBefore at: 'signature');
     at: 'graphicalSignature' put: token, '/g', version printString; yourself.
   record at: 'topologyManagedPreflight' put: prepared.
   answer := Dictionary new at: 'observation' put: current; at: 'inverse_expected' put: expected;
     at: 'parent_order_before' put: (orderBefore at: 'value'); at: 'parent_order_expected' put: (orderExpected at: 'value');
     at: 'drawing_order_before' put: (drawingBefore at: 'value'); at: 'drawing_order_expected' put: (drawingExpected at: 'value');
     at: 'drawing_order_witness' put: nil; at: 'parent_order_signature' put: (orderBefore at: 'signature');
     at: 'graphical_current' put: (graphical at: 'originalImage');
     at: 'graphical_signature' put: (prepared at: 'graphicalSignature'); yourself.
   ((record at: 'topologyNativeBefore') at: 'encode') value: answer
 ] ifFalse: [
   stage := 'guard'. prepared := record at: 'topologyManagedPreflight' ifAbsent: [component error: 'Durable managed topology preparation unavailable'].
   ((prepared at: 'head') = owner and: [(prepared at: 'state') = state and: [(prepared at: 'result') = resultId]])
     ifFalse: [component error: 'Managed topology preparation belongs to another history or result'].
   ((prepared at: 'current') = beforeEncoded and: [(prepared at: 'expected') = expectedEncoded])
     ifFalse: [component error: 'Managed topology prepared actual CURRENT or target changed'].
   ((context at: 6) = (prepared at: 'parentSignature') and: [(context last) = (prepared at: 'graphicalSignature')])
     ifFalse: [component error: 'Durable managed topology signatures differ'].
   (context at: 6) = (orderBefore at: 'signature') ifFalse: [component error: 'Managed topology CURRENT parent order changed'].
   graphical := prepared at: 'graphical'.
   ((graphical at: 'verify') value and: [((prepared at: 'plan') at: 'verifyBeforeDispatch') value and: [
     (plan at: 'verifyBeforeDispatch') value]]) ifFalse: [component error: 'Managed topology execution-time CURRENT changed'].
   restoring ifTrue: [(guard at: 'verify') value ifFalse: [component error: 'Detached topology changed before dispatch']].
   beforeNative := material at: 'nativeCurrent'. beforeSource := material at: 'sourceCurrent'.
   beforeOrder := parent children asArray copy. beforeDrawing := parent sortedChildren asArray copy.
   beforeParentEvidence := orderBefore at: 'value'. beforeDrawingEvidence := drawingBefore at: 'value'.
   native := record at: 'topologyNativeBefore'.
   proof := Dictionary new at: 'profile' put: 'native_topology_execution_v1'; at: 'native_token' put: token;
     at: 'operation' put: (record at: 'operation'); at: 'head_change_id' put: owner; at: 'result_change_id' put: resultId;
     at: 'execution_sequence' put: (head at: 'sequence') + 1;
     at: 'expected_state' put: state; at: 'after_state' put: terminalState;
     at: 'direction' put: (restoring ifTrue: ['undo'] ifFalse: ['redo']); at: 'phase' put: 'started';
     at: 'model_operations' put: 0; at: 'drawing_assignments' put: 0; at: 'normalization' put: (material at: 'progress') copy;
     at: 'store_started' put: false; at: 'store_completed' put: false;
     at: 'terminal_verified' put: false; at: 'native_matches_terminal' put: false;
     at: 'source_matches_terminal' put: false; at: 'source_root_preserved' put: false;
     at: 'endpoint_verified' put: false; at: 'parent_order_verified' put: false;
     at: 'drawing_order_verified' put: false; at: 'actual_material_retained' put: false; yourself.
   record at: 'topologyManagedExecution' put: proof; at: 'topologyManagedMaterialPlan' put: material;
     at: 'topologyExecutionSerial' put: (proof at: 'execution_sequence');
     at: 'managedExecution' put: (Dictionary new at: 'head' put: owner; at: 'result' put: resultId;
       at: 'expectedState' put: state; at: 'afterState' put: terminalState; yourself).
   record at: 'topologyManagedTerminalContext' put: (Dictionary new
     at: 'owner' put: owner; at: 'result' put: resultId; at: 'state' put: state;
     at: 'plan' put: plan; at: 'material' put: material; at: 'graphical' put: graphical;
     at: 'beforeNative' put: beforeNative; at: 'beforeSource' put: beforeSource;
     at: 'beforeOrder' put: beforeOrder; at: 'beforeDrawing' put: beforeDrawing;
     at: 'beforeParentEvidence' put: beforeParentEvidence; at: 'beforeDrawingEvidence' put: beforeDrawingEvidence;
     at: 'current' put: current; at: 'expectedEncoded' put: expectedEncoded; yourself).
   mutationStarted := true.
   record at: 'state' put: (restoring ifTrue: ['revert_started'] ifFalse: ['started']);
     at: 'lastObservedTargets' put: #(); at: 'inverseExpectedValues' put: expected; at: 'inverseExpectedEncoded' put: expectedEncoded.
   checkReturn := [:value | (value isKindOf: EtasAPIError) ifTrue: [component error: value errorMessage].
     value == false ifTrue: [component error: 'Native topology operation returned false']. value].
   stage := 'native_topology'. proof at: 'phase' put: stage.
   restore := [:saved | | object index edgeRow |
     object := saved first. index := desiredOrder indexOf: object.
     (index = 0 or: [index > (collection size + 1) or: [collection includes: object]])
       ifTrue: [component error: 'Exact managed restoration position unavailable'].
     parent addGO: object display: false.
     collection remove: object. collection add: object beforeIndex: index.
     proof at: 'model_operations' put: (proof at: 'model_operations') + 3.
     (saved at: 4) do: [:point | point notNil ifTrue: [| pin |
       edgeRow := (record at: 'edgeDependencies') detect: [:row | (row at: 'edge') == object].
       pin := (edgeRow at: 'pins') detect: [:row | (row at: 'point') == point].
       point connections at: object put: (pin at: 'registration').
       proof at: 'model_operations' put: (proof at: 'model_operations') + 1]]
   ].
   restoring ifTrue: [
     (removed asSortedCollection: [:a :b | (desiredOrder indexOf: a first) < (desiredOrder indexOf: b first)])
       do: [:saved | restore value: saved]
   ] ifFalse: [
     (record at: 'operation') = 'delete_node' ifTrue: [
       (record at: 'incident') do: [:edge | checkReturn value: (diagram removeDiagramObject: edge).
         proof at: 'model_operations' put: (proof at: 'model_operations') + 1]].
     checkReturn value: (diagram removeDiagramObject: (record at: 'target')).
     proof at: 'model_operations' put: (proof at: 'model_operations') + 1
   ].
   (sameOrder value: collection value: desiredOrder) ifFalse: [component error: 'Managed topology native physical order differs'].
   desiredDrawing doWithIndex: [:object :index | object basicGraphObject drawingOrder: index.
     proof at: 'drawing_assignments' put: (proof at: 'drawing_assignments') + 1].
   (sameOrder value: parent sortedChildren value: desiredDrawing) ifFalse: [component error: 'Managed topology native drawing order differs'].
   stage := 'store'. proof at: 'phase' put: stage; at: 'store_started' put: true.
   checkReturn value: diagram storeToCache. proof at: 'store_completed' put: true.
   "The fixed material executor captures actual post-store native/source images
    itself. A generic read here would retire the retained scope while its source
    checkpoint still describes CURRENT before this topology change."
   stage := 'actual_head_normalization'. proof at: 'phase' put: stage.
   [(material at: 'execute') value] ensure: [proof at: 'normalization' put: (material at: 'progress') copy].
   answer := helpers third value: component value: record value: (record at: 'topologyManagedTerminalContext').
   (answer startsWith: 'BDE_') ifTrue: [component error: answer]. answer
 ]
 ] ifFail: [:error |
   mutationStarted ifTrue: [
     record at: 'topologyManagedFailureStage' put: stage.
     'BDE_TOPOLOGY_MANAGED_ERROR: ', stage, ': ', error messageText
   ] ifFalse: ['BDE_TOPOLOGY_MANAGED_CONFLICT: ', stage, ': ', error messageText]
 ]
]]
