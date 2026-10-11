"Fixed retained graphical creation history. A detached original stays intact.
 Allocator high-water remains explicit and monotonic while redo is retained.
 Declaration history and local merge require their separate audited contracts."
[:helpers | [:component :context |
 | stage mutated material |
 stage := 'identity'. mutated := false. material := nil.
 component handleExceptionsIn: [
 | mode token owner state resultId signature record root diagram parent collection created native
   source head sameOrder sameMap sameImage targetNative targetSource targetOrder targetDrawing
   targetValues currentNative currentSource raw nativeDesired sourceDesired sourceEntry slot high
   allocator prepared version parentBefore parentExpected drawingBefore drawingExpected answer
   beforeOrder beforeDrawing beforeValues proof patch afterNative afterSource actualValues actualEncoded
   graphicalActual sourceEvidence checkReturn observed sourceRoot originalSource originalNative
   declaration declarationCapture declarationReader declarationOwned targetDeclaration rawDeclaration
   currentDeclaration declarationDesired declarationPatch afterDeclaration declarationActual declarationEvidence
   declarationDescriptor declarationSchema modelObject originalModelOID cacheGuard cacheResult cacheRecorded cacheEvidence cachePreviousReader cacheBindings controls scratch controlReply controlRows controlEntry controlFields controlIndex controlObject
   enumDeclaration enumGuard enumEvidence enumExecutable enumActualEvidence enumContext enumPersistence enumReply
   messageDeclaration messageGuard messageEvidence cacheCheck messageExecutable messageActualEvidence messagePersistence |
 (helpers isArray and: [(#(6 8 9 10) includes: helpers size) and: [context isArray and: [context size = 6]]])
   ifFalse: [component error: 'Fixed create history helpers and six-part context required'].
 mode := context first. token := context at: 2. owner := context at: 3.
 state := context at: 4. resultId := context at: 5. signature := context last.
 (#('prepare' 'execute' 'inspect' 'status' 'diagnose' 'cache_controls') includes: mode)
   ifFalse: [component error: 'Unknown creation history mode'].
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 ((record at: 'owner') == component item and: [(record at: 'component') = component getOID and: [
   (record at: 'operation') = 'create_block' and: [(record at: 'diagramName') = 'Main' and: [
    (record at: 'targets') isEmpty and: [#('literal' 'operator' 'variable' 'enumeration'
      'receive_message' 'send_message' 'send_receive_message') includes: (record at: 'args') first]]]]])
   ifFalse: [component error: 'Retained complete Main graphical creation required; declaration history unavailable'].
 material := record at: 'createMaterial'.
 enumDeclaration := (record at: 'args') first = 'enumeration'.
  messageDeclaration := #('receive_message' 'send_message' 'send_receive_message') includes: (record at: 'args') first.
  declaration := enumDeclaration or: [messageDeclaration or: [(record at: 'args') first = 'variable']].
  enumExecutable := helpers size = 10 and: [enumDeclaration].
  messageExecutable := messageDeclaration and: [helpers size = 10 and: [helpers last = 'message_body_exact_v1']].
 (enumExecutable and: [helpers last ~= 'enum_body_exact_v1'])
   ifTrue: [component error: 'Fixed exact Enum execution helper profile required'].
  ((enumDeclaration and: [(#(9 10) includes: helpers size) not]) or: [
    enumDeclaration ~= (material at: 'enumDeclaration' ifAbsent: [false])])
   ifTrue: [component error: 'Original declaration history type/profile cannot change'].
  messageDeclaration ~= (material at: 'messageDeclaration' ifAbsent: [false])
    ifTrue: [component error: 'Original Module message history profile cannot change'].
  messageDeclaration ifTrue: [
    (helpers size = 10 and: [#('message_prepare_exact_v1' 'message_body_exact_v1') includes: helpers last])
      ifFalse: [component error: 'Independent original message preparation helper profile required'].
    (messageExecutable not and: [mode ~= 'prepare'])
      ifTrue: [component error: 'Message history preparation only; execution not authorized'].
    (messageExecutable and: [(#('prepare' 'execute' 'inspect' 'status') includes: mode) not])
      ifTrue: [component error: 'Fixed message execution action required']
  ].
  ((enumDeclaration or: [messageDeclaration]) not and: [helpers size > 8])
    ifTrue: [component error: 'Graphical/variable history cannot use foreign declaration helpers'].
 (enumDeclaration and: [enumExecutable not and: [mode ~= 'prepare']])
   ifTrue: [component error: 'Enum exact history preparation only; execution not yet authorized'].
 declaration ifTrue: [
   ((#(8 9 10) includes: helpers size) and: [(material includesKey: 'declarationBefore') and: [
     (material includesKey: 'declarationAfterSnapshots') and: [(material at: 'createdDefinition') isNil]]])
     ifFalse: [component error: 'Explicit declaration history and original body-before required'].
   declarationReader := helpers at: 7. cacheGuard := helpers at: 8.
   enumDeclaration ifTrue: [enumGuard := helpers at: 9].
   messageDeclaration ifTrue: [messageGuard := helpers at: 9].
   cacheCheck := [:past :now | | cacheContext |
     cacheContext := Array with: past with: now with: component item.
     messageDeclaration ifTrue: [cacheContext := cacheContext copyWith: 'module_message_cache_v1'].
     cacheGuard value: component value: cacheContext].
   declarationCapture := material at: 'declarationBefore'.
   declarationOwned := declarationCapture at: 'owned'. modelObject := (material at: 'createdModel') element.
   (record at: 'createdModel') element == modelObject
     ifFalse: [component error: 'Original created declaration pointer changed']
 ].
 (#('diagnose' 'cache_controls') includes: mode) ifTrue: [
   declaration ifFalse: [component error: 'Bounded declaration diagnostic requires original body capture'].
   root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
   (root at: 'owner') == component item ifFalse: [component error: 'Original diagnostic owner expired'].
   rawDeclaration := declarationReader value: component
     value: (((declarationCapture at: 'images') at: 'snapshots') keys,
       (material at: 'declarationAfterSnapshots') keys) value: declarationOwned.
   (rawDeclaration isKindOf: Dictionary) ifFalse: [component error: rawDeclaration asString].
   mode = 'cache_controls' ifTrue: [
     currentDeclaration := rawDeclaration at: 'snapshots'.
     controls := OrderedCollection new.
    controlReply := cacheCheck value: (material at: 'declarationAfterSnapshots') value: currentDeclaration.
     controls add: (Dictionary new at: 'name' put: 'actual_cache_drift'; at: 'passed' put: (controlReply isKindOf: Dictionary); at: 'result' put: controlReply; yourself).
     #('model_attribute' 'configuration_field' 'original_string' 'wrong_cache_root' 'unreachable_new_object') do: [:name |
       scratch := currentDeclaration copy.
       name = 'model_attribute' ifTrue: [
         controlObject := modelObject. controlEntry := scratch at: controlObject.
         controlFields := (controlObject class allInstVarNames collect: [:field | field asString]) asArray.
         controlIndex := controlFields indexOf: 'attributes'. controlIndex > 0 ifFalse: [component error: 'Original model attributes slot unavailable'].
         controlRows := controlEntry last copy. controlRows at: controlIndex put: ((controlRows at: controlIndex) = 0 ifTrue: [1] ifFalse: [0]).
         scratch at: controlObject put: (Array with: 'fields' with: controlRows)
       ].
       name = 'configuration_field' ifTrue: [
         controlObject := currentDeclaration keys detect: [:object | object class name asString = 'SGClassValueConfig'].
         controlRows := (scratch at: controlObject) last copy.
         controlRows at: 1 put: (controlRows first isNil ifTrue: [1] ifFalse: [nil]).
         scratch at: controlObject put: (Array with: 'fields' with: controlRows)
       ].
       name = 'original_string' ifTrue: [
         controlObject := (material at: 'declarationAfterSnapshots') keys detect: [:object | object class name asString = 'String'].
         scratch at: controlObject put: (Array with: 'value' with: ((scratch at: controlObject) last, ' altered'))
       ].
       name = 'wrong_cache_root' ifTrue: [
         controlObject := component item. controlRows := (scratch at: controlObject) last copy.
         controlFields := (controlObject class allInstVarNames collect: [:field | field asString]) asArray.
         controlRows at: (controlFields indexOf: 'aliasNameCache') put: modelObject.
         scratch at: controlObject put: (Array with: 'fields' with: controlRows)
       ].
       name = 'unreachable_new_object' ifTrue: [
         controlObject := 'unreachable cache control' copy.
         scratch at: controlObject put: (Array with: 'value' with: controlObject copy)
       ].
      controlReply := cacheCheck value: (material at: 'declarationAfterSnapshots') value: scratch.
       controls add: (Dictionary new at: 'name' put: name;
         at: 'passed' put: (controlReply isString and: [controlReply startsWith: 'BDE_DECLARATION_CACHE_GUARD_ERROR:']);
         at: 'result' put: controlReply; yourself)
     ].
     answer := Dictionary new at: 'profile' put: 'native_declaration_cache_controls_v1';
       at: 'native_token' put: token; at: 'component_oid' put: component getOID; at: 'controls' put: controls;
       at: 'declaration_unchanged' put: (rawDeclaration at: 'verify') value;
       at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'write_authorized' put: false; yourself
   ] ifFalse: [answer := Dictionary new at: 'profile' put: 'native_declaration_history_diagnostic_v1';
     at: 'native_token' put: token; at: 'component_oid' put: component getOID;
     at: 'current' put: (rawDeclaration at: 'originalImage');
     at: 'current_schema' put: (rawDeclaration at: 'fieldDiagnostics') value;
     at: 'recorded_after' put: ((rawDeclaration at: 'imageFor') value: (material at: 'declarationAfterSnapshots'));
     at: 'recorded_schema' put: ((rawDeclaration at: 'diagnosticsFor') value: (material at: 'declarationAfterSnapshots'));
     at: 'recorded_head_matches' put: (((declarationCapture at: 'images') at: 'verifyImages')
       value: (material at: 'declarationAfterSnapshots'));
     at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'write_authorized' put: false; yourself].
   (root at: 'encodeObservation') value: answer
 ] ifFalse: [
 (material at: 'historyClosed' ifAbsent: [false]) ifTrue: [
   component error: 'Creation history finalization started; inspect finalization without replay'].
 (material at: 'phase') = 'attached' ifFalse: [component error: 'Actual factory capture required'].
 ((declaration or: [(material at: 'createdModel') isNil]) and: [(material at: 'createdDefinition') isNil])
   ifFalse: [component error: 'Graphical execution cannot restore declarations or definitions'].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 diagram := record at: 'diagram'. parent := material at: 'parent'. collection := material at: 'collection'.
 created := material at: 'created'. native := material at: 'nativeBefore'. source := material at: 'sourceBefore'.
 sourceRoot := source at: 'sourceRoot'.
 sameOrder := [:left :right | left size = right size and: [
   (1 to: left size) allSatisfy: [:index | (left at: index) == (right at: index)]]].
 sameMap := [:left :right | left size = right size and: [left keys allSatisfy: [:key |
   (right keys anySatisfy: [:peer | peer == key]) and: [(left at: key) == (right at: key)]]]].
 sameImage := [:object :left :right | left first = right first and: [
   left first = 'boundary' ifTrue: [true] ifFalse: [left first = 'value'
   ifTrue: [left last = right last] ifFalse: [
     (#('Dictionary' 'IdentityDictionary') includes: object class name asString)
       ifTrue: [sameMap value: left last value: right last]
       ifFalse: [sameOrder value: left last value: right last]]]]].
 ((material at: 'record') == record and: [(material at: 'root') == root and: [
   (root at: 'owner') == component item and: [(root at: 'diagram') == diagram and: [
   (root at: 'specification') == diagram specification and: [
   (root at: 'generation') = (material at: 'generation') and: [
   parent == diagram topGraphicalHierarchy contents and: [parent children == collection and: [
   (root at: 'ids') == (material at: 'ids') and: [sourceRoot == diagram specification specSourceInternalOrNil]]]]]]]]])
   ifFalse: [component error: 'Original create owner/root/source/parent/alias binding expired'].
 ((record at: 'created') == (material at: 'createdAPI') and: [
   (material at: 'createdAPI') diagramElement == created and: [created manager == parent]])
   ifFalse: [component error: 'Created original occurrence or parent binding changed'].
 head := material at: 'historyHead' ifAbsent: [
   | initial |
   ((record at: 'state') = 'applied' and: [
     ((native at: 'verifyImages') value: (material at: 'combinedNativeAfter')) and: [
     ((material at: 'sourceAfter') at: 'verify') value]])
     ifFalse: [component error: 'Initial actual factory head changed; never reconstruct stale history'].
   initial := Dictionary new at: 'owner' put: token; at: 'state' put: 'applied'; at: 'sequence' put: 1;
     at: 'beforeNative' put: (native at: 'snapshots'); at: 'afterNative' put: (material at: 'combinedNativeAfter');
     at: 'beforeSource' put: source; at: 'afterSource' put: (material at: 'sourceAfter');
     at: 'beforeOrder' put: (material at: 'beforeOrder'); at: 'afterOrder' put: (material at: 'afterOrder');
     at: 'beforeDrawing' put: (material at: 'beforeDrawing'); at: 'afterDrawing' put: (material at: 'afterDrawing');
     at: 'beforeValues' put: (material at: 'beforeValues'); at: 'afterValues' put: (material at: 'afterValues'); yourself.
   declaration ifTrue: [
     initial at: 'beforeDeclaration' put: ((declarationCapture at: 'images') at: 'snapshots');
       at: 'afterDeclaration' put: (material at: 'declarationAfterSnapshots');
       at: 'declarationImages' put: (declarationCapture at: 'images').
     enumDeclaration ifTrue: [initial at: 'beforeDefinitionReferences' put: (declarationCapture at: 'definitionReferences');
       at: 'afterDefinitionReferences' put: ((material at: 'declarationAfter') at: 'definitionReferences')]
    . messageDeclaration ifTrue: [initial at: 'beforeOwnerReferences' put: (declarationCapture at: 'ownerReferences');
      at: 'afterOwnerReferences' put: ((material at: 'declarationAfter') at: 'ownerReferences');
      at: 'beforeOwnerDatabaseReferences' put: (declarationCapture at: 'ownerDatabaseReferences');
      at: 'afterOwnerDatabaseReferences' put: ((material at: 'declarationAfter') at: 'ownerDatabaseReferences')]
   ].
   material at: 'historyHead' put: initial. initial
 ].
 ((head at: 'owner') = owner and: [(head at: 'state') = state and: [(record at: 'state') = state and: [
   #('applied' 'reverted') includes: state]]])
   ifFalse: [component error: 'Actual creation history owner/state differs'].
 ((sameOrder value: collection value: (head at: 'afterOrder')) and: [
   (sameOrder value: parent sortedChildren value: (head at: 'afterDrawing')) and: [
   (sameMap value: (root at: 'ids') value: (material at: 'afterIds')) and: [
   (root at: 'counter') = (material at: 'afterCounter') and: [
   ((native at: 'verifyImages') value: (head at: 'afterNative')) and: [
   ((head at: 'afterSource') at: 'verify') value]]]]])
   ifFalse: [component error: 'Complete actual native/source/order/alias CURRENT changed'].
 observed := (record at: 'materialObservationReader') value: component value: 'Main' value: #().
 observed = ((root at: 'encodeObservation') value: (head at: 'afterValues'))
   ifFalse: [component error: 'Complete typed CURRENT differs from actual history'].
 declaration ifTrue: [
   cacheRecorded := head at: 'afterDeclaration'.
   cachePreviousReader := head at: 'declarationImages'.
   rawDeclaration := declarationReader value: component
     value: ((head at: 'beforeDeclaration') keys, cacheRecorded keys) value: declarationOwned.
   (rawDeclaration isKindOf: Dictionary) ifFalse: [component error: rawDeclaration asString].
   currentDeclaration := rawDeclaration at: 'snapshots'.
    cacheResult := cacheCheck value: cacheRecorded value: currentDeclaration.
   (cacheResult isKindOf: Dictionary) ifFalse: [component error: cacheResult asString].
   cacheBindings := cacheRecorded keys collect: [:object | | single oldBinding |
     single := IdentityDictionary new at: object put: (cacheRecorded at: object); yourself.
     oldBinding := (((cachePreviousReader at: 'imageFor') value: single) at: 'objects') first at: 'ref'.
     Array with: oldBinding with: ((rawDeclaration at: 'tokens') at: object)].
   cacheEvidence := Dictionary new at: 'profile' put: 'native_declaration_read_cache_evidence_v1';
     at: 'previous_recorded' put: ((cachePreviousReader at: 'imageFor') value: cacheRecorded);
     at: 'previous_schema' put: ((cachePreviousReader at: 'diagnosticsFor') value: cacheRecorded);
     at: 'namespace_bindings' put: cacheBindings;
     at: 'recorded' put: ((rawDeclaration at: 'imageFor') value: cacheRecorded);
     at: 'recorded_schema' put: ((rawDeclaration at: 'diagnosticsFor') value: cacheRecorded);
     at: 'current' put: (rawDeclaration at: 'originalImage');
     at: 'current_schema' put: (rawDeclaration at: 'fieldDiagnostics') value;
     at: 'owner_ref' put: ((rawDeclaration at: 'tokens') at: component item);
     at: 'native_guard' put: cacheResult; at: 'write_authorized' put: false; yourself
   . enumDeclaration ifTrue: [
     enumContext := Array with: record with: material with: head with: rawDeclaration.
     enumExecutable ifTrue: [enumContext := enumContext copyWith: 'current'].
     enumEvidence := enumGuard value: component value: enumContext.
     (enumEvidence isKindOf: Dictionary) ifFalse: [component error: enumEvidence asString]
   ]
    . messageDeclaration ifTrue: [messageEvidence := messageGuard value: component
      value: (Array with: record with: material with: head with: rawDeclaration).
      (messageEvidence isKindOf: Dictionary) ifFalse: [component error: messageEvidence asString]]
 ].
 (#('inspect' 'status') includes: mode) ifTrue: [
   mode = 'status' ifTrue: [
     answer := material at: 'historyActual' ifAbsent: [component error: 'Actual creation history terminal unavailable'].
     (((answer at: 'execution') at: 'result_change_id') = owner and: [
       ((answer at: 'execution') at: 'after_state') = state and: [
       ((answer at: 'execution') at: 'terminal_verified') == true]])
       ifFalse: [component error: 'Requested creation terminal is not retained'].
     declaration ifTrue: [answer := Dictionary new at: 'profile' put: 'native_create_exact_terminal_query_v2';
       at: 'actual' put: answer; at: 'read_cache_evidence' put: cacheEvidence;
       at: 'model_setters_called' put: 0; at: 'store_called' put: false;
       at: 'execution_redispatched' put: false; yourself]
     . enumExecutable ifTrue: [answer at: 'profile' put: 'native_create_exact_terminal_query_v3';
       at: 'definition_evidence' put: enumEvidence]
      . messageExecutable ifTrue: [answer at: 'profile' put: 'native_create_exact_terminal_query_v4';
        at: 'message_evidence' put: messageEvidence]
   ] ifFalse: [answer := Dictionary new at: 'profile' put: 'native_create_exact_head_v1';
     at: 'native_token' put: token; at: 'owner_change_id' put: owner; at: 'state' put: state;
     at: 'sequence' put: (head at: 'sequence'); at: 'before' put: (head at: 'beforeValues');
     at: 'after' put: (head at: 'afterValues'); at: 'current_verified' put: true;
     at: 'created_original_retained' put: true; at: 'model_setters_called' put: 0;
     at: 'store_called' put: false; at: 'write_authorized' put: false; yourself.
     declaration ifTrue: [answer at: 'read_cache_evidence' put: cacheEvidence]].
   (root at: 'encodeObservation') value: answer
 ] ifFalse: [
   (resultId = owner or: [resultId = token]) ifTrue: [component error: 'Distinct creation history result required'].
   (material includesKey: 'historyExecution') ifTrue: [
     ((material at: 'historyExecution') at: 'terminal_verified') == true
       ifFalse: [component error: 'Prior creation execution is unknown; query retained result without replay']].
   targetNative := head at: 'beforeNative'. targetSource := head at: 'beforeSource'.
   targetOrder := head at: 'beforeOrder'. targetDrawing := head at: 'beforeDrawing'.
   targetValues := head at: 'beforeValues'.
   declaration ifTrue: [targetDeclaration := head at: 'beforeDeclaration'].
   ((targetOrder select: [:object | object == created]) size = (state = 'applied' ifTrue: [0] ifFalse: [1]))
     ifFalse: [component error: 'Exact original occurrence membership target differs'].
   slot := (sourceRoot class allInstVarNames collect: [:name | name asString]) indexOf: 'highestUsedGraphicalIdentifier'.
   slot > 0 ifFalse: [component error: 'Audited native allocator slot unavailable'].
   sourceEntry := ((head at: 'afterSource') at: 'snapshots') at: sourceRoot.
   high := sourceEntry last at: slot.
   (high isInteger and: [high >= 0]) ifFalse: [component error: 'Actual allocator high-water unavailable'].
   version := material at: 'historyPreflightVersion' ifAbsent: [0].
   mode = 'prepare' ifTrue: [
     stage := 'preparation'.
     raw := helpers first value: component value: ((head at: 'beforeNative') keys, (head at: 'afterNative') keys).
     (raw isKindOf: Dictionary) ifFalse: [component error: raw asString].
     currentNative := raw at: 'snapshots'.
     currentSource := (helpers at: 2) value: component value: (Array with: sourceRoot with:
       (((head at: 'beforeSource') at: 'snapshots') keys, ((head at: 'afterSource') at: 'snapshots') keys)).
     (currentSource isKindOf: Dictionary) ifFalse: [component error: currentSource asString].
     declaration ifTrue: [
       declarationDesired := currentDeclaration copy.
       targetDeclaration keysAndValuesDo: [:object :entry | declarationDesired at: object put: entry].
       declarationDescriptor := (rawDeclaration at: 'tokens') at: modelObject.
       originalModelOID := ((material at: 'afterModelOIDs') at:
         ((material at: 'afterModelRefs') indexOf: modelObject)).
       declarationEvidence := Dictionary new at: 'profile' put: 'native_declaration_exact_target_v2';
         at: 'current' put: (rawDeclaration at: 'originalImage');
         at: 'original' put: ((rawDeclaration at: 'imageFor') value: targetDeclaration);
         at: 'expected' put: ((rawDeclaration at: 'imageFor') value: declarationDesired);
         at: 'current_schema' put: (rawDeclaration at: 'fieldDiagnostics') value;
         at: 'original_schema' put: ((rawDeclaration at: 'diagnosticsFor') value: targetDeclaration);
         at: 'expected_schema' put: ((rawDeclaration at: 'diagnosticsFor') value: declarationDesired);
         at: 'owner_ref' put: ((rawDeclaration at: 'tokens') at: component item);
         at: 'read_cache_evidence' put: cacheEvidence;
         at: 'created_model_ref' put: declarationDescriptor; at: 'created_model_oid' put: originalModelOID;
         at: 'expected_model_present' put: (state = 'reverted'); at: 'same_original_objects_retained' put: true; yourself.
       enumDeclaration ifTrue: [declarationEvidence at: 'profile' put: 'native_enum_declaration_exact_target_v1';
         at: 'definition_evidence' put: enumEvidence].
       enumExecutable ifTrue: [declarationEvidence at: 'profile' put: 'native_enum_declaration_exact_target_v2'].
        messageDeclaration ifTrue: [declarationEvidence at: 'profile' put: 'native_message_declaration_exact_target_v1';
          at: 'message_evidence' put: messageEvidence].
       "Build the whole declaration patch before any native mutation."
       declarationPatch := (helpers at: 5) value: component value: (Array with: declarationDesired with: currentDeclaration) value: 'undo'.
       (declarationPatch isKindOf: Dictionary) ifFalse: [component error: declarationPatch asString]
     ].
     nativeDesired := currentNative copy. targetNative keysAndValuesDo: [:object :entry | nativeDesired at: object put: entry].
     sourceDesired := (currentSource at: 'snapshots') copy.
     (targetSource at: 'snapshots') keysAndValuesDo: [:object :entry | sourceDesired at: object put: entry].
     sourceEntry := sourceDesired at: sourceRoot.
     (sourceEntry first = 'fields' and: [(sourceEntry last at: slot) <= high])
       ifFalse: [component error: 'Creation history cannot lower or guess allocator high-water'].
     sourceEntry := Array with: 'fields' with: sourceEntry last copy. sourceEntry last at: slot put: high.
     sourceDesired at: sourceRoot put: sourceEntry.
     nativeDesired keysAndValuesDo: [:object :entry | (sourceDesired includesKey: object) ifTrue: [
       (sameImage value: object value: entry value: (sourceDesired at: object))
         ifFalse: [component error: 'Shared source/native exact targets disagree']]].
     declaration ifTrue: [declarationDesired keysAndValuesDo: [:object :entry |
       (Array with: nativeDesired with: sourceDesired) do: [:peer |
         (peer includesKey: object) ifTrue: [
           (entry first = 'boundary' or: [(peer at: object) first = 'boundary']) ifFalse: [
             (sameImage value: object value: entry value: (peer at: object))
               ifFalse: [component error: 'Shared declaration/native/source targets disagree']
           ]
         ]
       ]
     ]].
     sourceEvidence := (helpers at: 6) value: component value: (Array with: sourceRoot
       with: ((head at: 'beforeSource') at: 'snapshots') with: ((head at: 'afterSource') at: 'snapshots')
       with: (currentSource at: 'snapshots') with: sourceDesired).
     (sourceEvidence isKindOf: Dictionary) ifFalse: [component error: sourceEvidence asString].
     allocator := Dictionary new at: 'field' put: 'highestUsedGraphicalIdentifier';
       at: 'before' put: high; at: 'expected' put: high; at: 'rewind_authorized' put: false;
       at: 'retained_for_redo' put: true; yourself.
     parentBefore := (helpers at: 3) value: (material at: 'orderRecord') value: collection asArray copy.
     parentExpected := (helpers at: 3) value: (material at: 'orderRecord') value: targetOrder.
     drawingBefore := ((helpers at: 4) value: component value: (material at: 'orderRecord') value: parent sortedChildren asArray copy) value: true.
     drawingExpected := ((helpers at: 4) value: component value: (material at: 'orderRecord') value: targetDrawing) value: false.
     version := version + 1. material at: 'historyPreflightVersion' put: version.
     prepared := Dictionary new at: 'head' put: head; at: 'owner' put: owner; at: 'state' put: state;
       at: 'result' put: resultId; at: 'signature' put: token, '/b', version printString;
       at: 'raw' put: raw; at: 'native' put: currentNative; at: 'source' put: currentSource;
       at: 'nativeDesired' put: nativeDesired; at: 'sourceDesired' put: sourceDesired;
       at: 'targetOrder' put: targetOrder; at: 'targetDrawing' put: targetDrawing; at: 'expectedValues' put: targetValues;
       at: 'parentBefore' put: (parentBefore at: 'value'); at: 'parentExpected' put: (parentExpected at: 'value');
       at: 'drawingBefore' put: (drawingBefore at: 'value'); at: 'drawingExpected' put: (drawingExpected at: 'value');
       at: 'allocator' put: allocator; yourself.
     declaration ifTrue: [prepared at: 'declarationRaw' put: rawDeclaration;
       at: 'declarationCurrent' put: currentDeclaration; at: 'declarationDesired' put: declarationDesired;
       at: 'declarationPatch' put: declarationPatch; at: 'declarationEvidence' put: declarationEvidence].
     enumDeclaration ifTrue: [prepared at: 'enumExecutable' put: enumExecutable].
      messageDeclaration ifTrue: [prepared at: 'messageExecutable' put: messageExecutable].
     material at: 'historyPrepared' put: prepared.
     answer := Dictionary new at: 'profile' put: 'native_create_exact_preparation_v1';
       at: 'native_token' put: token; at: 'owner_change_id' put: owner; at: 'result_change_id' put: resultId;
       at: 'state' put: state; at: 'sequence' put: (head at: 'sequence');
       at: 'before' put: (head at: 'afterValues'); at: 'expected' put: targetValues;
       at: 'signature' put: (prepared at: 'signature'); at: 'kind' put: (record at: 'args') first;
       at: 'parent_before' put: (prepared at: 'parentBefore'); at: 'parent_expected' put: (prepared at: 'parentExpected');
       at: 'drawing_before' put: (prepared at: 'drawingBefore'); at: 'drawing_expected' put: (prepared at: 'drawingExpected');
       at: 'graphical_current' put: (raw at: 'originalImage'); at: 'graphical_original' put: ((raw at: 'imageFor') value: targetNative);
       at: 'graphical_expected' put: ((raw at: 'imageFor') value: nativeDesired);
       at: 'source_evidence' put: sourceEvidence; at: 'allocator' put: allocator;
       at: 'created_original_retained' put: true; at: 'declaration_body_restore_verified' put: false;
       at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'write_authorized' put: false;
       at: 'local_merge_enabled' put: false; yourself.
     declaration ifTrue: [answer at: 'profile' put: 'native_create_exact_preparation_v2';
       at: 'declaration_evidence' put: declarationEvidence].
     enumDeclaration ifTrue: [answer at: 'profile' put: 'native_create_enum_exact_preparation_v1'].
     enumExecutable ifTrue: [answer at: 'profile' put: 'native_create_enum_exact_preparation_v2'].
      messageDeclaration ifTrue: [answer at: 'profile' put: 'native_create_message_exact_preparation_v1'].
      messageExecutable ifTrue: [answer at: 'profile' put: 'native_create_message_exact_preparation_v2'].
     (root at: 'encodeObservation') value: answer
   ] ifFalse: [
     stage := 'guard'. prepared := material at: 'historyPrepared'.
     (enumDeclaration and: [(prepared at: 'enumExecutable' ifAbsent: [false]) ~= enumExecutable])
       ifTrue: [component error: 'Enum preparation profile cannot switch to execution'].
      (messageDeclaration and: [(prepared at: 'messageExecutable' ifAbsent: [false]) ~= messageExecutable])
        ifTrue: [component error: 'Message preparation profile cannot switch to execution'].
     ((prepared at: 'head') == head and: [(prepared at: 'owner') = owner and: [(prepared at: 'state') = state and: [
       (prepared at: 'result') = resultId and: [(prepared at: 'signature') = signature and: [
       (prepared at: 'consumed' ifAbsent: [false]) not and: [
       ((prepared at: 'raw') at: 'verify') value and: [((prepared at: 'source') at: 'verify') value]]]]]]])
       ifFalse: [component error: 'Unconsumed exact creation preparation and CURRENT required'].
     declaration ifTrue: [
       rawDeclaration := prepared at: 'declarationRaw'.
       (rawDeclaration at: 'verify') value ifFalse: [component error: 'Unconsumed exact declaration CURRENT required'].
       currentDeclaration := prepared at: 'declarationCurrent'. declarationDesired := prepared at: 'declarationDesired'.
       declarationPatch := prepared at: 'declarationPatch'
     ].
     raw := prepared at: 'raw'. currentNative := prepared at: 'native'. currentSource := prepared at: 'source'.
     nativeDesired := prepared at: 'nativeDesired'. sourceDesired := prepared at: 'sourceDesired'.
     beforeOrder := collection asArray copy. beforeDrawing := parent sortedChildren asArray copy.
     beforeValues := (root at: 'copyObservation') value: (root at: 'observationValues').
     proof := Dictionary new at: 'profile' put: 'native_create_exact_execution_v1'; at: 'native_token' put: token;
       at: 'head_change_id' put: owner; at: 'result_change_id' put: resultId;
       at: 'sequence' put: (head at: 'sequence') + 1; at: 'before_state' put: state;
       at: 'after_state' put: (state = 'applied' ifTrue: ['reverted'] ifFalse: ['applied']);
       at: 'model_operations' put: 0; at: 'drawing_assignments' put: 0;
       at: 'store_started' put: false; at: 'store_completed' put: false; at: 'phase' put: 'native';
       at: 'native_primitives' put: 0; at: 'source_primitives' put: 0; at: 'terminal_verified' put: false; yourself.
     declaration ifTrue: [proof at: 'profile' put: 'native_create_exact_execution_v2';
       at: 'declaration_primitives' put: 0].
     enumExecutable ifTrue: [proof at: 'profile' put: 'native_create_exact_execution_v3'].
      messageExecutable ifTrue: [proof at: 'profile' put: 'native_create_exact_execution_v4'].
     material at: 'historyExecution' put: proof.
     prepared at: 'consumed' put: true. mutated := true. stage := 'native'.
     declaration ifTrue: [
       stage := 'declaration'. proof at: 'phase' put: stage. material at: 'historyDeclarationPatch' put: declarationPatch.
       [(declarationPatch at: 'execute') value] ensure: [
         proof at: 'declaration_primitives' put: ((declarationPatch at: 'progress') at: 'completed_primitives')]
     ].
     "No factory or declaration deletion. Complete guard proves no later incident edge."
     state = 'applied' ifTrue: [collection remove: created] ifFalse: [
       collection add: created beforeIndex: (targetOrder indexOf: created)].
     proof at: 'model_operations' put: 1.
     (sameOrder value: collection value: targetOrder) ifFalse: [component error: 'Exact original insertion/removal order differs'].
     targetDrawing doWithIndex: [:object :index | object basicGraphObject drawingOrder: index.
       proof at: 'drawing_assignments' put: (proof at: 'drawing_assignments') + 1].
     stage := 'store'. proof at: 'phase' put: stage; at: 'store_started' put: true.
     checkReturn := diagram storeToCache.
     (checkReturn isString and: [checkReturn startsWith: 'Exception:']) ifTrue: [component error: checkReturn].
     proof at: 'store_completed' put: true.
     stage := 'normalization'. proof at: 'phase' put: stage.
     observed := (native at: 'captureImages') value: nativeDesired keys.
     patch := (helpers at: 5) value: component value: (Array with: nativeDesired with: observed) value: 'undo'.
     (patch isKindOf: Dictionary) ifFalse: [component error: patch asString].
     material at: 'historyNativePatch' put: patch.
     [(patch at: 'execute') value] ensure: [proof at: 'native_primitives' put: ((patch at: 'progress') at: 'completed_primitives')].
     observed := (currentSource at: 'captureImages') value: sourceDesired keys.
     patch := (helpers at: 5) value: component value: (Array with: sourceDesired with: observed) value: 'undo'.
     (patch isKindOf: Dictionary) ifFalse: [component error: patch asString].
     material at: 'historySourcePatch' put: patch.
     [(patch at: 'execute') value] ensure: [proof at: 'source_primitives' put: ((patch at: 'progress') at: 'completed_primitives')].
     declaration ifTrue: [
       stage := 'declaration_normalization'. proof at: 'phase' put: stage.
       observed := (rawDeclaration at: 'captureImages') value: declarationDesired keys.
       declarationPatch := (helpers at: 5) value: component value: (Array with: declarationDesired with: observed) value: 'undo'.
       (declarationPatch isKindOf: Dictionary) ifFalse: [component error: declarationPatch asString].
       material at: 'historyDeclarationNormalization' put: declarationPatch.
       [(declarationPatch at: 'execute') value] ensure: [proof at: 'declaration_primitives'
         put: (proof at: 'declaration_primitives') + ((declarationPatch at: 'progress') at: 'completed_primitives')].
       ((rawDeclaration at: 'verifyImages') value: declarationDesired)
         ifFalse: [component error: 'Complete original declaration/configuration target differs']
     ].
     (((native at: 'verifyImages') value: nativeDesired) and: [
       ((currentSource at: 'verifyImages') value: sourceDesired) and: [
       (sourceRoot instVarAt: slot) = high and: [
       (sameMap value: (root at: 'ids') value: (material at: 'afterIds')) and: [
       (root at: 'counter') = (material at: 'afterCounter')]]]])
       ifFalse: [component error: 'Complete native/source/allocator/alias target differs'].
     root at: 'checkpoint' put: ((root at: 'copySource') value: sourceRoot); at: 'checkpointVersion' put: 2.
     actualEncoded := (record at: 'materialObservationReader') value: component value: 'Main' value: #().
     actualValues := (root at: 'copyObservation') value: (root at: 'observationValues').
     actualEncoded = ((root at: 'encodeObservation') value: targetValues)
       ifFalse: [component error: 'Complete actual typed creation target differs'].
     declaration ifTrue: [
       observed := (rawDeclaration at: 'captureImages') value: declarationDesired keys.
        cacheResult := cacheCheck value: declarationDesired value: observed.
       (cacheResult isKindOf: Dictionary) ifFalse: [component error: cacheResult asString].
       stage := 'read_cache_normalization'. proof at: 'phase' put: stage.
       declarationPatch := (helpers at: 5) value: component value: (Array with: declarationDesired with: observed) value: 'undo'.
       (declarationPatch isKindOf: Dictionary) ifFalse: [component error: declarationPatch asString].
       material at: 'historyReadCacheNormalization' put: declarationPatch.
       [(declarationPatch at: 'execute') value] ensure: [proof at: 'declaration_primitives'
         put: (proof at: 'declaration_primitives') + ((declarationPatch at: 'progress') at: 'completed_primitives')].
       (((rawDeclaration at: 'verifyImages') value: declarationDesired) and: [
         ((native at: 'verifyImages') value: nativeDesired) and: [
         (currentSource at: 'verifyImages') value: sourceDesired]])
         ifFalse: [component error: 'Final declaration/native/source target changed after typed read']
     ].
     ((sameOrder value: collection value: targetOrder) and: [sameOrder value: parent sortedChildren value: targetDrawing])
       ifFalse: [component error: 'Actual terminal physical/drawing order differs'].
      (enumExecutable or: [messageExecutable]) ifTrue: [
        stage := messageExecutable ifTrue: ['message_owner_reference_commit'] ifFalse: ['enum_owner_reference_commit'].
        proof at: 'phase' put: stage.
        enumPersistence := Dictionary new at: 'profile' put: (messageExecutable
          ifTrue: ['native_message_owner_reference_commit_v1'] ifFalse: ['native_enum_owner_reference_commit_v1']);
         at: 'component_oid' put: component getOID; at: 'owner_modified_started' put: true;
         at: 'owner_modified_completed' put: false; at: 'auto_commit_started' put: false;
         at: 'auto_commit_completed' put: false; at: 'native_source_declaration_targets_unchanged' put: false;
         at: 'model_setters_called' put: 0; at: 'store_replayed' put: false; yourself.
        material at: (messageExecutable ifTrue: ['messageHistoryPersistence'] ifFalse: ['enumHistoryPersistence']) put: enumPersistence.
       enumReply := component item dbObject modified: component item.
       ((enumReply respondsTo: #isError) and: [enumReply isError])
          ifTrue: [component error: 'Original declaration owner write-cache failed'].
       enumPersistence at: 'owner_modified_completed' put: true.
        component isAutoCommitActive ifFalse: [component error: 'Exact declaration history requires active original auto-commit'].
       enumPersistence at: 'auto_commit_started' put: true.
       enumReply := component autoCommitDatabase.
       ((enumReply respondsTo: #isError) and: [enumReply isError])
          ifTrue: [component error: 'Original declaration owner reference commit failed'].
       enumPersistence at: 'auto_commit_completed' put: true.
       (((rawDeclaration at: 'verifyImages') value: declarationDesired) and: [
         ((native at: 'verifyImages') value: nativeDesired) and: [(currentSource at: 'verifyImages') value: sourceDesired]])
          ifFalse: [component error: 'Declaration reference persistence changed the exact native/source/declaration target'].
        enumPersistence at: 'native_source_declaration_targets_unchanged' put: true.
        messageExecutable ifTrue: [messagePersistence := enumPersistence copy]
     ].
     afterNative := (native at: 'captureImages') value: (nativeDesired keys, currentNative keys).
     afterSource := (helpers at: 2) value: component value: (Array with: sourceRoot with: sourceDesired keys).
     (afterSource isKindOf: Dictionary) ifFalse: [component error: afterSource asString].
     graphicalActual := (raw at: 'diff') value.
     (raw at: 'verifyAfter') value ifFalse: [component error: 'Actual creation terminal drifted'].
     declaration ifTrue: [
       afterDeclaration := (rawDeclaration at: 'captureImages') value: (declarationDesired keys, currentDeclaration keys).
       declarationActual := (rawDeclaration at: 'diff') value.
       (rawDeclaration at: 'verifyAfter') value ifFalse: [component error: 'Actual declaration terminal drifted']
     ].
     enumExecutable ifTrue: [
       enumActualEvidence := enumGuard value: component value:
         ((Array with: record with: material with: head with: rawDeclaration) copyWith: 'target').
       (enumActualEvidence isKindOf: Dictionary) ifFalse: [component error: enumActualEvidence asString].
       ((rawDeclaration at: 'verifyImages') value: declarationDesired)
         ifFalse: [component error: 'Enum target type/reference read changed the declaration terminal']
     ].
      messageExecutable ifTrue: [
        messageActualEvidence := messageGuard value: component value:
          ((Array with: record with: material with: head with: rawDeclaration) copyWith: 'target').
        (messageActualEvidence isKindOf: Dictionary) ifFalse: [component error: messageActualEvidence asString].
        ((rawDeclaration at: 'verifyImages') value: declarationDesired)
          ifFalse: [component error: 'Message owner/type/reference read changed the declaration terminal']
      ].
     sourceEvidence := (helpers at: 6) value: component value: (Array with: sourceRoot
       with: ((head at: 'beforeSource') at: 'snapshots') with: ((head at: 'afterSource') at: 'snapshots')
       with: (currentSource at: 'snapshots') with: (afterSource at: 'snapshots')).
     (sourceEvidence isKindOf: Dictionary) ifFalse: [component error: sourceEvidence asString].
     head := Dictionary new at: 'owner' put: resultId; at: 'state' put: (proof at: 'after_state');
       at: 'sequence' put: (proof at: 'sequence'); at: 'beforeNative' put: currentNative; at: 'afterNative' put: afterNative;
       at: 'beforeSource' put: currentSource; at: 'afterSource' put: afterSource;
       at: 'beforeOrder' put: beforeOrder; at: 'afterOrder' put: collection asArray copy;
       at: 'beforeDrawing' put: beforeDrawing; at: 'afterDrawing' put: parent sortedChildren asArray copy;
       at: 'beforeValues' put: beforeValues; at: 'afterValues' put: actualValues; yourself.
     declaration ifTrue: [head at: 'beforeDeclaration' put: currentDeclaration; at: 'afterDeclaration' put: afterDeclaration;
       at: 'declarationImages' put: rawDeclaration].
     enumExecutable ifTrue: [head at: 'beforeDefinitionReferences' put: (enumEvidence at: 'definition_references_current');
       at: 'afterDefinitionReferences' put: (enumActualEvidence at: 'definition_references_current')].
      messageExecutable ifTrue: [head at: 'beforeOwnerReferences' put: (messageEvidence at: 'owner_references_current');
        at: 'afterOwnerReferences' put: (messageActualEvidence at: 'owner_references_current');
        at: 'beforeOwnerDatabaseReferences' put: (messageEvidence at: 'owner_database_record_references_current');
        at: 'afterOwnerDatabaseReferences' put: (messageActualEvidence at: 'owner_database_record_references_current')].
     proof at: 'phase' put: 'terminal'; at: 'terminal_verified' put: true.
     answer := Dictionary new at: 'profile' put: 'native_create_exact_actual_v1'; at: 'observation' put: actualValues;
       at: 'execution' put: proof; at: 'parent_before' put: (prepared at: 'parentBefore');
       at: 'parent_after' put: (((helpers at: 3) value: (material at: 'orderRecord') value: collection asArray copy) at: 'value');
       at: 'drawing_before' put: (prepared at: 'drawingBefore');
       at: 'drawing_after' put: ((((helpers at: 4) value: component value: (material at: 'orderRecord') value: parent sortedChildren asArray copy) value: true) at: 'value');
       at: 'graphical_current' put: (raw at: 'originalImage'); at: 'graphical_actual' put: graphicalActual;
       at: 'source_actual_evidence' put: sourceEvidence;
       at: 'allocator' put: (prepared at: 'allocator'); at: 'created_original_retained' put: true;
       at: 'native_target_verified' put: true; at: 'source_target_verified' put: true; yourself.
     declaration ifTrue: [answer at: 'profile' put: 'native_create_exact_actual_v2';
       at: 'declaration_current' put: (rawDeclaration at: 'originalImage');
       at: 'declaration_actual' put: declarationActual;
       at: 'declaration_schema' put: (rawDeclaration at: 'fieldDiagnostics') value;
       at: 'declaration_target_verified' put: true; at: 'created_model_original_retained' put: true].
     enumExecutable ifTrue: [answer at: 'profile' put: 'native_create_exact_actual_v4';
       at: 'enum_definition_evidence' put: enumActualEvidence; at: 'enum_persistence' put: enumPersistence copy].
      messageExecutable ifTrue: [answer at: 'profile' put: 'native_create_exact_actual_v5';
        at: 'message_owner_evidence' put: messageActualEvidence; at: 'message_persistence' put: messagePersistence].
     material at: 'historyHead' put: head; at: 'historyActual' put: answer.
     record at: 'state' put: (proof at: 'after_state'); at: 'lastObserved' put: actualEncoded; at: 'lastObservedTargets' put: #().
     (root at: 'encodeObservation') value: answer
   ]
 ]
 ]
 ] ifFail: [:error | mutated
   ifTrue: [material at: 'historyFailureStage' put: stage. 'BDE_CREATE_HISTORY_ERROR: ', stage, ': ', error messageText]
   ifFalse: ['BDE_CREATE_HISTORY_CONFLICT: ', stage, ': ', error messageText]]
]]
