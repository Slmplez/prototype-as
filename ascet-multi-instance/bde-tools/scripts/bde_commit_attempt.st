"Query an attempted capture without replaying preparation or releasing material."
[:component :token :database |
 component handleExceptionsIn: [
  | root resourceToken resources edits material record answer baseline |
  root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
  (root at: 'owner') == component item ifFalse: [component error: 'Original observed root required for capture attempt query'].
  resourceToken := 'commit_', (token copyFrom: 6 to: token size).
  resources := Smalltalk at: #DogeBDECommitResourceWitnessesV1 ifAbsent: [Dictionary new].
  edits := Smalltalk at: #DogeBDEStructureEditsV3 ifAbsent: [Dictionary new].
  material := resources at: resourceToken ifAbsent: [nil].
  record := edits at: token ifAbsent: [nil].
  record notNil ifTrue: [
    ((record at: 'owner') == component item and: [(record at: 'component') = component getOID and: [
      (record at: 'diagramName') = 'Main' and: [(record at: 'diagram') == (root at: 'diagram')]]])
      ifFalse: [component error: 'Original prepared attempt record differs']].
  answer := Dictionary new at: 'profile' put: 'native_commit_attempt_v1'; at: 'action' put: 'attempt';
    at: 'native_token' put: token; at: 'resource_token' put: resourceToken; at: 'component_oid' put: component getOID;
    at: 'generation' put: nil; at: 'prepared_edit_present' put: record notNil;
    at: 'resource_material_present' put: false; at: 'same_original_binding' put: false;
    at: 'material_phase' put: nil; at: 'prepared_receipt' put: nil;
    at: 'reference_baseline_phase' put: nil; at: 'reference_profile_index' put: nil;
    at: 'original_material_held' put: false; at: 'model_setters_called' put: 0;
    at: 'store_called' put: false; at: 'commit_called' put: false; at: 'write_authorized' put: false;
    at: 'inverse_authorized' put: false; at: 'full_commit_resource_closure' put: false; yourself.
  material notNil ifTrue: [
    ((material at: 'root') == root and: [(material at: 'owner') == component item and: [
      (material at: 'access') == database dbAccess and: [(material at: 'controller') == database dbInterface and: [
      (material at: 'generation') = (root at: 'generation')]]]])
        ifFalse: [component error: 'Original capture attempt material identity changed'].
    (material includesKey: 'editRecord') ifTrue: [ | retainedRecord |
      retainedRecord := material at: 'editRecord'.
      ((material at: 'editToken') = token and: [(retainedRecord at: 'commitResourceMaterial') == material and: [
        (retainedRecord at: 'commitResourceToken') = resourceToken and: [(retainedRecord at: 'owner') == component item]]])
          ifFalse: [component error: 'Retained capture attempt edit was rebound'].
      (record notNil and: [record ~~ retainedRecord]) ifTrue: [component error: 'Another edit record occupies retained attempt token'].
      answer at: 'prepared_receipt' put: (retainedRecord at: 'commitResourceReceipt' ifAbsent: [nil])].
    answer at: 'generation' put: (material at: 'generation'); at: 'resource_material_present' put: true;
      at: 'same_original_binding' put: true; at: 'material_phase' put: (material at: 'phase');
      at: 'original_material_held' put: true.
    (material includesKey: 'referenceFileBaseline') ifTrue: [
      baseline := material at: 'referenceFileBaseline'.
      ((baseline at: 'resourceMaterial') == material and: [(baseline at: 'token') = token and: [
        (baseline at: 'root') == root and: [(baseline at: 'generation') = (root at: 'generation')]]])
          ifFalse: [component error: 'Original reference baseline attempt identity differs'].
      answer at: 'reference_baseline_phase' put: (baseline at: 'phase');
        at: 'reference_profile_index' put: (baseline at: 'profileIndex' ifAbsent: [nil])]].
  (root at: 'encodeObservation') value: answer
 ] ifFail: [:error | 'BDE_COMMIT_ATTEMPT_ERROR: ', error messageText]
]
