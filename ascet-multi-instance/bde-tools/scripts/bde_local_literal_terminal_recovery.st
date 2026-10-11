"Fixed eval-only terminal certification for a completed initial literal inverse.
 No model setter, store, native/source patch execute or journal retry is called.
 The original scope references are retained, not recreated from export."
[:component :token :witnessToken |
 component handleExceptionsIn: [
 | record witness root diagram native desired patch status source current epoch highWater actual info sameOrder |
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated local terminal certification required'].
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 witness := (Smalltalk at: #DogeBDEMainWorkflowWitnessesV1) at: witnessToken.
 diagram := record at: 'diagram'. root := witness at: 'root'. native := record at: 'fieldNativeBefore'.
 ((record at: 'owner') == component item and: [(witness at: 'owner') == component item and: [
   (record at: 'component') = component getOID and: [(record at: 'diagramName') = 'Main' and: [
   (record at: 'operation') = 'set_literal' and: [(record at: 'state') = 'revert_started' and: [
   (record at: 'fieldLocalProfile') = 'native_source_local_inverse_v1' and: [
   (record at: 'fieldLocalHeadId') = token and: [(record includesKey: 'managedExecution') not]]]]]]]])
   ifFalse: [component error: 'Exact completed initial local literal inverse required'].
 ((Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main')) == root
   ifFalse: [component error: 'Original scope entry was retired or replaced; no rebinding'].
 ((root at: 'owner') == component item and: [(root at: 'specification') == diagram specification and: [
   (witness at: 'diagram') == diagram and: [(root at: 'diagram') specification == diagram specification and: [
   diagram topGraphicalHierarchy controller == component item and: [
   (native at: 'snapshots') includesKey: diagram topGraphicalHierarchy]]]]])
   ifFalse: [component error: 'Original diagram/specification/graph root expired'].
 "EtasAPIDiagram>>topGraphicalHierarchy lazily loads source into a per-wrapper
  cache. A diagnostic wrapper is not the retained wrapper. The original cached
  root, owner, full native fields/source and scope entry are verified below;
  no replacement graph is built or assigned to any native diagram wrapper."
 status := record at: 'fieldExecutionStatus'. desired := record at: 'fieldExecutionDesiredImages'.
 ((status at: 'direction') = 'undo' and: [(status at: 'store_completed') and: [
   (status at: 'terminal_verified') not and: [
   #('fieldExecutionPatch' 'fieldExecutionNormalization' 'fieldExecutionSourcePatch') allSatisfy: [:key |
     (((record at: key) at: 'progress') at: 'state') = 'applied']]]])
   ifFalse: [component error: 'All actual raw/store/normalization/source stages must have completed'].
 patch := record at: 'fieldExecutionSourcePatch'. source := diagram specification specSourceInternalOrNil.
 ((patch at: 'profile') = 'source_identity_patch_v1' and: [(patch at: 'sourceRoot') == source and: [
   (patch at: 'verifyDesired') value and: [(native at: 'verifyImages') value: desired]]])
   ifFalse: [component error: 'Actual local native/source target differs; do not certify or replay'].
 sameOrder := [:left :right | left size = right size and: [
   (1 to: left size) allSatisfy: [:index | (left at: index) == (right at: index)]]].
 ((witness at: 'current') at: 'verify') value ifFalse: [component error: 'Full original native fields differ'].
 (((witness at: 'parent') == diagram topGraphicalHierarchy contents) and: [
   (witness at: 'collection') == (witness at: 'parent') children and: [
   (sameOrder value: (witness at: 'parent') children value: (witness at: 'physical')) and: [
   (sameOrder value: (witness at: 'parent') sortedChildren value: (witness at: 'drawing'))]]])
   ifFalse: [component error: 'Full original physical/drawing identities differ'].
 (((record at: 'fieldSourceSame') value: component value: source value: (witness at: 'source')) == true)
   ifFalse: [component error: 'Full original source values and sharing differ'].
 ((witness at: 'ids') size = (witness at: 'idRows') size and: [
   (witness at: 'idRows') allSatisfy: [:pair | ((witness at: 'ids') at: pair first ifAbsent: [nil]) == pair last]])
   ifFalse: [component error: 'Retained original alias dictionary changed'].
 epoch := Smalltalk at: #DogeBDEStructureEpochV1. highWater := epoch at: 'highWater'.
 ((root at: 'scopeEpoch') == epoch and: [(root at: 'issuedGeneration') = (root at: 'generation') and: [
   (root at: 'generation') <= highWater and: [(witness at: 'generation') <= highWater]]])
   ifFalse: [component error: 'Current scope/allocator certificate differs'].
 "Restore this retained scope certificate only after full model/source proof.
  The allocator highWater remains monotonic; diagnostic generations stay spent."
 root at: 'diagram' put: diagram; at: 'ids' put: (witness at: 'ids');
   at: 'counter' put: (witness at: 'counter'); at: 'generation' put: (witness at: 'generation');
   at: 'issuedGeneration' put: (witness at: 'generation');
   at: 'checkpoint' put: ((root at: 'copySource') value: source); at: 'checkpointVersion' put: 2.
 actual := (record at: 'materialObservationReader') value: component value: 'Main' value: (record at: 'targets').
 (actual startsWith: 'BDE_STRUCTURE_ERROR:') ifTrue: [component error: actual].
 (actual = (record at: 'inverseExpectedEncoded') and: [(epoch at: 'highWater') = highWater and: [
   (patch at: 'verifyDesired') value and: [(native at: 'verifyImages') value: desired]]])
   ifFalse: [component error: 'Fresh terminal/allocator/native/source proof differs'].
 info := (record at: 'fieldSourceMaterialReader') value: component value:
   (Array with: source with: ((record at: 'fieldLocalExecutionBeforeSource') at: 'snapshots') keys).
 (info isKindOf: Dictionary) ifFalse: [component error: info asString].
 (info at: 'verify') value ifFalse: [component error: 'Fresh terminal source capture drifted'].
 record at: 'fieldLocalExecutedHead' put: (Dictionary new
   at: 'previousHead' put: token; at: 'result' put: nil;
   at: 'beforeNative' put: (record at: 'fieldLocalExecutionBeforeNative'); at: 'afterNative' put: desired;
   at: 'beforeSource' put: (record at: 'fieldLocalExecutionBeforeSource'); at: 'afterSource' put: info;
   at: 'beforeValues' put: (record at: 'fieldLocalExecutionBeforeValues');
   at: 'afterValues' put: ((root at: 'copyObservation') value: (root at: 'observationValues')); yourself);
   at: 'lastObserved' put: actual; at: 'state' put: 'reverted'.
 status at: 'phase' put: 'terminal'; at: 'terminal_verified' put: true; at: 'serialized_source_verified' put: true.
 (native at: 'encode') value: (Dictionary new at: 'profile' put: 'local_literal_terminal_recovery_v1';
   at: 'native_token' put: token; at: 'state' put: 'reverted'; at: 'full_original_witness_verified' put: true;
   at: 'allocator_high_water_before' put: highWater; at: 'allocator_high_water_after' put: (epoch at: 'highWater');
   at: 'restored_scope_generation' put: (root at: 'generation');
   at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'patch_execute_called' put: false; yourself)
 ] ifFail: [:error | 'BDE_LOCAL_TERMINAL_RECOVERY_ERROR: ', error messageText]
]
