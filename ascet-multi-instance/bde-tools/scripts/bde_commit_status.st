"Fresh retained binding query; check records full actual resource differences without a model write."
[:helpers |
 | collector modelCollector controlCollector reciprocalCollector |
 collector := helpers. modelCollector := nil. controlCollector := nil. reciprocalCollector := nil.
 helpers isArray ifTrue: [
   (#(2 3 4) includes: helpers size) ifFalse: [helpers error: 'Fixed current resource/model/control/reciprocal helpers required'].
   collector := helpers first. modelCollector := helpers second.
   helpers size >= 3 ifTrue: [controlCollector := helpers at: 3].
   helpers size = 4 ifTrue: [reciprocalCollector := helpers at: 4]].
 [:component :context :database |
 | stage |
 stage := 'binding'.
 component handleExceptionsIn: [
 | action token resourceToken root registry material record current encoded equal changes compareImage
   compareResources mapRows before after original records recordChanges answer editPresent checks modelPair modelBefore modelAfter modelChecks
   controlBefore controlAfter controlPair controlChecks controlProof reciprocalCurrent |
 (context isArray and: [context size = 2 and: [#('inspect' 'check' 'audit') includes: context first]])
   ifFalse: [component error: 'Fixed retained commit query required'].
 action := context first. token := context last.
 resourceToken := 'commit_', (token copyFrom: 6 to: token size).
 registry := Smalltalk at: #DogeBDECommitResourceWitnessesV1 ifAbsent: [component error: 'Commit material registry unavailable'].
 material := registry at: resourceToken ifAbsent: [component error: 'Original commit material unavailable; do not recapture'].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 record := material at: 'editRecord' ifAbsent: [component error: 'Original prepared edit binding unavailable'].
 ((material at: 'root') == root and: [(material at: 'owner') == component item and: [
   (material at: 'editToken') = token and: [(record at: 'commitResourceMaterial') == material and: [
   (record at: 'commitResourceToken') = resourceToken and: [(record at: 'owner') == component item and: [
   (material at: 'generation') = (root at: 'generation') and: [
   (material at: 'access') == database dbAccess and: [(material at: 'controller') == database dbInterface]]]]]]]])
   ifFalse: [component error: 'Original prepared commit query rebound or expired'].
 (record at: 'state') = 'prepared' ifFalse: [component error: 'Capture-only original edit must remain unwritten'].
 editPresent := ((Smalltalk at: #DogeBDEStructureEditsV3) at: token ifAbsent: [nil]) == record.
 answer := Dictionary new at: 'profile' put: 'native_commit_status_v1'; at: 'action' put: action;
   at: 'native_token' put: token; at: 'resource_token' put: resourceToken; at: 'component_oid' put: component getOID;
   at: 'generation' put: (root at: 'generation'); at: 'phase' put: (material at: 'phase');
   at: 'prepared_edit_present' put: editPresent; at: 'original_material_held' put: true;
   at: 'same_original_binding' put: true; at: 'model_setters_called' put: 0;
   at: 'store_called' put: false; at: 'commit_called' put: false;
   at: 'write_authorized' put: false; at: 'inverse_authorized' put: false;
   at: 'full_commit_resource_closure' put: false;
   at: 'prepared_receipt' put: (record at: 'commitResourceReceipt' ifAbsent: [nil]);
   at: 'current_resources_checked' put: false; at: 'actual_changes' put: nil; yourself.
 (material includesKey: 'reciprocalMaterial') ifTrue: [
   answer at: 'current_reciprocal_records_checked' put: false].
 action = 'check' ifTrue: [
   modelBefore := nil. modelAfter := nil.
   controlBefore := nil. controlAfter := nil.
   reciprocalCurrent := nil.
   (material includesKey: 'controlMaterial') ifTrue: [
     (controlCollector notNil and: [controlCollector class name asString = 'BlockContextTemplate'])
       ifFalse: [component error: 'Fixed original CTree control collector required'].
     controlChecks := material at: 'controlChecks' ifAbsentPut: [OrderedCollection new].
     controlChecks size >= 32 ifTrue: [component error: 'Complete CTree query evidence capacity reached; no eviction'].
     controlPair := Dictionary new at: 'phase' put: 'checking-before'; yourself. controlChecks add: controlPair.
     stage := 'current-control-before'.
     controlBefore := controlCollector value: component
       value: (Array with: (material at: 'controlMaterial') with: (material at: 'controlBefore') with: 'since_preparation') value: database.
     (controlBefore isKindOf: Dictionary) ifFalse: [controlPair at: 'error' put: controlBefore. component error: controlBefore printString].
     controlPair at: 'before' put: (controlBefore at: 'image')].
   (material includesKey: 'registeredModelMaterial') ifTrue: [
     (modelCollector notNil and: [modelCollector class name asString = 'BlockContextTemplate'])
       ifFalse: [component error: 'Fixed retained current SG collector required; original material retained'].
     modelChecks := material at: 'registeredModelChecks' ifAbsentPut: [OrderedCollection new].
     modelChecks size >= 32 ifTrue: [component error: 'Complete SG query evidence capacity reached; no eviction'].
     modelPair := Dictionary new at: 'phase' put: 'checking-before'; yourself. modelChecks add: modelPair.
     stage := 'current-model-before'.
     modelBefore := modelCollector value: component value: material value: (Array with: 'since_preparation' with: nil).
     modelPair at: 'before' put: modelBefore.
     (modelBefore isKindOf: Dictionary) ifFalse: [component error: modelBefore printString]].
   collector class name asString = 'BlockContextTemplate' ifFalse: [component error: 'Fixed current commit collector required'].
   stage := 'check'.
   checks := material at: 'checks' ifAbsentPut: [OrderedCollection new].
   checks size >= 32 ifTrue: [component error: 'Complete commit query evidence capacity reached; no eviction'].
   current := collector value: component value: (Array with: 'check' with: resourceToken with: 'native_v1') value: database.
   (current isKindOf: Dictionary) ifFalse: [component error: current printString].
   checks add: current.
   (current at: 'stopped_on_read_error') ifTrue: [component error: 'Current commit read failed; complete error retained'].
   (material includesKey: 'reciprocalMaterial') ifTrue: [
     (reciprocalCollector notNil and: [reciprocalCollector class name asString = 'BlockContextTemplate'])
       ifFalse: [component error: 'Fixed original reciprocal current collector required'].
     stage := 'current-reciprocal-records'.
     reciprocalCurrent := reciprocalCollector value: component value: material value: database.
     (reciprocalCurrent isKindOf: Dictionary) ifFalse: [component error: reciprocalCurrent printString].
     reciprocalCurrent at: 'resource_check_index' put: checks size].
   modelBefore notNil ifTrue: [
     stage := 'current-model-after'. modelPair at: 'phase' put: 'checking-after'.
     modelAfter := modelCollector value: component value: material value: (Array with: 'query_read_effect' with: modelBefore).
     modelPair at: 'after' put: modelAfter.
     (modelAfter isKindOf: Dictionary) ifFalse: [component error: modelAfter printString].
     modelPair at: 'phase' put: 'checked'; at: 'resourceCheck' put: current].
   controlBefore notNil ifTrue: [
     stage := 'current-control-after'. controlPair at: 'phase' put: 'checking-after'.
     controlAfter := controlCollector value: component
       value: (Array with: (material at: 'controlMaterial') with: (controlBefore at: 'image') with: 'query_read_effect') value: database.
     (controlAfter isKindOf: Dictionary) ifFalse: [controlPair at: 'error' put: controlAfter. component error: controlAfter printString].
     controlPair at: 'after' put: (controlAfter at: 'image'); at: 'phase' put: 'checked';
       at: 'resource_check_index' put: checks size;
       at: 'before_changes' put: (controlBefore at: 'actual_changes'); at: 'after_changes' put: (controlAfter at: 'actual_changes')].
   encoded := root at: 'encodeObservation'. equal := [:left :right | (encoded value: left) = (encoded value: right)].
   original := material at: 'afterRead'. before := current at: 'before_read'. after := current at: 'after_read'.
   changes := OrderedCollection new.
   compareImage := [:left :right :location | | locus category |
     locus := location first. category := location last.
     ((equal value: (left at: 'binding') value: (right at: 'binding')) and: [
       (left at: 'field_names') = (right at: 'field_names')]) ifTrue: [
       (left at: 'fields') doWithIndex: [:row :index | | fresh |
         fresh := (right at: 'fields') at: index.
         (equal value: (row at: 'value') value: (fresh at: 'value')) ifFalse: [
           changes add: (Dictionary new at: 'category' put: category; at: 'locus' put: locus;
             at: 'field' put: (row at: 'name'); at: 'before' put: (row at: 'value');
             at: 'after' put: (fresh at: 'value'); yourself)]]
     ] ifFalse: [changes add: (Dictionary new at: 'category' put: category; at: 'locus' put: locus;
       at: 'field' put: '$identity_schema'; at: 'before' put: left; at: 'after' put: right; yourself)]].
   mapRows := [:rows | | mapped |
     mapped := Dictionary new.
     rows do: [:row | | key | key := (row at: 'entry') at: 'ref'.
       (mapped includesKey: key) ifTrue: [component error: 'Actual cache entry identity collision'].
       mapped at: key put: row]. mapped].
   compareResources := [:left :right :category | | old fresh keys |
     #('owner' 'backend' 'cache') do: [:role |
       compareImage value: (left at: role) value: (right at: role) value: (Array with: role with: category)].
     old := mapRows value: (left at: 'cache_entries'). fresh := mapRows value: (right at: 'cache_entries').
     keys := (old keys asSet addAll: fresh keys; yourself) asSortedCollection.
     keys do: [:key | | a b |
       a := old at: key ifAbsent: [nil]. b := fresh at: key ifAbsent: [nil].
       (a isNil or: [b isNil]) ifTrue: [changes add: (Dictionary new at: 'category' put: category;
         at: 'locus' put: 'cache_entry/', key; at: 'field' put: '$membership';
         at: 'before' put: a; at: 'after' put: b; yourself)] ifFalse: [
         #('key_text' 'key' 'registered_object') do: [:field |
           (equal value: (a at: field) value: (b at: field)) ifFalse: [changes add: (Dictionary new
             at: 'category' put: category; at: 'locus' put: 'cache_entry/', key; at: 'field' put: field;
             at: 'before' put: (a at: field); at: 'after' put: (b at: field); yourself)]].
         compareImage value: (a at: 'image') value: (b at: 'image') value: (Array with: 'cache_entry/', key with: category)]].
     (equal value: (left at: 'modified_objects') value: (right at: 'modified_objects')) ifFalse: [
       changes add: (Dictionary new at: 'category' put: category; at: 'locus' put: 'modified_objects';
         at: 'field' put: '$census'; at: 'before' put: (left at: 'modified_objects');
         at: 'after' put: (right at: 'modified_objects'); yourself)]].
   stage := 'actual-diff'.
   compareResources value: original value: before value: 'since_preparation'.
   compareResources value: before value: after value: 'query_read_effect'.
   records := current at: 'records'. records size = (material at: 'records') size
     ifFalse: [component error: 'Complete original/current logical record census differs'].
   records doWithIndex: [:row :index | | saved savedBytes savedTail currentTail |
     saved := (material at: 'records') at: index.
     savedBytes := ((current at: 'retained_record_bytes') at: index) at: 'bytes'.
     (equal value: savedBytes value: (row at: 'bytes')) ifFalse: [
       changes add: (Dictionary new at: 'category' put: 'since_preparation';
         at: 'locus' put: 'logical_record/', (row at: 'role'); at: 'field' put: '$logical_bytes';
         at: 'before' put: savedBytes; at: 'after' put: (row at: 'bytes'); yourself)].
     savedTail := savedBytes size = (saved at: 'allocated_bytes') size ifTrue: [#()]
       ifFalse: [(saved at: 'allocated_bytes') copyFrom: savedBytes size + 1 to: (saved at: 'allocated_bytes') size].
     currentTail := (row at: 'bytes') size = (row at: 'allocated_bytes') size ifTrue: [#()]
       ifFalse: [(row at: 'allocated_bytes') copyFrom: (row at: 'bytes') size + 1 to: (row at: 'allocated_bytes') size].
     (equal value: savedTail value: currentTail) ifFalse: [changes add: (Dictionary new
       at: 'category' put: 'since_preparation'; at: 'locus' put: 'raw_record/', (row at: 'role');
       at: 'field' put: '$unparsed_record_tail'; at: 'before' put: savedTail; at: 'after' put: currentTail; yourself)].
     compareImage value: (row at: 'ctree_before') value: (row at: 'ctree_after')
       value: (Array with: 'ctree/', (row at: 'role') with: 'query_read_effect')].
   modelBefore notNil ifTrue: [
     changes addAll: (modelBefore at: 'actual_changes'); addAll: (modelAfter at: 'actual_changes').
     answer at: 'registered_models_checked' put: true;
       at: 'registered_model_summary' put: (Dictionary new
         at: 'profile' put: 'native_registered_sg_status_v1';
         at: 'original_objects' put: (modelBefore at: 'original_objects_retained');
         at: 'current_objects' put: (modelAfter at: 'image') size;
         at: 'current_roots' put: (modelAfter at: 'registered_roots') size;
         at: 'current_cache_entries' put: (modelAfter at: 'registered_members') size;
         at: 'actual_change_count' put: (modelBefore at: 'actual_changes') size + (modelAfter at: 'actual_changes') size;
         at: 'original_material_held' put: true; at: 'full_model_transitive_closure' put: false;
         at: 'write_authorized' put: false; at: 'inverse_authorized' put: false; yourself)].
   controlBefore notNil ifTrue: [
     changes addAll: (controlBefore at: 'actual_changes'); addAll: (controlAfter at: 'actual_changes').
     controlProof := (controlAfter at: 'summary') copy.
     controlProof at: 'actual_change_count' put: (controlBefore at: 'actual_changes') size + (controlAfter at: 'actual_changes') size.
     answer at: 'ctree_control_checked' put: true; at: 'ctree_control_summary' put: controlProof].
   reciprocalCurrent notNil ifTrue: [
     changes addAll: (reciprocalCurrent at: 'actual_changes').
     answer at: 'profile' put: 'native_commit_status_v2'; at: 'current_reciprocal_records_checked' put: true;
       at: 'reciprocal_summary' put: (reciprocalCurrent at: 'summary')].
   material at: 'lastActualChanges' put: changes asArray.
   changes size > 4096 ifTrue: [component error: 'Full actual resource diff response bound exceeded; retained without truncation'].
   reciprocalCurrent notNil ifTrue: [material at: 'lastActualReciprocalCheckIndex' put: checks size].
   answer at: 'current_resources_checked' put: true; at: 'actual_changes' put: changes asArray;
     at: 'record_comparison_profile' put: (current at: 'record_comparison_profile');
     at: 'full_reference_payloads_checked' put: true; at: 'raw_records_match_retained' put: (current at: 'raw_records_match_retained');
     at: 'logical_records_match_retained' put: (current at: 'logical_records_match_retained');
     at: 'matches_retained_before_read' put: (current at: 'matches_retained_before_read');
     at: 'matches_retained_after_read' put: (current at: 'matches_retained_after_read');
     at: 'current_read_resources_unchanged' put: (current at: 'current_read_resources_unchanged')
 ].
 action = 'audit' ifTrue: [
   answer := Dictionary new at: 'profile' put: 'native_commit_audit_v1';
     at: 'native_token' put: token; at: 'resource_token' put: resourceToken;
     at: 'component_oid' put: component getOID; at: 'generation' put: (root at: 'generation');
     at: 'prepared_receipt' put: (record at: 'commitResourceReceipt' ifAbsent: [nil]);
     at: 'original_capture' put: (material at: 'receipt');
     at: 'checks' put: (material at: 'checks' ifAbsent: [#()]) asArray;
     at: 'last_actual_changes' put: (material at: 'lastActualChanges' ifAbsent: [nil]);
     at: 'original_material_held' put: true; at: 'model_setters_called' put: 0;
     at: 'store_called' put: false; at: 'commit_called' put: false;
     at: 'write_authorized' put: false; at: 'inverse_authorized' put: false; yourself
   . (material includesKey: 'registeredModelMaterial') ifTrue: [
     answer at: 'registered_models' put: ((material at: 'registeredModelMaterial') at: 'proof');
       at: 'registered_model_original_image' put: ((material at: 'registeredModelMaterial') at: 'originalImage');
       at: 'registered_model_original_roots' put: (((material at: 'registeredModelMaterial') at: 'roots') collect: [:object |
         Dictionary new at: 'class' put: object class name asString;
           at: 'ref' put: ((material at: 'tokens') at: object); yourself]);
       at: 'registered_model_checks' put: ((material at: 'registeredModelChecks' ifAbsent: [#()]) collect: [:pair | | exported |
         exported := Dictionary new at: 'phase' put: (pair at: 'phase'); yourself.
         #('before' 'after') do: [:role | (pair includesKey: role) ifTrue: [ | currentImage |
           currentImage := pair at: role. (currentImage isKindOf: Dictionary) ifTrue: [
             currentImage := currentImage copy. currentImage removeKey: 'snapshots' ifAbsent: []. currentImage removeKey: 'values' ifAbsent: []].
           exported at: role put: currentImage]].
         (pair includesKey: 'resourceCheck') ifTrue: [exported at: 'resource_check_index' put:
           ((material at: 'checks') indexOf: (pair at: 'resourceCheck'))]. exported]) asArray]
   . (material includesKey: 'controlMaterial') ifTrue: [
     answer at: 'ctree_control_original_image' put: (material at: 'controlBefore');
       at: 'ctree_control_after_capture' put: (material at: 'controlAfter' ifAbsent: [nil]);
       at: 'ctree_control_capture_read_effects' put: (material at: 'controlReadEffects' ifAbsent: [nil]);
       at: 'ctree_control_checks' put: (material at: 'controlChecks' ifAbsent: [#()]) asArray]
   . (material includesKey: 'reciprocalMaterial') ifTrue: [
     answer at: 'original_reciprocal_capture' put: ((material at: 'reciprocalMaterial') at: 'capture' ifAbsent: [nil]);
       at: 'reciprocal_capture_phase' put: ((material at: 'reciprocalMaterial') at: 'phase');
       at: 'current_reciprocal_records_checked' put: false.
     ((material at: 'reciprocalMaterial') includesKey: 'checks') ifTrue: [ | reports lastReport |
       reports := (((material at: 'reciprocalMaterial') at: 'checks') collect: [:item | item at: 'report']) asArray.
       answer at: 'reciprocal_checks' put: reports.
       reports isEmpty ifFalse: [lastReport := reports last.
         answer at: 'current_reciprocal_records_checked' put: ((lastReport at: 'phase') = 'checked' and: [
           (lastReport at: 'resource_check_index' ifAbsent: [0]) = (material at: 'checks') size and: [
           (material at: 'lastActualReciprocalCheckIndex' ifAbsent: [0]) = (material at: 'checks') size]])]]]
 ].
 (material includesKey: 'referenceFileBaseline') ifTrue: [ | baseline |
   baseline := material at: 'referenceFileBaseline'.
   ((baseline at: 'phase') = 'captured' and: [(baseline at: 'preparedEdit') == record and: [
     (baseline at: 'resourceMaterial') == material and: [(record at: 'referenceFileBaselineMaterial') == baseline]]])
       ifFalse: [component error: 'Incomplete original reference baseline must remain unresolved'].
   answer at: 'reference_file_baseline' put: (baseline at: 'proof');
     at: 'current_reference_file_checked' put: false].
 (material includesKey: 'persistentOwnerMaterial') ifTrue: [ | owners |
   owners := material at: 'persistentOwnerMaterial'.
   ((owners at: 'phase') = 'captured' and: [(owners at: 'resourceMaterial') == material and: [
     (owners at: 'preparedEdit') == record and: [(owners at: 'root') == root]]])
       ifFalse: [component error: 'Incomplete persistent owner material must remain unresolved'].
   answer at: 'persistent_owners' put: (owners at: 'proof'); at: 'current_persistent_owners_checked' put: false.
   action = 'audit' ifTrue: [answer at: 'persistent_owner_capture' put: (owners at: 'report')]].
 stage := 'encode'. (root at: 'encodeObservation') value: answer
 ] ifFail: [:error | 'BDE_COMMIT_STATUS_ERROR: ', stage, ': ', error messageText]
]]
