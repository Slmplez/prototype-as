"Abandon only a fully witnessed zero-step managed attempt; no model operation."
[:component :context |
 component handleExceptionsIn: [
 | mode token owner state resultId witnessToken record proof material prepared root diagram witness
   parent drawing current encoder answer native currentParent currentDrawing abandoned head |
 (context isArray and: [context size = 6]) ifFalse: [component error: 'Exact unstarted topology context required'].
 mode := context first. token := context at: 2. owner := context at: 3.
 state := context at: 4. resultId := context at: 5. witnessToken := context last.
 (#('inspect' 'abandon' 'inspect_abandoned' 'finish_abandoned') includes: mode)
   ifFalse: [component error: 'Fixed unstarted recovery action required'].
 abandoned := #('inspect_abandoned' 'finish_abandoned') includes: mode.
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 proof := record at: 'topologyManagedExecution'. material := record at: 'topologyManagedMaterialPlan'.
 prepared := record at: 'topologyManagedPreflight'. root := record at: 'orderRoot'. diagram := record at: 'diagram'.
 witness := (Smalltalk at: #DogeBDEMainWorkflowWitnessesV1) at: witnessToken.
 ((record at: 'owner') == component item and: [(record at: 'component') = component getOID and: [
   (record at: 'diagramName') = 'Main' and: [#('disconnect_data' 'delete_node') includes: (record at: 'operation')]]])
   ifFalse: [component error: 'Exact retained Main unstarted owner required'].
 ((record at: 'managedInverseId') = owner and: [(record at: 'topologyHeadId') = owner and: [
   (prepared at: 'head') = owner and: [(prepared at: 'state') = state and: [(prepared at: 'result') = resultId and: [
   (proof at: 'head_change_id') = owner and: [(proof at: 'result_change_id') = resultId and: [
   (proof at: 'expected_state') = state and: [(proof at: 'phase') = (abandoned ifTrue: ['aborted_before_setters'] ifFalse: ['native_topology']) and: [
   (record at: 'state') = (abandoned ifTrue: [state] ifFalse: [state = 'applied' ifTrue: ['revert_started'] ifFalse: ['started']])]]]]]]]]])
   ifFalse: [component error: 'Exact started attempt and current retained owner required'].
 ((proof at: 'model_operations') = 0 and: [(proof at: 'drawing_assignments') = 0 and: [
   (proof at: 'store_started') == false and: [(proof at: 'store_completed') == false and: [
   ((material at: 'progress') at: 'state') = 'prepared' and: [
   ((material at: 'progress') at: 'native_primitives') = 0 and: [
   ((material at: 'progress') at: 'source_primitives') = 0]]]]]])
   ifFalse: [component error: 'Model/store/normalization may have started; no abandonment'].
 head := record at: 'topologyOwnedHead'.
 ((head at: 'owner') = owner and: [(head at: 'afterState') = state and: [
   (proof at: 'execution_sequence') = ((head at: 'sequence') + 1) and: [
   (record at: 'topologyExecutionSerial') = (proof at: 'execution_sequence')]]])
   ifFalse: [component error: 'Exact unspent next execution sequence required'].
 abandoned ifTrue: [
   (record includesKey: 'managedExecution') ifTrue: [component error: 'Abandoned attempt still owns execution intent'].
   ((record at: 'topologyAbandonedExecution') at: 'result_change_id') = resultId
     ifFalse: [component error: 'Retained original abandoned proof differs']
 ].
 ((Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main')) == root
   ifFalse: [component error: 'Original scope entry expired'].
 ((root at: 'diagram') == diagram and: [(root at: 'owner') == component item])
   ifFalse: [component error: 'Original scope owner/diagram expired'].
 ((witness at: 'root') == root and: [(witness at: 'owner') == component item and: [(witness at: 'diagram') == diagram]])
   ifFalse: [component error: 'Exact same-process witness owner required'].
 ((witness at: 'collection') == (record at: 'orderCollection') and: [
   (witness at: 'generation') = (root at: 'generation') and: [(witness at: 'ids') == (root at: 'ids')]])
   ifFalse: [component error: 'Original witness collection/generation/aliases expired'].
 ((witness at: 'counter') = (root at: 'counter') and: [
   (witness at: 'idRows') allSatisfy: [:pair | ((root at: 'ids') at: pair first ifAbsent: [nil]) == pair last]])
   ifFalse: [component error: 'Exact unchanged witness aliases required'].
 native := record at: 'topologyNativeBefore'. encoder := native at: 'encode'.
 (((native at: 'verifyImages') value: (material at: 'nativeCurrent')) and: [
   ((material at: 'sourceCurrent') at: 'verify') value and: [
   ((prepared at: 'graphical') at: 'verify') value and: [((witness at: 'current') at: 'verify') value and: [
   (root at: 'sameSource') value: diagram specification specSourceInternalOrNil value: (witness at: 'source')]]]])
   ifFalse: [component error: 'Complete actual native/source/graphical CURRENT changed'].
 current := (record at: 'materialObservationReader') value: component value: 'Main' value: #().
 current = (prepared at: 'current') ifFalse: [component error: 'Fresh complete typed CURRENT differs from prepared before'].
 parent := record at: 'orderParent'. drawing := parent sortedChildren asArray copy.
 currentParent := (record at: 'orderEvidenceReader') value: record value: parent children asArray copy.
 currentDrawing := ((record at: 'drawingOrderReader') value: component value: record value: drawing) value: true.
 (((encoder value: (currentParent at: 'value')) = (encoder value: ((prepared at: 'plan') at: 'parentCurrent'))) and: [
   (encoder value: (currentDrawing at: 'value')) = (encoder value: ((prepared at: 'plan') at: 'drawingCurrent')) and: [
   ((record at: 'edgeDependencyReader') value: component value: record
     value: ((prepared at: 'plan') at: 'currentEndpointMode')) == true]])
   ifFalse: [component error: 'Complete CURRENT order/endpoint differs'].
 answer := Dictionary new at: 'profile' put: 'unstarted_topology_abandonment_v1'; at: 'native_token' put: token;
   at: 'head_change_id' put: owner; at: 'result_change_id' put: resultId; at: 'state' put: state;
   at: 'complete_before_verified' put: true; at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'patch_execute_called' put: false; at: 'abandoned' put: (#('abandon' 'finish_abandoned') includes: mode); yourself.
 mode = 'abandon' ifTrue: [
   record at: 'topologyAbandonedExecution' put: proof copy; at: 'state' put: state;
     at: 'lastObserved' put: current; at: 'lastObservedTargets' put: #().
   record removeKey: 'managedExecution'.
   proof at: 'phase' put: 'aborted_before_setters'
 ].
 (#('abandon' 'finish_abandoned') includes: mode) ifTrue: [
   record at: 'topologyExecutionSerial' put: (head at: 'sequence')].
 encoder value: answer
 ] ifFail: [:error | 'BDE_TOPOLOGY_UNSTARTED_RECOVERY_ERROR: ', error messageText]
]
