"Certify the already-executed original Enum undo after the exact reference sync.
 Only retained journal/head/checkpoint metadata changes. No model, declaration,
 source or native patch, factory, store, modified or database commit is called."
[:helpers | [:component :context |
 component handleExceptionsIn: [
 | mode token resultId record material prepared execution repair root oldHead raw native source sourceRoot
   sameOrder sameMap valid finalGuard afterNative afterSource afterDeclaration actualValues actualEncoded
   graphicalActual declarationActual sourceEvidence newHead actual certificate originalExecution repairedExecution |
 (helpers isArray and: [helpers size = 5 and: [context isArray and: [context size = 3]]])
   ifFalse: [component error: 'Fixed original Enum terminal certificate helpers/context required'].
 mode := context first. token := context at: 2. resultId := context last.
 (#('inspect' 'certify') includes: mode) ifFalse: [component error: 'Fixed metadata inspect/certify required'].
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 ((record at: 'owner') == component item and: [(record at: 'component') = component getOID and: [
   (record at: 'operation') = 'create_block' and: [(record at: 'args') first = 'enumeration']]])
   ifFalse: [component error: 'Original retained existing Enum creation required'].
 material := record at: 'createMaterial'. prepared := material at: 'historyPrepared'.
 execution := material at: 'historyExecution'. repair := material at: 'enumReferenceRepair'.
 root := material at: 'root'. oldHead := material at: 'historyHead'.
 raw := prepared at: 'declarationRaw'. native := prepared at: 'raw'. source := prepared at: 'source'.
 sourceRoot := source at: 'sourceRoot'.
 (material includesKey: 'historyTerminalCertificate') ifTrue: [component error: 'Original terminal certificate already published; query it without re-certifying'].
 ((prepared at: 'result') = resultId and: [(execution at: 'result_change_id') = resultId])
   ifFalse: [component error: 'Original unknown result identity differs'].
 ((execution at: 'terminal_verified') not and: [(execution at: 'store_completed') and: [
   (execution at: 'model_operations') = 1]])
   ifFalse: [component error: 'Original complete unconfirmed execution required'].
 ((oldHead at: 'owner') = token and: [(oldHead at: 'state') = 'applied' and: [(record at: 'state') = 'applied']])
   ifFalse: [component error: 'Original unadvanced history head required'].
 ((repair at: 'state') = 'verified' and: [(repair at: 'record') == record and: [
   (repair at: 'prepared') == prepared and: [(repair at: 'execution') == execution and: [(repair at: 'head') == oldHead]]]])
   ifFalse: [component error: 'Exact verified same-original reference sync required'].
 sameOrder := [:left :right | left size = right size and: [
   (1 to: left size) allSatisfy: [:slot | (left at: slot) == (right at: slot)]]].
 sameMap := [:left :right | left size = right size and: [left keys allSatisfy: [:key |
   (right keys anySatisfy: [:peer | peer == key]) and: [(left at: key) == (right at: key)]]]].
 valid := ((Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main')) == root.
 valid := valid and: [(root at: 'owner') == component item].
 valid := valid and: [(root at: 'generation') = (material at: 'generation')].
 valid := valid and: [(root at: 'diagram') == (record at: 'diagram')].
 valid := valid and: [sourceRoot == (record at: 'diagram') specification specSourceInternalOrNil].
 valid := valid and: [(native at: 'verifyImages') value: (prepared at: 'nativeDesired')].
 valid := valid and: [(source at: 'verifyImages') value: (prepared at: 'sourceDesired')].
 valid := valid and: [(raw at: 'verifyImages') value: (prepared at: 'declarationDesired')].
 valid := valid and: [sameOrder value: (material at: 'collection') value: (prepared at: 'targetOrder')].
 valid := valid and: [sameOrder value: (material at: 'parent') sortedChildren value: (prepared at: 'targetDrawing')].
 valid := valid and: [sameMap value: (root at: 'ids') value: (material at: 'afterIds')].
 valid := valid and: [(root at: 'counter') = (material at: 'afterCounter')].
 valid ifFalse: [component error: 'Complete original native/source/declaration/configuration/order/alias target differs'].
 #('historyDeclarationPatch' 'historyNativePatch' 'historySourcePatch' 'historyDeclarationNormalization' 'historyReadCacheNormalization') do: [:key |
   | progress |
   progress := (material at: key) at: 'progress'.
   ((progress at: 'state') = 'applied' and: [(progress at: 'completed_cells') = (progress at: 'cell_count')])
     ifFalse: [component error: 'Original normalization primitives were not all completed']
 ].
 finalGuard := (helpers at: 5) value: component value:
   ((Array with: record with: material with: oldHead with: raw) copyWith: 'target').
 (finalGuard isKindOf: Dictionary) ifFalse: [component error: finalGuard asString].
 afterNative := (native at: 'captureImages') value: ((prepared at: 'nativeDesired') keys, (prepared at: 'native') keys).
 afterSource := (helpers at: 1) value: component value: (Array with: sourceRoot with: (prepared at: 'sourceDesired') keys).
 (afterSource isKindOf: Dictionary) ifFalse: [component error: afterSource asString].
 afterDeclaration := (raw at: 'captureImages') value: ((prepared at: 'declarationDesired') keys, (prepared at: 'declarationCurrent') keys).
 graphicalActual := (native at: 'diff') value. declarationActual := (raw at: 'diff') value.
 ((native at: 'verifyAfter') value and: [(raw at: 'verifyAfter') value])
   ifFalse: [component error: 'Original actual terminal image capture drifted'].
 sourceEvidence := (helpers at: 2) value: component value: (Array with: sourceRoot
   with: ((oldHead at: 'beforeSource') at: 'snapshots') with: ((oldHead at: 'afterSource') at: 'snapshots')
   with: (source at: 'snapshots') with: (afterSource at: 'snapshots')).
 (sourceEvidence isKindOf: Dictionary) ifFalse: [component error: sourceEvidence asString].
 "The original executor read and compared this complete typed target before
  entering read_cache_normalization. Every captured native/source/declaration
  field and identity is now reverified, without invoking cache-mutating getters."
 actualValues := (prepared at: 'expectedValues'). actualEncoded := (root at: 'encodeObservation') value: actualValues.
 ((execution at: 'phase') = 'read_cache_normalization' and: [
   (execution at: 'after_state') = 'reverted'])
   ifFalse: [component error: 'Original verified typed-target stage was not reached'].
 originalExecution := execution copy. repairedExecution := execution copy.
 repairedExecution at: 'declaration_primitives' put: (execution at: 'declaration_primitives') + ((repair at: 'progress') at: 'cache_primitives');
   at: 'phase' put: 'terminal'; at: 'terminal_verified' put: true.
 newHead := Dictionary new at: 'owner' put: resultId; at: 'state' put: 'reverted';
   at: 'sequence' put: (execution at: 'sequence'); at: 'beforeNative' put: (prepared at: 'native');
   at: 'afterNative' put: afterNative; at: 'beforeSource' put: source; at: 'afterSource' put: afterSource;
   at: 'beforeOrder' put: (oldHead at: 'afterOrder'); at: 'afterOrder' put: (material at: 'collection') asArray copy;
   at: 'beforeDrawing' put: (oldHead at: 'afterDrawing'); at: 'afterDrawing' put: (material at: 'parent') sortedChildren asArray copy;
   at: 'beforeValues' put: (oldHead at: 'afterValues'); at: 'afterValues' put: actualValues;
   at: 'beforeDeclaration' put: (prepared at: 'declarationCurrent'); at: 'afterDeclaration' put: afterDeclaration;
   at: 'declarationImages' put: raw; at: 'beforeDefinitionReferences' put: (oldHead at: 'afterDefinitionReferences');
   at: 'afterDefinitionReferences' put: (finalGuard at: 'definition_references_current'); yourself.
 actual := Dictionary new at: 'profile' put: 'native_create_exact_actual_v3'; at: 'observation' put: actualValues;
   at: 'execution' put: repairedExecution; at: 'parent_before' put: (prepared at: 'parentBefore');
   at: 'parent_after' put: (((helpers at: 3) value: (material at: 'orderRecord') value: (material at: 'collection') asArray copy) at: 'value');
   at: 'drawing_before' put: (prepared at: 'drawingBefore');
   at: 'drawing_after' put: ((((helpers at: 4) value: component value: (material at: 'orderRecord')
     value: (material at: 'parent') sortedChildren asArray copy) value: true) at: 'value');
   at: 'graphical_current' put: (native at: 'originalImage'); at: 'graphical_actual' put: graphicalActual;
   at: 'source_actual_evidence' put: sourceEvidence; at: 'allocator' put: (prepared at: 'allocator');
   at: 'created_original_retained' put: true; at: 'native_target_verified' put: true; at: 'source_target_verified' put: true;
   at: 'declaration_current' put: (raw at: 'originalImage'); at: 'declaration_actual' put: declarationActual;
   at: 'declaration_schema' put: (raw at: 'fieldDiagnostics') value;
   at: 'declaration_target_verified' put: true; at: 'created_model_original_retained' put: true;
   at: 'enum_definition_evidence' put: finalGuard; yourself.
 certificate := Dictionary new at: 'profile' put: 'native_enum_completed_undo_certificate_v1';
   at: 'native_token' put: token; at: 'result_change_id' put: resultId;
   at: 'original_execution' put: originalExecution; at: 'reference_sync_preparation' put: (repair at: 'preparation');
   at: 'reference_sync_actual' put: (repair at: 'actual'); at: 'actual' put: actual;
   at: 'typed_target_source' put: 'retained_actual_target_and_complete_native_source_declaration_equality';
   at: 'model_setters_called' put: 0; at: 'source_setters_called' put: 0; at: 'declaration_setters_called' put: 0;
   at: 'store_called' put: false; at: 'database_commit_called' put: false; at: 'original_undo_redispatched' put: false;
   at: 'certified' put: (mode = 'certify'); yourself.
 mode = 'certify' ifTrue: [
   material at: 'historyHead' put: newHead; at: 'historyActual' put: actual;
     at: 'historyExecution' put: repairedExecution; at: 'historyTerminalCertificate' put: certificate.
   record at: 'state' put: 'reverted'; at: 'lastObserved' put: actualEncoded; at: 'lastObservedTargets' put: #().
   root at: 'checkpoint' put: ((root at: 'copySource') value: sourceRoot); at: 'checkpointVersion' put: 2
 ].
 (root at: 'encodeObservation') value: certificate
 ] ifFail: [:error | 'BDE_ENUM_TERMINAL_CERTIFICATE_ERROR: ', error messageText]
]]
