[:projectionReader :planReader | [:executionReader :mode | [:component :checkpoint :clone |
 component handleExceptionsIn: [
 | memo owned memberMap privateKeys sameOrder sameContents capture diff guard prepare restore lastPlan assertOriginal cases snapshot deleted changes fieldChanges collectionChanges summaries result out encode independentPoint independentBefore independentAfter cloneSummary cloneCurrent privateSetters caseCount |
 ((clone at: 'verifyCorrespondence') value: clone) ifFalse: [component error: 'Exact private native graph lineage required'].
 (#('splice' 'faults') includes: mode) ifFalse: [component error: 'Exact private splice/fault mode required'].
 ((clone at: 'verifyInitialGraph') value) ifFalse: [component error: 'Initial private native graph changed'].
 memo := clone at: 'memo'. owned := IdentitySet new. owned addAll: memo values.
 memberMap := clone at: 'nativeByKey'. cases := OrderedCollection new. privateSetters := 0. caseCount := 0.
 privateKeys := IdentityDictionary new. memberMap keysAndValuesDo: [:key :member | privateKeys at: member put: key].
 assertOriginal := [((checkpoint at: 'verifyCurrent') value) ifFalse: [component error: 'Original graph changed during private splice']].
 cloneCurrent := [((clone at: 'verifyCorrespondence') value: clone) and: [(checkpoint at: 'verifyCurrent') value]].
 sameOrder := [:left :right | left size = right size and: [
   ((1 to: left size) anySatisfy: [:index | (left at: index) ~~ (right at: index)]) not]].
 sameContents := [:object :saved | object size = saved size and: [
   (object isKindOf: Dictionary) ifTrue: [(saved keys anySatisfy: [:key |
     ((object includesKey: key) and: [(object at: key) == (saved at: key)]) not]) not]
   ifFalse: [((object isKindOf: Set) or: [object isKindOf: IdentitySet])
     ifTrue: [(saved anySatisfy: [:entry | (object anySatisfy: [:value | value == entry]) not]) not]
     ifFalse: [sameOrder value: object value: saved]]]].
 capture := [| saved |
   saved := IdentityDictionary new.
   memo keysAndValuesDo: [:source :object | | value name |
     name := object class name asString.
     (#('Array' 'OrderedCollection' 'Dictionary' 'IdentityDictionary' 'Set' 'IdentitySet') includes: name)
       ifTrue: [value := Dictionary new at: 'kind' put: 'collection'; at: 'value' put: object copy; yourself]
       ifFalse: [((object isString) or: [object isKindOf: ByteArray])
         ifTrue: [value := Dictionary new at: 'kind' put: 'value'; at: 'value' put: object copy; yourself]
         ifFalse: [value := Dictionary new at: 'kind' put: 'fields';
           at: 'value' put: ((1 to: object class instSize) collect: [:index | object instVarAt: index]) asArray; yourself]].
     saved at: object put: value
   ]. saved
 ].
 diff := [:before :after | | edits |
   before size = after size ifFalse: [component error: 'Private patch captured object roster differs'].
   edits := OrderedCollection new.
   before keysAndValuesDo: [:object :old | | now kind left right |
     now := after at: object. kind := old at: 'kind'.
     kind = (now at: 'kind') ifFalse: [component error: 'Private patch object kind changed'].
     left := old at: 'value'. right := now at: 'value'.
     kind = 'fields' ifTrue: [1 to: left size do: [:index |
       (left at: index) ~~ (right at: index) ifTrue: [edits add: (Dictionary new at: 'object' put: object;
         at: 'kind' put: kind; at: 'index' put: index; at: 'before' put: (left at: index);
         at: 'after' put: (right at: index); yourself)]]
     ] ifFalse: [kind = 'value' ifTrue: [left = right ifFalse: [component error: 'Unsupported private indexed value mutation']]
       ifFalse: [(sameContents value: left value: right) ifFalse: [edits add: (Dictionary new at: 'object' put: object;
         at: 'kind' put: kind; at: 'before' put: left; at: 'after' put: right; yourself)]]]
   ]. edits
 ].
 prepare := [:edits | | value |
   value := planReader value: component value: clone value: edits.
   (value isKindOf: Dictionary) ifFalse: [component error: value]. value].
 guard := [:edits | | value | value := prepare value: edits.
   (value at: 'compatible') and: [(value at: 'verifyBeforeApply') value]].
 restore := [:edits |
   lastPlan := prepare value: edits.
   (lastPlan at: 'compatible') ifFalse: [component error: 'Private inverse touched field conflict'].
   privateSetters := privateSetters + (lastPlan at: 'execute') value
 ].
 (checkpoint at: 'scopes') do: [:scope | | scopeName rows pins |
   scopeName := scope at: 'diagram'. rows := scope at: 'entries'.
   pins := rows select: [:row | (row at: 'kind') = 'pin' and: [
     rows anySatisfy: [:edge | (edge at: 'kind') = 'edge' and: [
       (edge at: 'source') = (row at: 'ref') or: [(edge at: 'target') = (row at: 'ref')]]]]].
   pins do: [:pinRow | | pinKey originalPin pin pinParent incident edges pointSets beforeFields deletedFields restoredFields preservedFields negatives badEntry wrongValue savedAfter fieldsBeforeConflict fieldEntry collectionEntry independentCandidates independentPair independentKey independentDiff refusal setterCount record edgeKeys mainPlan forwardDelete peerCandidates peerSummary peer peerKey peerExpected peerChanges secondaryBefore secondaryAfter secondaryChanges peerFields primaryAgainFields bothFields mergedPeerFields peerMainPlan peerResetPlan peerCleanupPlan peerStart orderEntry savedOrder preparedNegatives preparedPlan refusePrepared retainedMember retainedManager ownerNode ownerParent ownerIndex oppositeKey oppositePin oppositeOwner oppositeManager dependencyNegatives refusePreparation faultCases faultCurrent faultProjection faultRestoredProjection faultIndices executor executionStatus primitiveCount actualChanges conflictEntry conflictObject conflictSaved recoverCount faultSummary resetConflict faultExecutions faultRecoveries |
     caseCount := caseCount + 1. caseCount > 256 ifTrue: [component error: 'Private splice case bound exceeded'].
     ((clone at: 'verifyInitialGraph') value) ifFalse: [component error: 'Previous private case failed full identity restoration'].
     assertOriginal value.
     pinKey := scopeName, '/', (pinRow at: 'ref'). originalPin := (checkpoint at: 'nativeByKey') at: pinKey.
     pin := memberMap at: pinKey. pinParent := memo at: originalPin manager.
     ((owned includes: pinParent interfaceGOs) and: [pin manager == pinParent and: [
       (pinParent interfaceGOs select: [:entry | entry == pin]) size = 1]])
       ifFalse: [component error: 'Private exact pin parent membership differs'].
     peerCandidates := pinParent interfaceGOs select: [:member |
       member ~~ pin and: [(member isKindOf: SGBlockInterfaceElementGO) and: [
         (privateKeys includesKey: member) and: [member manager == pinParent and: [
           member getExternalConnectorGO connectionPoint connections isEmpty]]]]].
     incident := rows select: [:row | (row at: 'kind') = 'edge' and: [
       (row at: 'source') = (pinRow at: 'ref') or: [(row at: 'target') = (pinRow at: 'ref')]]].
     edgeKeys := incident collect: [:row | scopeName, '/', (row at: 'ref')].
     edges := edgeKeys collect: [:name | memberMap at: name]. pointSets := IdentitySet new.
     edges do: [:edge | | points |
       ((owned includes: edge manager) and: [(owned includes: edge manager children) and: [
         (edge manager children select: [:entry | entry == edge]) size = 1]])
         ifFalse: [component error: 'Private exact edge parent membership differs'].
       points := edge connectionPoints.
       points size = 2 ifFalse: [component error: 'Two audited private edge endpoints required'].
       points do: [:point |
         ((owned includes: point) and: [point class = RBConnectionPointBranch and: [
           (owned includes: point connections) and: [(point connections includesKey: edge) and: [
             (point connections keys anySatisfy: [:other | (owned includes: other) not]) not]]]])
           ifFalse: [component error: 'Private endpoint connection dictionary closure differs'].
         pointSets add: point]
     ].
     beforeFields := projectionReader value: component value: (clone at: 'diagram').
     (beforeFields startsWith: 'BDE_') ifTrue: [component error: beforeFields].
     snapshot := capture value.
     forwardDelete := [
       edges do: [:edge |
         edge connectionPoints do: [:point | point removeConnection: edge. privateSetters := privateSetters + 1].
         edge manager children remove: edge. edge manager: nil. privateSetters := privateSetters + 2].
       pinParent interfaceGOs remove: pin. pin manager: nil. privateSetters := privateSetters + 2].
     forwardDelete value.
     deletedFields := projectionReader value: component value: (clone at: 'diagram').
     (deletedFields startsWith: 'BDE_') ifTrue: [component error: deletedFields].
     beforeFields = deletedFields ifTrue: [component error: 'Private deletion produced no visible actual difference'].
     (pinParent interfaceGOs includes: pin) ifTrue: [component error: 'Deleted private pin remains attached'].
     edges do: [:edge | (edge manager notNil or: [
       pointSets anySatisfy: [:point | point connections includesKey: edge]])
       ifTrue: [component error: 'Deleted private edge remains attached to endpoint or manager']].
     deleted := capture value. changes := diff value: snapshot value: deleted.
     fieldChanges := changes select: [:entry | (entry at: 'kind') = 'fields'].
     collectionChanges := changes select: [:entry | (entry at: 'kind') = 'collection'].
     (fieldChanges isEmpty or: [collectionChanges isEmpty]) ifTrue: [component error: 'Private actual field/collection closure was not captured'].
     negatives := 0.
     fieldEntry := fieldChanges first. badEntry := fieldEntry at: 'object'. savedAfter := fieldEntry at: 'after'.
     badEntry instVarAt: (fieldEntry at: 'index') put: (fieldEntry at: 'before').
     fieldsBeforeConflict := capture value.
     setterCount := privateSetters.
     refusal := component handleExceptionsIn: [restore value: changes. 'ACCEPTED'] ifFail: [:error | error messageText].
     refusal = 'Private inverse touched field conflict' ifFalse: [component error: 'Changed private touched field inverse accepted'].
     privateSetters = setterCount ifFalse: [component error: 'Conflicting private inverse called setters'].
     (diff value: fieldsBeforeConflict value: capture value) isEmpty ifFalse: [component error: 'Private conflict guard mutated fields'].
     badEntry instVarAt: (fieldEntry at: 'index') put: savedAfter. negatives := negatives + 1.
     collectionEntry := collectionChanges detect: [:entry | (entry at: 'object') isKindOf: Dictionary]
       ifNone: [component error: 'Private connection dictionary actual diff required'].
     badEntry := collectionEntry at: 'object'. wrongValue := Object new. badEntry at: wrongValue put: wrongValue.
     fieldsBeforeConflict := capture value.
     setterCount := privateSetters.
     refusal := component handleExceptionsIn: [restore value: changes. 'ACCEPTED'] ifFail: [:error | error messageText].
     refusal = 'Private inverse touched field conflict' ifFalse: [component error: 'Changed private touched connection dictionary inverse accepted'].
     privateSetters = setterCount ifFalse: [component error: 'Conflicting private inverse called collection setters'].
     (diff value: fieldsBeforeConflict value: capture value) isEmpty ifFalse: [component error: 'Private conflict guard mutated collections'].
     badEntry removeKey: wrongValue. negatives := negatives + 1.
     orderEntry := collectionChanges detect: [:entry | (entry at: 'object') class = OrderedCollection and: [
       (entry at: 'object') size >= 2]] ifNone: [component error: 'Two private order anchors required for conflict test'].
     badEntry := orderEntry at: 'object'. savedOrder := badEntry asArray copy.
     badEntry removeAll: badEntry asArray. badEntry addAll: savedOrder reverse.
     fieldsBeforeConflict := capture value. setterCount := privateSetters.
     refusal := component handleExceptionsIn: [restore value: changes. 'ACCEPTED'] ifFail: [:error | error messageText].
     refusal = 'Private inverse touched field conflict' ifFalse: [component error: 'Reordered private collection inverse accepted'].
     privateSetters = setterCount ifFalse: [component error: 'Conflicting order inverse called setters'].
     (diff value: fieldsBeforeConflict value: capture value) isEmpty ifFalse: [component error: 'Private order conflict changed captured state'].
     badEntry removeAll: badEntry asArray. badEntry addAll: savedOrder. negatives := negatives + 1.
     preparedNegatives := 0.
     refusePrepared := [
       (preparedPlan at: 'verifyBeforeApply') value ifTrue: [component error: 'Stale private inverse plan still verifies'].
       fieldsBeforeConflict := capture value.
       refusal := component handleExceptionsIn: [(preparedPlan at: 'execute') value. 'ACCEPTED']
         ifFail: [:error | error messageText].
       refusal = 'Private inverse touched field conflict'
         ifFalse: [component error: 'Prepared private inverse accepted changed current state'].
       (diff value: fieldsBeforeConflict value: capture value) isEmpty
         ifFalse: [component error: 'Prepared private inverse mutated state before rejecting'].
       preparedNegatives := preparedNegatives + 1
     ].
     preparedPlan := prepare value: changes.
     (preparedPlan at: 'verifyBeforeApply') value ifFalse: [component error: 'Fresh private inverse plan failed verification'].
     badEntry := fieldEntry at: 'object'.
     badEntry instVarAt: (fieldEntry at: 'index') put: (fieldEntry at: 'before').
     refusePrepared value.
     badEntry instVarAt: (fieldEntry at: 'index') put: (fieldEntry at: 'after').
     preparedPlan := prepare value: changes.
     badEntry := collectionEntry at: 'object'. wrongValue := Object new.
     badEntry at: wrongValue put: wrongValue. refusePrepared value. badEntry removeKey: wrongValue.
     preparedPlan := prepare value: changes.
     badEntry := orderEntry at: 'object'. savedOrder := badEntry asArray copy.
     badEntry removeAll: badEntry asArray. badEntry addAll: savedOrder reverse.
     refusePrepared value. badEntry removeAll: badEntry asArray. badEntry addAll: savedOrder.
     preparedPlan := prepare value: changes.
     retainedMember := badEntry first. retainedManager := retainedMember manager.
     retainedMember manager: nil. refusePrepared value. retainedMember manager: retainedManager.
     dependencyNegatives := 0.
     refusePreparation := [| value |
       fieldsBeforeConflict := capture value.
       refusal := component handleExceptionsIn: [
         value := prepare value: changes.
         (value at: 'compatible') ifTrue: ['ACCEPTED'] ifFalse: [
           ((value at: 'conflicts') anySatisfy: [:name |
             #('PRIVATE_PARENT_LINEAGE_CHANGED' 'PRIVATE_ENDPOINT_DEPENDENCY_CHANGED') includes: name])
               ifFalse: [component error: 'Unrelated private dependency refusal'].
           'REFUSED']
       ] ifFail: [:error | error messageText].
       (#('REFUSED' 'BDE_PRIVATE_GRAPH_PLAN_ERROR: Private current member ownership/key binding changed') includes: refusal)
         ifFalse: [component error: 'Private dependency change did not refuse exact preparation: ', refusal].
       (diff value: fieldsBeforeConflict value: capture value) isEmpty
         ifFalse: [component error: 'Private dependency preparation changed state'].
       dependencyNegatives := dependencyNegatives + 1
     ].
     ownerNode := memberMap at: scopeName, '/', (pinRow at: 'owner').
     ownerParent := ownerNode manager. ownerIndex := ownerParent children indexOf: ownerNode.
     preparedPlan := prepare value: changes.
     ownerNode manager: nil.
     refusePreparation value. refusePrepared value. ownerNode manager: ownerParent.
     preparedPlan := prepare value: changes.
     ownerParent children removeAtIndex: ownerIndex. refusePrepared value.
     ownerParent children add: ownerNode beforeIndex: ownerIndex.
     oppositeKey := scopeName, '/', ((incident first at: 'source') = (pinRow at: 'ref')
       ifTrue: [incident first at: 'target'] ifFalse: [incident first at: 'source']).
     oppositePin := memberMap at: oppositeKey.
     oppositeOwner := memberMap at: scopeName, '/',
       ((rows detect: [:row | scopeName, '/', (row at: 'ref') = oppositeKey]) at: 'owner').
     preparedPlan := prepare value: changes. oppositeManager := oppositeOwner manager.
     oppositeOwner manager: nil. refusePrepared value. oppositeOwner manager: oppositeManager.
     preparedPlan := prepare value: changes. oppositeManager := oppositePin manager.
     oppositePin manager: nil.
     refusePreparation value.
     refusePrepared value. oppositePin manager: oppositeManager.
     independentCandidates := (checkpoint at: 'nodeBasics') select: [:pair | | basic point |
       basic := memo at: pair last. point := basic getPosition.
       ((basic isKindOf: SGBlockGO) and: [(owned includes: point) and: [
         point class = Point and: [point x isInteger and: [
           ((changes anySatisfy: [:entry | (entry at: 'object') == point]) not) and: [
             pair first ~~ (((checkpoint at: 'objectsByScope') at: scopeName) at: (pinRow at: 'owner'))]]]]])].
     independentCandidates isEmpty ifTrue: [component error: 'Untouched separate private visible node position required'].
     independentPair := independentCandidates first.
     independentKey := (checkpoint at: 'memberKeys') at: independentPair first.
     independentPoint := (memo at: independentPair last) getPosition. independentBefore := independentPoint x.
     independentAfter := independentBefore + 7. independentPoint x: independentAfter.
     faultCases := OrderedCollection new. faultExecutions := 0. faultRecoveries := 0.
     mode = 'faults' ifTrue: [
       faultCurrent := capture value.
       faultProjection := projectionReader value: component value: (clone at: 'diagram').
       executor := executionReader value: component value: clone value: (prepare value: changes).
       (executor isKindOf: Dictionary) ifFalse: [component error: executor].
       primitiveCount := ((executor at: 'status') value) at: 'primitive_count'.
       primitiveCount < 3 ifTrue: [component error: 'Three bounded private fault positions required'].
       faultIndices := (Array with: 1 with: ((primitiveCount + 1) // 2) with: primitiveCount) asSet asSortedCollection.
       faultIndices do: [:faultIndex |
         executor := executionReader value: component value: clone value: (prepare value: changes).
         (executor isKindOf: Dictionary) ifFalse: [component error: executor].
         independentPoint x: independentAfter + 1. fieldsBeforeConflict := capture value.
         refusal := component handleExceptionsIn: [(executor at: 'executeNext') value: 1. 'ACCEPTED']
           ifFail: [:error | error messageText].
         refusal = 'Private CURRENT changed before primitive' ifFalse: [component error: 'Changed prepared CURRENT allowed private primitive'].
         (diff value: fieldsBeforeConflict value: capture value) isEmpty
           ifFalse: [component error: 'Changed prepared CURRENT rejection mutated state'].
         (((executor at: 'status') value) at: 'executed') = 0
           ifFalse: [component error: 'Changed prepared CURRENT rejection consumed a primitive'].
         independentPoint x: independentAfter.
         refusal := component handleExceptionsIn: [(executor at: 'executeWithFault') value: faultIndex. 'ACCEPTED']
           ifFail: [:error | error messageText].
         refusal = 'Injected private primitive completion failure' ifFalse: [component error: 'Exact private partial fault required'].
         executionStatus := (executor at: 'status') value.
         ((executionStatus at: 'state') = 'partial' and: [(executionStatus at: 'executed') = faultIndex])
           ifFalse: [component error: 'Private partial execution status differs'].
         fieldsBeforeConflict := capture value.
         refusal := component handleExceptionsIn: [(executor at: 'executeNext') value: faultIndex. 'ACCEPTED']
           ifFail: [:error | error messageText].
         refusal = 'Private primitive expectation changed' ifFalse: [component error: 'Private primitive duplicate caused replay'].
         faultIndex + 2 <= primitiveCount ifTrue: [
           refusal := component handleExceptionsIn: [(executor at: 'executeNext') value: faultIndex + 2. 'ACCEPTED']
             ifFail: [:error | error messageText].
           refusal = 'Private primitive expectation changed' ifFalse: [component error: 'Private primitive future index accepted']
         ].
         ((diff value: fieldsBeforeConflict value: capture value) isEmpty and: [
           (((executor at: 'status') value) at: 'executed') = faultIndex])
           ifFalse: [component error: 'Private primitive duplicate/future rejection changed state'].
         (executor at: 'verifyRecovery') value ifFalse: [component error: 'Exact private partial recovery unavailable'].
         actualChanges := (executor at: 'actualChanges') value.
         actualChanges isEmpty ifTrue: [component error: 'Private partial execution actual diff absent'].
         conflictEntry := actualChanges first. conflictObject := conflictEntry at: 'object'.
         (conflictEntry at: 'kind') = 'fields' ifTrue: [
           conflictSaved := conflictObject instVarAt: (conflictEntry at: 'index').
           conflictObject instVarAt: (conflictEntry at: 'index') put: (conflictEntry at: 'before').
           resetConflict := [conflictObject instVarAt: (conflictEntry at: 'index') put: conflictSaved]
         ] ifFalse: [
           conflictSaved := conflictObject copy.
           (conflictObject isKindOf: Dictionary) ifTrue: [
             wrongValue := Object new. conflictObject at: wrongValue put: wrongValue.
             resetConflict := [conflictObject removeKey: wrongValue]
           ] ifFalse: [
             conflictObject removeAll: conflictObject asArray.
             resetConflict := [conflictObject addAll: conflictSaved]
           ]
         ].
         fieldsBeforeConflict := capture value.
         refusal := component handleExceptionsIn: [(executor at: 'recoverCurrent') value. 'ACCEPTED']
           ifFail: [:error | error messageText].
         refusal = 'Private CURRENT recovery conflict' ifFalse: [component error: 'Changed private CURRENT recovery accepted'].
         (diff value: fieldsBeforeConflict value: capture value) isEmpty
           ifFalse: [component error: 'Conflicting private CURRENT recovery changed state'].
         resetConflict value.
         independentPoint x: independentAfter + 5.
         recoverCount := (executor at: 'recoverCurrent') value.
         independentPoint x = (independentAfter + 5)
           ifFalse: [component error: 'Private partial recovery overwrote independent post-fault field'].
         independentDiff := diff value: faultCurrent value: capture value.
         (independentDiff size = 1 and: [(independentDiff first at: 'object') == independentPoint and: [
           (independentDiff first at: 'index') = (Point allInstVarNames indexOf: 'x')]])
           ifFalse: [component error: 'Private partial recovery differs beyond independent field'].
         faultSummary := executionStatus copy.
         faultSummary at: 'fault_after' put: faultIndex; at: 'recovery_count' put: recoverCount;
           at: 'prepare_current_conflict_negatives' put: 1; at: 'primitive_duplicate_negatives' put: 1;
           at: 'primitive_skip_negatives' put: (faultIndex + 2 <= primitiveCount ifTrue: [1] ifFalse: [0]);
           at: 'recovery_conflict_negatives' put: 1; at: 'independent_post_fault_field_preserved' put: true;
           at: 'complete_current_refs_restored' put: true; at: 'replay_negatives' put: 2.
         independentPoint x: independentAfter.
         (diff value: faultCurrent value: capture value) isEmpty
           ifFalse: [component error: 'Private CURRENT full field/collection checkpoint not restored'].
         fieldsBeforeConflict := capture value.
         refusal := component handleExceptionsIn: [(executor at: 'executeWithFault') value: 0. 'ACCEPTED']
           ifFail: [:error | error messageText].
         refusal = 'Private execution cannot replay' ifFalse: [component error: 'Recovered private execution replayed'].
         refusal := component handleExceptionsIn: [(executor at: 'recoverCurrent') value. 'ACCEPTED']
           ifFail: [:error | error messageText].
         refusal = 'Private CURRENT recovery conflict' ifFalse: [component error: 'Recovered private rollback replayed'].
         (diff value: fieldsBeforeConflict value: capture value) isEmpty
           ifFalse: [component error: 'Private execution/rollback replay mutated state'].
         faultCases add: faultSummary. faultExecutions := faultExecutions + faultIndex.
         faultRecoveries := faultRecoveries + recoverCount.
         assertOriginal value
       ].
       faultRestoredProjection := projectionReader value: component value: (clone at: 'diagram').
       faultRestoredProjection = faultProjection ifFalse: [component error: 'Private CURRENT public projection differs after recovery']
     ].
     (guard value: changes) ifFalse: [component error: 'Independent private field prevented local inverse'].
     restore value: changes.
     mainPlan := lastPlan.
     independentPoint x = independentAfter ifFalse: [component error: 'Private local inverse overwrote independent field'].
     ((changes anySatisfy: [:entry | | object |
       object := entry at: 'object'. (entry at: 'kind') = 'fields'
         ifTrue: [(object instVarAt: (entry at: 'index')) ~~ (entry at: 'before')]
         ifFalse: [(sameContents value: object value: (entry at: 'before')) not]]) not)
       ifFalse: [component error: 'Private original object field/collection inverse differs'].
     independentDiff := diff value: snapshot value: capture value.
     (independentDiff size = 1 and: [(independentDiff first at: 'object') == independentPoint and: [
       (independentDiff first at: 'kind') = 'fields' and: [
         (independentDiff first at: 'index') = (Point allInstVarNames indexOf: 'x')]]])
       ifFalse: [component error: 'Private inverse changed fields beyond independent node position'].
     preservedFields := projectionReader value: component value: (clone at: 'diagram').
     (preservedFields startsWith: 'BDE_') ifTrue: [component error: preservedFields].
     preservedFields = beforeFields ifTrue: [component error: 'Private independent node position had no visible effect'].
     independentPoint x: independentBefore.
     ((clone at: 'verifyInitialGraph') value) ifFalse: [component error: 'Private inverse failed complete graphic field/collection identity check'].
     restoredFields := projectionReader value: component value: (clone at: 'diagram').
     restoredFields = beforeFields ifFalse: [component error: 'Private inverse public projection differs'].
     assertOriginal value.
     peerSummary := Dictionary new at: 'eligible_keys' put: (peerCandidates collect: [:member | privateKeys at: member]);
       at: 'tested' put: false; at: 'probe_mutations' put: 0; at: 'skip_reason' put: 'no_unconnected_same_port_pin'; yourself.
     peerCandidates isEmpty ifFalse: [
       peerStart := privateSetters. peer := peerCandidates first. peerKey := privateKeys at: peer.
       (peer getExternalConnectorGO connectionPoint connections isEmpty and: [peer manager == pinParent])
         ifFalse: [component error: 'Private independent same-parent pin dependency changed'].
       secondaryBefore := capture value.
       pinParent interfaceGOs remove: peer. peer manager: nil. privateSetters := privateSetters + 2.
       peerExpected := capture value. peerChanges := diff value: secondaryBefore value: peerExpected.
       peerFields := projectionReader value: component value: (clone at: 'diagram').
       (peerFields startsWith: 'BDE_') ifTrue: [component error: peerFields].
       restore value: peerChanges. peerResetPlan := lastPlan.
       ((clone at: 'verifyInitialGraph') value) ifFalse: [component error: 'Private independent-only baseline reset differs'].
       secondaryBefore := capture value. forwardDelete value. secondaryAfter := capture value.
       secondaryChanges := diff value: secondaryBefore value: secondaryAfter.
       primaryAgainFields := projectionReader value: component value: (clone at: 'diagram').
       primaryAgainFields = deletedFields ifFalse: [component error: 'Second private primary deletion coverage differs'].
       pinParent interfaceGOs remove: peer. peer manager: nil. privateSetters := privateSetters + 2.
       bothFields := projectionReader value: component value: (clone at: 'diagram').
       (bothFields startsWith: 'BDE_') ifTrue: [component error: bothFields].
       restore value: secondaryChanges. peerMainPlan := lastPlan.
       (peer manager isNil and: [(pinParent interfaceGOs includes: peer) not])
         ifFalse: [component error: 'Private collection merge overwrote independent pin deletion'].
       (diff value: peerExpected value: capture value) isEmpty
         ifFalse: [component error: 'Private merged state differs from complete independent-only snapshot'].
       mergedPeerFields := projectionReader value: component value: (clone at: 'diagram').
       mergedPeerFields = peerFields ifFalse: [component error: 'Private merged public projection differs from independent-only graph'].
       restore value: peerChanges. peerCleanupPlan := lastPlan.
       ((clone at: 'verifyInitialGraph') value) ifFalse: [component error: 'Private peer cleanup failed full reference restoration'].
       (projectionReader value: component value: (clone at: 'diagram')) = beforeFields
         ifFalse: [component error: 'Private peer cleanup public baseline differs'].
       assertOriginal value.
       peerSummary removeKey: 'skip_reason'.
       peerSummary at: 'tested' put: true; at: 'peer_key' put: peerKey;
         at: 'peer_visible' put: (rows anySatisfy: [:row | (scopeName, '/', (row at: 'ref')) = peerKey]);
         at: 'same_parent_verified' put: true; at: 'incident_edges' put: 0;
         at: 'complete_independent_state_preserved' put: true; at: 'original_references_restored' put: true;
         at: 'ordered_plans' put: (peerMainPlan at: 'ordered_plans');
         at: 'main_inverse_mutations' put: (peerMainPlan at: 'mutation_count');
         at: 'peer_reset_mutations' put: (peerResetPlan at: 'mutation_count');
         at: 'peer_cleanup_mutations' put: (peerCleanupPlan at: 'mutation_count');
         at: 'probe_mutations' put: privateSetters - peerStart;
         at: 'after_primary_projection_json' put: primaryAgainFields;
         at: 'both_deleted_projection_json' put: bothFields;
         at: 'independent_only_projection_json' put: peerFields;
         at: 'merged_projection_json' put: mergedPeerFields
     ].
     summaries := changes collect: [:entry | Dictionary new at: 'kind' put: (entry at: 'kind');
       at: 'native_class' put: (entry at: 'object') class name asString;
       at: 'field_index' put: (entry at: 'index' ifAbsent: [nil]);
       at: 'field_name' put: ((entry at: 'kind') = 'fields'
         ifTrue: [(entry at: 'object') class allInstVarNames at: (entry at: 'index')] ifFalse: [nil]); yourself].
     record := Dictionary new at: 'scope' put: scopeName; at: 'pin_key' put: pinKey;
       at: 'edge_keys' put: edgeKeys; at: 'incident_edges' put: edges size;
       at: 'endpoint_dictionaries' put: pointSets size; at: 'field_changes' put: fieldChanges size;
       at: 'collection_changes' put: collectionChanges size; at: 'changes' put: summaries;
       at: 'ordered_plans' put: (mainPlan at: 'ordered_plans'); at: 'inverse_mutations' put: (mainPlan at: 'mutation_count');
       at: 'dependency_bindings' put: (mainPlan at: 'dependency_bindings');
       at: 'endpoint_dependency_keys' put: (mainPlan at: 'endpoint_dependency_keys');
       at: 'peer_merge' put: peerSummary;
       at: 'prepared_conflict_negatives' put: preparedNegatives;
       at: 'dependency_conflict_negatives' put: dependencyNegatives;
       at: 'conflict_negatives' put: negatives; at: 'independent_field_preserved' put: true;
       at: 'independent_node_key' put: independentKey; at: 'independent_x_before' put: independentBefore;
       at: 'independent_x_after' put: independentAfter; at: 'preserved_projection_json' put: preservedFields;
       at: 'original_references_restored' put: true; at: 'original_unchanged' put: true;
       at: 'before_projection_json' put: beforeFields; at: 'deleted_projection_json' put: deletedFields;
       at: 'restored_projection_json' put: restoredFields; yourself.
     cases add: record.
     mode = 'faults' ifTrue: [record at: 'fault_cases' put: faultCases;
       at: 'fault_execution_primitives' put: faultExecutions; at: 'fault_recovery_cells' put: faultRecoveries;
       at: 'current_projection_json' put: faultProjection; at: 'current_restored_projection_json' put: faultRestoredProjection]
   ]
 ].
 cloneSummary := clone copy.
 #('root' 'memo' 'nativeByKey' 'originalCheckpoint' 'diagram' 'verifyInitialGraph' 'verifyCorrespondence')
   do: [:name | cloneSummary removeKey: name].
 result := Dictionary new at: 'profile' put: (mode = 'faults' ifTrue: ['native_private_graph_splice_v6'] ifFalse: ['native_private_graph_splice_v4']); at: 'clone' put: cloneSummary;
   at: 'case_count' put: cases size; at: 'cases' put: cases; at: 'private_forward_restore_calls' put: privateSetters;
   at: 'model_setters_called' put: 0; at: 'model_store_calls' put: 0; at: 'write_authorized' put: false;
   at: 'clone_kept_private' put: true; at: 'production_inverse_available' put: false; yourself.
 out := WriteStream on: String new.
 encode := [:value |
   value isNil ifTrue: [out nextPutAll: 'null'] ifFalse: [
   value isString ifTrue: [out nextPutAll: '{"$s":['. value asCebraString doWithIndex: [:byte :index |
     index > 1 ifTrue: [out nextPut: $,]. out nextPutAll: byte printString]. out nextPutAll: ']}'] ifFalse: [
   ((value == true or: [value == false]) or: [value isInteger]) ifTrue: [out nextPutAll: value printString] ifFalse: [
   (value isKindOf: Dictionary) ifTrue: [out nextPutAll: '{"$d":['.
     value keys asSortedCollection doWithIndex: [:key :index | index > 1 ifTrue: [out nextPut: $,].
       out nextPut: $[. encode value: key. out nextPut: $,. encode value: (value at: key). out nextPut: $]]. out nextPutAll: ']}']
     ifFalse: [value isCollection ifFalse: [component error: 'Unsupported private graph splice summary field'].
       out nextPut: $[. value doWithIndex: [:entry :index | index > 1 ifTrue: [out nextPut: $,]. encode value: entry]. out nextPut: $]]]]].
   out position > 16777216 ifTrue: [component error: 'Private graph splice summary byte bound exceeded']
 ]. encode value: result. out contents
 ] ifFail: [:error | 'BDE_GRAPH_SPLICE_ERROR: ', error messageText]
]]]
