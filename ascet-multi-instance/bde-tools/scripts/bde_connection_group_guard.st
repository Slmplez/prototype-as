[:component :tokens :reader |
 component handleExceptionsIn: [
 | registry roots seen sameOrder |
 registry := Smalltalk at: #DogeBDEStructureEditsV3 ifAbsent: [Dictionary new].
 roots := Smalltalk at: #DogeBDEStructureIdentityV2 ifAbsent: [Dictionary new].
 (tokens size >= 1 and: [tokens size <= 16]) ifFalse: [component error: 'Bounded connection token group required'].
 seen := Set new.
 sameOrder := [:a :b | a size = b size and: [((1 to: a size) anySatisfy: [:i | (a at: i) ~~ (b at: i)]) not]].
 tokens do: [:token |
   | record diagram scope root created source target current scopeView |
   (seen includes: token) ifTrue: [component error: 'Duplicate connection token'].
   seen add: token. record := registry at: token ifAbsent: [component error: 'Connection recovery token unavailable'].
   ((record at: 'operation') = 'connect_data' and: [(record at: 'state') = 'applied'])
     ifFalse: [component error: 'Applied connection addition required'].
   ((record at: 'component') = component getOID and: [(record at: 'owner') == component item])
     ifFalse: [component error: 'Connection group owner changed'].
   current := reader value: component value: (record at: 'diagramName') value: #().
   (current startsWith: 'BDE_STRUCTURE_ERROR:') ifTrue: [component error: current].
   scope := component getOID, '/', ((record at: 'diagramName') subStrings: $/) first.
   root := roots at: scope. diagram := root at: 'diagram'. scopeView := root at: 'activeDiagram'.
   diagram == (record at: 'diagram') ifFalse: [component error: 'Connection group graphics source expired'].
   (sameOrder value: (root at: 'activeScopeChain') value: (record at: 'scopeChain'))
     ifFalse: [component error: 'Connection group hierarchy identity changed'].
   created := record at: 'created'. source := record at: 'source'. target := record at: 'target'.
   (scopeView getAllDiagramConnections anySatisfy: [:edge | edge diagramElement == created diagramElement])
     ifFalse: [component error: 'Created connection native identity missing'].
   (scopeView getAllDiagramElements anySatisfy: [:node | node getAllPins anySatisfy: [:pin | pin diagramElement == source diagramElement]])
     ifFalse: [component error: 'Connection source native identity missing'].
   (scopeView getAllDiagramElements anySatisfy: [:node | node getAllPins anySatisfy: [:pin | pin diagramElement == target diagramElement]])
     ifFalse: [component error: 'Connection target native identity missing'].
   ((created getOutputPin diagramElement == source diagramElement) and: [created getInputPin diagramElement == target diagramElement])
     ifFalse: [component error: 'Created connection raw endpoints changed']
 ]. 'connection_group_verified'
 ] ifFail: [:error | 'BDE_CONNECTION_GROUP_ERROR: ', error messageText]
]
