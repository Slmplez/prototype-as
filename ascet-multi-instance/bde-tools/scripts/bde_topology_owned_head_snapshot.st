"Export the frozen actual owned topology history, never CURRENT substitutes.
 This read does not prepare or execute an inverse and grants no write authority."
[:component :context |
 component handleExceptionsIn: [
 | token owner state record head root diagram parent collection native answer |
 (context isArray and: [context size = 3])
   ifFalse: [component error: 'Exact topology snapshot token/owner/state required'].
 token := context first. owner := context at: 2. state := context last.
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 ((record at: 'owner') == component item and: [(record at: 'component') = component getOID and: [
   (record at: 'orderToken') = token and: [(record at: 'diagramName') = 'Main' and: [
   #('disconnect_data' 'delete_node') includes: (record at: 'operation')]]]])
   ifFalse: [component error: 'Exact retained ordinary Main topology required'].
 head := record at: 'topologyOwnedHead' ifAbsent: [component error: 'Actual owned topology head unavailable'].
 ((#('applied' 'reverted') includes: state) and: [
   (head at: 'ownershipProfile') = 'actual_topology_owned_head_v1' and: [
   (record at: 'materialProtocol' ifAbsent: [nil]) = 'retained_inverse_v1' and: [
   (record at: 'managedInverseId') = owner and: [(record at: 'topologyHeadId') = owner and: [
   (head at: 'owner') = owner and: [(head at: 'afterState') = state and: [
   (head at: 'beforeState') ~= state and: [(record at: 'state') = state and: [
   (head at: 'sequence') = (record at: 'topologyExecutionSerial')]]]]]]]]])
   ifFalse: [component error: 'Actual topology snapshot owner/state/sequence expired'].
 #('beforeValues' 'afterValues' 'beforeNative' 'afterNative' 'beforeSource' 'afterSource'
   'beforeParentEvidence' 'afterParentEvidence' 'beforeDrawingEvidence' 'afterDrawingEvidence') do: [:key |
   (head includesKey: key) ifFalse: [component error: 'Frozen actual topology history unavailable; cannot reconstruct it']].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 diagram := record at: 'diagram'. parent := head at: 'parent'. collection := head at: 'collection'.
 ((root at: 'owner') == component item and: [(root at: 'diagram') == diagram and: [
   (root at: 'specification') == diagram specification and: [parent == (record at: 'orderParent') and: [
   parent == diagram topGraphicalHierarchy contents and: [collection == (record at: 'orderCollection') and: [
   parent children == collection]]]]]]) ifFalse: [component error: 'Actual topology snapshot native lineage expired'].
 native := record at: 'topologyNativeBefore'.
 (((native at: 'snapshots') keys allSatisfy: [:object |
   ((head at: 'beforeNative') includesKey: object) and: [(head at: 'afterNative') includesKey: object]]) and: [
   ((head at: 'beforeSource') at: 'sourceRoot') == ((head at: 'afterSource') at: 'sourceRoot')])
   ifFalse: [component error: 'Actual topology snapshot backing material incomplete'].
 answer := Dictionary new at: 'profile' put: 'actual_topology_owned_snapshot_v1';
   at: 'native_token' put: token; at: 'owner_change_id' put: owner;
   at: 'previous_owner_change_id' put: (head at: 'previousOwner');
   at: 'component_oid' put: component getOID; at: 'diagram' put: 'Main';
   at: 'operation' put: (record at: 'operation'); at: 'sequence' put: (head at: 'sequence');
   at: 'before_state' put: (head at: 'beforeState'); at: 'state' put: state;
   at: 'direction' put: (head at: 'direction');
   at: 'before' put: (head at: 'beforeValues'); at: 'after' put: (head at: 'afterValues');
   at: 'parent_before' put: (head at: 'beforeParentEvidence');
   at: 'parent_after' put: (head at: 'afterParentEvidence');
   at: 'drawing_before' put: (head at: 'beforeDrawingEvidence');
   at: 'drawing_after' put: (head at: 'afterDrawingEvidence');
   at: 'before_endpoint_mode' put: (head at: 'beforeEndpointMode');
   at: 'after_endpoint_mode' put: (head at: 'afterEndpointMode');
   at: 'native_source_material_retained' put: true;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'write_authorized' put: false; at: 'managed_inverse_enabled' put: false; yourself.
 (native at: 'encode') value: answer
 ] ifFail: [:error | 'BDE_TOPOLOGY_HEAD_SNAPSHOT_ERROR: ', error messageText]
]
