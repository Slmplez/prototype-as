[:valuesPlanner :sourceRestore | [:component :record :context |
 | phase |
 phase := 'context'.
 component handleExceptionsIn: [
 | native source beforeNative afterNative beforeSource afterSource anchors sourceAnchors currentNative currentSource nativePlan sourcePlan nativeDesired sourceDesired expectedSource values result sameImage verify currentValues direction restore projected sourceCurrentMaterial logicalAfter logicalCurrent logicalMerge reverse translate root origins originMap protectedNative |
 projected := sourceRestore isArray.
 restore := projected ifTrue: [sourceRestore first] ifFalse: [sourceRestore].
 projected ifTrue: [sourceRestore size = 3 ifFalse: [component error: 'Fixed active source projection helpers required']].
 (context isArray and: [context size = 2]) ifFalse: [component error: 'Fixed local CURRENT/direction context required'].
 currentValues := context first. direction := context last.
 (#('undo' 'redo') includes: direction) ifFalse: [component error: 'Exact local field direction required'].
 (record at: 'fieldLocalProfile' ifAbsent: [nil]) = 'native_source_local_inverse_v1'
   ifFalse: [component error: 'Local native/source material was not retained by preparation'].
 native := record at: 'fieldNativeBefore'.
 beforeNative := record at: 'fieldLocalHeadBeforeNative'. afterNative := record at: 'fieldLocalHeadAfterNative'.
 beforeSource := record at: 'fieldLocalHeadBeforeSource'. afterSource := record at: 'fieldLocalHeadAfterSource'.
 source := afterSource.
 ((beforeSource at: 'sourceRoot') == (source at: 'sourceRoot') and: [
   (source at: 'sourceRoot') == (record at: 'diagram') specification specSourceInternalOrNil])
   ifFalse: [component error: 'Actual local source head/root identity expired'].
 anchors := (beforeNative keys, afterNative keys) asOrderedCollection.
 anchors add: (record at: 'diagram') topGraphicalHierarchy.
 currentNative := (native at: 'captureImages') value: anchors.
 sourceAnchors := ((beforeSource at: 'snapshots') keys, (afterSource at: 'snapshots') keys) asOrderedCollection.
 originMap := IdentityDictionary new.
 projected ifTrue: [
   root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
   origins := root at: 'sourceCausalOrigins' ifAbsent: [Dictionary new].
   origins values do: [:origin | | prior priorMaterial |
     prior := origin at: 'record'. priorMaterial := origin at: 'material'.
     ((origin at: 'root') == root and: [(priorMaterial at: 'root') == root and: [
       (prior at: 'owner') == component item and: [(prior at: 'state') = 'reverted' and: [
       ((priorMaterial at: 'historyHead') at: 'owner') = (origin at: 'owner') and: [
       (priorMaterial at: 'generation') = (root at: 'generation') and: [
       ((priorMaterial at: 'sourceBefore') at: 'sourceRoot') == (source at: 'sourceRoot')]]]]]])
       ifFalse: [component error: 'Actual retained source-origin ownership or runtime expired'].
     (origin at: 'map') keysAndValuesDo: [:from :to |
       ((originMap includesKey: from) and: [(originMap at: from) ~~ to])
         ifTrue: [component error: 'Ambiguous actual source-origin correspondence'].
       originMap at: from put: to. sourceAnchors add: from; add: to]
   ]
 ].
 currentSource := (source at: 'captureImages') value: sourceAnchors.
 phase := 'native_plan'. nativePlan := (record at: 'fieldNativePatchFactory') value: component
   value: (direction = 'undo' ifTrue: [Array with: beforeNative with: afterNative]
     ifFalse: [Array with: afterNative with: beforeNative]) value: direction.
 phase := 'source_plan'. sourcePlan := (record at: 'fieldNativePatchFactory') value: component
   value: (direction = 'undo' ifTrue: [Array with: (beforeSource at: 'snapshots') with: (afterSource at: 'snapshots')]
     ifFalse: [Array with: (afterSource at: 'snapshots') with: (beforeSource at: 'snapshots')]) value: direction.
 ((nativePlan isKindOf: Dictionary) and: [sourcePlan isKindOf: Dictionary])
   ifFalse: [component error: 'Local original-reference patch construction failed'].
 phase := 'native_merge'. nativeDesired := (nativePlan at: 'mergeImages') value: currentNative.
 phase := 'source_merge'. sourceDesired := (sourcePlan at: 'mergeImages') value: currentSource.
 projected ifTrue: [
   "Raw owned cells retain their actual targets even when their old wrappers
    became detached. Apply the logical inverse back to CURRENT's actual
    wrappers, rather than replacing the active root with historical wrappers."
   sourceCurrentMaterial := source copy. sourceCurrentMaterial at: 'snapshots' put: currentSource.
   protectedNative := IdentityDictionary new.
   (beforeNative keys, afterNative keys, currentNative keys) do: [:object | protectedNative at: object put: true].
   phase := 'logical_after'. logicalAfter := (sourceRestore at: 2) value: component
     value: (Array with: beforeSource with: afterSource with: protectedNative).
   (logicalAfter isKindOf: Dictionary) ifFalse: [component error: logicalAfter asString].
   phase := 'logical_current'. logicalCurrent := (sourceRestore at: 2) value: component
     value: (Array with: logicalAfter with: sourceCurrentMaterial with: protectedNative).
   (logicalCurrent isKindOf: Dictionary) ifFalse: [component error: logicalCurrent asString].
   phase := 'logical_merge'. logicalMerge := (sourceRestore at: 3) value: component value:
     (direction = 'undo' ifTrue: [Array with: (beforeSource at: 'snapshots')
       with: (logicalAfter at: 'snapshots') with: (logicalCurrent at: 'snapshots')]
     ifFalse: [Array with: (logicalAfter at: 'snapshots') with: (beforeSource at: 'snapshots')
       with: (logicalCurrent at: 'snapshots')]).
   ((logicalMerge isKindOf: Dictionary) and: [(logicalMerge at: 'compatible') == true])
     ifFalse: [component error: 'Full active source field/reference/order inverse conflict'].
   reverse := logicalCurrent at: 'logicalToActual'.
   translate := [:object | | mapped visited |
     mapped := reverse at: object ifAbsent: [object].
     mapped == object ifTrue: [
       visited := IdentitySet new.
       [(originMap includesKey: mapped) and: [(originMap at: mapped) ~~ mapped]] whileTrue: [
         ((visited includes: mapped) or: [visited size >= 128]) ifTrue: [component error: 'Source-origin correspondence cycle or depth conflict'].
         visited add: mapped.
         (originMap at: mapped) class == mapped class ifFalse: [component error: 'Source-origin class identity changed'].
         mapped := originMap at: mapped]
     ]. mapped
   ].
   (logicalMerge at: 'desired') keysAndValuesDo: [:object :entry | | target saved wanted |
     target := translate value: object. saved := entry last.
     wanted := #('boundary' 'value') includes: entry first.
     wanted := wanted ifTrue: [entry first = 'boundary' ifTrue: [saved] ifFalse: [saved copy]]
       ifFalse: [(object isKindOf: Dictionary) ifTrue: [| keyed |
         keyed := object class new. saved keysAndValuesDo: [:key :child |
           keyed at: (translate value: key) put: (translate value: child)]. keyed]
         ifFalse: [saved collect: [:child | translate value: child]]].
     sourceDesired at: target put: (Array with: entry first with: wanted)
   ]
 ].
 phase := 'shared_target'.
 sameImage := [:left :right | left first = right first and: [
   left first = 'boundary' ifTrue: [true] ifFalse: [
   left first = 'value' ifTrue: [left last = right last] ifFalse: [
   (left last isKindOf: Dictionary) ifTrue: [left last size = right last size and: [
     left last keys allSatisfy: [:key | (right last keys anySatisfy: [:peer | peer == key])
       and: [(left last at: key) == (right last at: key)]]]]
   ifFalse: [left last size = right last size and: [
     (1 to: left last size) allSatisfy: [:slot | (left last at: slot) == (right last at: slot)]]]]]]].
 nativeDesired keysAndValuesDo: [:object :entry |
   ((sourceDesired includesKey: object) and: [entry first ~= 'boundary' and: [(sourceDesired at: object) first ~= 'boundary']])
     ifTrue: [(sameImage value: entry value: (sourceDesired at: object))
       ifFalse: [component error: 'Native and source local targets disagree on a shared object']]].
 phase := 'typed_merge'. values := valuesPlanner value: component value: (Array with: (record at: 'fieldLocalHeadBeforeValues')
   with: (record at: 'fieldLocalHeadAfterValues') with: currentValues) value: (record at: 'operation').
 (values isKindOf: Dictionary) ifFalse: [component error: values asString].
 (values at: 'compatible') == true
   ifFalse: [component error: ('Local actual typed patch or dependency conflict: ', (values at: 'conflicts') printString)].
 phase := 'source_clone'. expectedSource := (source at: 'cloneImages') value: sourceDesired.
 verify := [
   (source at: 'sourceRoot') == (record at: 'diagram') specification specSourceInternalOrNil and: [
   ((native at: 'verifyImages') value: currentNative) and: [((source at: 'verifyImages') value: currentSource)
     and: [((nativePlan at: 'verifyBeforeApply') value) and: [(sourcePlan at: 'verifyBeforeApply') value]]]]].
 phase := 'current_verify'. verify value ifFalse: [component error: 'Local native/source CURRENT changed during planning'].
 result := Dictionary new at: 'profile' put: 'native_source_local_inverse_v1';
   at: 'nativePatch' put: nativePlan; at: 'sourcePatch' put: sourcePlan;
   at: 'nativeCurrent' put: currentNative; at: 'sourceCurrent' put: currentSource;
   at: 'nativeDesired' put: nativeDesired; at: 'sourceDesired' put: sourceDesired;
   at: 'sourceMaterial' put: source; at: 'expectedSource' put: expectedSource;
   at: 'values' put: values; at: 'anchors' put: anchors; at: 'sourceAnchors' put: sourceAnchors;
   at: 'verifyBeforeDispatch' put: verify; yourself.
 result at: 'restoreSource' put: [restore value: component value: record value: (Array with: result with: direction)].
 result
 ] ifFail: [:error | 'BDE_FIELD_LOCAL_INVERSE_ERROR: ', phase, ' ', error messageText]
]]
