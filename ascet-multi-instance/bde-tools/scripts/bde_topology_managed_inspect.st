"Inspect retained actual managed topology material without reader rebinding or setters."
[:component :token |
 component handleExceptionsIn: [
 | record root diagram prepared plan material proof parent drawing sameOrder source answer |
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 ((record at: 'owner') == component item and: [(record at: 'component') = component getOID and: [
   (record at: 'diagramName') = 'Main' and: [#('disconnect_data' 'delete_node') includes: (record at: 'operation')]]])
   ifFalse: [component error: 'Exact retained Main managed topology required'].
 proof := record at: 'topologyManagedExecution'. prepared := record at: 'topologyManagedPreflight'.
 plan := prepared at: 'plan'. material := record at: 'topologyManagedMaterialPlan'.
 ((((record at: 'topologyNativeBefore') at: 'encode') value: (material at: 'expectedValues')) =
     (((record at: 'topologyNativeBefore') at: 'encode') value: ((plan at: 'values') at: 'expected')) and: [
   (proof at: 'head_change_id') = (prepared at: 'head') and: [(proof at: 'result_change_id') = (prepared at: 'result')]])
   ifFalse: [component error: 'Retained managed material/execution/preparation lineage differs'].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 diagram := record at: 'diagram'. source := diagram specification specSourceInternalOrNil.
 parent := record at: 'orderParent'. drawing := parent sortedChildren asArray.
 sameOrder := [:left :right | left size = right size and: [
   (1 to: left size) allSatisfy: [:index | (left at: index) == (right at: index)]]].
 answer := Dictionary new at: 'profile' put: 'retained_managed_topology_diagnostic_v1';
   at: 'native_token' put: token; at: 'state' put: (record at: 'state');
   at: 'failure_stage' put: (record at: 'topologyManagedFailureStage' ifAbsent: [nil]);
   at: 'execution' put: proof copy; at: 'progress' put: (material at: 'progress') copy;
   at: 'actual_native_source_desired_verified' put: (material at: 'verifyDesired') value;
   at: 'source_root_preserved' put: source == ((material at: 'sourceCurrent') at: 'sourceRoot');
   at: 'registered_root_is_original' put: root == (record at: 'orderRoot');
   at: 'registered_diagram_is_original' put: (root at: 'diagram') == diagram;
   at: 'original_generation' put: (record at: 'orderGeneration');
   at: 'registered_generation' put: (root at: 'generation');
   at: 'checkpoint_matches_current_source' put: ((root at: 'sameSource') value: source value: (root at: 'checkpoint'));
   at: 'physical_target_verified' put: (sameOrder value: parent children value: ((plan at: 'parentPlan') at: 'merged'));
   at: 'drawing_target_verified' put: ((sameOrder value: drawing value: ((plan at: 'drawingPlan') at: 'merged')) and: [
     (1 to: drawing size) allSatisfy: [:index | (drawing at: index) basicGraphObject drawingOrder = index]]);
   at: 'endpoint_target_verified' put: (((record at: 'edgeDependencyReader') value: component value: record
     value: (plan at: 'expectedEndpointMode')) == true);
   at: 'expected_values' put: ((plan at: 'values') at: 'expected');
   at: 'registered_observation' put: (root at: 'observationValues');
   at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'write_authorized' put: false;
   at: 'terminal_certified' put: false; yourself.
 ((record at: 'topologyNativeBefore') at: 'encode') value: answer
 ] ifFail: [:error | 'BDE_TOPOLOGY_MANAGED_INSPECT_ERROR: ', error messageText]
]
