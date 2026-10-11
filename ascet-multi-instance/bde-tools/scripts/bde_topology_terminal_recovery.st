"Same-process certification of retained completed material; never replay topology/store."
[:terminalReader | [:component :context |
 component handleExceptionsIn: [
 | mode token owner state resultId witnessToken recoveryId signature record prepared plan material proof witness
   root diagram native source epoch highWater sameOrder aliases objectsFor beforeOrder beforeDrawing
   beforeParent beforeDraw currentParent currentDraw recovery terminalContext version answer actual drawingSlot |
 (context isArray and: [context size = 8]) ifFalse: [component error: 'Exact terminal certification context required'].
 mode := context first. token := context at: 2. owner := context at: 3. state := context at: 4.
 resultId := context at: 5. witnessToken := context at: 6. recoveryId := context at: 7. signature := context last.
 (#('inspect' 'prepare' 'certify') includes: mode) ifFalse: [component error: 'Unknown fixed terminal recovery action'].
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 witness := (Smalltalk at: #DogeBDEMainWorkflowWitnessesV1) at: witnessToken.
 diagram := record at: 'diagram'. root := record at: 'orderRoot'. native := record at: 'topologyNativeBefore'.
 prepared := record at: 'topologyManagedPreflight'. plan := prepared at: 'plan'.
 material := record at: 'topologyManagedMaterialPlan'. proof := record at: 'topologyManagedExecution'.
 ((record at: 'owner') == component item and: [(witness at: 'owner') == component item and: [
   (record at: 'component') = component getOID and: [(record at: 'diagramName') = 'Main' and: [
   #('disconnect_data' 'delete_node') includes: (record at: 'operation')]]]])
   ifFalse: [component error: 'Exact retained ordinary Main certification owner required'].
 ((record at: 'managedInverseId') = owner and: [(record at: 'topologyHeadId') = owner and: [
   (prepared at: 'head') = owner and: [(prepared at: 'state') = state and: [(prepared at: 'result') = resultId and: [
   (proof at: 'head_change_id') = owner and: [(proof at: 'result_change_id') = resultId and: [
   (proof at: 'expected_state') = state and: [(proof at: 'phase') = 'actual_head_normalization' and: [
   (proof at: 'terminal_verified') == false and: [(proof at: 'store_completed') == true and: [
   ((material at: 'progress') at: 'state') = 'restored']]]]]]]]]]])
   ifFalse: [component error: 'Exact nonterminal completed managed execution required'].
 ((#('started' 'revert_started') includes: (record at: 'state')) and: [
   (record at: 'topologyManagedFailureStage') = 'actual_head_normalization' and: [
   recoveryId ~= resultId and: [recoveryId ~= owner and: [recoveryId ~= token]]]])
   ifFalse: [component error: 'Distinct retained failure recovery required'].
 (((Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main')) == root and: [
   (witness at: 'root') == root and: [(witness at: 'diagram') == diagram and: [
   (root at: 'owner') == component item and: [(root at: 'specification') == diagram specification and: [
   (root at: 'diagram') specification == diagram specification and: [
   (witness at: 'parent') == diagram topGraphicalHierarchy contents and: [
   (witness at: 'collection') == (record at: 'orderCollection') and: [
   (record at: 'orderParent') children == (record at: 'orderCollection')]]]]]]]])
   ifFalse: [component error: 'Original root/diagram/specification/collection expired; no rebinding'].
 source := diagram specification specSourceInternalOrNil.
 ((material at: 'verifyDesired') value and: [source == ((material at: 'sourceCurrent') at: 'sourceRoot')])
   ifFalse: [component error: 'Complete original native/source values/references/sharing target differs'].
 aliases := witness at: 'ids'.
 (aliases size = (witness at: 'idRows') size and: [
   (witness at: 'idRows') allSatisfy: [:pair | (aliases at: pair first ifAbsent: [nil]) == pair last and: [
     (material at: 'nativeDesired') includesKey: pair first]]])
   ifFalse: [component error: 'Original alias dictionary not retained or covered by complete native material'].
 epoch := Smalltalk at: #DogeBDEStructureEpochV1. highWater := epoch at: 'highWater'.
 ((root at: 'scopeEpoch') == epoch and: [(root at: 'issuedGeneration') = (root at: 'generation') and: [
   (witness at: 'generation') = (record at: 'orderGeneration') and: [
   (root at: 'generation') <= highWater and: [(witness at: 'generation') <= highWater]]]])
   ifFalse: [component error: 'Exact same-process original scope/allocator evidence required'].
 sameOrder := [:a :b | a size = b size and: [(1 to: a size) allSatisfy: [:index | (a at: index) == (b at: index)]]].
 ((sameOrder value: (record at: 'orderCollection') value: ((plan at: 'parentPlan') at: 'merged')) and: [
   (sameOrder value: (record at: 'orderParent') sortedChildren value: ((plan at: 'drawingPlan') at: 'merged')) and: [
   ((record at: 'edgeDependencyReader') value: component value: record value: (plan at: 'expectedEndpointMode')) == true]])
   ifFalse: [component error: 'Exact current actual native order/endpoint target required'].
 beforeParent := plan at: 'parentCurrent'. beforeDraw := plan at: 'drawingCurrent'.
 beforeOrder := ((material at: 'nativeCurrent') at: (record at: 'orderCollection')) last asArray copy.
 objectsFor := [:members | members collect: [:id | | found |
   found := (record at: 'orderIds') keys select: [:object | ((record at: 'orderIds') at: object) = id].
   found size = 1 ifFalse: [component error: 'Original historical order native ref missing or ambiguous']. found first]].
 beforeDrawing := objectsFor value: (beforeDraw at: 'members').
 ((sameOrder value: beforeOrder value: (objectsFor value: (beforeParent at: 'members'))) and: [
   beforeDrawing asSet = beforeOrder asSet and: [beforeDrawing size = beforeOrder size]])
   ifFalse: [component error: 'Actual frozen historical physical/drawing descriptors differ from native images'].
 beforeDrawing doWithIndex: [:object :index | | basic image |
   basic := object basicGraphObject. image := (material at: 'nativeCurrent') at: basic.
   drawingSlot := (basic class allInstVarNames collect: [:name | name asString]) indexOf: 'drawingOrder'.
   (image first = 'fields' and: [drawingSlot > 0 and: [(image last at: drawingSlot) = index]])
     ifFalse: [component error: 'Frozen actual drawing numbers do not match historical native slots']].
 (((native at: 'encode') value: (material at: 'expectedValues')) =
   ((native at: 'encode') value: ((plan at: 'values') at: 'expected')))
   ifFalse: [component error: 'Fresh executed material target differs from durable prepared typed target'].
 answer := Dictionary new at: 'profile' put: 'retained_managed_terminal_certification_v1';
   at: 'action' put: mode; at: 'native_token' put: token; at: 'head_change_id' put: owner;
   at: 'result_change_id' put: resultId; at: 'recovery_id' put: recoveryId;
   at: 'complete_actual_material_verified' put: true; at: 'original_alias_material_verified' put: true;
   at: 'original_historical_orders_verified' put: true; at: 'original_scope_entry_preserved' put: true;
   at: 'allocator_high_water' put: highWater; at: 'model_setters_called' put: 0;
   at: 'store_called' put: false; at: 'patch_execute_called' put: false; at: 'terminal_certified' put: false; yourself.
 mode = 'inspect' ifTrue: [(native at: 'encode') value: answer] ifFalse: [
   terminalContext := Dictionary new at: 'owner' put: owner; at: 'result' put: resultId; at: 'state' put: state;
     at: 'plan' put: plan; at: 'material' put: material; at: 'graphical' put: (prepared at: 'graphical');
     at: 'beforeNative' put: (material at: 'nativeCurrent'); at: 'beforeSource' put: (material at: 'sourceCurrent');
     at: 'beforeOrder' put: beforeOrder; at: 'beforeDrawing' put: beforeDrawing;
     at: 'beforeParentEvidence' put: beforeParent; at: 'beforeDrawingEvidence' put: beforeDraw;
     at: 'current' put: (plan at: 'currentValues'); at: 'expectedEncoded' put: (prepared at: 'expected'); yourself.
   mode = 'prepare' ifTrue: [
     version := (record at: 'topologyTerminalRecoverySerial' ifAbsent: [0]) + 1.
     signature := token, '/r', version printString.
     recovery := Dictionary new at: 'id' put: recoveryId; at: 'signature' put: signature;
       at: 'rootDiagram' put: (root at: 'diagram'); at: 'rootGeneration' put: (root at: 'generation');
       at: 'rootIds' put: (root at: 'ids'); at: 'highWater' put: highWater;
       at: 'context' put: terminalContext; at: 'committed' put: false; yourself.
     record at: 'topologyTerminalRecoverySerial' put: version; at: 'topologyTerminalRecovery' put: recovery.
     answer at: 'signature' put: signature. (native at: 'encode') value: answer
   ] ifFalse: [
     recovery := record at: 'topologyTerminalRecovery'.
     ((recovery at: 'id') = recoveryId and: [(recovery at: 'signature') = signature and: [
       (recovery at: 'committed') == false and: [(recovery at: 'rootDiagram') == (root at: 'diagram') and: [
       (recovery at: 'rootGeneration') = (root at: 'generation') and: [
       (recovery at: 'rootIds') == (root at: 'ids') and: [(recovery at: 'highWater') = highWater]]]]]])
       ifFalse: [component error: 'Prepared metadata certificate changed; do not replay'].
     "Only this same live scope certificate is repaired. Its original root and
      aliases still exist and complete desired native/source material is proven.
      The process domain and allocator highWater are never changed."
     recovery at: 'committed' put: true.
     root at: 'diagram' put: diagram; at: 'ids' put: aliases; at: 'counter' put: (witness at: 'counter');
       at: 'generation' put: (witness at: 'generation'); at: 'issuedGeneration' put: (witness at: 'generation');
       at: 'checkpoint' put: ((root at: 'copySource') value: source); at: 'checkpointVersion' put: 2.
     record at: 'topologyManagedTerminalContext' put: (recovery at: 'context').
     actual := terminalReader value: component value: record value: (recovery at: 'context').
     (actual startsWith: 'BDE_') ifTrue: [component error: actual].
     (epoch at: 'highWater') = highWater ifFalse: [component error: 'Terminal certification spent a new scope generation'].
     answer at: 'terminal_certified' put: true; at: 'restored_scope_generation' put: (root at: 'generation').
     (native at: 'encode') value: answer
   ]
 ]
 ] ifFail: [:error | 'BDE_TOPOLOGY_TERMINAL_RECOVERY_ERROR: ', error messageText]
]]
