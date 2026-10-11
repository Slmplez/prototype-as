[:frame |
 | definition component command preconditionConflict registry root scope diagram mode operation token args targets checkReturn retained restore swap value sameOrder creators setRoute oidHex findModel sameMap enumReferences topologyCurrentReader topologyLocalPlanner topologyLocalPlan |
 definition := frame at: 'definition' ifAbsent: [nil].
 component := frame at: 'component' ifAbsent: [nil].
 command := frame at: 'command' ifAbsent: [nil].
 preconditionConflict := frame at: 'preconditionConflict' ifAbsent: [nil].
 registry := frame at: 'registry' ifAbsent: [nil].
 root := frame at: 'root' ifAbsent: [nil].
 scope := frame at: 'scope' ifAbsent: [nil].
 diagram := frame at: 'diagram' ifAbsent: [nil].
 mode := frame at: 'mode' ifAbsent: [nil].
 operation := frame at: 'operation' ifAbsent: [nil].
 token := frame at: 'token' ifAbsent: [nil].
 args := frame at: 'args' ifAbsent: [nil].
 targets := frame at: 'targets' ifAbsent: [nil].
 checkReturn := frame at: 'checkReturn' ifAbsent: [nil].
 retained := frame at: 'retained' ifAbsent: [nil].
 restore := frame at: 'restore' ifAbsent: [nil].
 swap := frame at: 'swap' ifAbsent: [nil].
 value := frame at: 'value' ifAbsent: [nil].
 sameOrder := frame at: 'sameOrder' ifAbsent: [nil].
 creators := frame at: 'creators' ifAbsent: [nil].
 setRoute := frame at: 'setRoute' ifAbsent: [nil].
 oidHex := frame at: 'oidHex' ifAbsent: [nil].
 findModel := frame at: 'findModel' ifAbsent: [nil].
 sameMap := frame at: 'sameMap' ifAbsent: [nil].
 enumReferences := frame at: 'enumReferences' ifAbsent: [nil].
 topologyCurrentReader := frame at: 'topologyCurrentReader' ifAbsent: [nil].
 topologyLocalPlanner := frame at: 'topologyLocalPlanner' ifAbsent: [nil].
 topologyLocalPlan := frame at: 'topologyLocalPlan' ifAbsent: [nil].
 [
 mode := command at: 2. operation := command at: 3. token := command at: 4.
 topologyCurrentReader := nil.
 topologyLocalPlanner := nil. topologyLocalPlan := nil.
 (definition isKindOf: Dictionary) ifTrue: [
   ((#('revert' 'validate_revert') includes: mode) and: [
     (definition at: 'profile' ifAbsent: [nil]) = 'ordinary_topology_current_context_v1'])
     ifFalse: [component error: 'Fixed topology CURRENT context required'].
   topologyCurrentReader := definition at: 'currentReader'.
   topologyLocalPlanner := definition at: 'localTopologyPlanner' ifAbsent: [nil].
   (topologyLocalPlanner notNil and: [topologyLocalPlanner class name asString ~= 'BlockContextTemplate'])
     ifTrue: [component error: 'Fixed local topology planner unavailable'].
   topologyCurrentReader class name asString = 'BlockContextTemplate'
     ifFalse: [component error: 'Fixed topology CURRENT reader unavailable'].
   definition := definition at: 'originalDefinition'
 ].
 targets := OrderedCollection new. args := OrderedCollection new.
 1 to: (command at: 5) asNumber do: [:i | targets add: (command at: i + 5)].
 (6 + targets size) to: command size do: [:i | args add: (command at: i)].
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_']) ifFalse: [component error: 'Sandbox only'].
 registry := Smalltalk at: #DogeBDEStructureEditsV3 ifAbsentPut: [Dictionary new].
 root := Smalltalk at: #DogeBDEStructureIdentityV2.
 scope := component getOID, '/', ((command at: 1) subStrings: $/) first. diagram := (root at: scope) at: 'diagram'.
 ((root at: scope) includesKey: 'allocatorRetirementPending')
   ifTrue: [preconditionConflict := true. component error: 'Allocator scope retirement pending; ordinary writes blocked'].
 (((command at: 1) includes: $/) and: [#('prepare' 'validate') includes: mode]) ifTrue: [
   (#('connect_data' 'disconnect_data' 'rewire_data' 'create_block' 'delete_node' 'set_literal' 'set_comment' 'move_node' 'set_edge_route' 'create_hierarchy_port' 'delete_hierarchy_port') includes: operation) ifFalse: [component error: 'Child scope operation unavailable']
 ].
 checkReturn := [:v | (v isKindOf: EtasAPIError) ifTrue: [component error: ('Native API error ', v errorCode printString, ' ', v errorMessage)]. v == false ifTrue: [component error: 'Native operation returned false']. v].
 creators := Dictionary new.
 #(('variable' #addVariable:) ('parameter' #addParameter:) ('constant' #addConstant:) ('resource' #addResource:) ('implementation_cast' #addImplementationCast:) ('array' #addArray:) ('matrix' #addMatrix:)
   ('distribution' #addDistribution:) ('oned_table' #addOneDTable:) ('twod_table' #addTwoDTable:)
   ('oned_table_fixed' #addOneDTableFixed:) ('twod_table_fixed' #addTwoDTableFixed:)
   ('receive_message' #addReceiveMessage:) ('send_message' #addSendMessage:) ('send_receive_message' #addSendReceiveMessage:))
   do: [:pair | creators at: pair first put: (pair at: 2)].
 sameOrder := [:a :b | a size = b size and: [((1 to: a size) anySatisfy: [:i | (a at: i) ~~ (b at: i)]) not]].
 oidHex := [:oid | | s digits | s := WriteStream on: String new. digits := '0123456789abcdef'.
   oid do: [:b | s nextPut: (digits at: (b // 16) + 1); nextPut: (digits at: (b \\ 16) + 1)]. s contents].
 findModel := [:ref | | found |
   found := component getAllVariables select: [:m | ('m_', (oidHex value: m element xmlOID)) = ref].
   found size = 1 ifFalse: [component error: 'Formula model missing or ambiguous']. found first
 ].
 sameMap := [:a :b | a size = b size and: [(a keys anySatisfy: [:k | ((b includesKey: k) and: [(a at: k) = (b at: k)]) not]) not]].
 enumReferences := [:enumeration | | raw refs |
   raw := enumeration item dbObject.
   (raw isKindOf: DBProxy) ifTrue: [
     refs := raw readReferences.
     refs isError ifTrue: [component error: 'Enum reference read failed'].
     refs isReferencedBys asSet copy
   ] ifFalse: [
     (raw isKindOf: DBXmlObject) ifFalse: [component error: 'Unsupported enum reference backend'].
     raw references referencedBy asSet copy
   ]
 ].
 setRoute := [:g :corners :endpoints |
   endpoints size = 2 ifFalse: [component error: 'Route requires exactly two link points'].
   g initialize.
   g rememberLinkPoint: endpoints first copy.
   corners do: [:p | g rememberBuildingPoint: p copy].
   g rememberLinkPoint: endpoints last copy
 ].
 retained := [:api :connection |
   | g p ix |
   g := api diagramElement. p := g manager. ix := p children indexOf: g.
   ix = 0 ifTrue: [component error: 'Retained target absent from parent'].
   Array with: g with: p with: ix with: (connection ifTrue: [g connectionPoints copy] ifFalse: [#()])
 ].
 restore := [:saved |
   | g p ix |
   g := saved at: 1. p := saved at: 2.
   ix := (frame at: 'restorePositions') isNil ifTrue: [saved at: 3] ifFalse: [(frame at: 'restorePositions') at: g].
   (p children includes: g) ifTrue: [component error: 'Restore target already exists'].
   ix > (p children size + 1) ifTrue: [component error: 'Restore ordering conflict'].
   p addGO: g display: false.
   p children remove: g. p children add: g beforeIndex: ix.
   (saved at: 4) do: [:cp | cp notNil ifTrue: [
     ((frame at: 'record') includesKey: 'edgeDependencies') ifTrue: [ | edgeRow pinRow |
       edgeRow := ((frame at: 'record') at: 'edgeDependencies') detect: [:row | (row at: 'edge') == g].
       pinRow := (edgeRow at: 'pins') detect: [:row | (row at: 'point') == cp].
       cp connections at: g put: (pinRow at: 'registration')
     ] ifFalse: [cp addConnection: g]]]
 ].
 swap := [:edge :old :new |
   | g a b ix |
   g := edge diagramElement. a := old diagramElement getExternalConnectorGO. b := new diagramElement getExternalConnectorGO.
   a class = b class ifFalse: [component error: 'Connector kind mismatch'].
   ix := g connectionPoints indexOf: a connectionPoint.
   ix = 0 ifTrue: [component error: 'Source connector changed'].
   g removeConnectionPoint: ix. g addConnectionPoint: b connectionPoint. g oldConnectionPoint: nil.
   b connectionPoints. g basicGraphObject linkPoint: ix moveTo: b connectionPoint position
 ].

 ] ensure: [
 frame at: 'definition' put: definition.
 frame at: 'component' put: component.
 frame at: 'command' put: command.
 frame at: 'preconditionConflict' put: preconditionConflict.
 frame at: 'registry' put: registry.
 frame at: 'root' put: root.
 frame at: 'scope' put: scope.
 frame at: 'diagram' put: diagram.
 frame at: 'mode' put: mode.
 frame at: 'operation' put: operation.
 frame at: 'token' put: token.
 frame at: 'args' put: args.
 frame at: 'targets' put: targets.
 frame at: 'checkReturn' put: checkReturn.
 frame at: 'retained' put: retained.
 frame at: 'restore' put: restore.
 frame at: 'swap' put: swap.
 frame at: 'value' put: value.
 frame at: 'sameOrder' put: sameOrder.
 frame at: 'creators' put: creators.
 frame at: 'setRoute' put: setRoute.
 frame at: 'oidHex' put: oidHex.
 frame at: 'findModel' put: findModel.
 frame at: 'sameMap' put: sameMap.
 frame at: 'enumReferences' put: enumReferences.
 frame at: 'topologyCurrentReader' put: topologyCurrentReader.
 frame at: 'topologyLocalPlanner' put: topologyLocalPlanner.
 frame at: 'topologyLocalPlan' put: topologyLocalPlan.
 ]. frame
]
