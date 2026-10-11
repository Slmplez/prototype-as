"Bind one newly observed reference-file baseline to the original prepared edit."
[:profiler :scanner |
 [:component :material :database |
  | stage baseline |
  stage := 'binding'.
  component handleExceptionsIn: [
   | record root token beforeCount encoded contexts context report proof |
   record := material at: 'editRecord'. root := material at: 'root'. token := material at: 'editToken'.
   ((record at: 'state') = 'prepared' and: [(record at: 'commitResourceMaterial') == material and: [
     (record at: 'owner') == component item and: [(root at: 'owner') == component item and: [
     (material at: 'generation') = (root at: 'generation') and: [
     ((Smalltalk at: #DogeBDEStructureEditsV3) at: token) == record]]]]])
       ifFalse: [component error: 'Exact live prepared edit required for original reference baseline'].
   ((material includesKey: 'referenceFileBaseline') or: [record includesKey: 'referenceFileBaselineMaterial'])
     ifTrue: [component error: 'Original reference baseline cannot replay or rebind'].
   baseline := Dictionary new at: 'phase' put: 'profiling'; at: 'preparedEdit' put: record;
     at: 'resourceMaterial' put: material; at: 'root' put: root; at: 'token' put: token;
     at: 'generation' put: (root at: 'generation'); yourself.
   material at: 'referenceFileBaseline' put: baseline.
   record at: 'referenceFileBaselineMaterial' put: baseline.
   beforeCount := (material at: 'referenceFileProfiles' ifAbsent: [#()]) size.
   stage := 'profile'.
   encoded := profiler value: component value: token value: database.
   contexts := material at: 'referenceFileProfiles' ifAbsent: [#()].
   contexts size = (beforeCount + 1) ifTrue: [
     baseline at: 'context' put: contexts last; at: 'profileIndex' put: contexts size].
   (encoded isString and: [(encoded startsWith: 'BDE_') not])
     ifFalse: [baseline at: 'error' put: encoded. component error: 'Original reference baseline profile failed'].
   contexts := material at: 'referenceFileProfiles'.
   contexts size = (beforeCount + 1) ifFalse: [component error: 'One new original reference profile required'].
   context := contexts last.
   baseline at: 'context' put: context; at: 'profileIndex' put: contexts size.
   ((context at: 'material') == material and: [(context at: 'root') == root and: [(context at: 'token') = token]])
     ifFalse: [component error: 'Original baseline profile identity differs'].
   stage := 'scan'. baseline at: 'phase' put: 'scanning'.
   report := scanner value: component value: context value: database.
   (report isKindOf: Dictionary) ifFalse: [baseline at: 'error' put: report. component error: report printString].
   baseline at: 'report' put: report.
   ((report at: 'profile') = 'native_reference_file_observation_v3' and: [
     (report at: 'phase') = 'observational_census_match' and: [(report at: 'census_matches') == true and: [
     (report at: 'identity_before_checked') == true and: [(report at: 'identity_after_checked') == true and: [
     (report at: 'failures') isEmpty and: [(record at: 'state') = 'prepared']]]]]])
       ifFalse: [component error: 'New reference baseline observation failed; complete partial material retained'].
   stage := 'receipt'.
   proof := Dictionary new at: 'profile' put: 'native_reference_file_baseline_v1';
     at: 'native_token' put: token; at: 'component_oid' put: component getOID;
     at: 'generation' put: (root at: 'generation'); at: 'profile_index' put: contexts size;
     at: 'observation_profile' put: (report at: 'profile'); at: 'phase' put: (report at: 'phase');
     at: 'record_count' put: (report at: 'records') size; at: 'first_key_count' put: (report at: 'keys_first') size;
     at: 'second_key_count' put: (report at: 'keys_second') size; at: 'events' put: (report at: 'events') size;
     at: 'gv_image_count' put: (report at: 'gv_images') size; at: 'count_before' put: (report at: 'count_before');
     at: 'count_after' put: (report at: 'count_after'); at: 'same_native_dispatch' put: true;
     at: 'original_material_held' put: true; at: 'before_model_mutation' put: true;
     at: 'census_matches' put: true; at: 'identity_before_checked' put: true; at: 'identity_after_checked' put: true;
     at: 'complete_before_authorized' put: false; at: 'terminal_semantics_verified' put: false;
     at: 'cross_process_atomic' put: false; at: 'write_authorized' put: false; at: 'inverse_authorized' put: false;
     at: 'store_called' put: false; at: 'commit_called' put: false; at: 'model_setters_called' put: 0;
     at: 'unknown_terminal_count' put: 3; yourself.
   baseline at: 'phase' put: 'captured'; at: 'proof' put: proof.
   proof
  ] ifFail: [:error |
    baseline notNil ifTrue: [baseline at: 'phase' put: 'failed'; at: 'failedStage' put: stage; at: 'error' put: error messageText].
    'BDE_REFERENCE_BASELINE_ERROR: ', stage, ': ', error messageText]
 ]
]
