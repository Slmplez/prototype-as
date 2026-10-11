"Capture and bind original database resources in the same native prepare dispatch."
[:originalEditor :collector :database |
 | baseCollector modelCollector controlCollector reciprocalCollector referenceBaselineCollector persistentOwnerCollector |
 baseCollector := collector. modelCollector := nil. controlCollector := nil. reciprocalCollector := nil. referenceBaselineCollector := nil. persistentOwnerCollector := nil.
 collector isArray ifTrue: [
   (#(2 3 4 5 6) includes: collector size) ifFalse: [originalEditor error: 'Fixed loaded-model/control/reciprocal/baseline/owner helpers required'].
   baseCollector := collector first. modelCollector := collector second.
   collector size >= 3 ifTrue: [controlCollector := collector at: 3].
   collector size >= 4 ifTrue: [reciprocalCollector := collector at: 4].
   collector size >= 5 ifTrue: [referenceBaselineCollector := collector at: 5].
   collector size = 6 ifTrue: [persistentOwnerCollector := collector at: 6].
   modelCollector class name asString = 'BlockContextTemplate'
     ifFalse: [originalEditor error: 'Fixed registered model collector required']].
 (originalEditor class name asString = 'BlockContextTemplate' and: [
   baseCollector class name asString = 'BlockContextTemplate'])
   ifFalse: [originalEditor error: 'Fixed prepared resource helpers required'].
 [:component :command :reader |
 | stage |
 stage := 'prepare'.
 component handleExceptionsIn: [
 | encoded token resourceToken registry record root material evidence compact summaries changed modelProof controlBefore controlAfter controlSeed reciprocalProof baselineProof ownerProof |
 (command isArray and: [command size >= 5 and: [command first = 'Main' and: [command second = 'prepare']]])
   ifFalse: [component error: 'Commit capture is a preparation-only Main profile'].
 token := command at: 4.
 resourceToken := 'commit_', (token copyFrom: 6 to: token size).
 ((Smalltalk at: #DogeBDECommitResourceWitnessesV1 ifAbsent: [Dictionary new]) includesKey: resourceToken)
   ifTrue: [component error: 'Original resource token already retained; prepare cannot replay or rebind'].
 encoded := originalEditor value: component value: command value: reader.
 (encoded isString and: [(encoded startsWith: 'BDE_') not])
   ifFalse: [component error: 'Original prepare failed; no resource capture: ', encoded printString].
 registry := Smalltalk at: #DogeBDEStructureEditsV3.
 record := registry at: token.
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 ((record at: 'state') = 'prepared' and: [(record at: 'owner') == component item and: [
   (record at: 'component') = component getOID and: [(record at: 'diagramName') = 'Main' and: [
   (record at: 'diagram') == (root at: 'diagram')]]]])
   ifFalse: [component error: 'Exact prepared edit/root binding required'].
 (record includesKey: 'commitResourceToken')
   ifTrue: [component error: 'Original commit preparation cannot replay or rebind'].
 record at: 'commitResourceToken' put: resourceToken.
 controlBefore := nil. controlAfter := nil.
 controlCollector notNil ifTrue: [
   stage := 'ctree-control-before'.
   controlSeed := Dictionary new at: 'phase' put: 'new'; at: 'preparedEdit' put: record; yourself.
   record at: 'commitControlMaterial' put: controlSeed.
   controlBefore := controlCollector value: component value: (Array with: controlSeed with: nil with: 'query_read_effect') value: database.
   (controlBefore isKindOf: Dictionary) ifFalse: [component error: controlBefore printString].
   record at: 'commitControlMaterial' put: (controlBefore at: 'material')].
 stage := 'capture'.
 evidence := baseCollector value: component
   value: (Array with: 'capture' with: resourceToken with: 'native_v1') value: database.
 (evidence isKindOf: Dictionary) ifFalse: [component error: evidence printString].
 material := (Smalltalk at: #DogeBDECommitResourceWitnessesV1) at: resourceToken.
 ((material at: 'root') == root and: [(material at: 'owner') == (record at: 'owner') and: [
   (material at: 'generation') = (root at: 'generation') and: [
   (material at: 'phase') = 'captured' and: [(evidence at: 'stopped_on_read_error') == false]]]])
   ifFalse: [component error: 'Complete new resource capture failed; no original material rebound'].
 material at: 'editToken' put: token; at: 'editRecord' put: record;
   at: 'operation' put: (record at: 'operation').
 record at: 'commitResourceMaterial' put: material.
 controlBefore notNil ifTrue: [material at: 'controlMaterial' put: (controlBefore at: 'material');
   at: 'controlBefore' put: (controlBefore at: 'image')].
 ((material at: 'root') == root and: [(material at: 'owner') == (record at: 'owner') and: [
   (material at: 'generation') = (root at: 'generation') and: [
   (material at: 'phase') = 'captured' and: [(evidence at: 'stopped_on_read_error') == false]]]])
   ifFalse: [component error: 'Complete current resource capture failed; material retained'].
 modelProof := nil.
 modelCollector notNil ifTrue: [
   stage := 'registered-models'. modelProof := modelCollector value: component value: material.
   (modelProof isKindOf: Dictionary) ifFalse: [component error: modelProof printString]].
 ownerProof := nil.
 persistentOwnerCollector notNil ifTrue: [
   stage := 'persistent-owners'.
   ownerProof := persistentOwnerCollector value: component value: material value: database.
   (ownerProof isKindOf: Dictionary) ifFalse: [component error: ownerProof printString]].
 reciprocalProof := nil.
 reciprocalCollector notNil ifTrue: [
   stage := 'original-reciprocal-references'.
   reciprocalProof := reciprocalCollector value: component value: material value: database.
   (reciprocalProof isKindOf: Dictionary) ifFalse: [component error: reciprocalProof printString]].
 baselineProof := nil.
 referenceBaselineCollector notNil ifTrue: [
   stage := 'original-reference-file-baseline'.
   baselineProof := referenceBaselineCollector value: component value: material value: database.
   (baselineProof isKindOf: Dictionary) ifFalse: [component error: baselineProof printString]].
 controlBefore notNil ifTrue: [
   stage := 'ctree-control-after'.
   controlAfter := controlCollector value: component
     value: (Array with: (controlBefore at: 'material') with: (controlBefore at: 'image') with: 'query_read_effect') value: database.
   (controlAfter isKindOf: Dictionary) ifFalse: [component error: controlAfter printString].
   material at: 'controlAfter' put: (controlAfter at: 'image'); at: 'controlReadEffects' put: (controlAfter at: 'actual_changes')].
 stage := 'receipt'.
 summaries := (evidence at: 'records') collect: [:row |
   Dictionary new at: 'role' put: (row at: 'role'); at: 'logical_size' put: (row at: 'logical_size');
     at: 'allocated_size' put: (row at: 'allocated_size'); yourself].
 changed := 0.
 (evidence at: 'records') do: [:row | | old fresh |
   old := (row at: 'ctree_before') at: 'fields'. fresh := (row at: 'ctree_after') at: 'fields'.
   old doWithIndex: [:field :index |
     ((root at: 'encodeObservation') value: (field at: 'value')) =
       ((root at: 'encodeObservation') value: ((fresh at: index) at: 'value'))
       ifFalse: [changed := changed + 1]]].
 compact := Dictionary new at: 'profile' put: 'native_commit_prepare_v1';
   at: 'native_token' put: token; at: 'resource_token' put: resourceToken;
   at: 'component_oid' put: component getOID; at: 'generation' put: (root at: 'generation');
   at: 'phase' put: 'captured'; at: 'cache_entries' put: ((evidence at: 'before_read') at: 'cache_size');
   at: 'retained_original_fields' put: (evidence at: 'retained_original_fields');
   at: 'retained_original_values' put: (evidence at: 'retained_original_values');
   at: 'record_summaries' put: summaries;
   at: 'modified_object_oids' put: (((evidence at: 'before_read') at: 'modified_objects') collect: [:row | row at: 'oid']);
   at: 'ctree_direct_changed_fields' put: changed;
   at: 'current_read_resources_unchanged' put: (evidence at: 'current_read_resources_unchanged');
   at: 'has_unrelated_pending_objects' put: (evidence at: 'has_unrelated_pending_objects');
   at: 'original_material_held' put: true; at: 'same_native_dispatch' put: true;
   at: 'full_commit_resource_closure' put: false; at: 'write_authorized' put: false;
   at: 'inverse_authorized' put: false; at: 'model_setters_called' put: 0;
   at: 'store_called' put: false; at: 'commit_called' put: false; yourself.
 compact at: 'record_length_profile' put: (evidence at: 'record_comparison_profile').
 modelProof notNil ifTrue: [compact at: 'profile' put: 'native_commit_prepare_v2';
   at: 'registered_models' put: modelProof].
 controlBefore notNil ifTrue: [compact at: 'profile' put: 'native_commit_prepare_v3';
   at: 'ctree_control' put: (controlBefore at: 'summary')].
 reciprocalProof notNil ifTrue: [compact at: 'profile' put: 'native_commit_prepare_v4';
   at: 'reciprocal_references' put: reciprocalProof].
 baselineProof notNil ifTrue: [compact at: 'profile' put: 'native_commit_prepare_v5';
   at: 'reference_file_baseline' put: baselineProof].
 ownerProof notNil ifTrue: [compact at: 'profile' put: 'native_commit_prepare_v6';
   at: 'persistent_owners' put: ownerProof].
 record at: 'commitResourceReceipt' put: compact.
 (root at: 'encodeObservation') value: (Dictionary new
   at: 'profile' put: 'native_commit_preparation_envelope_v1';
   at: 'preparation_encoded' put: encoded; at: 'commit_resources' put: compact; yourself)
 ] ifFail: [:error | 'BDE_COMMIT_PREPARE_ERROR: ', stage, ': ', error messageText]
 ]
]
