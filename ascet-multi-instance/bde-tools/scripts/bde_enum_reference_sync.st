"Repair only the exact declaration read-cache drift and native database reference
 record of an already-dispatched isolated Enum undo. Never replay model removal,
 source/native normalization or storeToCache. Keep the original history unknown
 until a separate complete terminal certificate and formal WAL reconciliation."
[:helpers | [:component :context |
 | material phase started |
 material := nil. phase := 'identity'. started := false.
 component handleExceptionsIn: [
 | mode token resultId signature record prepared execution root raw native source head guardResult
   current cache patch repair answer verifyTargets sameOrder sameMap originalDefinition beforeRefs
   result finalGuard actualDeclaration progress ownerProxy referenceResult referenceRows expectedReferences |
 (helpers isArray and: [helpers size = 3 and: [context isArray and: [context size = 4]]])
   ifFalse: [component error: 'Fixed exact Enum reference sync helpers/context required'].
 mode := context first. token := context at: 2. resultId := context at: 3. signature := context last.
 (#('prepare' 'inspect_prepared' 'execute' 'status') includes: mode)
   ifFalse: [component error: 'Fixed original Enum reference sync mode required'].
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 ((record at: 'owner') == component item and: [(record at: 'component') = component getOID and: [
   (record at: 'operation') = 'create_block' and: [(record at: 'args') first = 'enumeration' and: [
   (record at: 'diagramName') = 'Main']]]])
   ifFalse: [component error: 'Original isolated existing Enum creation required'].
 material := record at: 'createMaterial'. prepared := material at: 'historyPrepared'.
 execution := material at: 'historyExecution'. root := material at: 'root'. head := material at: 'historyHead'.
 raw := prepared at: 'declarationRaw'. native := prepared at: 'raw'. source := prepared at: 'source'.
 (material at: 'enumDeclaration') ifFalse: [component error: 'Original Enum material required'].
 ((prepared at: 'enumExecutable') and: [(prepared at: 'consumed')])
   ifFalse: [component error: 'Original consumed Enum execution required'].
 (execution at: 'terminal_verified') ifTrue: [component error: 'Already verified original undo; no repair replay'].
 ((execution at: 'result_change_id') = resultId and: [(prepared at: 'result') = resultId])
   ifFalse: [component error: 'Original unknown result identity differs'].
 ((execution at: 'before_state') = 'applied' and: [(execution at: 'after_state') = 'reverted'])
   ifFalse: [component error: 'Exact first Enum undo direction required'].
 ((execution at: 'store_completed') and: [(execution at: 'model_operations') = 1])
   ifFalse: [component error: 'Original completed model removal and store required; never replay'].
 ((head at: 'state') = 'applied' and: [(head at: 'owner') = token])
   ifFalse: [component error: 'Exact original unadvanced creation head required'].
 sameOrder := [:left :right | left size = right size and: [
   (1 to: left size) allSatisfy: [:index | (left at: index) == (right at: index)]]].
 sameMap := [:left :right | left size = right size and: [left keys allSatisfy: [:key |
   (right keys anySatisfy: [:peer | peer == key]) and: [(left at: key) == (right at: key)]]]].
 verifyTargets := [ | valid |
   valid := ((Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main')) == root.
   valid := valid and: [(root at: 'owner') == component item].
   valid := valid and: [(root at: 'generation') = (material at: 'generation')].
   valid := valid and: [(root at: 'diagram') == (record at: 'diagram')].
   valid := valid and: [((prepared at: 'source') at: 'sourceRoot') == (record at: 'diagram') specification specSourceInternalOrNil].
   valid := valid and: [(native at: 'verifyImages') value: (prepared at: 'nativeDesired')].
   valid := valid and: [(source at: 'verifyImages') value: (prepared at: 'sourceDesired')].
   valid := valid and: [sameOrder value: (material at: 'collection') value: (prepared at: 'targetOrder')].
   valid := valid and: [sameOrder value: (material at: 'parent') sortedChildren value: (prepared at: 'targetDrawing')].
   valid := valid and: [sameMap value: (root at: 'ids') value: (material at: 'afterIds')].
   valid and: [(root at: 'counter') = (material at: 'afterCounter')]
 ].
 verifyTargets value ifFalse: [component error: 'Complete original native/source/order/alias target changed'].
 mode ~= 'status' ifTrue: [
   expectedReferences := head at: 'afterDefinitionReferences'.
   #('readReferences' 'readIsReferencedByOnly') do: [:selector |
     referenceResult := ((material at: 'declarationBefore') at: 'definition') dbObject perform: selector asSymbol.
     referenceResult isError ifTrue: [component error: 'Original reference repair baseline unavailable'].
     referenceRows := referenceResult isReferencedBys.
     referenceRows size > 4096 ifTrue: [component error: 'Reference repair baseline bound exceeded'].
     referenceRows := (referenceRows collect: [:key | Array with: key globalIdString with: key className])
       asSortedCollection: [:a :b | a first = b first ifTrue: [a last < b last] ifFalse: [a first < b first]].
     referenceRows asArray = expectedReferences
       ifFalse: [component error: 'Reference repair CURRENT differs from exact original forward refs; no overwrite']
   ]
 ].
 mode = 'prepare' ifTrue: [
   (material includesKey: 'enumReferenceRepair') ifTrue: [component error: 'Original repair already prepared; inspect it without re-preparing'].
   guardResult := (helpers at: 3) value: component value: ((Array with: record with: material with: head with: raw) copyWith: 'target').
   guardResult = 'BDE_ENUM_HISTORY_GUARD_ERROR: Enum CURRENT definition references changed since the retained head'
     ifFalse: [component error: 'Only diagnosed exact Enum reference mismatch is repairable'].
   current := (raw at: 'captureImages') value: (prepared at: 'declarationDesired') keys.
   cache := (helpers at: 2) value: component value:
     (Array with: (prepared at: 'declarationDesired') with: current with: component item).
   (cache isKindOf: Dictionary) ifFalse: [component error: cache asString].
   patch := (helpers at: 1) value: component value:
     (Array with: (prepared at: 'declarationDesired') with: current) value: 'undo'.
   (patch isKindOf: Dictionary) ifFalse: [component error: patch asString].
   beforeRefs := (material at: 'declarationAfter') at: 'definitionReferences'.
   repair := Dictionary new at: 'state' put: 'prepared'; at: 'record' put: record;
     at: 'prepared' put: prepared; at: 'head' put: head; at: 'execution' put: execution;
     at: 'current' put: current; at: 'patch' put: patch; at: 'cache' put: cache;
     at: 'signature' put: resultId, '/r1'; yourself.
   answer := Dictionary new at: 'profile' put: 'native_enum_reference_sync_preparation_v1';
     at: 'native_token' put: token; at: 'result_change_id' put: resultId;
     at: 'signature' put: (repair at: 'signature'); at: 'native_source_orders_alias_verified' put: true;
     at: 'cache_guard' put: cache; at: 'declaration_current' put: ((raw at: 'imageFor') value: current);
     at: 'declaration_current_schema' put: ((raw at: 'diagnosticsFor') value: current);
     at: 'declaration_target' put: ((raw at: 'imageFor') value: (prepared at: 'declarationDesired'));
     at: 'declaration_target_schema' put: ((raw at: 'diagnosticsFor') value: (prepared at: 'declarationDesired'));
     at: 'original_execution' put: execution copy; at: 'model_operations_replayed' put: 0;
     at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'database_modified_called' put: false;
     at: 'database_commit_called' put: false; at: 'write_authorized' put: false; yourself.
   repair at: 'preparation' put: answer. material at: 'enumReferenceRepair' put: repair.
   (root at: 'encodeObservation') value: answer
 ] ifFalse: [
   repair := material at: 'enumReferenceRepair'.
   ((repair at: 'record') == record and: [(repair at: 'prepared') == prepared and: [
     (repair at: 'head') == head and: [(repair at: 'execution') == execution]]])
     ifFalse: [component error: 'Original retained repair ownership changed'].
   mode = 'inspect_prepared' ifTrue: [
     ((repair at: 'state') = 'prepared' and: [((repair at: 'patch') at: 'verifyBeforeApply') value and: [
       (raw at: 'verifyImages') value: (repair at: 'current')]])
       ifFalse: [component error: 'Original unconsumed reference repair CURRENT changed'].
     (root at: 'encodeObservation') value: (repair at: 'preparation')
   ] ifFalse: [
   mode = 'status' ifTrue: [
     ((repair at: 'state') = 'verified' and: [(raw at: 'verifyImages') value: (prepared at: 'declarationDesired')])
       ifFalse: [component error: 'Reference repair terminal is unavailable; do not replay'].
     finalGuard := (helpers at: 3) value: component value: ((Array with: record with: material with: head with: raw) copyWith: 'target').
     (finalGuard isKindOf: Dictionary) ifFalse: [component error: finalGuard asString].
     (root at: 'encodeObservation') value: (repair at: 'actual')
   ] ifFalse: [
     ((repair at: 'state') = 'prepared' and: [signature = (repair at: 'signature') and: [
       ((repair at: 'patch') at: 'verifyBeforeApply') value and: [
       (raw at: 'verifyImages') value: (repair at: 'current')]]])
       ifFalse: [component error: 'Prepared exact repair changed or consumed; never replay'].
     result := Dictionary new at: 'cache_primitives' put: 0; at: 'database_modified_started' put: false;
       at: 'database_modified_completed' put: false; at: 'database_commit_started' put: false;
       at: 'database_commit_completed' put: false; at: 'model_operations_replayed' put: 0;
       at: 'model_setters_called' put: 0; at: 'store_called' put: false; yourself.
     repair at: 'state' put: 'started'; at: 'progress' put: result. started := true. phase := 'cache_normalization'.
     [((repair at: 'patch') at: 'execute') value] ensure: [result at: 'cache_primitives'
       put: (((repair at: 'patch') at: 'progress') at: 'completed_primitives')].
     ((raw at: 'verifyImages') value: (prepared at: 'declarationDesired'))
       ifFalse: [component error: 'Exact original declaration/configuration target not restored'].
     phase := 'database_modified'. result at: 'database_modified_started' put: true.
     ownerProxy := component item dbObject.
     answer := ownerProxy modified: component item.
     ((answer respondsTo: #isError) and: [answer isError]) ifTrue: [component error: 'Original owner modified/write-cache failed'].
     result at: 'database_modified_completed' put: true.
     verifyTargets value ifFalse: [component error: 'Database cache write changed original native/source/order/alias target'].
     ((raw at: 'verifyImages') value: (prepared at: 'declarationDesired'))
       ifFalse: [component error: 'Database cache write changed original declaration/configuration target'].
     component isAutoCommitActive ifFalse: [component error: 'Original automatic database commit is not active'].
     phase := 'database_commit'. result at: 'database_commit_started' put: true.
     answer := component autoCommitDatabase.
     ((answer respondsTo: #isError) and: [answer isError]) ifTrue: [component error: 'Original database commit failed'].
     result at: 'database_commit_completed' put: true.
     verifyTargets value ifFalse: [component error: 'Commit changed original native/source/order/alias target'].
     ((raw at: 'verifyImages') value: (prepared at: 'declarationDesired'))
       ifFalse: [component error: 'Commit changed original declaration/configuration target'].
     phase := 'references'.
     finalGuard := (helpers at: 3) value: component value: ((Array with: record with: material with: head with: raw) copyWith: 'target').
     (finalGuard isKindOf: Dictionary) ifFalse: [component error: finalGuard asString].
     actualDeclaration := (raw at: 'captureImages') value: (prepared at: 'declarationDesired') keys.
     answer := Dictionary new at: 'profile' put: 'native_enum_reference_sync_actual_v1';
       at: 'native_token' put: token; at: 'result_change_id' put: resultId; at: 'signature' put: signature;
       at: 'progress' put: result copy; at: 'definition_evidence' put: finalGuard;
       at: 'declaration_after' put: ((raw at: 'imageFor') value: actualDeclaration);
       at: 'native_source_orders_alias_verified' put: true; at: 'declaration_target_verified' put: true;
       at: 'original_undo_redispatched' put: false; at: 'history_terminal_certified' put: false; yourself.
     repair at: 'state' put: 'verified'; at: 'actual' put: answer.
     (root at: 'encodeObservation') value: answer
   ]]]
 ] ifFail: [:error | started
   ifTrue: [material at: 'enumReferenceRepairFailureStage' put: phase.
     'BDE_ENUM_REFERENCE_SYNC_ERROR: ', phase, ': ', error messageText]
   ifFalse: ['BDE_ENUM_REFERENCE_SYNC_CONFLICT: ', phase, ': ', error messageText]]
]]
