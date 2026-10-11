"Fixed retained-connect three-way planner. All history is the actual owned
 head, never a reconstruction from CURRENT. Only private candidate images and
 read metadata are changed; no setter, store, splice or executor is called."
[:helpers | [:component :context |
 | phase |
 phase := 'identity'.
 component handleExceptionsIn: [
 | token owner state record material head root diagram parent collection edge alias
   native source reader sameOrder sameMap sameEntry historyMatches endpointMode
   current currentEncoded raw currentNative currentSource typed physical drawing
   desiredPhysical desiredDrawing nativePlan nativeDesired sourceMerge sourceDesired
   originalNativeDesired sourceExpected ids currentIds desiredIds currentCounter desiredCounter
   sourceOwned logicalAfter logicalCurrent logicalDesired protectedNative
   verify orderReader drawingReader evidence result sourceRoot |
 (helpers isArray and: [helpers size = 9 and: [context isArray and: [context size = 3]]])
   ifFalse: [component error: 'Fixed local connect helpers and token/owner/state required'].
 token := context first. owner := context at: 2. state := context last.
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 ((record at: 'owner') == component item and: [(record at: 'component') = component getOID and: [
   (record at: 'operation') = 'connect_data' and: [(record at: 'diagramName') = 'Main']]])
   ifFalse: [component error: 'Exact retained ordinary Main connection required'].
 material := record at: 'connectMaterial' ifAbsent: [component error: 'Connect material unavailable'].
 head := material at: 'historyHead' ifAbsent: [component error: 'Actual owned connect head unavailable; do not reconstruct it from CURRENT'].
 historyMatches := [head == (material at: 'historyHead') and: [
   (head at: 'owner') = owner and: [(head at: 'state') = state and: [
   (record at: 'state') = state and: [#('applied' 'reverted') includes: state]]]]].
 historyMatches value ifFalse: [component error: 'Actual connect owner/state expired'].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 diagram := record at: 'diagram'. parent := material at: 'parent'. collection := material at: 'collection'.
 native := material at: 'nativeBefore'. source := head at: 'beforeSource'. sourceRoot := source at: 'sourceRoot'.
 ids := material at: 'ids'. edge := material at: 'created'. alias := (material at: 'afterIds') at: edge.
 ((material at: 'record') == record and: [(material at: 'root') == root and: [
   (material at: 'phase') = 'attached' and: [(root at: 'owner') == component item and: [
   (root at: 'diagram') == diagram and: [(root at: 'specification') == diagram specification and: [
   (root at: 'generation') = (material at: 'generation') and: [
   parent == diagram topGraphicalHierarchy contents and: [parent children == collection and: [
   (root at: 'ids') == ids and: [sourceRoot == diagram specification specSourceInternalOrNil and: [
   sourceRoot == ((head at: 'afterSource') at: 'sourceRoot')]]]]]]]]]]])
   ifFalse: [component error: 'Original connect runtime/root/parent/source/alias binding expired'].
 (((root at: 'connectAliasReservations') at: alias ifAbsent: [false]) == true and: [
   (record at: 'created') == (material at: 'createdAPI') and: [
   (material at: 'createdAPI') diagramElement == edge]])
   ifFalse: [component error: 'Original created edge or issued alias reservation changed'].
 endpointMode := state = 'applied' ifTrue: ['attached'] ifFalse: ['detached'].
 ((helpers last value: component value: (material at: 'edgeRecord') value: endpointMode) == true and: [
   ((material at: 'detachedGuard') at: 'verify') value])
   ifFalse: [component error: 'Original created edge/registration or endpoint dependency changed'].
 sameOrder := [:left :right | left size = right size and: [
   (1 to: left size) allSatisfy: [:index | (left at: index) == (right at: index)]]].
 sameMap := [:left :right | left size = right size and: [left keys allSatisfy: [:key |
   (right keys anySatisfy: [:peer | peer == key]) and: [(left at: key) == (right at: key)]]]].
 sameEntry := [:object :left :right | left first = right first and: [
   left first = 'boundary' ifTrue: [left last == right last] ifFalse: [
   left first = 'value' ifTrue: [left last class == right last class and: [left last = right last]] ifFalse: [
   (object isKindOf: Dictionary) ifTrue: [sameMap value: left last value: right last]
   ifFalse: [(#('Set' 'IdentitySet') includes: object class name asString)
     ifTrue: [left last size = right last size and: [left last allSatisfy: [:item |
       right last anySatisfy: [:peer | peer == item]]]]
     ifFalse: [sameOrder value: left last value: right last]]]]]].
 reader := record at: 'materialObservationReader'.
 currentEncoded := reader value: component value: 'Main' value: #().
 (currentEncoded startsWith: 'BDE_STRUCTURE_ERROR:') ifTrue: [component error: currentEncoded].
 current := (root at: 'copyObservation') value: (root at: 'observationValues').
 phase := 'typed'.
 typed := (helpers at: 3) value: component value:
   (Array with: (head at: 'beforeValues') with: (head at: 'afterValues') with: current) value: 'connect_data'.
 ((typed isKindOf: Dictionary) and: [(typed at: 'compatible') == true])
   ifFalse: [component error: 'Actual connect typed conflict: ', typed printString].
 phase := 'order'.
 physical := (helpers at: 4) value: component value: (Array with: (head at: 'beforeOrder')
   with: (head at: 'afterOrder') with: collection asArray copy).
 drawing := (helpers at: 4) value: component value: (Array with: (head at: 'beforeDrawing')
   with: (head at: 'afterDrawing') with: parent sortedChildren asArray copy).
 ((physical isKindOf: Dictionary) and: [(drawing isKindOf: Dictionary) and: [
   (physical at: 'compatible') == true and: [(drawing at: 'compatible') == true]]])
   ifFalse: [component error: 'Actual connect physical/drawing order conflict'].
 desiredPhysical := physical at: 'merged'. desiredDrawing := drawing at: 'merged'.
 (desiredPhysical size = desiredDrawing size and: [desiredPhysical allSatisfy: [:object |
   desiredDrawing anySatisfy: [:peer | peer == object]]])
   ifFalse: [component error: 'Physical/drawing target members disagree'].
 phase := 'native'.
 raw := (helpers at: 5) value: component value:
   ((head at: 'beforeNative') keys, (head at: 'afterNative') keys, (Array with: diagram topGraphicalHierarchy)).
 (raw isKindOf: Dictionary) ifFalse: [component error: raw asString].
 currentNative := raw at: 'snapshots'.
 nativePlan := helpers first value: component value:
   (Array with: (head at: 'beforeNative') with: (head at: 'afterNative')) value: 'undo'.
 (nativePlan isKindOf: Dictionary) ifFalse: [component error: nativePlan asString].
 nativeDesired := (nativePlan at: 'mergeImages') value: currentNative.
 ((nativeDesired at: collection) first = 'collection' and: [
   sameOrder value: (nativeDesired at: collection) last value: desiredPhysical])
   ifFalse: [component error: 'Native material and independent physical target differ'].
 phase := 'source'.
 currentSource := (helpers at: 6) value: component value: (Array with: sourceRoot with:
   (((head at: 'beforeSource') at: 'snapshots') keys, ((head at: 'afterSource') at: 'snapshots') keys)).
 (currentSource isKindOf: Dictionary) ifFalse: [component error: currentSource asString].
 sourceOwned := helpers first value: component value:
   (Array with: ((head at: 'beforeSource') at: 'snapshots') with: ((head at: 'afterSource') at: 'snapshots')) value: 'undo'.
 (sourceOwned isKindOf: Dictionary) ifFalse: [component error: sourceOwned asString].
 (sourceOwned at: 'verifyOwnedScalarCells') value
   ifFalse: [component error: 'Actual owned source field/index/key/member reference overlap'].
 "Native fields and geometry have independently retained identities and targets.
  Source wrapper correspondence must not remap a later actual native Point into
  a detached historical Point merely because its structural position matches."
 protectedNative := IdentityDictionary new.
 ((head at: 'beforeNative') keys, (head at: 'afterNative') keys, currentNative keys)
   do: [:object | protectedNative at: object put: true].
 logicalAfter := (helpers at: 8) value: component value:
   ((Array with: (head at: 'beforeSource') with: (head at: 'afterSource') with: protectedNative)
     , (Array with: (head at: 'beforeNative') with: (head at: 'afterNative'))).
 (logicalAfter isKindOf: Dictionary) ifFalse: [component error: logicalAfter asString].
 logicalCurrent := (helpers at: 8) value: component value:
   (Array with: logicalAfter with: currentSource with: protectedNative with: (logicalAfter at: 'actualToLogical')).
 (logicalCurrent isKindOf: Dictionary) ifFalse: [component error: logicalCurrent asString].
 sourceMerge := (helpers at: 2) value: component value:
   (Array with: ((head at: 'beforeSource') at: 'snapshots')
     with: (logicalAfter at: 'snapshots') with: (logicalCurrent at: 'snapshots')).
 ((sourceMerge isKindOf: Dictionary) and: [(sourceMerge at: 'compatible') == true])
   ifFalse: [component error: 'Actual connect owned source cell/reference/order conflict: ', sourceMerge printString].
 logicalDesired := sourceMerge at: 'desired'. sourceDesired := (currentSource at: 'snapshots') copy.
 logicalDesired keysAndValuesDo: [:object :entry | sourceDesired at: object put:
   (Array with: entry first with: (entry first = 'boundary' ifTrue: [entry last] ifFalse: [entry last copy]))].
 phase := 'shared_target'.
 nativeDesired keysAndValuesDo: [:object :entry | (sourceDesired includesKey: object) ifTrue: [
   (sameEntry value: object value: entry value: (sourceDesired at: object))
     ifFalse: [component error: 'Native/source three-way targets disagree on shared ', object class name asString]]].
 originalNativeDesired := IdentityDictionary new.
 nativeDesired keysAndValuesDo: [:object :entry | originalNativeDesired at: object put:
   (Array with: entry first with: (entry first = 'boundary' ifTrue: [entry last] ifFalse: [entry last copy]))].
 "Drawing numbers are the causal projection of the independently merged order.
  Normalize only candidate images, including later objects whose index shifts."
 desiredDrawing doWithIndex: [:object :index | | basic entry slot |
   basic := object basicGraphObject. entry := nativeDesired at: basic.
   slot := (basic class allInstVarNames collect: [:name | name asString]) indexOf: 'drawingOrder'.
   (slot > 0 and: [entry first = 'fields']) ifFalse: [component error: 'Native drawing schema unavailable'].
   entry last at: slot put: index.
   (sourceDesired includesKey: basic) ifTrue: [(sourceDesired at: basic) last at: slot put: index]
 ].
 sourceExpected := (currentSource at: 'cloneImages') value: sourceDesired.
 phase := 'aliases'. currentIds := ids copy. desiredIds := ids copy. currentCounter := root at: 'counter'.
 state = 'applied' ifTrue: [
   (desiredIds at: edge ifAbsent: [nil]) = alias ifFalse: [component error: 'Current owned edge alias changed'].
   desiredIds removeKey: edge
 ] ifFalse: [
   ((desiredIds includesKey: edge) or: [desiredIds values includes: alias])
     ifTrue: [component error: 'Retained original alias or edge is occupied'].
   desiredIds at: edge put: alias
 ].
 desiredCounter := (sameMap value: currentIds value: (head at: 'afterIds'))
   ifTrue: [head at: 'beforeCounter'] ifFalse: [currentCounter max: (head at: 'beforeCounter')].
 orderReader := (helpers at: 7) first. drawingReader := (helpers at: 7) last.
 evidence := Dictionary new.
 #('Before' 'After' 'Current' 'Expected') do: [:role | | p d |
   p := role = 'Before' ifTrue: [head at: 'beforeOrder'] ifFalse: [role = 'After'
     ifTrue: [head at: 'afterOrder'] ifFalse: [role = 'Current' ifTrue: [collection asArray copy] ifFalse: [desiredPhysical]]].
   d := role = 'Before' ifTrue: [head at: 'beforeDrawing'] ifFalse: [role = 'After'
     ifTrue: [head at: 'afterDrawing'] ifFalse: [role = 'Current' ifTrue: [parent sortedChildren asArray copy] ifFalse: [desiredDrawing]]].
   evidence at: ('parent', role) put: ((orderReader value: (material at: 'orderRecord') value: p) at: 'value');
     at: ('drawing', role) put: (((drawingReader value: component value: (material at: 'orderRecord') value: d)
       value: role = 'Current') at: 'value')
 ].
 verify := [historyMatches value and: [(root at: 'ids') == ids and: [
   (sameMap value: ids value: currentIds) and: [(root at: 'counter') = currentCounter and: [
   (root at: 'diagram') == diagram and: [sourceRoot == diagram specification specSourceInternalOrNil and: [
   (reader value: component value: 'Main' value: #()) = currentEncoded and: [
   (raw at: 'verify') value and: [(currentSource at: 'verify') value and: [
   ((helpers last value: component value: (material at: 'edgeRecord') value: endpointMode) == true) and: [
   ((material at: 'detachedGuard') at: 'verify') value]]]]]]]]]]].
 phase := 'current_verify'. verify value ifFalse: [component error: 'Actual connect CURRENT changed during pure planning'].
 result := Dictionary new at: 'profile' put: 'native_connect_local_plan_v1';
   at: 'token' put: token; at: 'owner' put: owner; at: 'state' put: state; at: 'sequence' put: (head at: 'sequence');
   at: 'head' put: head; at: 'material' put: material; at: 'raw' put: raw;
   at: 'beforeValues' put: (head at: 'beforeValues'); at: 'afterValues' put: (head at: 'afterValues');
   at: 'currentValues' put: current; at: 'values' put: typed;
   at: 'nativeCurrent' put: currentNative; at: 'nativeMerged' put: originalNativeDesired;
   at: 'nativeDesired' put: nativeDesired; at: 'sourceCurrent' put: currentSource;
   at: 'sourceDesired' put: sourceDesired; at: 'expectedSource' put: sourceExpected;
   at: 'logicalAfter' put: logicalAfter; at: 'logicalCurrent' put: logicalCurrent;
   at: 'logicalDesired' put: logicalDesired;
   at: 'sourceMerge' put: sourceMerge; at: 'evidence' put: evidence;
   at: 'desiredOrder' put: desiredPhysical; at: 'desiredDrawing' put: desiredDrawing;
   at: 'idsBefore' put: currentIds; at: 'idsDesired' put: desiredIds;
   at: 'counterBefore' put: currentCounter; at: 'counterDesired' put: desiredCounter;
   at: 'verifyBeforeDispatch' put: verify; at: 'write_authorized' put: false;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false; yourself.
 result
 ] ifFail: [:error | 'BDE_CONNECT_LOCAL_PLAN_CONFLICT: ', phase, ': ', error messageText]
]]
