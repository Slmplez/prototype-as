[:cloneProbe :planReader | [:executionReader :projectionReader | [:wireFactory | [:component :checkpoint :token |
 component handleExceptionsIn: [
 | clone memo owned scope rows pinRow pinKey originalPin pin parent edges pointSets extraOwned beforeReader before after changes plan executor independentCandidates independentPoint beforeProjection result collectionClass bindingToken target key replacement points excludedPoints |
 bindingToken := token. collectionClass := 'OrderedCollection'.
 (token isKindOf: Array) ifTrue: [
   (token size = 2 and: [(token allSatisfy: [:entry | entry isString]) and: [
     #('Dictionary' 'Set' 'Array') includes: token last]])
       ifFalse: [component error: 'Exact fixed private collection study required'].
   bindingToken := token first. collectionClass := token last
 ].
 excludedPoints := IdentitySet new.
 clone := cloneProbe value: component value: 'material_with_projection' value: checkpoint.
 (clone isKindOf: Dictionary) ifFalse: [component error: clone].
 memo := clone at: 'memo'. owned := IdentitySet new. owned addAll: memo values.
 scope := (checkpoint at: 'scopes') detect: [:entry |
   (entry at: 'entries') anySatisfy: [:row | (row at: 'kind') = 'edge']]
   ifNone: [component error: 'Private remote study requires an actual connected scope'].
 rows := scope at: 'entries'.
 pinRow := rows detect: [:row | (row at: 'kind') = 'pin' and: [
   rows anySatisfy: [:edge | (edge at: 'kind') = 'edge' and: [
     (edge at: 'source') = (row at: 'ref') or: [(edge at: 'target') = (row at: 'ref')]]]]].
 pinKey := (scope at: 'diagram'), '/', (pinRow at: 'ref').
 originalPin := (checkpoint at: 'nativeByKey') at: pinKey.
 pin := (clone at: 'nativeByKey') at: pinKey. parent := memo at: originalPin manager.
 ((owned includes: parent interfaceGOs) and: [pin manager == parent and: [
   (parent interfaceGOs select: [:entry | entry == pin]) size = 1]])
     ifFalse: [component error: 'Private remote pin membership changed'].
 edges := (rows select: [:row | (row at: 'kind') = 'edge' and: [
   (row at: 'source') = (pinRow at: 'ref') or: [(row at: 'target') = (pinRow at: 'ref')]]])
   collect: [:row | (clone at: 'nativeByKey') at: (scope at: 'diagram'), '/', (row at: 'ref')].
 plan := planReader value: component value: clone value: OrderedCollection new.
 (plan isKindOf: Dictionary) ifFalse: [component error: plan].
 beforeReader := executionReader value: component value: clone value: plan.
 (beforeReader isKindOf: Dictionary) ifFalse: [component error: beforeReader].
 beforeProjection := clone at: 'original_projection_json'.
 (beforeProjection startsWith: 'BDE_') ifTrue: [component error: beforeProjection].
 before := (beforeReader at: 'captureCheckpoint') value.
 pointSets := IdentitySet new.
 edges do: [:edge |
   ((owned includes: edge manager) and: [(owned includes: edge manager children) and: [
     (edge manager children select: [:entry | entry == edge]) size = 1]])
     ifFalse: [component error: 'Private remote edge membership changed'].
   edge connectionPoints size = 2 ifFalse: [component error: 'Exact private remote endpoints required'].
   edge connectionPoints do: [:point |
     ((owned includes: point) and: [point class = RBConnectionPointBranch and: [
       (owned includes: point connections) and: [(point connections includesKey: edge) and: [
         (point connections keys anySatisfy: [:other | (owned includes: other) not]) not]]]])
       ifFalse: [component error: 'Private remote endpoint dictionary closure changed'].
     pointSets add: point]
 ].
 collectionClass = 'OrderedCollection' ifTrue: [edges do: [:edge |
   edge connectionPoints do: [:point | point removeConnection: edge].
   edge manager children remove: edge. edge manager: nil].
 parent interfaceGOs remove: pin. pin manager: nil
 ] ifFalse: [
   collectionClass = 'Array' ifTrue: [
     target := edges first connectionPoints.
     ((owned includes: target) and: [target class = Array and: [
       target size = 2 and: [target first ~~ target last]]])
         ifFalse: [component error: 'Actual private endpoint Array required'].
     replacement := target first. target at: 1 put: target last. target at: 2 put: replacement
   ] ifFalse: [collectionClass = 'Dictionary' ifTrue: [
     target := pointSets asArray first connections.
     ((owned includes: target) and: [target class = Dictionary and: [target isEmpty not]])
       ifFalse: [component error: 'Actual private connection Dictionary required'].
     key := target keys asArray first.
     replacement := owned detect: [:object | object class = OrderedCollection and: [object ~~ (target at: key)]]
       ifNone: [component error: 'Retained private dictionary replacement unavailable'].
     target at: key put: replacement
   ] ifFalse: [
     target := pointSets asArray first branchingPoints.
     ((owned includes: target) and: [target class = Set and: [target isEmpty]])
       ifFalse: [component error: 'Actual empty private branching Set required'].
     points := owned select: [:object | object class = Point].
     points size >= 2 ifFalse: [component error: 'Retained private branching points unavailable'].
     key := points asArray first.
     replacement := points detect: [:point | point ~= key]
       ifNone: [component error: 'Distinct retained private branching points unavailable'].
     target add: key; add: replacement. excludedPoints add: key; add: replacement
   ]]
 ].
 extraOwned := IdentitySet new.
 pointSets do: [:point | | branches |
   branches := point branchingPoints.
   (owned includes: branches) ifFalse: [
     (branches class = Set and: [(memo includesKey: branches) not])
       ifFalse: [component error: 'Unexpected generated private branching collection'].
     extraOwned add: branches.
     branches do: [:position | (owned includes: position) ifFalse: [
       ((position class = Point) and: [(memo includesKey: position) not and: [
         position x isInteger and: [position y isInteger]]])
         ifFalse: [component error: 'Unexpected generated private branching member'].
       extraOwned add: position]]]
 ].
 clone at: 'executionOwnedExtras' put: extraOwned asArray.
 after := (beforeReader at: 'captureCheckpoint') value.
 changes := (beforeReader at: 'diffCheckpoints') value: before value: after.
 changes isEmpty ifTrue: [component error: 'Private remote setup has no actual changes'].
 plan := planReader value: component value: clone value: changes.
 (plan isKindOf: Dictionary) ifFalse: [component error: plan].
 independentCandidates := (checkpoint at: 'nodeBasics') select: [:pair | | basic point |
   basic := memo at: pair last. point := basic getPosition.
   (basic isKindOf: SGBlockGO) and: [(owned includes: point) and: [point class = Point and: [point x isInteger and: [
     (excludedPoints includes: point) not and: [(changes anySatisfy: [:entry | (entry at: 'object') == point]) not]]]]]].
 independentCandidates isEmpty ifTrue: [component error: 'Independent private visible field required'].
 independentPoint := (memo at: independentCandidates first last) getPosition.
 executor := executionReader value: component value: clone value: plan.
 (executor isKindOf: Dictionary) ifFalse: [component error: executor].
 (((executor at: 'status') value) at: 'primitive_count') >= (collectionClass = 'OrderedCollection' ifTrue: [3] ifFalse: [1])
   ifFalse: [component error: 'Private remote study has no changed primitive'].
 extraOwned do: [:object | before at: object put: ((executor at: 'currentCheckpoint') at: object)].
 ((checkpoint at: 'verifyCurrent') value) ifFalse: [component error: 'Original graph changed during remote preparation'].
 result := Dictionary new at: 'profile' put: 'native_private_remote_material_v1';
   at: 'checkpoint' put: checkpoint; at: 'clone' put: clone; at: 'executor' put: executor;
   at: 'independentPoint' put: independentPoint; at: 'independentX' put: independentPoint x;
   at: 'pin_key' put: pinKey; at: 'incident_edges' put: edges size;
   at: 'original_projection_json' put: beforeProjection;
   at: 'originalFieldCheckpoint' put: before;
   at: 'additionalObjects' put: extraOwned asArray;
   at: 'write_authorized' put: false; at: 'model_setters_called' put: 0; yourself.
 wireFactory value: component value: result value: bindingToken
 ] ifFail: [:error | 'BDE_PRIVATE_REMOTE_PREPARE_ERROR: ', error messageText]
]]]]
