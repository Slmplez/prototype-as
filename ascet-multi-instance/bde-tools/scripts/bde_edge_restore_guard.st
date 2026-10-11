[:component :record :mode |
 component handleExceptionsIn: [
 | snapshots edges parent sameOrder removed |
 parent := record at: 'orderParent'.
 sameOrder := [:left :right | left size = right size and: [
   ((1 to: left size) anySatisfy: [:i | (left at: i) ~~ (right at: i)]) not]].
 removed := (record at: 'operation') = 'disconnect_data'
   ifTrue: [Array with: (record at: 'retained')] ifFalse: [record at: 'retainedSet'].
 mode = 'capture' ifTrue: [
   edges := record at: 'deletedEdgeAPIs'. edges size > 4096 ifTrue: [component error: 'Edge dependency bound reached'].
   snapshots := edges collect: [:edge | | pins endpoints native |
     native := edge diagramElement. native manager == parent ifFalse: [component error: 'Original edge parent changed'].
     endpoints := native connectionPoints asArray copy.
     endpoints size = 2 ifFalse: [component error: 'Exactly two original endpoints required'].
     pins := (Array with: edge getOutputPin with: edge getInputPin) collect: [:api | | pin owner connector point members ownerField registration |
       pin := api diagramElement. owner := api getBlockDiagramElement.
       connector := pin getExternalConnectorGO. point := connector connectionPoint.
       (point notNil and: [endpoints anySatisfy: [:value | value == point]])
         ifFalse: [component error: 'Original pin endpoint differs from retained edge'].
       members := pin manager interfaceGOs.
       (members select: [:value | value == pin]) size = 1 ifFalse: [component error: 'Original pin parent membership changed'].
       ownerField := point class allInstVarNames indexOf: 'owner'.
       ownerField = 0 ifTrue: [component error: 'Connection point owner field unavailable'].
       registration := point connections at: native ifAbsent: [component error: 'Original endpoint registration unavailable'].
       registration class = OrderedCollection ifFalse: [component error: 'Unsupported endpoint registration collection'].
       Dictionary new at: 'api' put: api; at: 'pin' put: pin; at: 'ownerAPI' put: owner;
         at: 'owner' put: owner diagramElement; at: 'basic' put: owner diagramElement basicGraphObject;
         at: 'manager' put: pin manager; at: 'members' put: members;
         at: 'connector' put: connector; at: 'connectorManager' put: connector manager;
         at: 'point' put: point; at: 'pointOwnerIndex' put: ownerField;
         at: 'pointPosition' put: point position copy;
         at: 'pointOwner' put: (point instVarAt: ownerField); at: 'connections' put: point connections;
         at: 'registration' put: registration; at: 'registrationMembers' put: registration asArray copy;
         at: 'input' put: api isInputPin; at: 'output' put: api isOutputPin; yourself
     ].
     Dictionary new at: 'api' put: edge; at: 'edge' put: native;
       at: 'points' put: endpoints; at: 'pins' put: pins; yourself
   ].
   record at: 'edgeDependencies' put: snapshots
 ] ifFalse: [
   (#('attached' 'detached') includes: mode) ifFalse: [component error: 'Unknown edge dependency guard mode'].
   snapshots := record at: 'edgeDependencies' ifAbsent: [component error: 'Original edge dependency material unavailable'].
   snapshots do: [:row | | edge detached |
     edge := row at: 'edge'. detached := mode = 'detached'.
     ((row at: 'api') diagramElement == edge and: [
       (sameOrder value: edge connectionPoints value: (row at: 'points')) and: [
       edge manager == parent and: [
         (parent children anySatisfy: [:member | member == edge]) == detached not]]])
       ifFalse: [component error: 'Retained edge or endpoint tuple changed'].
     (row at: 'pins') do: [:saved | | api pin owner point connector ownerRemoved |
       api := saved at: 'api'. pin := saved at: 'pin'. owner := saved at: 'owner'.
       point := saved at: 'point'. connector := saved at: 'connector'.
       ownerRemoved := detached and: [removed anySatisfy: [:item | item first == owner]].
       ((api diagramElement == pin and: [api getBlockDiagramElement diagramElement == owner]) and: [
         (saved at: 'ownerAPI') diagramElement == owner and: [owner basicGraphObject == (saved at: 'basic')]])
         ifFalse: [component error: 'Original pin or owner binding changed'].
       (owner manager == parent and: [
         (parent children anySatisfy: [:member | member == owner]) == ownerRemoved not])
         ifFalse: [component error: 'Original endpoint owner is outside the current scope'].
       (pin manager == (saved at: 'manager') and: [pin manager interfaceGOs == (saved at: 'members') and: [
         ((saved at: 'members') select: [:member | member == pin]) size = 1]])
         ifFalse: [component error: 'Original pin parent or port membership changed'].
       ((api isInputPin == (saved at: 'input') and: [api isOutputPin == (saved at: 'output')]) and: [
         pin getExternalConnectorGO == connector and: [connector manager == (saved at: 'connectorManager') and: [
         connector connectionPoint == point and: [(point instVarAt: (saved at: 'pointOwnerIndex')) == (saved at: 'pointOwner') and: [
         point connections == (saved at: 'connections')]]]]])
         ifFalse: [component error: 'Original endpoint kind, connector or connection map binding changed'].
       ((saved includesKey: 'pointPosition') and: [point position = (saved at: 'pointPosition')])
         ifFalse: [component error: 'Original endpoint geometry changed'].
       detached ifTrue: [
         (saved includesKey: 'registration') ifFalse: [component error: 'Original endpoint registration material unavailable'].
         (sameOrder value: (saved at: 'registration') value: (saved at: 'registrationMembers'))
           ifFalse: [component error: 'Detached original endpoint registration contents changed'].
         (point connections includesKey: edge) ifTrue: [component error: 'Deleted edge is still registered'].
         (saved at: 'input') ifTrue: [point connections isEmpty ifFalse: [component error: 'Original input is occupied']]
       ] ifFalse: [
         ((point connections includesKey: edge) and: [(point connections at: edge) == (saved at: 'registration')])
           ifFalse: [component error: 'Original edge endpoint registration identity changed']].
       point connections keys do: [:currentEdge |
         ((currentEdge isKindOf: RBConnectionWrapperGO) and: [currentEdge manager == parent and: [
           (parent children anySatisfy: [:member | member == currentEdge]) and: [
           (currentEdge connectionPoints anySatisfy: [:currentPoint | currentPoint == point]) and: [
           currentEdge connectionPoints size = 2 and: [currentEdge connectionPoints allSatisfy: [:currentPoint |
             currentPoint notNil and: [currentPoint connections includesKey: currentEdge]]]]]]])
           ifFalse: [component error: 'Current incident edge has an invalid endpoint or owner']]
     ]
   ]
 ]. true
 ] ifFail: [:error | 'BDE_EDGE_RESTORE_ERROR: ', error messageText]
]
