"Fixed local topology inverse. The initial pair or an exact owned actual head
 supplies history; logical images plan source changes only;
 real CURRENT, native/source shared targets and original ORDER guards remain
 mandatory. The coordinator owns endpoint/order verification and dispatch."
[:helpers | [:component :record :context |
 | phase |
 phase := 'context'.
 component handleExceptionsIn: [
 | factory logical merge strictSame root diagram native beforeNative afterNative
   beforeSource afterSource source currentValues expectedValues currentNative currentSource
   logicalAfter logicalCurrent sourceMerge nativePlan nativeDesired sourceDesired sourceLogicalDesired
   sameEntry sourceOwned ownedCurrent cells verifyCurrent verifyDesired progress execute result
   observed sourceObserved nativeNormalization sourceNormalization sourceExpected anchors sourceAnchors
   owned head currentScoped currentMatches historyMatches |
 (helpers isArray and: [helpers size = 4 and: [context isArray and: [#(2 3) includes: context size]]])
   ifFalse: [component error: 'Fixed local topology helpers and typed context required'].
 factory := helpers first. logical := helpers at: 2. merge := helpers at: 3. strictSame := helpers last.
 currentValues := context first. expectedValues := context at: 2. owned := context size = 3.
 ((record at: 'topologyLocalProfile' ifAbsent: [nil]) = 'ordinary_topology_local_inverse_v1' and: [
   (record at: 'owner') == component item and: [(record at: 'component') = component getOID and: [
   (record at: 'diagramName') = 'Main' and: [(#('applied' 'reverted') includes: (record at: 'state')) and: [
   #('disconnect_data' 'delete_node') includes: (record at: 'operation')]]]]])
   ifFalse: [component error: 'Retained Main local topology inverse required'].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 diagram := record at: 'diagram'. native := record at: 'topologyNativeBefore'.
 beforeNative := record at: 'topologyHeadBeforeNative'. afterNative := record at: 'topologyHeadAfterNative'.
 beforeSource := record at: 'topologyHeadBeforeSource'. afterSource := record at: 'topologyHeadAfterSource'.
 historyMatches := [ (record at: 'state') = 'applied' ].
 owned ifTrue: [
   head := context last.
   historyMatches := [head == (record at: 'topologyOwnedHead' ifAbsent: [nil]) and: [
     (head at: 'ownershipProfile' ifAbsent: [nil]) = 'actual_topology_owned_head_v1' and: [
     (head at: 'owner') = (record at: 'topologyHeadId') and: [
     (head at: 'owner') = (record at: 'managedInverseId' ifAbsent: [nil]) and: [
     (head at: 'sequence') = (record at: 'topologyExecutionSerial') and: [
     (head at: 'afterState') = (record at: 'state')]]]]]].
   historyMatches value ifFalse: [component error: 'Actual topology inverse owner expired'].
   beforeNative := head at: 'beforeNative'. afterNative := head at: 'afterNative'.
   beforeSource := head at: 'beforeSource'. afterSource := head at: 'afterSource'
 ].
 historyMatches value ifFalse: [component error: 'Initial topology inverse state differs'].
 source := beforeSource at: 'sourceRoot'.
 (source == (afterSource at: 'sourceRoot') and: [source == diagram specification specSourceInternalOrNil
   and: [(root at: 'diagram') == diagram and: [(root at: 'specification') == diagram specification]]])
   ifFalse: [component error: 'Local topology original diagram/specification/source expired'].
 anchors := (beforeNative keys, afterNative keys) asOrderedCollection.
 anchors add: diagram topGraphicalHierarchy.
 currentNative := (native at: 'captureImages') value: anchors.
 sourceAnchors := ((beforeSource at: 'snapshots') keys, (afterSource at: 'snapshots') keys) asOrderedCollection.
 currentSource := (record at: 'topologySourceMaterialReader') value: component value:
   (Array with: source with: sourceAnchors).
 (currentSource isKindOf: Dictionary) ifFalse: [component error: currentSource asString].
 phase := 'native_merge'.
 nativePlan := factory value: component value: (Array with: beforeNative with: afterNative) value: 'undo'.
 (nativePlan isKindOf: Dictionary) ifFalse: [component error: nativePlan asString].
 nativeDesired := (nativePlan at: 'mergeImages') value: currentNative.
 "Check raw owned source references before logical projection. Matching a
  replacement by structure must never excuse an overlapping owned cell."
 phase := 'source_owned_guard'.
 sourceOwned := factory value: component value:
   (Array with: (beforeSource at: 'snapshots') with: (afterSource at: 'snapshots')) value: 'undo'.
 (sourceOwned isKindOf: Dictionary) ifFalse: [component error: sourceOwned asString].
 ownedCurrent := currentSource at: 'snapshots'.
 (sourceOwned at: 'cells') do: [:cell | | object kind slot actual expected |
   object := cell first. kind := cell at: 2. slot := cell at: 3. expected := cell at: 4.
   (#('fields' 'indexed' 'value') includes: kind) ifTrue: [
     actual := (ownedCurrent at: object) last at: slot.
     (kind = 'value' ifTrue: [actual = expected] ifFalse: [actual == expected])
       ifFalse: [component error: 'Owned actual source field/index/reference overlap']]
   ifFalse: [kind = 'ordered' ifFalse: [component error: 'Local source owned key/member contract not implemented']]
 ].
 phase := 'source_projection'.
 logicalAfter := logical value: component value: (Array with: beforeSource with: afterSource).
 (logicalAfter isKindOf: Dictionary) ifFalse: [component error: logicalAfter asString].
 logicalCurrent := logical value: component value: (Array with: logicalAfter with: currentSource).
 (logicalCurrent isKindOf: Dictionary) ifFalse: [component error: logicalCurrent asString].
 sourceMerge := merge value: component value: (Array with: (beforeSource at: 'snapshots')
   with: (logicalAfter at: 'snapshots') with: (logicalCurrent at: 'snapshots')).
 ((sourceMerge isKindOf: Dictionary) and: [(sourceMerge at: 'compatible') == true])
   ifFalse: [component error: 'Frozen local source touched/introduced/order conflict: ', sourceMerge printString].
 sourceLogicalDesired := sourceMerge at: 'desired'.
 sourceDesired := (currentSource at: 'snapshots') copy.
 sourceLogicalDesired keysAndValuesDo: [:object :entry | sourceDesired at: object put: entry].
 sameEntry := [:object :left :right | left first = right first and: [
   left first = 'boundary' ifTrue: [left last == right last] ifFalse: [
   left first = 'value' ifTrue: [left last class == right last class and: [left last = right last]] ifFalse: [
   (object isKindOf: Dictionary) ifTrue: [left last size = right last size and: [left last keys allSatisfy: [:key |
     (right last keys anySatisfy: [:peer | peer == key]) and: [(left last at: key) == (right last at: key)]]]]
   ifFalse: [left last size = right last size and: [(1 to: left last size) allSatisfy: [:slot |
     (left last at: slot) == (right last at: slot)]]]]]]].
 phase := 'shared_target'.
 nativeDesired keysAndValuesDo: [:object :entry |
   ((sourceDesired includesKey: object) and: [entry first ~= 'boundary']) ifTrue: [
     (sourceLogicalDesired includesKey: object) ifTrue: [
       (sameEntry value: object value: entry value: (sourceDesired at: object))
         ifFalse: [component error: 'Local native/source logical targets disagree on shared object']]
     ifFalse: [sourceDesired at: object put: entry]]].
 sourceExpected := (currentSource at: 'cloneImages') value: sourceDesired.
 currentMatches := [((root at: 'encodeObservation') value: currentValues) =
   ((root at: 'encodeObservation') value: (root at: 'observationValues'))].
 owned ifTrue: [
   currentScoped := (record at: 'materialObservationReader') value: component value: 'Main' value: (record at: 'targets').
   (currentScoped startsWith: 'BDE_STRUCTURE_ERROR:') ifTrue: [component error: currentScoped].
   currentMatches := [| full scoped |
     [full := (record at: 'materialObservationReader') value: component value: 'Main' value: #()]
       ensure: [scoped := (record at: 'materialObservationReader') value: component value: 'Main' value: (record at: 'targets')].
     full = ((root at: 'encodeObservation') value: currentValues) and: [scoped = currentScoped]
   ]
 ].
 verifyCurrent := [
   historyMatches value and: [source == diagram specification specSourceInternalOrNil and: [(root at: 'diagram') == diagram and: [
   (root at: 'specification') == diagram specification and: [
   currentMatches value and: [
   ((native at: 'verifyImages') value: currentNative) and: [(currentSource at: 'verify') value]]]]]]].
 verifyDesired := [source == diagram specification specSourceInternalOrNil and: [
   ((native at: 'verifyImages') value: nativeDesired) and: [
   ((currentSource at: 'verifyImages') value: sourceDesired) and: [
   (strictSame value: component value: source value: sourceExpected) == true]]]].
 phase := 'current_verify'.
 verifyCurrent value ifFalse: [component error: 'Real local native/source CURRENT changed during planning'].
 progress := Dictionary new at: 'state' put: 'prepared'; at: 'native_primitives' put: 0;
   at: 'source_primitives' put: 0; yourself.
 execute := [
   (progress at: 'state') = 'prepared' ifFalse: [component error: 'Local topology normalization cannot replay'].
   source == diagram specification specSourceInternalOrNil
     ifFalse: [component error: 'Local topology source replaced after restore/store'].
   "The normal restore/store may have regenerated wrappers and source records.
    Capture that actual head, then guard every normalization dispatch anew."
   observed := (native at: 'captureImages') value: (nativeDesired keys, currentNative keys).
   sourceObserved := (currentSource at: 'captureImages') value: (sourceDesired keys, sourceAnchors).
   nativeNormalization := factory value: component value:
     (Array with: nativeDesired with: observed) value: 'undo'.
   (nativeNormalization isKindOf: Dictionary) ifFalse: [component error: nativeNormalization asString].
   result at: 'nativePatch' put: nativeNormalization.
   (((native at: 'verifyImages') value: observed) and: [
     ((currentSource at: 'verifyImages') value: sourceObserved) and: [(nativeNormalization at: 'verifyBeforeApply') value]])
     ifFalse: [component error: 'Post-store actual local native/source CURRENT changed'].
   progress at: 'state' put: 'native_started'.
   [(nativeNormalization at: 'execute') value] ensure: [progress at: 'native_primitives'
     put: ((nativeNormalization at: 'progress') at: 'completed_primitives')].
   ((native at: 'verifyImages') value: nativeDesired)
     ifFalse: [component error: 'Local native target changed before source normalization'].
   sourceObserved := (currentSource at: 'captureImages') value: (sourceDesired keys, sourceObserved keys).
   sourceNormalization := factory value: component value:
     (Array with: sourceDesired with: sourceObserved) value: 'undo'.
   (sourceNormalization isKindOf: Dictionary) ifFalse: [component error: sourceNormalization asString].
   result at: 'sourcePatch' put: sourceNormalization.
   (((currentSource at: 'verifyImages') value: sourceObserved) and: [(sourceNormalization at: 'verifyBeforeApply') value])
     ifFalse: [component error: 'Actual local source CURRENT changed before normalization'].
   progress at: 'state' put: 'source_started'.
   [(sourceNormalization at: 'execute') value] ensure: [progress at: 'source_primitives'
     put: ((sourceNormalization at: 'progress') at: 'completed_primitives')].
   verifyDesired value ifFalse: [component error: 'Local topology target values/references/sharing differ'].
   root at: 'checkpoint' put: ((root at: 'copySource') value: source); at: 'checkpointVersion' put: 2.
   progress at: 'state' put: 'restored'. true
 ].
 result := Dictionary new at: 'profile' put: (owned ifTrue: ['ordinary_topology_owned_material_inverse_v1']
     ifFalse: ['ordinary_topology_local_inverse_v1']);
   at: 'verifyBeforeDispatch' put: verifyCurrent; at: 'verifyDesired' put: verifyDesired;
   at: 'nativeCurrent' put: currentNative; at: 'sourceCurrent' put: currentSource;
   at: 'nativeDesired' put: nativeDesired; at: 'sourceDesired' put: sourceDesired;
   at: 'expectedSource' put: sourceExpected; at: 'expectedValues' put: expectedValues;
   at: 'sourceMerge' put: sourceMerge; at: 'progress' put: progress; at: 'execute' put: execute;
   at: 'write_authorized' put: false; at: 'managed_inverse_enabled' put: false; yourself.
 result
 ] ifFail: [:error | 'BDE_TOPOLOGY_LOCAL_INVERSE_ERROR: ', phase, ' ', error messageText]
]]
