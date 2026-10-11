"Retained original-reference normalization for a first exact topology inverse.
 Full unchanged forward native/source/typed material is required. Local merge
 and managed inverse-of-inverse remain separate, unavailable capabilities."
[:factory :strictSame | [:component :record :values |
 component handleExceptionsIn: [
 | root diagram native material source forwardNative forwardSource progress verifyForward verifyOriginal
   execute result observed sourceObserved sourceExpected original nativePatch sourcePatch |
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 diagram := record at: 'diagram'. native := record at: 'topologyNativeBefore'.
 material := record at: 'topologySourceMaterialBefore'. source := material at: 'sourceRoot'.
 ((record at: 'owner') == component item and: [(record at: 'component') = component getOID and: [
   (record at: 'diagramName') = 'Main' and: [(record at: 'state') = 'applied' and: [
   #('disconnect_data' 'delete_node') includes: (record at: 'operation')]]]])
   ifFalse: [component error: 'Exact first retained Main topology inverse required'].
 forwardNative := record at: 'topologyHeadAfterNative'. forwardSource := record at: 'topologyHeadAfterSource'.
 verifyForward := [
   (root at: 'owner') == component item and: [(root at: 'diagram') == diagram and: [
   (root at: 'specification') == diagram specification and: [source == diagram specification specSourceInternalOrNil and: [
   ((root at: 'encodeObservation') value: values) =
     ((root at: 'encodeObservation') value: (record at: 'topologyHeadAfterValues')) and: [
   ((native at: 'verifyImages') value: forwardNative) and: [(forwardSource at: 'verify') value]]]]]]].
 verifyForward value ifFalse: [component error: 'Exact forward typed/native/source changed; local topology merge is required'].
 verifyOriginal := [source == diagram specification specSourceInternalOrNil and: [
   (native at: 'verify') value and: [(material at: 'verify') value]]].
 progress := Dictionary new at: 'state' put: 'prepared'; at: 'native_primitives' put: 0;
   at: 'source_primitives' put: 0; yourself.
 execute := [
   (progress at: 'state') = 'prepared' ifFalse: [component error: 'Topology exact inverse normalization cannot replay'].
   ((root at: 'owner') == component item and: [(root at: 'diagram') == diagram and: [
     source == diagram specification specSourceInternalOrNil]])
     ifFalse: [component error: 'Topology normalization original owner/root/source expired'].
   original := native at: 'snapshots'.
   observed := (native at: 'captureImages') value: (original keys, forwardNative keys).
   sourceObserved := (material at: 'captureImages') value:
     ((material at: 'snapshots') keys, (forwardSource at: 'snapshots') keys).
   sourceExpected := sourceObserved copy.
   original keysAndValuesDo: [:object :entry | (sourceExpected includesKey: object)
     ifTrue: [sourceExpected at: object put: entry]].
   nativePatch := factory value: component value: (Array with: original with: observed) value: 'undo'.
   (nativePatch isKindOf: Dictionary) ifFalse: [component error: nativePatch asString].
   sourcePatch := factory value: component value:
     (Array with: (material at: 'snapshots') with: sourceExpected) value: 'undo'.
   (sourcePatch isKindOf: Dictionary) ifFalse: [component error: sourcePatch asString].
   result at: 'nativePatch' put: nativePatch; at: 'sourcePatch' put: sourcePatch.
   (((native at: 'verifyImages') value: observed) and: [
     ((material at: 'verifyImages') value: sourceObserved) and: [(nativePatch at: 'verifyBeforeApply') value]])
     ifFalse: [component error: 'Observed topology normalization CURRENT changed'].
   progress at: 'state' put: 'native_started'.
   [(nativePatch at: 'execute') value] ensure: [progress at: 'native_primitives'
     put: ((nativePatch at: 'progress') at: 'completed_primitives')].
   ((native at: 'verify') value and: [(material at: 'verifyImages') value: sourceExpected])
     ifFalse: [component error: 'Native target or anticipated shared source changed'].
   (sourcePatch at: 'verifyBeforeApply') value ifFalse: [component error: 'Source CURRENT changed after native normalization'].
   progress at: 'state' put: 'source_started'.
   [(sourcePatch at: 'execute') value] ensure: [progress at: 'source_primitives'
     put: ((sourcePatch at: 'progress') at: 'completed_primitives')].
   verifyOriginal value ifFalse: [component error: 'Original topology native/source identities were not restored'].
   "Refresh only the read certificate. The native graph and its allocator stay bound."
   root at: 'checkpoint' put: ((root at: 'copySource') value: source); at: 'checkpointVersion' put: 2.
   progress at: 'state' put: 'restored'. true
 ].
 result := Dictionary new at: 'profile' put: 'ordinary_topology_exact_inverse_v1';
   at: 'verifyBeforeDispatch' put: verifyForward; at: 'verifyOriginal' put: verifyOriginal;
   at: 'progress' put: progress; at: 'execute' put: execute;
   at: 'write_authorized' put: false; at: 'independent_changes_supported' put: false;
   at: 'managed_inverse_enabled' put: false; yourself.
 result
 ] ifFail: [:error | 'BDE_TOPOLOGY_EXACT_INVERSE_ERROR: ', error messageText]
]]
