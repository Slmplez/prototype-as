"Fixed exact connection history kernel. Undo removes the actual factory object;
 redo restores that same object and its original endpoint registrations.
 Complete CURRENT and original-reference targets are mandatory. The explicit
 local profile additionally requires the fixed three-way plan and export."
[:helpers | [:component :context |
 | stage mutationStarted record material |
 stage := 'identity'. mutationStarted := false. record := nil. material := nil.
 component handleExceptionsIn: [
 | mode token owner state resultId signature root diagram parent collection head
   sameOrder sameMap sameImage ids reservation edge alias native source raw currentNative currentSource
   targetNative targetSource targetOrder targetDrawing targetIds targetCounter targetValues
   beforeValues beforeOrder beforeDrawing beforeIds beforeCounter parentBefore parentExpected
   drawingBefore drawingExpected orderReader drawingReader endpointReader encode observed scoped
   prepared version expectedSource proof checkReturn nativeObserved nativeDesired
   sourceObserved sourceDesired nativePatch sourcePatch sourceExpected nativeAfter sourceAfter
   actualValues actualEncoded graphicalActual answer complete currentKeys local localPlan localEvidence origins |
 (helpers isArray and: [(#(6 8) includes: helpers size) and: [context isArray and: [context size = 6]]])
   ifFalse: [component error: 'Fixed exact connect helpers and history context required'].
 local := helpers size = 8. localPlan := nil.
 mode := context first. token := context at: 2. owner := context at: 3.
 state := context at: 4. resultId := context at: 5. signature := context last.
 (#('prepare' 'execute' 'inspect' 'status') includes: mode) ifFalse: [component error: 'Unknown fixed connect history mode'].
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 ((record at: 'owner') == component item and: [(record at: 'component') = component getOID and: [
   (record at: 'operation') = 'connect_data' and: [(record at: 'diagramName') = 'Main']]])
   ifFalse: [component error: 'Exact retained ordinary Main connection required'].
 material := record at: 'connectMaterial' ifAbsent: [component error: 'Prepared original connect material unavailable'].
 (#('native_connect_material_v2' 'native_connect_material_v3' 'native_connect_material_v4') includes: (material at: 'profile')) ifTrue: [
   component error: 'Module reference history requires persistent inverse closure; graphical inverse is insufficient'].
 (material at: 'phase') = 'attached' ifFalse: [component error: 'Actual created connect material unavailable'].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 diagram := record at: 'diagram'. parent := material at: 'parent'. collection := material at: 'collection'.
 ids := material at: 'ids'. edge := material at: 'created'. native := material at: 'nativeBefore'.
 encode := root at: 'encodeObservation'. orderReader := helpers at: 3. drawingReader := helpers at: 4.
 endpointReader := helpers at: 5.
 sameOrder := [:left :right | left size = right size and: [
   (1 to: left size) allSatisfy: [:index | (left at: index) == (right at: index)]]].
 sameMap := [:left :right | left size = right size and: [left keys allSatisfy: [:key |
   (right keys anySatisfy: [:peer | peer == key]) and: [(left at: key) == (right at: key)]]]].
 sameImage := [:object :left :right | left first = right first and: [
   left first = 'boundary' ifTrue: [true] ifFalse: [left first = 'value'
   ifTrue: [left last = right last] ifFalse: [
     (#('Dictionary' 'IdentityDictionary') includes: object class name asString)
       ifTrue: [sameMap value: left last value: right last]
       ifFalse: [(#('Set' 'IdentitySet') includes: object class name asString)
         ifTrue: [left last size = right last size and: [left last allSatisfy: [:member |
           right last anySatisfy: [:peer | peer == member]]]]
         ifFalse: [sameOrder value: left last value: right last]]]]]].
 ((material at: 'record') == record and: [(material at: 'root') == root and: [
   (root at: 'owner') == component item and: [(root at: 'diagram') == diagram and: [
   (root at: 'specification') == diagram specification and: [
   (root at: 'generation') = (material at: 'generation') and: [
   parent == diagram topGraphicalHierarchy contents and: [parent children == collection and: [
   (root at: 'ids') == ids and: [diagram specification specSourceInternalOrNil ==
     ((material at: 'sourceBefore') at: 'sourceRoot')]]]]]]]]])
   ifFalse: [component error: 'Original connect runtime/root/parent/source/alias binding expired'].
 alias := (material at: 'afterIds') at: edge.
 reservation := root at: 'connectAliasReservations' ifAbsent: [component error: 'Actual issued alias reservation unavailable'].
 (reservation at: alias ifAbsent: [false]) == true
   ifFalse: [component error: 'Original issued connection alias reservation changed'].
 head := material at: 'historyHead' ifAbsent: [
   | initial |
   local ifTrue: [component error: 'Actual owned local head unavailable; do not reconstruct history from CURRENT'].
   initial := Dictionary new at: 'owner' put: token; at: 'state' put: 'applied'; at: 'sequence' put: 1;
     at: 'beforeNative' put: (native at: 'snapshots'); at: 'afterNative' put: (material at: 'combinedNativeAfter');
     at: 'beforeSource' put: (material at: 'sourceBefore'); at: 'afterSource' put: (material at: 'sourceAfter');
     at: 'beforeOrder' put: (material at: 'beforeOrder'); at: 'afterOrder' put: (material at: 'afterOrder');
     at: 'beforeDrawing' put: (material at: 'beforeDrawing'); at: 'afterDrawing' put: (material at: 'afterDrawing');
     at: 'beforeIds' put: (material at: 'beforeIds'); at: 'afterIds' put: (material at: 'afterIds');
     at: 'beforeCounter' put: (material at: 'beforeCounter'); at: 'afterCounter' put: (material at: 'afterCounter');
     at: 'beforeValues' put: (material at: 'beforeValues'); at: 'afterValues' put: (material at: 'afterValues'); yourself.
   (((native at: 'verifyImages') value: (material at: 'combinedNativeAfter')) and: [((material at: 'sourceAfter') at: 'verify') value])
     ifFalse: [component error: 'Initial actual connect head changed; exact history unavailable'].
   material at: 'historyHead' put: initial. initial
 ].
 ((head at: 'owner') = owner and: [(head at: 'state') = state and: [
   (record at: 'state') = state and: [#('applied' 'reverted') includes: state]]])
   ifFalse: [component error: 'Actual connection history owner/state differs'].
 ((record at: 'created') == (material at: 'createdAPI') and: [
   (material at: 'createdAPI') diagramElement == edge])
   ifFalse: [component error: 'Original created connection was replaced'].
 (endpointReader value: component value: (material at: 'edgeRecord')
   value: (state = 'applied' ifTrue: ['attached'] ifFalse: ['detached'])) == true
   ifFalse: [component error: 'Original created endpoint registrations changed'].
 ((material at: 'detachedGuard') at: 'verify') value
   ifFalse: [component error: 'Created original object or registration material changed'].
 (local and: [#('prepare' 'execute') includes: mode]) ifFalse: [
 ((sameOrder value: collection value: (head at: 'afterOrder')) and: [
   (sameOrder value: parent sortedChildren value: (head at: 'afterDrawing')) and: [
   (sameMap value: ids value: (head at: 'afterIds')) and: [
   (root at: 'counter') = (head at: 'afterCounter') and: [
   ((native at: 'verifyImages') value: (head at: 'afterNative')) and: [
   ((head at: 'afterSource') at: 'verify') value]]]]])
   ifFalse: [component error: 'Complete actual native/source/order/alias CURRENT changed'].
 observed := (record at: 'materialObservationReader') value: component value: 'Main' value: #().
 ((root at: 'encodeObservation') value: (head at: 'afterValues')) = observed
   ifFalse: [component error: 'Full typed CURRENT differs from actual owned connection head']
 ].
 (#('inspect' 'status') includes: mode) ifTrue: [
   mode = 'status' ifTrue: [
     answer := material at: 'historyActual' ifAbsent: [component error: 'Actual terminal connection history unavailable'].
     (((answer at: 'execution') at: 'terminal_verified') == true and: [
       ((answer at: 'execution') at: 'result_change_id') = owner and: [
       ((answer at: 'execution') at: 'after_state') = state]])
       ifFalse: [component error: 'Requested terminal connection result is not retained']
   ] ifFalse: [
   answer := Dictionary new at: 'profile' put: 'native_connect_exact_head_v1';
     at: 'native_token' put: token; at: 'owner_change_id' put: owner; at: 'state' put: state;
     at: 'sequence' put: (head at: 'sequence'); at: 'before' put: (head at: 'beforeValues');
     at: 'after' put: (head at: 'afterValues'); at: 'current_verified' put: true;
     at: 'created_original_retained' put: true; at: 'alias_reserved' put: true;
     at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'write_authorized' put: false; yourself].
   encode value: answer
 ] ifFalse: [
   (resultId = owner or: [resultId = token]) ifTrue: [component error: 'Distinct result history identity required'].
   targetNative := head at: 'beforeNative'. targetSource := head at: 'beforeSource'.
   targetOrder := head at: 'beforeOrder'. targetDrawing := head at: 'beforeDrawing'.
   targetIds := head at: 'beforeIds'. targetCounter := head at: 'beforeCounter'. targetValues := head at: 'beforeValues'.
   local ifTrue: [
     stage := 'local_target'.
     mode = 'prepare' ifTrue: [
       localPlan := (helpers at: 7) value: component value: (Array with: token with: owner with: state).
       (localPlan isKindOf: Dictionary) ifFalse: [component error: localPlan asString]
     ] ifFalse: [
       prepared := material at: 'historyPrepared' ifAbsent: [component error: 'Prepared local inverse unavailable'].
       localPlan := prepared at: 'localPlan' ifAbsent: [component error: 'Prepared complete local plan missing']
     ].
     ((localPlan at: 'head') == head and: [(localPlan at: 'verifyBeforeDispatch') value])
       ifFalse: [component error: 'Actual owned local head or complete CURRENT changed'].
     ((head at: 'sequence') = 1 and: [state = 'applied']) ifTrue: [
       material at: 'sourceOriginMap' put: ((localPlan at: 'logicalAfter') at: 'actualToLogical') copy].
     targetNative := localPlan at: 'nativeDesired'.
     targetSource := (localPlan at: 'sourceCurrent') copy.
     targetSource at: 'snapshots' put: (localPlan at: 'sourceDesired'); at: 'verify' put: [
       ((localPlan at: 'sourceCurrent') at: 'verifyImages') value: (localPlan at: 'sourceDesired')].
     targetOrder := localPlan at: 'desiredOrder'. targetDrawing := localPlan at: 'desiredDrawing'.
     targetIds := localPlan at: 'idsDesired'. targetCounter := localPlan at: 'counterDesired'.
     targetValues := (localPlan at: 'values') at: 'expected'
   ].
   targetNative keysAndValuesDo: [:object :entry |
     ((targetSource at: 'snapshots') includesKey: object) ifTrue: [
       (sameImage value: object value: entry value: ((targetSource at: 'snapshots') at: object))
         ifFalse: [component error: 'Shared native/source exact targets disagree before dispatch']]].
   (material includesKey: 'historyExecution') ifTrue: [
     ((material at: 'historyExecution') at: 'terminal_verified') == true
       ifFalse: [component error: 'Prior connection execution is unconfirmed; inspect retained material without replay']].
   state = 'applied' ifTrue: [
     (targetOrder anySatisfy: [:object | object == edge]) ifTrue: [component error: 'Undo target still contains created object']
   ] ifFalse: [
     (targetOrder select: [:object | object == edge]) size = 1 ifFalse: [component error: 'Redo target lacks exact created original']
   ].
   expectedSource := (targetSource at: 'cloneImages') value: (targetSource at: 'snapshots').
   version := material at: 'historyPreflightVersion' ifAbsent: [0].
   mode = 'prepare' ifTrue: [
     local ifTrue: [
       raw := localPlan at: 'raw'. currentNative := localPlan at: 'nativeCurrent'.
       currentSource := localPlan at: 'sourceCurrent'.
       localEvidence := (helpers at: 8) value: component value: localPlan.
       (localEvidence isString and: [(localEvidence startsWith: 'BDE_') not])
         ifFalse: [component error: localEvidence asString]
     ] ifFalse: [
     raw := helpers first value: component value:
       ((head at: 'beforeNative') keys, (head at: 'afterNative') keys).
     (raw isKindOf: Dictionary) ifFalse: [component error: raw asString].
     currentNative := raw at: 'snapshots'.
     currentSource := (helpers at: 2) value: component value:
       (Array with: diagram specification specSourceInternalOrNil with:
         (((head at: 'beforeSource') at: 'snapshots') keys, ((head at: 'afterSource') at: 'snapshots') keys)).
     (currentSource isKindOf: Dictionary) ifFalse: [component error: currentSource asString].
     ].
     parentBefore := orderReader value: (material at: 'orderRecord') value: collection asArray copy.
     parentExpected := orderReader value: (material at: 'orderRecord') value: targetOrder.
     drawingBefore := (drawingReader value: component value: (material at: 'orderRecord') value: parent sortedChildren asArray copy) value: true.
     drawingExpected := (drawingReader value: component value: (material at: 'orderRecord') value: targetDrawing) value: false.
     version := version + 1. material at: 'historyPreflightVersion' put: version.
     prepared := Dictionary new at: 'head' put: head; at: 'owner' put: owner; at: 'state' put: state;
       at: 'result' put: resultId; at: 'raw' put: raw; at: 'native' put: currentNative;
       at: 'source' put: currentSource; at: 'signature' put: token, '/c', version printString;
       at: 'parentBefore' put: (parentBefore at: 'value'); at: 'parentExpected' put: (parentExpected at: 'value');
       at: 'drawingBefore' put: (drawingBefore at: 'value'); at: 'drawingExpected' put: (drawingExpected at: 'value');
       at: 'expectedSource' put: expectedSource; at: 'local' put: local; yourself.
     local ifTrue: [prepared at: 'localPlan' put: localPlan].
     material at: 'historyPrepared' put: prepared.
     answer := Dictionary new at: 'profile' put: (local ifTrue: ['native_connect_local_preparation_v1'] ifFalse: ['native_connect_exact_preparation_v1']);
       at: 'native_token' put: token; at: 'owner_change_id' put: owner; at: 'result_change_id' put: resultId;
       at: 'state' put: state; at: 'sequence' put: (head at: 'sequence');
       at: 'before' put: (local ifTrue: [localPlan at: 'currentValues'] ifFalse: [head at: 'afterValues']);
       at: 'expected' put: targetValues; at: 'signature' put: (prepared at: 'signature');
       at: 'parent_before' put: (prepared at: 'parentBefore'); at: 'parent_expected' put: (prepared at: 'parentExpected');
       at: 'drawing_before' put: (prepared at: 'drawingBefore'); at: 'drawing_expected' put: (prepared at: 'drawingExpected');
       at: 'graphical_current' put: (raw at: 'originalImage'); at: 'created_original_retained' put: true;
       at: 'alias_reserved' put: true; at: 'model_setters_called' put: 0; at: 'store_called' put: false;
       at: 'write_authorized' put: false; at: 'local_merge_enabled' put: local; yourself.
     local ifTrue: [answer at: 'local_plan_encoded' put: localEvidence].
     encode value: answer
   ] ifFalse: [
     stage := 'guard'. prepared := material at: 'historyPrepared' ifAbsent: [component error: 'Prepared exact inverse unavailable'].
     (prepared at: 'consumed' ifAbsent: [false]) ifTrue: [component error: 'Prepared exact inverse was already consumed; never replay'].
     ((prepared at: 'local' ifAbsent: [false]) = local and: [
       (prepared at: 'head') == head and: [(prepared at: 'owner') = owner and: [(prepared at: 'state') = state and: [
       (prepared at: 'result') = resultId and: [(prepared at: 'signature') = signature and: [
       signature = (token, '/c', version printString) and: [
       ((prepared at: 'raw') at: 'verify') value and: [((prepared at: 'source') at: 'verify') value]]]]]]]])
       ifFalse: [component error: 'Prepared complete CURRENT, profile or result binding changed'].
     raw := prepared at: 'raw'. currentNative := prepared at: 'native'. currentSource := prepared at: 'source'.
     beforeValues := (root at: 'copyObservation') value: (root at: 'observationValues').
     beforeOrder := collection asArray copy. beforeDrawing := parent sortedChildren asArray copy.
     beforeIds := ids copy. beforeCounter := root at: 'counter'.
     proof := Dictionary new at: 'profile' put: (local ifTrue: ['native_connect_local_execution_v1'] ifFalse: ['native_connect_exact_execution_v1']); at: 'native_token' put: token;
       at: 'head_change_id' put: owner; at: 'result_change_id' put: resultId;
       at: 'sequence' put: (head at: 'sequence') + 1; at: 'before_state' put: state;
       at: 'after_state' put: (state = 'applied' ifTrue: ['reverted'] ifFalse: ['applied']);
       at: 'model_operations' put: 0; at: 'drawing_assignments' put: 0;
       at: 'store_started' put: false; at: 'store_completed' put: false; at: 'phase' put: 'native';
       at: 'native_primitives' put: 0; at: 'source_primitives' put: 0; at: 'terminal_verified' put: false; yourself.
     material at: 'historyExecution' put: proof.
     checkReturn := [:value | (value isString and: [value startsWith: 'Exception:']) ifTrue: [component error: value]. value].
     prepared at: 'consumed' put: true.
     mutationStarted := true. stage := 'native'.
     state = 'applied' ifTrue: [
       checkReturn value: (diagram removeDiagramObject: (material at: 'createdAPI')).
       proof at: 'model_operations' put: 1
     ] ifFalse: [| index |
       index := targetOrder indexOf: edge.
       ((collection anySatisfy: [:object | object == edge]) or: [index = 0 or: [index > (collection size + 1)]])
         ifTrue: [component error: 'Exact redo position or original membership changed'].
       parent addGO: edge display: false. collection remove: edge. collection add: edge beforeIndex: index.
       proof at: 'model_operations' put: 3.
       ((material at: 'edgeRecord') at: 'edgeDependencies') do: [:row | (row at: 'pins') do: [:saved |
         (saved at: 'point') connections at: edge put: (saved at: 'registration').
         proof at: 'model_operations' put: (proof at: 'model_operations') + 1]]
     ].
     (sameOrder value: collection value: targetOrder) ifFalse: [component error: 'Actual native insertion/removal target differs'].
     targetDrawing doWithIndex: [:object :number | object basicGraphObject drawingOrder: number.
       proof at: 'drawing_assignments' put: (proof at: 'drawing_assignments') + 1].
     stage := 'store'. proof at: 'phase' put: stage; at: 'store_started' put: true.
     checkReturn value: diagram storeToCache. proof at: 'store_completed' put: true.
     stage := 'normalization'. proof at: 'phase' put: stage.
     "Observe after store without a generic read retiring the still-owned scope."
     nativeObserved := (native at: 'captureImages') value: (currentNative keys, targetNative keys).
     nativeDesired := nativeObserved copy. targetNative keysAndValuesDo: [:object :entry | nativeDesired at: object put: entry].
     nativePatch := (helpers at: 6) value: component value: (Array with: nativeDesired with: nativeObserved) value: 'undo'.
     (nativePatch isKindOf: Dictionary) ifFalse: [component error: nativePatch asString].
     material at: 'historyNativePatch' put: nativePatch.
     [(nativePatch at: 'execute') value] ensure: [proof at: 'native_primitives'
       put: ((nativePatch at: 'progress') at: 'completed_primitives')].
     ((native at: 'verifyImages') value: targetNative) ifFalse: [component error: 'Exact native reference target not restored'].
     source := targetSource at: 'sourceRoot'.
     sourceObserved := (currentSource at: 'captureImages') value:
       ((currentSource at: 'snapshots') keys, (targetSource at: 'snapshots') keys).
     sourceDesired := sourceObserved copy.
     (targetSource at: 'snapshots') keysAndValuesDo: [:object :entry | sourceDesired at: object put: entry].
     sourcePatch := (helpers at: 6) value: component value: (Array with: sourceDesired with: sourceObserved) value: 'undo'.
     (sourcePatch isKindOf: Dictionary) ifFalse: [component error: sourcePatch asString].
     material at: 'historySourcePatch' put: sourcePatch.
     [(sourcePatch at: 'execute') value] ensure: [proof at: 'source_primitives'
       put: ((sourcePatch at: 'progress') at: 'completed_primitives')].
     (((native at: 'verifyImages') value: targetNative) and: [(targetSource at: 'verify') value])
       ifFalse: [component error: 'Exact native/source values, identities or sharing differ'].
     "Only restore the owned read-alias metadata when its full CURRENT is exact.
      Reservations prevent a later allocation from reusing an old snapshot alias.
      Native identifiers and allocators, scope generation and epoch are untouched."
     (sameMap value: ids value: beforeIds) ifFalse: [component error: 'Alias metadata changed during native execution'].
     (root at: 'counter') = beforeCounter ifFalse: [component error: 'Read alias counter changed during execution'].
     currentKeys := ids keys asArray. currentKeys do: [:object | (targetIds includesKey: object) ifFalse: [
       object == edge ifFalse: [component error: 'Unowned alias removal refused']. ids removeKey: object]].
     targetIds keysAndValuesDo: [:object :key | (ids includesKey: object) ifFalse: [
       object == edge ifFalse: [component error: 'Unowned alias insertion refused']. ids at: object put: key]].
     (sameMap value: ids value: targetIds) ifFalse: [component error: 'Exact target aliases differ'].
     root at: 'counter' put: targetCounter.
     root at: 'checkpoint' put: ((root at: 'copySource') value: source); at: 'checkpointVersion' put: 2.
     actualEncoded := (record at: 'materialObservationReader') value: component value: 'Main' value: #().
     actualValues := (root at: 'copyObservation') value: (root at: 'observationValues').
     actualEncoded = ((root at: 'encodeObservation') value: targetValues)
       ifFalse: [component error: 'Full actual typed connection target differs'].
     (sameOrder value: collection value: targetOrder) ifFalse: [component error: 'Terminal physical order differs'].
     (sameOrder value: parent sortedChildren value: targetDrawing) ifFalse: [component error: 'Terminal drawing order differs'].
     (endpointReader value: component value: (material at: 'edgeRecord')
       value: (state = 'applied' ifTrue: ['detached'] ifFalse: ['attached'])) == true
       ifFalse: [component error: 'Actual original endpoint registrations differ'].
     nativeAfter := (native at: 'captureImages') value: (nativeDesired keys, currentNative keys).
     sourceAfter := (helpers at: 2) value: component value:
       (Array with: source with: (sourceDesired keys, (currentSource at: 'snapshots') keys)).
     (sourceAfter isKindOf: Dictionary) ifFalse: [component error: sourceAfter asString].
     (((native at: 'verifyImages') value: nativeAfter) and: [(sourceAfter at: 'verify') value])
       ifFalse: [component error: 'Actual terminal connection material changed during capture'].
     graphicalActual := (raw at: 'diff') value.
     (raw at: 'verifyAfter') value ifFalse: [component error: 'Actual graphical terminal changed'].
     complete := Dictionary new at: 'owner' put: resultId; at: 'state' put: (proof at: 'after_state');
       at: 'sequence' put: (proof at: 'sequence'); at: 'beforeNative' put: currentNative; at: 'afterNative' put: nativeAfter;
       at: 'beforeSource' put: currentSource; at: 'afterSource' put: sourceAfter;
       at: 'beforeOrder' put: beforeOrder; at: 'afterOrder' put: collection asArray copy;
       at: 'beforeDrawing' put: beforeDrawing; at: 'afterDrawing' put: parent sortedChildren asArray copy;
       at: 'beforeIds' put: beforeIds; at: 'afterIds' put: ids copy;
       at: 'beforeCounter' put: beforeCounter; at: 'afterCounter' put: (root at: 'counter');
       at: 'beforeValues' put: beforeValues; at: 'afterValues' put: actualValues; yourself.
     proof at: 'phase' put: 'terminal'; at: 'terminal_verified' put: true.
     answer := Dictionary new at: 'profile' put: (local ifTrue: ['native_connect_local_actual_v1'] ifFalse: ['native_connect_exact_actual_v1']); at: 'observation' put: actualValues;
       at: 'execution' put: proof; at: 'parent_before' put: (prepared at: 'parentBefore');
       at: 'parent_after' put: ((orderReader value: (material at: 'orderRecord') value: collection asArray copy) at: 'value');
       at: 'drawing_before' put: (prepared at: 'drawingBefore');
       at: 'drawing_after' put: (((drawingReader value: component value: (material at: 'orderRecord') value: parent sortedChildren asArray copy) value: true) at: 'value');
       at: 'graphical_current' put: (raw at: 'originalImage'); at: 'graphical_actual' put: graphicalActual;
       at: 'created_original_retained' put: true; at: 'alias_reserved' put: true;
       at: 'native_target_verified' put: true; at: 'source_target_verified' put: true; yourself.
     material at: 'historyHead' put: complete; at: 'historyActual' put: answer.
     record at: 'state' put: (proof at: 'after_state'); at: 'lastObserved' put: actualEncoded; at: 'lastObservedTargets' put: #().
     local ifTrue: [
       origins := root at: 'sourceCausalOrigins' ifAbsentPut: [Dictionary new].
       (proof at: 'after_state') = 'reverted' ifTrue: [
         origins at: token put: (Dictionary new at: 'record' put: record; at: 'material' put: material;
           at: 'owner' put: resultId; at: 'root' put: root;
           at: 'map' put: (material at: 'sourceOriginMap'); yourself)
       ] ifFalse: [origins removeKey: token ifAbsent: []]
     ].
     encode value: answer
   ]
 ]
 ] ifFail: [:error |
   mutationStarted ifTrue: [material at: 'historyFailureStage' put: stage.
     'BDE_CONNECT_HISTORY_ERROR: ', stage, ': ', error messageText]
   ifFalse: ['BDE_CONNECT_HISTORY_CONFLICT: ', stage, ': ', error messageText]
 ]
]]
