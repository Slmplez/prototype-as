"Fixed readonly diagnosis of an already-dispatched retained Enum history failure.
 No head change, execution, store, material release or quarantine reconciliation."
[:component :context :enumGuard |
 component handleExceptionsIn: [
 | token resultId record material prepared proof capture raw model api definition enumeration proxy
   fields index resolved type represented conditions answer references persisted referenceResult sameOrder
   declarationBefore nativeBefore sourceBefore controls fakeHead fakeMaterial fakeCapture fakeImages fakeSnapshots fakeEntry
   outcome outgoing ownerProxy |
 (context isArray and: [context size = 2])
   ifFalse: [component error: 'Exact original Enum failure context required'].
 token := context first. resultId := context last.
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 ((record at: 'owner') == component item and: [(record at: 'component') = component getOID and: [
   (record at: 'operation') = 'create_block' and: [(record at: 'args') first = 'enumeration' and: [
   (record at: 'diagramName') = 'Main']]]])
   ifFalse: [component error: 'Exact retained existing Enum creation required'].
 material := record at: 'createMaterial'. prepared := material at: 'historyPrepared'.
 proof := material at: 'historyExecution'. capture := material at: 'declarationBefore'.
 ((material at: 'enumDeclaration') and: [(prepared at: 'enumExecutable') and: [
   (prepared at: 'consumed') and: [(proof at: 'terminal_verified') not and: [
   (proof at: 'result_change_id') = resultId and: [(prepared at: 'result') = resultId]]]]])
   ifFalse: [component error: 'Exact consumed unknown Enum execution required; no replay'].
 raw := prepared at: 'declarationRaw'. api := material at: 'createdModel'. model := api element.
 declarationBefore := (raw at: 'captureImages') value: (prepared at: 'declarationDesired') keys.
 nativeBefore := ((prepared at: 'raw') at: 'captureImages') value: (prepared at: 'nativeDesired') keys.
 sourceBefore := ((prepared at: 'source') at: 'captureImages') value: (prepared at: 'sourceDesired') keys.
 definition := capture at: 'definition'. enumeration := capture at: 'enumeration'.
 fields := (model class allInstVarNames collect: [:name | name asString]) asArray.
 index := fields indexOf: 'sgClass'. index > 0 ifFalse: [component error: 'Original Enum type slot missing'].
 proxy := model instVarAt: index.
 conditions := Dictionary new.
 conditions at: 'same_created_model' put: ((record at: 'createdModel') element == model);
   at: 'native_model_class' put: model class name asString;
   at: 'native_proxy_class' put: proxy class name asString;
   at: 'proxy_is_dbproxy' put: (proxy isKindOf: DBProxy);
   at: 'proxy_is_original_target_pointer' put: (proxy == (((prepared at: 'declarationDesired') at: model) last at: index));
   at: 'definition_class' put: definition class name asString;
   at: 'same_definition_api' put: ((record at: 'definition') item == definition);
   at: 'same_enumeration' put: ((material at: 'declarationAfter') at: 'enumeration') == enumeration;
   at: 'public_model_is_valid' put: api isValid.
 (proxy isKindOf: DBProxy) ifTrue: [
   conditions at: 'proxy_class_name' put: proxy className; at: 'proxy_oid' put: proxy globalIdString.
   resolved := proxy getObjectIfUndefined: [nil].
   conditions at: 'proxy_resolves_to_original' put: (resolved == definition)
 ].
 answer := Dictionary new at: 'profile' put: 'native_enum_history_failure_diagnostic_v1';
   at: 'native_token' put: token; at: 'result_change_id' put: resultId;
   at: 'component_oid' put: component getOID; at: 'conditions' put: conditions;
   at: 'execution' put: proof copy; at: 'failure_stage' put: (material at: 'historyFailureStage');
   at: 'record_state' put: (record at: 'state');
   at: 'head_state' put: ((material at: 'historyHead') at: 'state');
   at: 'head_owner' put: ((material at: 'historyHead') at: 'owner');
   at: 'declaration_target_equal_before_api' put: ((raw at: 'verifyImages') value: (prepared at: 'declarationDesired')); yourself.
 type := api getModelType. represented := api getRepresentedClass.
 conditions at: 'public_model_type_class' put: type class name asString;
   at: 'public_model_type_is_enum' put: (type isString and: [type = 'enum']);
   at: 'public_model_type_value' put: (type isString ifTrue: [type] ifFalse: ['non-string']);
   at: 'public_represented_class' put: represented class name asString;
   at: 'public_represented_has_item' put: (represented respondsTo: #item);
   at: 'public_represented_is_original' put: ((represented respondsTo: #item) and: [represented item == definition]).
 sameOrder := [:left :right | left size = right size and: [
   (1 to: left size) allSatisfy: [:position | (left at: position) == (right at: position)]]].
 answer at: 'native_target_equal' put: (((prepared at: 'raw') at: 'verifyImages') value: (prepared at: 'nativeDesired'));
   at: 'source_target_equal' put: (((prepared at: 'source') at: 'verifyImages') value: (prepared at: 'sourceDesired'));
   at: 'declaration_target_equal_after_api' put: ((raw at: 'verifyImages') value: (prepared at: 'declarationDesired'));
   at: 'physical_target_equal' put: (sameOrder value: (material at: 'collection') value: (prepared at: 'targetOrder'));
   at: 'drawing_target_equal' put: (sameOrder value: (material at: 'parent') sortedChildren value: (prepared at: 'targetDrawing'));
   at: 'definition_oid' put: (capture at: 'definitionOID');
   at: 'declaration_target' put: ((raw at: 'imageFor') value: (prepared at: 'declarationDesired'));
   at: 'declaration_target_schema' put: ((raw at: 'diagnosticsFor') value: (prepared at: 'declarationDesired'));
   at: 'declaration_current' put: ((raw at: 'imageFor') value: declarationBefore);
   at: 'declaration_current_schema' put: ((raw at: 'diagnosticsFor') value: declarationBefore).
 referenceResult := definition dbObject readReferences.
 referenceResult isError ifTrue: [component error: 'Combined original Enum references unavailable'].
 references := referenceResult isReferencedBys.
 referenceResult := definition dbObject readIsReferencedByOnly.
 referenceResult isError ifTrue: [component error: 'Persisted original Enum references unavailable'].
 persisted := referenceResult isReferencedBys.
 (references size > 4096 or: [persisted size > 4096]) ifTrue: [component error: 'Original reference bound exceeded'].
 references := (references collect: [:key | Array with: key globalIdString with: key className])
   asSortedCollection: [:a :b | a first = b first ifTrue: [a last < b last] ifFalse: [a first < b first]].
 persisted := (persisted collect: [:key | Array with: key globalIdString with: key className])
   asSortedCollection: [:a :b | a first = b first ifTrue: [a last < b last] ifFalse: [a first < b first]].
 answer at: 'definition_references_combined' put: references asArray;
   at: 'definition_references_database_record' put: persisted asArray;
   at: 'definition_references_target' put: ((material at: 'historyHead') at: 'beforeDefinitionReferences');
   at: 'fixed_target_guard' put: (enumGuard value: component value:
     ((Array with: record with: material with: (material at: 'historyHead') with: raw) copyWith: 'target'));
   at: 'owner_db_is_modified' put: component item dbObject isModified;
   at: 'owner_db_is_committed' put: component item dbObject isCommitted;
   at: 'auto_commit_active' put: component isAutoCommitActive.
 ownerProxy := component item dbObject. outgoing := ownerProxy readReferencesOnly.
 outgoing isError ifTrue: [component error: 'Original owner database record outgoing references unavailable'].
 outgoing := outgoing references.
 outgoing size > 4096 ifTrue: [component error: 'Original owner outgoing reference bound exceeded'].
 outgoing := (outgoing collect: [:key | Array with: key globalIdString with: key className])
   asSortedCollection: [:a :b | a first = b first ifTrue: [a last < b last] ifFalse: [a first < b first]].
 answer at: 'owner_database_record_outgoing' put: outgoing asArray.
 controls := OrderedCollection new.
 fakeHead := (material at: 'historyHead') copy. fakeHead at: 'state' put: 'reverted'.
 outcome := enumGuard value: component value: ((Array with: record with: material with: fakeHead with: raw) copyWith: 'target').
 controls add: (Dictionary new at: 'name' put: 'wrong_presence'; at: 'result' put: outcome;
   at: 'passed' put: (outcome = 'BDE_ENUM_HISTORY_GUARD_ERROR: Original Enum declaration membership differs from exact history direction'); yourself).
 fakeMaterial := material copy. fakeCapture := (material at: 'declarationAfter') copy.
 fakeImages := (fakeCapture at: 'images') copy. fakeSnapshots := (fakeImages at: 'snapshots') copy.
 fakeEntry := (fakeSnapshots at: model) copy. fakeEntry at: 2 put: fakeEntry last copy.
 fakeEntry last at: index put: nil. fakeSnapshots at: model put: fakeEntry.
 fakeImages at: 'snapshots' put: fakeSnapshots. fakeCapture at: 'images' put: fakeImages.
 fakeMaterial at: 'declarationAfter' put: fakeCapture.
 outcome := enumGuard value: component value:
   ((Array with: record with: fakeMaterial with: (material at: 'historyHead') with: raw) copyWith: 'target').
 controls add: (Dictionary new at: 'name' put: 'wrong_original_proxy'; at: 'result' put: outcome;
   at: 'passed' put: (outcome = 'BDE_ENUM_HISTORY_GUARD_ERROR: Original Enum SGVariable type proxy changed'); yourself).
 answer at: 'native_rejection_controls' put: controls asArray;
   at: 'declaration_diagnosis_unchanged' put: ((raw at: 'verifyImages') value: declarationBefore);
   at: 'native_diagnosis_unchanged' put: (((prepared at: 'raw') at: 'verifyImages') value: nativeBefore);
   at: 'source_diagnosis_unchanged' put: (((prepared at: 'source') at: 'verifyImages') value: sourceBefore);
   at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'execution_redispatched' put: false; at: 'head_modified' put: false;
   at: 'write_authorized' put: false.
 ((material at: 'root') at: 'encodeObservation') value: answer
 ] ifFail: [:error | 'BDE_ENUM_HISTORY_FAILURE_DIAGNOSTIC_ERROR: ', error messageText]
]
