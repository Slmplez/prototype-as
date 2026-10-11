"Read-only retained model inverse preflight. CURRENT is not an edit after receipt."
[:helpers | [:component :token |
 component handleExceptionsIn: [
 | root record material original current patch checks answer |
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 material := record at: 'commitResourceMaterial'. original := material at: 'registeredModelMaterial'.
 ((record at: 'owner') == component item and: [(material at: 'owner') == component item and: [
   (material at: 'editToken') = token and: [(material at: 'root') == root and: [
   (original at: 'root') == root and: [(original at: 'owner') == component item and: [
   (original at: 'generation') = (root at: 'generation') and: [
   ((record at: 'commitResourceReceipt') at: 'profile') = 'native_commit_prepare_v6']]]]]]])
   ifFalse: [component error: 'Exact retained original v6 registered model required'].
 checks := material at: 'registeredModelPatchPreflights' ifAbsentPut: [OrderedCollection new].
 checks size >= 32 ifTrue: [component error: 'Original SG patch preflight capacity reached; no eviction'].
 current := helpers first value: component value: material value: (Array with: 'since_preparation' with: nil).
 (current isKindOf: Dictionary) ifFalse: [component error: current asString].
 patch := helpers last value: component
   value: (Array with: (original at: 'snapshots') with: (current at: 'snapshots')) value: 'undo'.
 (patch isKindOf: Dictionary) ifFalse: [component error: patch asString].
 checks add: (Dictionary new at: 'current' put: current; at: 'patch' put: patch; yourself).
 answer := Dictionary new at: 'profile' put: 'native_registered_model_patch_preflight_v1';
   at: 'native_token' put: token; at: 'component_oid' put: component getOID; at: 'generation' put: (root at: 'generation');
   at: 'original_objects' put: (original at: 'snapshots') size; at: 'current_objects' put: (current at: 'snapshots') size;
   at: 'cell_count' put: ((patch at: 'progress') at: 'cell_count');
   at: 'compatible' put: (patch at: 'verifyBeforeApply') value;
   at: 'actual_changes' put: (current at: 'actual_changes');
   at: 'original_image' put: (original at: 'originalImage'); at: 'current_image' put: (current at: 'image');
   at: 'current_roots' put: (current at: 'registered_roots'); at: 'current_members' put: (current at: 'registered_members');
   at: 'prepared_receipt' put: (record at: 'commitResourceReceipt');
   at: 'current_used_as_edit_after' put: false; at: 'executed' put: false;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'commit_called' put: false;
   at: 'write_authorized' put: false; at: 'inverse_authorized' put: false;
   at: 'full_commit_resource_closure' put: false; at: 'full_delivery' put: false; yourself.
 (root at: 'encodeObservation') value: answer
 ] ifFail: [:error | 'BDE_REGISTERED_MODEL_PREFLIGHT_ERROR: ', error messageText]
]]
