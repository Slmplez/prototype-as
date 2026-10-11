"Transfer the actual completed topology patch to its durable inverse owner.
 This is metadata ownership, not a topology redo implementation."
[:component :record :context |
 component handleExceptionsIn: [
 | mode previous resultId expectedState completed root diagram parent collection native source
   sameOrder beforeState afterState owned answer actualFull actualScoped |
 (context isArray and: [context size = 4])
   ifFalse: [component error: 'Exact topology head ownership context required'].
 mode := context first. previous := context at: 2. resultId := context at: 3. expectedState := context last.
 (#('validate' 'commit') includes: mode) ifFalse: [component error: 'Unknown topology ownership mode'].
 ((#('applied' 'reverted') includes: expectedState) and: [previous isString and: [
   resultId isString and: [previous notEmpty and: [resultId notEmpty and: [
   previous ~= resultId and: [resultId ~= (record at: 'orderToken')]]]]]])
   ifFalse: [component error: 'Distinct exact topology history owners required'].
 ((record at: 'topologyLocalProfile' ifAbsent: [nil]) = 'ordinary_topology_local_inverse_v1' and: [
   (record at: 'owner') == component item and: [(record at: 'component') = component getOID and: [
   (record at: 'diagramName') = 'Main' and: [#('disconnect_data' 'delete_node') includes: (record at: 'operation')]]]])
   ifFalse: [component error: 'Retained ordinary Main topology identity required'].
 ((record at: 'topologyHeadId') = previous and: [(record at: 'state') = expectedState])
   ifFalse: [component error: 'Topology head owner or terminal state differs'].
 completed := record at: 'topologyExecutedHead' ifAbsent: [component error: 'Actual topology execution head unavailable'].
 beforeState := completed at: 'beforeState'. afterState := completed at: 'afterState'.
 ((completed at: 'profile' ifAbsent: [nil]) = 'actual_topology_execution_head_v1' and: [
   (completed at: 'previousHead') = previous and: [afterState = expectedState and: [
   (completed at: 'sequence') = (record at: 'topologyExecutionSerial') and: [
   ((completed at: 'result') isNil ifTrue: [previous = (record at: 'orderToken') and: [
     beforeState = 'applied' and: [afterState = 'reverted']]] ifFalse: [
     (completed at: 'result') = resultId and: [beforeState ~= afterState and: [
       #('applied' 'reverted') includes: beforeState]]])]]]])
   ifFalse: [component error: 'Topology handoff lacks its actual execution lineage'].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 actualFull := (record at: 'materialObservationReader') value: component value: 'Main' value: #().
 (actualFull startsWith: 'BDE_STRUCTURE_ERROR:') ifTrue: [component error: actualFull].
 actualScoped := (record at: 'materialObservationReader') value: component value: 'Main'
   value: (record at: 'lastObservedTargets' ifAbsent: [record at: 'targets']).
 actualScoped = (record at: 'lastObserved') ifFalse: [component error: 'Actual scoped topology terminal changed during handoff'].
 diagram := record at: 'diagram'. parent := completed at: 'parent'. collection := completed at: 'collection'.
 ((root at: 'owner') == component item and: [(root at: 'diagram') == diagram and: [
   (root at: 'specification') == diagram specification and: [parent == (record at: 'orderParent') and: [
   parent == diagram topGraphicalHierarchy contents and: [parent children == collection and: [
   collection == (record at: 'orderCollection')]]]]]])
   ifFalse: [component error: 'Actual topology parent/collection/diagram expired'].
 sameOrder := [:left :right | left size = right size and: [
   (1 to: left size) allSatisfy: [:index | (left at: index) == (right at: index)]]].
 ((sameOrder value: collection value: (completed at: 'afterParentOrder')) and: [
   sameOrder value: parent sortedChildren value: (completed at: 'afterDrawingOrder')])
   ifFalse: [component error: 'Actual topology terminal physical/drawing order changed'].
 (completed includesKey: 'afterParentEvidence') ifTrue: [| parentEvidence drawingEvidence |
   parentEvidence := (record at: 'orderEvidenceReader') value: record value: collection asArray copy.
   drawingEvidence := (record at: 'drawingOrderReader') value: component value: record value: parent sortedChildren asArray copy.
   drawingEvidence := drawingEvidence value: true.
   (((root at: 'encodeObservation') value: (parentEvidence at: 'value')) =
       ((root at: 'encodeObservation') value: (completed at: 'afterParentEvidence')) and: [
     ((root at: 'encodeObservation') value: (drawingEvidence at: 'value')) =
       ((root at: 'encodeObservation') value: (completed at: 'afterDrawingEvidence'))])
     ifFalse: [component error: 'Actual topology persisted physical/drawing descriptor changed']
 ].
 native := record at: 'topologyNativeBefore'. source := completed at: 'afterSource'.
 ((source at: 'sourceRoot') == diagram specification specSourceInternalOrNil and: [
   ((native at: 'snapshots') keys allSatisfy: [:object |
     ((completed at: 'beforeNative') includesKey: object) and: [(completed at: 'afterNative') includesKey: object]]) and: [
   ((native at: 'verifyImages') value: (completed at: 'afterNative')) and: [
   (source at: 'verifyImages') value: (source at: 'snapshots')]]])
   ifFalse: [component error: 'Complete actual topology native/source terminal differs'].
 (((root at: 'encodeObservation') value: (completed at: 'afterValues')) = actualFull)
   ifFalse: [component error: 'Actual topology typed terminal differs'].
 (((record at: 'edgeDependencyReader') value: component value: record
   value: (completed at: 'afterEndpointMode')) == true)
   ifFalse: [component error: 'Actual topology endpoint proof changed'].
 owned := completed copy at: 'owner' put: resultId; at: 'previousOwner' put: previous;
   at: 'ownershipProfile' put: 'actual_topology_owned_head_v1'; yourself.
 answer := Dictionary new at: 'profile' put: 'actual_topology_owned_head_v1';
   at: 'previous_owner' put: previous; at: 'owner' put: resultId;
   at: 'sequence' put: (completed at: 'sequence'); at: 'state' put: expectedState;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'committed' put: mode = 'commit'; at: 'managed_topology_enabled' put: false; yourself.
 mode = 'commit' ifTrue: [
   record at: 'topologyOwnedHead' put: owned; at: 'topologyHeadId' put: resultId;
     at: 'topologyLocalPreflight' put: Dictionary new].
 answer
 ] ifFail: [:error | 'BDE_TOPOLOGY_HEAD_HANDOFF_ERROR: ', error messageText]
]
