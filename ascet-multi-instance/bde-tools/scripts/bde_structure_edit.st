[:definition | [:component :command :reader |
 | stage mutationStarted preconditionConflict failureRecord |
 stage := 'guard'.
 mutationStarted := false.
 preconditionConflict := false.
 component handleExceptionsIn: [
 | registry root scope diagram scopeView record mode operation token args targets before result encoded checkReturn nodes edges pins findNode findPin findEdge source target newPin retained restore swap undo slot info value index incident savedSet sameOrder orderParent beforeOrder afterOrder removedObjects orderRequired blockKind model location created creators setRoute oidHex findModel sameMap enumReferences orderPlan restorePositions expectedOrder orderBeforeImage orderExpectedImage orderAfterImage orderReader graphicalCurrent graphicalPreflight graphicalActual currentValues inverseValues inverseExpected drawingReader drawingBeforeImage drawingExpectedImage drawingAfterImage expectedDrawingOrder drawingWitnessEncoded managed validation managedHead managedState managedResult fieldReplay fieldPatch fieldAnchors fieldDesired fieldNormalization fieldLocal topologyCurrentReader fieldLocalPlan topologyLocalPlanner topologyLocalPlan |
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
   ix := restorePositions isNil ifTrue: [saved at: 3] ifFalse: [restorePositions at: g].
   (p children includes: g) ifTrue: [component error: 'Restore target already exists'].
   ix > (p children size + 1) ifTrue: [component error: 'Restore ordering conflict'].
   p addGO: g display: false.
   p children remove: g. p children add: g beforeIndex: ix.
   (saved at: 4) do: [:cp | cp notNil ifTrue: [
     (record includesKey: 'edgeDependencies') ifTrue: [ | edgeRow pinRow |
       edgeRow := (record at: 'edgeDependencies') detect: [:row | (row at: 'edge') == g].
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
 (#('prepare' 'validate') includes: mode) ifTrue: [
   stage := mode.
   mode = 'prepare' ifTrue: [
     (registry includesKey: token) ifTrue: [component error: 'Native token already exists'].
     registry size >= 128 ifTrue: [component error: 'Recovery capacity reached']
   ].
   (#('set_literal' 'set_comment' 'move_node' 'set_edge_route' 'rewire_data') includes: operation) ifTrue: [
     ((definition isKindOf: Array) and: [definition size = 5 and: [
       definition allSatisfy: [:block | block class name asString = 'BlockContextTemplate']]])
       ifFalse: [component error: 'Fixed native field reader/patch/status/source bundle required'].
     graphicalCurrent := definition first value: component value: (Array with: diagram topGraphicalHierarchy).
     (graphicalCurrent isKindOf: Dictionary) ifFalse: [component error: graphicalCurrent asString].
     (graphicalCurrent at: 'verify') value ifFalse: [component error: 'Original native field material drifted'].
     info := ((root at: scope) at: 'copySource') value: diagram specification specSourceInternalOrNil
   ].
   (#('disconnect_data' 'delete_node') includes: operation) ifTrue: [
     ((definition isArray) and: [definition size = 5 and: [
       definition allSatisfy: [:block | block class name asString = 'BlockContextTemplate']]])
       ifFalse: [component error: 'Fixed topology parent/endpoint/native/value/drawing bundle required'].
     graphicalCurrent := (definition at: 3) value: component value: (Array with: diagram topGraphicalHierarchy).
     (graphicalCurrent isKindOf: Dictionary) ifFalse: [component error: graphicalCurrent asString].
     (graphicalCurrent at: 'verify') value ifFalse: [component error: 'Original topology material drifted']
   ].
   before := reader value: component value: (command at: 1) value: targets.
   (before startsWith: 'BDE_STRUCTURE_ERROR:') ifTrue: [component error: before].
   diagram := (root at: scope) at: 'diagram'.
   scopeView := (root at: scope) at: 'activeDiagram'.
   nodes := diagram isStateMachineDiagram ifTrue: [diagram getAllStates] ifFalse: [scopeView getAllDiagramElements, scopeView getAllDiagramComments].
   edges := diagram isStateMachineDiagram ifTrue: [diagram getAllTransitions] ifFalse: [scopeView getAllDiagramConnections].
   findNode := [:ref | | found | found := nodes select: [:n | ('n', n diagramElement identifier printString) = ref]. found size = 1 ifFalse: [component error: 'Node missing or ambiguous']. found first].
   pins := Dictionary new.
   diagram isStateMachineDiagram ifFalse: [nodes do: [:n | n isBlockDiagramComment ifFalse: [n getAllPins do: [:p | pins at: ('p', p diagramElement identifier printString) put: p]]]].
   findPin := [:ref | pins at: ref ifAbsent: [component error: 'Pin missing']].
   findEdge := [:ref | | found |
     found := diagram isStateMachineDiagram
       ifTrue: [edges select: [:e | ('t', e diagramElement identifier printString) = ref]]
       ifFalse: [edges select: [:e | (((root at: scope) at: 'ids') at: e diagramElement ifAbsent: ['']) = ref]].
     found size = 1 ifFalse: [component error: 'Edge missing or ambiguous']. found first
   ].
   record := Dictionary new at: 'component' put: component getOID; at: 'owner' put: component item; at: 'diagramName' put: (command at: 1);
     at: 'diagram' put: diagram; at: 'operation' put: operation; at: 'args' put: args;
     at: 'targets' put: targets; at: 'before' put: before; at: 'state' put: 'prepared'; yourself.
   record at: 'scopeChain' put: ((root at: scope) at: 'activeScopeChain') copy.
   record at: 'materialObservationReader' put: reader.
   (#('set_literal' 'set_comment' 'move_node' 'set_edge_route' 'rewire_data') includes: operation) ifTrue: [record at: 'fieldNativeBefore' put: graphicalCurrent;
     at: 'fieldNativeSourceBefore' put: info; at: 'fieldNativePatchFactory' put: (definition at: 2);
     at: 'fieldStatusReader' put: (definition at: 3);
     at: 'fieldSourceRestoreFactory' put: (definition at: 4); at: 'fieldSourceSame' put: definition last].
   (graphicalCurrent notNil and: [graphicalCurrent includesKey: 'sourceMaterial']) ifTrue: [
     record at: 'fieldSourceMaterialBefore' put: (graphicalCurrent at: 'sourceMaterial');
       at: 'fieldSourceMaterialReader' put: (graphicalCurrent at: 'sourceMaterialReader')].
   (graphicalCurrent notNil and: [graphicalCurrent includesKey: 'localInversePlanner']) ifTrue: [
     record at: 'fieldLocalProfile' put: 'native_source_local_inverse_v1';
       at: 'fieldLocalPlanner' put: (graphicalCurrent at: 'localInversePlanner');
       at: 'fieldLocalHeadId' put: token; at: 'fieldLocalPreflight' put: Dictionary new;
       at: 'fieldLocalHeadBeforeNative' put: (graphicalCurrent at: 'snapshots');
       at: 'fieldLocalHeadBeforeSource' put: (record at: 'fieldSourceMaterialBefore');
       at: 'fieldLocalHeadBeforeValues' put: (((root at: scope) at: 'copyObservation') value: ((root at: scope) at: 'observationValues'))].
   (graphicalCurrent notNil and: [graphicalCurrent includesKey: 'sourceIdentityNormalizer']) ifTrue: [
     record at: 'fieldForwardSourceNormalizer' put: (graphicalCurrent at: 'sourceIdentityNormalizer')].
   (graphicalCurrent notNil and: [graphicalCurrent includesKey: 'topologyCaptureProfile']) ifTrue: [
     (#('disconnect_data' 'delete_node') includes: operation)
       ifFalse: [component error: 'Topology material cannot bind a field executor'].
     record at: 'topologyCaptureProfile' put: (graphicalCurrent at: 'topologyCaptureProfile');
       at: 'topologyNativeBefore' put: graphicalCurrent;
       at: 'topologySourceMaterialBefore' put: (graphicalCurrent at: 'topologySourceMaterial');
       at: 'topologySourceMaterialReader' put: (graphicalCurrent at: 'topologySourceMaterialReader');
       at: 'topologyHeadId' put: token;
       at: 'topologyHeadBeforeNative' put: (graphicalCurrent at: 'snapshots');
       at: 'topologyHeadBeforeSource' put: (graphicalCurrent at: 'topologySourceMaterial');
       at: 'topologyHeadBeforeValues' put: (((root at: scope) at: 'copyObservation') value: ((root at: scope) at: 'observationValues'))
   ].
   (graphicalCurrent notNil and: [graphicalCurrent includesKey: 'topologyExactInverseFactory']) ifTrue: [
     record at: 'topologyExactInverseFactory' put: (graphicalCurrent at: 'topologyExactInverseFactory')].
    (graphicalCurrent notNil and: [graphicalCurrent includesKey: 'topologyForwardSourceNormalizer']) ifTrue: [
      record at: 'topologyForwardSourceNormalizer' put: (graphicalCurrent at: 'topologyForwardSourceNormalizer')].
   (graphicalCurrent notNil and: [graphicalCurrent includesKey: 'topologyLocalInverseFactory']) ifTrue: [
     record at: 'topologyLocalProfile' put: 'ordinary_topology_local_inverse_v1';
       at: 'topologyLocalInverseFactory' put: (graphicalCurrent at: 'topologyLocalInverseFactory');
       at: 'topologyLocalPreflight' put: Dictionary new].
   (graphicalCurrent notNil and: [graphicalCurrent includesKey: 'topologyHeadHandoffReader']) ifTrue: [
     record at: 'topologyHeadHandoffReader' put: (graphicalCurrent at: 'topologyHeadHandoffReader')].
   (#('connect_data' 'disconnect_data' 'rewire_data' 'delete_node' 'set_edge_route') includes: operation) ifTrue: [diagram isStateMachineDiagram ifTrue: [component error: 'Data operation on state machine']].
   operation = 'create_block' ifTrue: [
     diagram isStateMachineDiagram ifTrue: [component error: 'Ordinary BDE creation required'].
     targets isEmpty ifFalse: [component error: 'Creation requires complete structural observation'].
     blockKind := args first.
     (((command at: 1) includes: $/) and: [(#('literal' 'comment' 'operator' 'variable' 'parameter' 'constant' 'receive_message' 'send_message' 'send_receive_message' 'enumeration' 'component') includes: blockKind) not])
       ifTrue: [component error: 'Creation kind unavailable within child scope'].
     ((#('oned_table' 'twod_table' 'oned_table_fixed' 'twod_table_fixed') includes: blockKind) and: [(args at: 5) = 'log'])
       ifTrue: [component error: 'Logical table factory is unverified and rejected before creation'].
     ((creators includesKey: blockKind) or: [#('oned_table_group' 'twod_table_group' 'literal' 'comment' 'hierarchy' 'delta_t' 'operator' 'control' 'enumeration' 'component' 'existing_model') includes: blockKind])
       ifFalse: [component error: 'Unsupported block kind'].
     blockKind = 'control' ifTrue: [
       (diagram graphicalObjectServer mappingTypeStringToType includesKey: (args at: 2)) ifFalse: [component error: 'Unknown control type']
     ].
     (#('literal' 'comment' 'hierarchy' 'operator' 'control' 'existing_model') includes: blockKind) ifFalse: [
       ((component getAllVariables, component getImplementationCasts) anySatisfy: [:m | m getName = (args at: 2)]) ifTrue: [component error: 'Model name already exists']
     ].
     (#('receive_message' 'send_message' 'send_receive_message') includes: blockKind)
       ifTrue: [component messagesPossible ifFalse: [component error: 'Messages require a module']].
     (#('receive_message' 'send_message' 'send_receive_message') includes: blockKind) ifTrue: [
       (args size = 6) ifTrue: [
         (#('Slocal' 'Simported' 'Sexported') includes: (args at: 6))
           ifFalse: [component error: 'Invalid message scope encoding'].
         record at: 'messageScope' put: ((args at: 6) copyFrom: 2 to: (args at: 6) size)
       ].
       ((args at: 5) startsWith: 'ENUM|') ifTrue: [
         (definition isNil or: [(definition isKindOf: EtasAPIEnumeration) not])
           ifTrue: [component error: 'Existing enumeration definition required'].
         record at: 'messageEnumeration' put: definition
       ].
       record at: 'messageOwnerReferences' put: (enumReferences value: component)
     ].
     blockKind = 'resource' ifTrue: [(component isKindOf: EtasAPIModule) ifFalse: [component error: 'Resource graphical persistence is verified only for Module; Class resource placement is not retained after reload']].
     (#('enumeration' 'component') includes: blockKind) ifTrue: [definition isNil ifTrue: [component error: 'Referenced definition required']].
     (blockKind = 'enumeration' and: [(args at: 5) startsWith: 'NEWENUM|']) ifTrue: [
       | parts enumName enumItems validIdentifier |
       parts := (args at: 5) subStrings: $|.
       parts size = 3 ifFalse: [component error: 'Invalid new enum encoding'].
       enumName := parts at: 2. enumItems := parts last subStrings: $,.
       validIdentifier := [:s | s size > 0 and: [s size <= 64 and: [
         (s first isLetter or: [s first = $_]) and: [s allSatisfy: [:ch | 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_' includes: ch]]]]].
       ((validIdentifier value: enumName) and: [enumItems size > 0 and: [enumItems size <= 256 and: [
         enumItems asSet size = enumItems size and: [enumItems allSatisfy: [:s | validIdentifier value: s]]]]])
         ifFalse: [component error: 'Bounded unique enum identifiers required'].
       (definition isKindOf: EtasAPIFolder) ifFalse: [component error: 'Enum creation folder required'].
       definition getFolderPathName = 'BDE_Tool_Experiments' ifFalse: [component error: 'Sandbox enum folder required'].
       (definition item childrenKeys anySatisfy: [:k | k label = enumName]) ifTrue: [component error: 'Enum type name already exists'].
       record at: 'enumFolder' put: definition; at: 'enumName' put: enumName; at: 'enumItems' put: enumItems.
       args size = 6 ifTrue: [(enumItems includes: ((args at: 6) copyFrom: 2 to: (args at: 6) size)) ifFalse: [component error: 'Unknown initial enumerator']]
     ].
     (args size = 6 and: [(#('receive_message' 'send_message' 'send_receive_message') includes: blockKind) not]) ifTrue: [
       (#('array' 'matrix' 'distribution' 'oned_table' 'oned_table_fixed' 'twod_table' 'twod_table_fixed') includes: blockKind) ifTrue: [
         (args at: 6) first = $M ifFalse: [component error: 'Array max size encoding required'].
         value := ((args at: 6) copyFrom: 2 to: (args at: 6) size) subStrings: $x.
         value size = ((#('matrix' 'twod_table' 'twod_table_fixed') includes: blockKind) ifTrue: [2] ifFalse: [1]) ifFalse: [component error: 'Invalid dimension count'].
         value do: [:part | | n | n := part asNumber.
           (n isInteger and: [n >= 1 and: [n <= ((#('matrix' 'twod_table' 'twod_table_fixed') includes: blockKind) ifTrue: [16] ifFalse: [256])]]) ifFalse: [component error: 'Maximum size bound']]
       ] ifFalse: [
         (#('variable' 'parameter' 'constant' 'enumeration') includes: blockKind) ifFalse: [component error: 'Scalar initial value only; message data has separate import/export semantics'].
         component getDefaultData isNil ifTrue: [component error: 'Existing default configuration required for reversible initialization'].
         (blockKind = 'enumeration' and: [(record includesKey: 'enumFolder') not]) ifTrue: [(definition getEnumerationValues includes: ((args at: 6) copyFrom: 2 to: (args at: 6) size)) ifFalse: [component error: 'Unknown enumerator']]
       ]
     ].
     (#('oned_table_group' 'twod_table_group') includes: blockKind) ifTrue: [
       | refs distributions hex digits |
       refs := (args at: 5) subStrings: $|. distributions := OrderedCollection new. digits := '0123456789abcdef'.
       refs do: [:ref |
         | found |
         found := component getAllVariables select: [:m |
           hex := WriteStream on: String new. hex nextPutAll: 'm_'.
           m element xmlOID do: [:b | hex nextPut: (digits at: (b // 16) + 1); nextPut: (digits at: (b \\ 16) + 1)].
           hex contents = ref
         ].
         found size = 1 ifFalse: [component error: 'Distribution ref missing or ambiguous'].
         found first isDistribution ifFalse: [component error: 'Expected distribution model'].
         distributions add: found first
       ].
       record at: 'distributions' put: distributions
     ].
     blockKind = 'existing_model' ifTrue: [
       model := component getModelElement: (args at: 2).
       (model isNil or: [model isKindOf: EtasAPIError]) ifTrue: [component error: 'Existing model missing'].
       record at: 'existingModel' put: model
     ].
     blockKind = 'hierarchy' ifTrue: [
       value := args at: 5. index := value indexOf: $|.
       index = 0 ifTrue: [component error: 'Hierarchy port specification required'].
       record at: 'inputNames' put: ((value copyFrom: 1 to: index - 1) subStrings: $,);
         at: 'outputNames' put: ((value copyFrom: index + 1 to: value size) subStrings: $,)
     ].
     record at: 'placementHierarchy' put: (scopeView == diagram ifTrue: [nil] ifFalse: [scopeView]).
     record at: 'target' put: diagram; at: 'definition' put: definition;
       at: 'creationParent' put: (diagram getGraphicalHierarchyFromHierarchyElement: (record at: 'placementHierarchy')).
     (record at: 'creationParent') isNil ifTrue: [component error: 'Creation hierarchy unavailable'].
     record at: 'creationOrder' put: (record at: 'creationParent') children asArray copy
   ].
   (#('create_transition' 'delete_transition' 'delete_state' 'set_transition_priority' 'set_transition_esdl' 'rename_state') includes: operation) ifTrue: [diagram isStateMachineDiagram ifFalse: [component error: 'State operation on data graph']].
   (#('set_array_values' 'set_matrix_values' 'set_distribution_values') includes: operation) ifTrue: [
     | found hex digits config data destination oldConfig codes desired type matrix distribution decode rows |
     matrix := operation = 'set_matrix_values'.
     distribution := operation = 'set_distribution_values'.
     diagram isStateMachineDiagram ifTrue: [component error: 'Ordinary array required'].
     digits := '0123456789abcdef'.
     found := component getAllVariables select: [:m |
       hex := WriteStream on: String new. hex nextPutAll: 'm_'.
       m element xmlOID do: [:b | hex nextPut: (digits at: (b // 16) + 1); nextPut: (digits at: (b \\ 16) + 1)].
       hex contents = args first
     ].
     found size = 1 ifFalse: [component error: 'Array model missing or ambiguous']. model := found first.
     (model class name asString = (matrix ifTrue: ['EtasAPIModelMatrix'] ifFalse: [distribution ifTrue: ['EtasAPIModelDistribution'] ifFalse: ['EtasAPIModelArray']]) and: [model getScope = 'local' and: [model element isDependent not]])
       ifFalse: [component error: 'Only independent local arrays are editable'].
     distribution ifTrue: [
       (component getAllVariables anySatisfy: [:m |
         (m isOneDTable or: [m isTwoDTable]) and: [m isGroupCharTable and: [
           m getXDistribution element == model element or: [m isTwoDTable and: [m getYDistribution element == model element]]]]
       ]) ifTrue: [component error: 'Grouped-table distribution needs a separate dependency closure']
     ].
     config := component getDefaultData. config isNil ifTrue: [component error: 'Existing default configuration required'].
     data := checkReturn value: (config getEntryFor: model).
     (data isNil or: [data class name asString ~= (matrix ifTrue: ['EtasAPIMatrixDataElement'] ifFalse: [distribution ifTrue: ['EtasAPIDistributionDataElement'] ifFalse: ['EtasAPIArrayDataElement']])]) ifTrue: [component error: 'Array/matrix default data required'].
     "The array wrapper's isWriteProtected sends dataElement to SGVariable.
      Use the underlying data access check also used by setPhysValue:."
     data dataElement isWriteProtected ifTrue: [component error: 'Array default data is write protected'].
     destination := model element isUniqueDataConfigured ifTrue: [config item relatedClassConfig] ifFalse: [config item].
     oldConfig := destination configForElement: model element.
     oldConfig class name asString = (matrix ifTrue: ['SGMatrixData'] ifFalse: ['SGVectorData']) ifFalse: [component error: 'Unsupported array/matrix recovery config'].
     type := model getModelType.
     decode := [:code | | v |
       type = 'log' ifTrue: [
         (#('B0' 'B1') includes: code) ifFalse: [component error: 'Boolean array required']. code = 'B1'
       ] ifFalse: [
         (code first = $N and: [#('cont' 'sdisc' 'udisc') includes: type]) ifFalse: [component error: 'Numeric array required'].
         v := Number fromString: (code copyFrom: 2 to: code size).
         (#('sdisc' 'udisc') includes: type) ifTrue: [v truncated = v ifFalse: [component error: 'Integral array required']].
         (type = 'udisc' and: [v < 0]) ifTrue: [component error: 'Unsigned array required']. v
       ]
     ].
     matrix ifTrue: [
       rows := (args at: 2) subStrings: $;.
       (rows isEmpty or: [rows size > 16 or: [rows size > model getMaxXSize]]) ifTrue: [component error: 'Matrix X size outside declared bounds'].
       desired := rows collect: [:row |
         codes := row subStrings: $,.
         (codes isEmpty or: [codes size > 16 or: [codes size > model getMaxYSize]]) ifTrue: [component error: 'Matrix Y size outside declared bounds'].
         (codes collect: decode) asArray
       ].
       (desired anySatisfy: [:row | row size ~= desired first size]) ifTrue: [component error: 'Matrix must be rectangular']
     ] ifFalse: [
       codes := (args at: 2) subStrings: $,.
       (codes isEmpty or: [codes size > 256 or: [codes size > model getMaxSize]]) ifTrue: [component error: 'Array size outside declared bounds'].
       desired := codes collect: decode
     ].
     distribution ifTrue: [
       (#('cont' 'sdisc' 'udisc') includes: type) ifFalse: [component error: 'Numeric distribution required'].
       (data check: desired) ifFalse: [component error: 'Distribution values must be strictly increasing']
     ].
     record at: 'target' put: model; at: 'configuration' put: config item; at: 'destination' put: destination;
       at: 'oldConfig' put: oldConfig deepCopy; at: 'value' put: desired asArray
   ].
   operation = 'set_table_values' ifTrue: [
     | found hex digits config data destination raw newValues decode desired type matrix codes |
     diagram isStateMachineDiagram ifTrue: [component error: 'Ordinary table required'].
     digits := '0123456789abcdef'.
     found := component getAllVariables select: [:m |
       hex := WriteStream on: String new. hex nextPutAll: 'm_'.
       m element xmlOID do: [:b | hex nextPut: (digits at: (b // 16) + 1); nextPut: (digits at: (b \\ 16) + 1)].
       hex contents = args first
     ].
     found size = 1 ifFalse: [component error: 'Table missing or ambiguous']. model := found first.
     ((#('EtasAPIModelOneDTable' 'EtasAPIModelTwoDTable') includes: model class name asString) and: [
       model getScope = 'local' and: [model element isDependent not and: [model isGroupCharTable not]]])
       ifFalse: [component error: 'Independent local non-group table required'].
     config := component getDefaultData. config isNil ifTrue: [component error: 'Existing table default required'].
     data := checkReturn value: (config getEntryFor: model).
     matrix := model isTwoDTable.
     data class name asString = (matrix ifTrue: ['EtasAPITwoDTableDataElement'] ifFalse: ['EtasAPIOneDTableDataElement'])
       ifFalse: [component error: 'Table default wrapper required'].
     data dataElement isWriteProtected ifTrue: [component error: 'Table default is write protected'].
     destination := model element isUniqueDataConfigured ifTrue: [config item relatedClassConfig] ifFalse: [config item].
     raw := destination configForElement: model element.
     (#('RBOneDCharTable' 'RBTwoDCharTable' 'RBOneDStaticCharTable' 'RBTwoDStaticCharTable') includes: raw class name asString)
       ifFalse: [component error: 'Unsupported raw table configuration'].
     type := model getModelType.
     (#('cont' 'sdisc' 'udisc') includes: type) ifFalse: [component error: 'Numeric table values required'].
     decode := [:code | | v |
       type = 'log' ifTrue: [
         (#('B0' 'B1') includes: code) ifFalse: [component error: 'Boolean table required']. code = 'B1'
       ] ifFalse: [
         (code first = $N and: [#('cont' 'sdisc' 'udisc') includes: type]) ifFalse: [component error: 'Numeric table required'].
         v := Number fromString: (code copyFrom: 2 to: code size).
         (#('sdisc' 'udisc') includes: type) ifTrue: [v truncated = v ifFalse: [component error: 'Integral table required']].
         (type = 'udisc' and: [v < 0]) ifTrue: [component error: 'Unsigned table required']. v
       ]
     ].
     ((args at: 2) first = (matrix ifTrue: [$M] ifFalse: [$V])) ifFalse: [component error: 'Table dimension encoding mismatch'].
     codes := (args at: 2) copyFrom: 2 to: (args at: 2) size.
     matrix ifTrue: [
       desired := (codes subStrings: $;) collect: [:row | ((row subStrings: $,) collect: decode) asArray].
       (desired size = data getXSize and: [desired allSatisfy: [:row | row size = data getYSize]])
         ifFalse: [component error: 'Table dimensions must remain unchanged']
     ] ifFalse: [
       desired := (codes subStrings: $,) collect: decode.
       desired size = data getXSize ifFalse: [component error: 'Table dimensions must remain unchanged']
     ].
     newValues := checkReturn value: data getValue.
     (newValues dataElement ~~ raw values and: [newValues dataElement access isNil])
       ifFalse: [component error: 'Detached table value wrapper required'].
     record at: 'oldTableValues' put: raw values; at: 'oldTablePhysical' put: raw values getPhysValue deepCopy.
     checkReturn value: (newValues setPhysValue: desired asArray).
     raw values getPhysValue = (record at: 'oldTablePhysical') ifFalse: [component error: 'Table prepare changed live defaults'].
     record at: 'target' put: model; at: 'configuration' put: config item; at: 'destination' put: destination;
       at: 'tableConfig' put: raw; at: 'newTableValues' put: newValues dataElement;
       at: 'newTablePhysical' put: newValues dataElement getPhysValue deepCopy
   ].
   (#('set_table_axis' 'set_table_interpolation') includes: operation) ifTrue: [
     | found hex digits config data destination raw part detached desired tableSlot tableSetter |
     diagram isStateMachineDiagram ifTrue: [component error: 'Ordinary table required'].
     digits := '0123456789abcdef'.
     found := component getAllVariables select: [:m |
       hex := WriteStream on: String new. hex nextPutAll: 'm_'.
       m element xmlOID do: [:b | hex nextPut: (digits at: (b // 16) + 1); nextPut: (digits at: (b \\ 16) + 1)].
       hex contents = args first
     ].
     found size = 1 ifFalse: [component error: 'Table missing or ambiguous']. model := found first.
     ((#('EtasAPIModelOneDTable' 'EtasAPIModelTwoDTable') includes: model class name asString) and: [
       model getScope = 'local' and: [model element isDependent not and: [model isGroupCharTable not]]])
       ifFalse: [component error: 'Independent local non-group table required'].
     (#('cont' 'sdisc' 'udisc') includes: model getModelType) ifFalse: [component error: 'Numeric table required'].
     config := component getDefaultData. config isNil ifTrue: [component error: 'Existing table default required'].
     data := checkReturn value: (config getEntryFor: model).
     (#('EtasAPIOneDTableDataElement' 'EtasAPITwoDTableDataElement') includes: data class name asString)
       ifFalse: [component error: 'Table default wrapper required'].
     data dataElement isWriteProtected ifTrue: [component error: 'Table default is write protected'].
     destination := model element isUniqueDataConfigured ifTrue: [config item relatedClassConfig] ifFalse: [config item].
     raw := destination configForElement: model element.
     (#('RBOneDCharTable' 'RBTwoDCharTable' 'RBOneDStaticCharTable' 'RBTwoDStaticCharTable') includes: raw class name asString)
       ifFalse: [component error: 'Unsupported raw table configuration'].
     operation = 'set_table_axis' ifTrue: [
       model isFixedCharTable ifTrue: [component error: 'Fixed table axis editing unsupported'].
       (#('x' 'y') includes: (args at: 2)) ifFalse: [component error: 'Exact x/y axis required'].
       ((args at: 2) = 'y' and: [model isTwoDTable not]) ifTrue: [component error: '1D table has no y axis'].
       tableSlot := (args at: 2) = 'x' ifTrue: [#xDistribution] ifFalse: [#yDistribution].
       tableSetter := (args at: 2) = 'x' ifTrue: [#xDistribution:] ifFalse: [#yDistribution:].
       part := raw perform: tableSlot.
       detached := checkReturn value: (data perform: ((args at: 2) = 'x' ifTrue: [#getXDistribution] ifFalse: [#getYDistribution])).
       desired := ((args at: 3) subStrings: $,) collect: [:code |
         | v |
         code first = $N ifFalse: [component error: 'Numeric table axis required'].
         v := Number fromString: (code copyFrom: 2 to: code size).
         (#('sdisc' 'udisc') includes: model getModelType) ifTrue: [v truncated = v ifFalse: [component error: 'Integral table axis required']].
         (model getModelType = 'udisc' and: [v < 0]) ifTrue: [component error: 'Unsigned table axis required']. v
       ].
       desired := desired asArray.
       desired size = detached getSize ifFalse: [component error: 'Table axis dimensions must remain unchanged'].
       (detached check: desired) ifFalse: [component error: 'Table axis must strictly increase'].
       detached := detached dataElement
     ] ifFalse: [
       (#('linear' 'rounded') includes: (args at: 2)) ifFalse: [component error: 'Invalid interpolation mode'].
       (model element getInterpolation isNil or: [#('Linear' 'Rounded') includes: model element getInterpolation])
         ifFalse: [component error: 'Unsupported declared interpolation'].
       record at: 'oldDeclarationInterpolation' put: model element getInterpolation;
         at: 'newDeclarationInterpolation' put: ((args at: 2) = 'linear' ifTrue: ['Linear'] ifFalse: ['Rounded'])
     ].
     operation = 'set_table_axis' ifTrue: [
       (detached ~~ part and: [detached access isNil]) ifFalse: [component error: 'Detached table setting required'].
       record at: 'oldTablePart' put: part; at: 'oldTablePartPhysical' put: part getPhysValue deepCopy.
       checkReturn value: (detached setPhysValue: desired).
       detached getPhysValue asArray = desired ifFalse: [component error: 'Table axis value conversion would alter the request'].
       part getPhysValue = (record at: 'oldTablePartPhysical') ifFalse: [component error: 'Table prepare changed live settings'].
       record at: 'tableSlot' put: tableSlot; at: 'tableSetter' put: tableSetter;
         at: 'newTablePart' put: detached; at: 'newTablePartPhysical' put: detached getPhysValue deepCopy
     ].
     record at: 'target' put: model; at: 'configuration' put: config item; at: 'destination' put: destination;
       at: 'tableConfig' put: raw
   ].
   (#('set_formula' 'set_formula_binding') includes: operation) ifTrue: [
     | formula config mapping entry detached calculated names identifiers actual formal matches |
     diagram isStateMachineDiagram ifTrue: [component error: 'Ordinary dependent formula required'].
     model := findModel value: args first.
     ((model class name asString = 'EtasAPIModelScalar' and: [model getModelType = 'cont']) and: [
       model isValid and: [model getScope = 'local' and: [model element isDependent]]])
       ifFalse: [component error: 'Existing dependent local continuous scalar required'].
     formula := model element instVarNamed: 'formula'.
     (formula notNil and: [formula class = SGFormula and: [formula owner == model element]])
       ifFalse: [component error: 'Formula identity or owner unavailable'].
     identifiers := formula identifiers.
     identifiers size <= 64 ifFalse: [component error: 'Formula formal bound exceeded'].
     config := component getDefaultData.
     (config notNil and: [config isValid]) ifFalse: [component error: 'Existing default configuration required'].
     mapping := config item instVarNamed: 'dependentParameters'.
     mapping isNil ifTrue: [component error: 'Existing default bindings required'].
     entry := mapping at: model element aliasName ifAbsent: [component error: 'Existing default binding entry required'].
     record at: 'target' put: model; at: 'formulaObject' put: formula;
       at: 'oldFormulaText' put: formula formulaBasic copy; at: 'oldFormulaCompiled' put: formula esFormula copy;
       at: 'formulaIdentifiers' put: identifiers asArray copy;
       at: 'formulaIdentifierValues' put: (identifiers collect: [:id | Array with: id identifier copy with: id aliasName copy]);
       at: 'configuration' put: config item; at: 'bindingMap' put: mapping; at: 'bindingEntry' put: entry;
       at: 'oldBindings' put: entry deepCopy.
     operation = 'set_formula' ifTrue: [
       value := args at: 2.
       (value size >= 1 and: [value size <= 4096]) ifFalse: [component error: 'Formula text bound exceeded'].
       (value anySatisfy: [:c | (#(9 10 13) includes: c asInteger) not and: [c asInteger < 32 or: [c asInteger > 126]]])
         ifTrue: [component error: 'ASCII formula text required'].
       detached := formula copy. detached formula: value.
       names := (detached getIDsAndIndizes: value) collect: [:pair | pair first].
       names := names select: [:name | name buildValidANSICIdentifier = name].
       ((names anySatisfy: [:name | (identifiers anySatisfy: [:id | id identifier = name]) not]) not and: [
         (identifiers anySatisfy: [:id | (names includes: id identifier) not]) not])
         ifFalse: [component error: 'Formula formal set changes are unsupported'].
       calculated := detached calculateEsFormula.
       calculated isError ifTrue: [component error: 'Native formula validation failed'].
       record at: 'newFormulaText' put: value copy; at: 'newFormulaCompiled' put: detached esFormula copy
     ] ifFalse: [
       matches := identifiers select: [:id | (oidHex value: id aliasName) = (args at: 2)].
       matches size = 1 ifFalse: [component error: 'Formal identifier missing or ambiguous']. formal := matches first.
       (entry includesKey: formal aliasName) ifFalse: [component error: 'Existing formal binding required'].
       actual := findModel value: (args at: 3).
       ((actual class name asString = 'EtasAPIModelScalar' and: [actual getModelType = 'cont']) and: [
         actual isValid and: [actual getScope = 'local' and: [actual isParameter and: [actual element isDependent not]]]])
         ifFalse: [component error: 'Independent local continuous scalar parameter required'].
       record at: 'bindingFormal' put: formal; at: 'newActual' put: actual;
         at: 'oldActualAlias' put: (entry at: formal aliasName) copy;
         at: 'newActualAlias' put: actual element aliasName copy
     ]
   ].
   operation = 'set_scalar_value' ifTrue: [
     | found hex digits config data destination oldConfig code desired type |
     diagram isStateMachineDiagram ifTrue: [component error: 'Ordinary scalar required'].
     digits := '0123456789abcdef'.
     found := component getAllVariables select: [:m |
       hex := WriteStream on: String new. hex nextPutAll: 'm_'.
       m element xmlOID do: [:b | hex nextPut: (digits at: (b // 16) + 1); nextPut: (digits at: (b \\ 16) + 1)].
       hex contents = args first
     ].
     found size = 1 ifFalse: [component error: 'Scalar model missing or ambiguous']. model := found first.
     ((#('EtasAPIModelScalar' 'EtasAPIConstant') includes: model class name asString) and: [model getScope = 'local' and: [model element isDependent not]])
       ifFalse: [component error: 'Only independent local scalar defaults are editable'].
     config := component getDefaultData. config isNil ifTrue: [component error: 'Existing default configuration required'].
     data := checkReturn value: (config getEntryFor: model).
     (data isNil or: [data class name asString ~= 'EtasAPIScalarDataElement']) ifTrue: [component error: 'Scalar default data required'].
     data isWriteProtected ifTrue: [component error: 'Scalar default data is write protected'].
     destination := model element isUniqueDataConfigured ifTrue: [config item relatedClassConfig] ifFalse: [config item].
     oldConfig := destination configForElement: model element.
     ((oldConfig isNumber or: [oldConfig isString]) or: [oldConfig == true or: [oldConfig == false]])
       ifFalse: [component error: ('Unsupported scalar recovery config ', oldConfig class name asString)].
     code := args at: 2. desired := code copyFrom: 2 to: code size. type := model getModelType.
     type = 'enum' ifTrue: [
       (code first = $E and: [model getRepresentedClass getEnumerationValues includes: desired]) ifFalse: [component error: 'Unknown enumerator']
     ] ifFalse: [type = 'log' ifTrue: [
       (#('B0' 'B1') includes: code) ifFalse: [component error: 'Boolean value required']. desired := code = 'B1'
     ] ifFalse: [
       (code first = $N and: [#('cont' 'sdisc' 'udisc') includes: type]) ifFalse: [component error: 'Numeric value required'].
       desired := Number fromString: desired.
       (#('sdisc' 'udisc') includes: type) ifTrue: [desired truncated = desired ifFalse: [component error: 'Integral value required']].
       (type = 'udisc' and: [desired < 0]) ifTrue: [component error: 'Unsigned value required']
     ]].
     record at: 'target' put: model; at: 'configuration' put: config item; at: 'destination' put: destination;
       at: 'oldConfig' put: oldConfig; at: 'value' put: desired
   ].
   operation = 'set_sequence' ifTrue: [
     | method oldMethod oldAlias foundMethods availableMethods |
     diagram isStateMachineDiagram ifTrue: [component error: 'Ordinary sequence required'].
     source := findPin value: args first.
     source hasSequenceCall ifFalse: [component error: 'Pin has no sequence call'].
     target := source getSequenceCall. value := (args at: 2) asNumber.
     availableMethods := diagram getAllMethods.
     (diagram isKindOf: EtasAPIProcessDiagram) ifTrue: [availableMethods := availableMethods, diagram getAllProcesses].
     foundMethods := availableMethods select: [:m | m getName = (args at: 3)].
     foundMethods size = 1 ifFalse: [component error: 'Sequence method missing or ambiguous'].
     method := foundMethods first method.
     (method isNil or: [method owner ~~ diagram specification]) ifTrue: [component error: 'Sequence method missing or wrong owner'].
     (value isInteger and: [value >= 0 and: [value <= 100000]]) ifFalse: [component error: 'Invalid sequence number'].
     (target checkSequence: (Array with: method aliasName with: value)) ifFalse: [component error: 'Sequence number already occupied'].
     oldAlias := target diagramElement description first copy. oldMethod := target getMethod: oldAlias.
     record at: 'target' put: target; at: 'previous' put: target getSequenceNumber; at: 'value' put: value;
       at: 'oldAlias' put: oldAlias; at: 'newAlias' put: method aliasName copy;
       at: 'oldMethod' put: oldMethod; at: 'newMethod' put: method; at: 'newMethodName' put: (args at: 3) copy;
       at: 'oldLabel' put: (target diagramElement instVarNamed: 'labelGO') text copy
   ].
   operation = 'set_sequence_number' ifTrue: [
     diagram isStateMachineDiagram ifTrue: [component error: 'Ordinary sequence required'].
     source := findPin value: args first.
     source hasSequenceCall ifFalse: [component error: 'Pin has no sequence call'].
     target := source getSequenceCall. value := (args at: 2) asNumber.
     target getSequenceActivator isNil ifTrue: [component error: 'Sequence requires an assigned activator'].
     (value isInteger and: [value >= 0 and: [value <= 100000]]) ifFalse: [component error: 'Invalid sequence number'].
     (target checkSequence: (Array with: target diagramElement description first with: value)) ifFalse: [component error: 'Sequence number already occupied'].
     record at: 'target' put: target; at: 'previous' put: target getSequenceNumber; at: 'value' put: value;
       at: 'oldLabel' put: (target diagramElement instVarNamed: 'labelGO') text copy
   ].
   operation = 'connect_data' ifTrue: [
     source := findPin value: args first. target := findPin value: (args at: 2).
     (source isOutputPin and: [target isInputPin]) ifFalse: [component error: 'Wrong pin direction'].
     target getAllBlockDiagramConnections isEmpty ifFalse: [component error: 'Input occupied'].
     source diagramElement getHierarchyWrapper = target diagramElement getHierarchyWrapper ifFalse: [component error: 'Cross-hierarchy connection rejected'].
     record at: 'source' put: source; at: 'target' put: target
   ].
   (#('set_literal' 'set_comment' 'move_node') includes: operation) ifTrue: [
     diagram isStateMachineDiagram ifTrue: [component error: 'Ordinary node edit required'].
     target := findNode value: args first.
     target isBlockDiagramHierarchy ifTrue: [component error: 'Hierarchy move/text requires nested impact observation'].
     target isBlockDiagramHierarchyPin ifTrue: [component error: 'Hierarchy boundary move/text requires cross-scope recovery'].
     operation = 'set_literal' ifTrue: [
       target isBlockDiagramLiteral ifFalse: [component error: 'Literal target required'].
       record at: 'previous' put: target getLiteralText; at: 'value' put: (args at: 2)
     ].
     operation = 'set_comment' ifTrue: [
       target isBlockDiagramComment ifFalse: [component error: 'Comment target required'].
       record at: 'previous' put: target getComment; at: 'value' put: (args at: 2)
     ].
     operation = 'move_node' ifTrue: [
       | requested aligned |
       requested := (args at: 2) asNumber @ (args at: 3) asNumber.
       target isBlockDiagramLiteral ifTrue: [
         aligned := SGDefaultPaneCtrl ascetDefaultRaster rasterPoint: requested.
         aligned = requested ifFalse: [component error: ('BDE_GRID_ALIGNMENT_REQUIRED: requested ',
           requested printString, ' reloads at ', aligned printString, '; submit the exact aligned anchor')]
       ].
       record at: 'value' put: requested
     ].
     incident := edges select: [:e | e getOutputPin getBlockDiagramElement identifier = target diagramElement identifier or: [e getInputPin getBlockDiagramElement identifier = target diagramElement identifier]].
     record at: 'target' put: target; at: 'oldAnchor' put: target diagramElement getPosition copy;
       at: 'oldRoutes' put: (incident collect: [:e | Array with: e diagramElement basicGraphObject with: (e diagramElement basicGraphObject storageCornerPoints collect: [:p | p copy]) with: (e diagramElement basicGraphObject cornerPoints collect: [:p | p copy])])
   ].
   (#('disconnect_data' 'delete_transition') includes: operation) ifTrue: [target := findEdge value: args first. record at: 'target' put: target; at: 'retained' put: (retained value: target value: true)].
   operation = 'set_edge_route' ifTrue: [
     | points g existing |
     target := findEdge value: args first. g := target diagramElement basicGraphObject.
     (g isKindOf: SGAbstractOrthogonalLineGO) ifFalse: [component error: 'Only orthogonal BDE routes supported'].
     g linkPoints size = 2 ifFalse: [component error: 'Route requires exactly two link points'].
     points := ((args at: 2) subStrings: $;) collect: [:s | | xy | xy := s subStrings: $,. xy first asNumber @ (xy at: 2) asNumber].
     existing := target getAllConnectionPoints.
     (points first = existing first and: [points last = existing last]) ifFalse: [component error: 'Route endpoint conflict'].
     "Stored corners are fitted to the native raster by the fresh loader.
      Reject before dispatch instead of silently changing requested geometry."
     (points copyFrom: 2 to: points size - 1) do: [:requested | | aligned |
       aligned := SGDefaultPaneCtrl ascetDefaultRaster rasterPoint: requested.
       aligned = requested ifFalse: [component error: ('BDE_GRID_ALIGNMENT_REQUIRED: route corner ',
         requested printString, ' reloads at ', aligned printString, '; submit the exact aligned corner')]].
     record at: 'target' put: target; at: 'oldRoute' put: (g storageCornerPoints collect: [:p | p copy]);
       at: 'newRoute' put: (points copyFrom: 2 to: points size - 1)
   ].
   operation = 'rewire_data' ifTrue: [
     target := findEdge value: args first. source := target getOutputPin. newPin := findPin value: (args at: 2).
     newPin isOutputPin ifFalse: [component error: 'Replacement must be an output'].
     source diagramElement == newPin diagramElement ifTrue: [component error: 'Rewire requires a different exact source pin'].
     source diagramElement getHierarchyWrapper = newPin diagramElement getHierarchyWrapper ifFalse: [component error: 'Cross-hierarchy rewire rejected'].
     record at: 'target' put: target; at: 'source' put: source; at: 'new' put: newPin;
       at: 'route' put: (target diagramElement basicGraphObject storageCornerPoints collect: [:p | p copy]);
       at: 'routeEndpoints' put: (target diagramElement basicGraphObject linkPoints collect: [:p | p copy])
   ].
   (#('delete_node' 'delete_state') includes: operation) ifTrue: [
     target := findNode value: args first.
     diagram isStateMachineDiagram ifTrue: [
       target diagramElement class name asString = 'SGStateGO' ifFalse: [component error: 'Only ordinary states can be deleted'].
       (edges anySatisfy: [:e | e hasStartPin or: [e hasEndPin]]) ifTrue: [component error: 'Boundary transitions require separate recovery'].
       incident := edges select: [:e | e getStartState diagramElement == target diagramElement or: [e getEndState diagramElement == target diagramElement]]
     ] ifFalse: [
       target isBlockDiagramHierarchy ifTrue: [component error: 'Hierarchy deletion unavailable'].
       target isBlockDiagramHierarchyPin ifTrue: [component error: 'Hierarchy boundary pin deletion unavailable'].
       incident := edges select: [:e | e getOutputPin getBlockDiagramElement identifier = target diagramElement identifier or: [e getInputPin getBlockDiagramElement identifier = target diagramElement identifier]]
     ].
     savedSet := OrderedCollection new. savedSet add: (retained value: target value: false).
     incident do: [:e | savedSet add: (retained value: e value: true)].
     (savedSet anySatisfy: [:s | (s at: 2) ~~ target diagramElement manager]) ifTrue: [component error: 'Cross-parent deletion unavailable'].
     record at: 'target' put: target; at: 'incident' put: incident;
       at: 'retainedSet' put: (savedSet asSortedCollection: [:a :b | (a at: 3) < (b at: 3)])
   ].
   (#('create_hierarchy_port' 'delete_hierarchy_port') includes: operation) ifTrue: [
     | external internal hierarchy parent child childEdges parentEdges saved collectScopes scopeNames scopeBefore |
     (diagram isStateMachineDiagram or: [targets notEmpty]) ifTrue: [component error: 'Complete ordinary parent scope required'].
     operation = 'create_hierarchy_port' ifTrue: [
       target := findNode value: args first.
       target isBlockDiagramHierarchy ifFalse: [component error: 'Exact hierarchy required'].
       (#('input' 'output') includes: (args at: 2)) ifFalse: [component error: 'Port direction required'].
       (target nameExists: (args at: 3)) ifTrue: [component error: 'Hierarchy port name exists']
     ] ifFalse: [
       newPin := findPin value: args first. external := newPin diagramElement.
       saved := nodes select: [:node | node isBlockDiagramHierarchy and: [node getAllPins anySatisfy: [:pin | pin diagramElement == external]]].
       saved size = 1 ifFalse: [component error: 'External port owner missing or ambiguous'].
       target := saved first.
       target isBlockDiagramHierarchy ifFalse: [component error: 'Exact hierarchy external pin required'].
       internal := external getInternalConnectorGO.
       ((internal notNil and: [internal interfaceElementGO == external]) and: [
         external oppHierNode == internal getConnectorGO and: [internal getConnectorGO oppHierNode == external]])
         ifFalse: [component error: 'Hierarchy boundary pairing changed'].
       record at: 'portExternal' put: external; at: 'portInternal' put: internal;
         at: 'portPinAPI' put: newPin
     ].
     hierarchy := target diagramElement. parent := hierarchy manager. child := hierarchy contents.
     (parent children includes: hierarchy) ifFalse: [component error: 'Hierarchy parent membership changed'].
     record at: 'target' put: target; at: 'portChildScope' put: ((command at: 1), '/h', hierarchy identifier printString);
       at: 'portChildParent' put: child; at: 'portParent' put: parent;
       at: 'portBeforeParentOrder' put: parent children asArray copy;
       at: 'portBeforeChildOrder' put: child children asArray copy;
       at: 'portBeforeInterfaceOrder' put: hierarchy basicGraphObject interfaceGOs asArray copy.
     encoded := reader value: component value: (record at: 'portChildScope') value: #().
     (encoded startsWith: 'BDE_STRUCTURE_ERROR:') ifTrue: [component error: encoded].
     record at: 'portChildBefore' put: encoded.
     scopeNames := OrderedCollection new. scopeBefore := OrderedCollection new.
     collectScopes := [:view :name :depth |
       depth > 16 ifTrue: [component error: 'Hierarchy interface closure depth exceeded'].
       scopeNames size >= 256 ifTrue: [component error: 'Hierarchy interface closure bound exceeded'].
       scopeNames add: name.
       view getAllDiagramElements do: [:node | node isBlockDiagramHierarchy ifTrue: [
         collectScopes value: node value: (name, '/h', node diagramElement identifier printString) value: depth + 1
       ]]
     ].
     collectScopes value: target value: (record at: 'portChildScope') value: ((command at: 1) subStrings: $/) size.
     scopeNames do: [:name |
       encoded := reader value: component value: name value: #().
       (encoded startsWith: 'BDE_STRUCTURE_ERROR:') ifTrue: [component error: encoded]. scopeBefore add: encoded
     ].
     record at: 'portScopeNames' put: scopeNames asArray; at: 'portScopesBefore' put: scopeBefore asArray.
     operation = 'delete_hierarchy_port' ifTrue: [
       (child children includes: internal) ifFalse: [component error: 'Internal port membership changed'].
       childEdges := target getAllDiagramConnections select: [:edge |
         edge getOutputPin diagramElement == internal getConnectorGO or: [edge getInputPin diagramElement == internal getConnectorGO]].
       parentEdges := edges select: [:edge | edge getOutputPin diagramElement == external or: [edge getInputPin diagramElement == external]].
       saved := OrderedCollection new.
       parentEdges do: [:edge | saved add: (retained value: edge value: true)].
       record at: 'portParentEdges' put: parentEdges;
         at: 'portRetainedParent' put: (saved asSortedCollection: [:a :b | (a at: 3) < (b at: 3)]).
       saved := OrderedCollection new.
       saved add: (Array with: internal with: child with: (child children indexOf: internal) with: #()).
       childEdges do: [:edge | saved add: (retained value: edge value: true)].
       record at: 'portChildEdges' put: childEdges;
         at: 'portRetainedChild' put: (saved asSortedCollection: [:a :b | (a at: 3) < (b at: 3)]).
       ((record at: 'portRetainedChild') anySatisfy: [:s | (s at: 2) ~~ child]) ifTrue: [component error: 'Child port deletion crosses parent'].
       ((record at: 'portRetainedParent') anySatisfy: [:s | (s at: 2) ~~ parent]) ifTrue: [component error: 'Parent port deletion crosses parent'].
       record at: 'portExternalIndex' put: (hierarchy basicGraphObject interfaceGOs indexOf: external)
     ]
   ].
   operation = 'create_transition' ifTrue: [record at: 'source' put: (findNode value: args first); at: 'target' put: (findNode value: (args at: 2))].
   operation = 'set_transition_priority' ifTrue: [
     target := findEdge value: args first. value := (args at: 2) asNumber.
     (value isInteger and: [value >= 0]) ifFalse: [component error: 'Invalid priority'].
     record at: 'target' put: target; at: 'previous' put: target getPriority; at: 'value' put: value
   ].
   operation = 'set_transition_esdl' ifTrue: [
     target := findEdge value: args first. slot := args at: 2.
     (#('action' 'condition') includes: slot) ifFalse: [component error: 'Only action and condition ESDL enabled'].
     index := slot = 'action' ifTrue: [2] ifFalse: [3]. info := target diagramElement transitionInfoGO.
     record at: 'target' put: target; at: 'info' put: info; at: 'index' put: index;
       at: 'oldSource' put: (info instVarNamed: ('action', index printString, 'ASDL'));
       at: 'oldCall' put: (info instVarNamed: ('action', index printString, 'MethodCall'));
       at: 'oldAlias' put: (info instVarNamed: ('action', index printString, 'MethodCall')) aliasName;
       at: 'value' put: (args at: 3)
   ].
   operation = 'rename_state' ifTrue: [target := findNode value: args first. record at: 'target' put: target; at: 'previous' put: target getName; at: 'value' put: (args at: 2)].
   (#('move_node' 'delete_node') includes: operation) ifTrue: [
     | calls state |
     calls := (target diagramElement respondsTo: #sequenceCalls) ifTrue: [target diagramElement sequenceCalls] ifFalse: [#()].
     (calls anySatisfy: [:call | call hasPin]) ifTrue: [component error: 'Connected execution-call pins require separate impact recovery'].
     state := calls collect: [:call |
       | saved label |
       label := call instVarNamed: 'labelGO'. saved := Array new: 8.
       saved at: 1 put: call; at: 2 put: call manager; at: 3 put: call seqNo; at: 4 put: call seqAlias;
         at: 5 put: call getPosition copy; at: 6 put: label; at: 7 put: label getPosition copy; at: 8 put: label text copy.
       saved
     ].
     record at: 'sequenceState' put: state
   ].
   (record includesKey: 'target') ifFalse: [component error: 'Unsupported operation'].
   (#('disconnect_data' 'delete_node') includes: operation) ifTrue: [
     savedSet := operation = 'disconnect_data'
       ifTrue: [Array with: (record at: 'retained')] ifFalse: [record at: 'retainedSet'].
     orderParent := (savedSet first) at: 2.
     beforeOrder := orderParent children asArray copy.
     removedObjects := OrderedCollection new. savedSet do: [:s | removedObjects add: (s at: 1)].
     afterOrder := beforeOrder reject: [:g | removedObjects anySatisfy: [:removed | removed == g]].
     record at: 'orderParent' put: orderParent; at: 'orderCollection' put: orderParent children;
       at: 'orderRoot' put: (root at: scope); at: 'orderGeneration' put: ((root at: scope) at: 'generation');
       at: 'beforeOrder' put: beforeOrder; at: 'afterOrder' put: afterOrder;
       at: 'orderToken' put: token; at: 'orderIds' put: IdentityDictionary new.
     (definition notNil and: [definition isArray and: [definition size = 5]])
       ifFalse: [component error: 'Fixed parent, endpoint, graphical, inverse-value and drawing readers required'].
     record
       at: 'orderEvidenceReader' put: definition first; at: 'edgeDependencyReader' put: (definition at: 2);
       at: 'graphicalReader' put: (graphicalCurrent at: 'topologyGraphicalReader' ifAbsent: [definition at: 3]);
       at: 'deleteInverseValuesReader' put: (definition at: 4);
       at: 'drawingOrderReader' put: definition last;
       at: 'encodeObservation' put: ((root at: scope) at: 'encodeObservation');
       at: 'beforeValues' put: (((root at: scope) at: 'copyObservation') value: ((root at: scope) at: 'observationValues'));
       at: 'observationCopyProfile' put: ((root at: scope) at: 'observationCopyProfile');
       at: 'deletedEdgeAPIs' put: (operation = 'disconnect_data' ifTrue: [Array with: target] ifFalse: [record at: 'incident']).
     orderReader := definition first.
     (((definition at: 2) value: component value: record value: 'capture') == true)
       ifFalse: [component error: 'Original edge dependency capture failed'].
     orderBeforeImage := orderReader value: record value: beforeOrder.
     orderExpectedImage := orderReader value: record value: afterOrder.
     drawingReader := record at: 'drawingOrderReader'.
     record at: 'drawingBeforeOrder' put: orderParent sortedChildren asArray copy.
     record at: 'drawingAfterOrder' put: ((record at: 'drawingBeforeOrder') reject: [:g |
       removedObjects anySatisfy: [:removed | removed == g]]).
     drawingBeforeImage := (drawingReader value: component value: record value: (record at: 'drawingBeforeOrder')) value: true.
     drawingExpectedImage := (drawingReader value: component value: record value: (record at: 'drawingAfterOrder')) value: false.
     record at: 'drawingOriginalImage' put: (drawingBeforeImage at: 'image').
     record at: 'drawingOriginalValue' put: (((root at: scope) at: 'copyObservation') value: (drawingBeforeImage at: 'value')).
     record at: 'orderIdsBinding' put: (record at: 'orderIds'); at: 'orderOriginalIds' put: (record at: 'orderIds') copy.
     record at: 'orderBeforeImage' put: (orderBeforeImage at: 'image');
       at: 'orderExpectedAfterImage' put: (orderExpectedImage at: 'image').
     (graphicalCurrent at: 'verify') value ifFalse: [component error: 'Original graphical capture drifted'].
     (record includesKey: 'topologySourceMaterialBefore') ifTrue: [
       ((record at: 'topologySourceMaterialBefore') at: 'verify') value
         ifFalse: [component error: 'Original topology source drifted during preparation'].
       record at: 'topologyPreparedActual' put: (graphicalCurrent at: 'diff') value;
         at: 'topologyPreparedImages' put: (graphicalCurrent at: 'terminalSnapshots') value
     ].
     graphicalPreflight := Dictionary new at: 'version' put: 1; at: 'mode' put: 'apply';
       at: 'current' put: graphicalCurrent; at: 'signature' put: token, '/g1'; yourself.
     record at: 'graphicalOriginal' put: graphicalCurrent; at: 'graphicalPreflight' put: graphicalPreflight
   ].
   (#('set_literal' 'set_comment' 'move_node' 'set_edge_route' 'rewire_data') includes: operation) ifTrue: [record
     at: 'fieldTargetParent' put: (record at: 'target') diagramElement manager;
     at: 'fieldNativePreparedActual' put: (graphicalCurrent at: 'diff') value;
     at: 'fieldNativePreparedImages' put: (graphicalCurrent at: 'terminalSnapshots') value].
   mode = 'prepare' ifTrue: [registry at: token put: record]. result := before.
   orderBeforeImage notNil ifTrue: [
     result := '{"observation":', result, ',"parent_order_before":', (orderBeforeImage at: 'image'),
       ',"parent_order_expected":', (orderExpectedImage at: 'image'),
       ',"drawing_order_before":', (drawingBeforeImage at: 'image'),
       ',"drawing_order_expected":', (drawingExpectedImage at: 'image'),
       ',"parent_order_signature":"', (orderBeforeImage at: 'signature'),
       '","graphical_current":', (graphicalCurrent at: 'descriptor'),
       ',"graphical_signature":"', (graphicalPreflight at: 'signature'), '"}'
   ]
 ] ifFalse: [
   stage := mode.
   preconditionConflict := true.
   record := registry at: token ifAbsent: [component error: 'Recovery token unavailable'].
   (record includesKey: 'commitResourceToken')
     ifTrue: [component error: 'Preparation-only commit resource material retained; persistent diff/inverse not yet authorized'].
   managed := #('managed_inverse' 'validate_managed_inverse') includes: mode.
   validation := #('validate_revert' 'validate_managed_inverse') includes: mode.
   validation ifTrue: [record := record copy].
   ((record at: 'component') = component getOID and: [(record at: 'diagramName') = (command at: 1)]) ifFalse: [component error: 'Token identity mismatch'].
   managed ifTrue: [
     command size = 8 ifFalse: [component error: 'Exact managed execution context required'].
     managedHead := command at: 6. managedState := command at: 7. managedResult := command at: 8.
     (#('applied' 'reverted') includes: managedState) ifFalse: [component error: 'Managed terminal direction required'].
     ((record at: 'managedInverseId' ifAbsent: [nil]) = managedHead and: [
       (record at: 'materialProtocol' ifAbsent: [nil]) = 'retained_inverse_v1' and: [
       (record at: 'state') = managedState and: [managedResult ~= managedHead and: [managedResult ~= token]]]])
       ifFalse: [component error: 'Managed inverse history head or direction differs'].
     (#('set_literal' 'set_comment' 'move_node' 'set_edge_route' 'rewire_data') includes: (record at: 'operation'))
       ifFalse: [component error: 'Managed operation bidirectional contract not implemented'].
     (record includesKey: 'fieldNativeBefore')
       ifFalse: [component error: 'Complete original native field material unavailable; refusing reconstruction'].
     undo := managedState = 'applied'
   ] ifFalse: [
     undo := #('revert' 'validate_revert') includes: mode.
     (undo or: [mode = 'apply']) ifFalse: [component error: 'Unknown command'].
     (undo and: [record includesKey: 'managedInverseId'])
       ifTrue: [component error: 'Retained material belongs to its current inverse head'].
     (record at: 'state') = (undo ifTrue: ['applied'] ifFalse: ['prepared']) ifFalse: [component error: 'Token cannot be replayed']
   ].
   targets := record at: 'targets'. operation := record at: 'operation'. args := record at: 'args'.
   (operation = 'connect_data' and: [record includesKey: 'connectMaterial']) ifTrue: [ | connectMaterial |
     connectMaterial := record at: 'connectMaterial'.
     (connectMaterial at: 'profile') = 'native_connect_material_v3' ifTrue: [
       component error: 'Finite Module reference capture is preparation-only; persistent write and inverse closure remain unverified'].
     (connectMaterial at: 'profile') = 'native_connect_material_v2' ifTrue: [
       undo ifTrue: [component error: 'Module reference history requires persistent inverse closure'].
       (connectMaterial at: 'moduleReferenceGuard') value
         ifFalse: [component error: 'Module inbound references changed before connect dispatch']]].
   fieldReplay := (#('set_literal' 'set_comment' 'move_node' 'set_edge_route' 'rewire_data') includes: operation)
     and: [undo or: [managed]].
   fieldLocal := fieldReplay and: [(record at: 'fieldLocalProfile' ifAbsent: [nil]) = 'native_source_local_inverse_v1'].
   (fieldReplay and: [fieldLocal not]) ifTrue: [
     ((record includesKey: 'fieldStatusReader') and: [record includesKey: 'fieldSourceRestoreFactory'])
       ifFalse: [component error: 'Native field/source execution proof unavailable; refusing legacy replay'].
     ((record includesKey: 'fieldOriginalAfterImages') and: [record includesKey: 'fieldNativePatchFactory'])
       ifFalse: [component error: 'Complete retained actual field patch material unavailable; refusing reconstruction'].
     fieldPatch := (record at: 'fieldNativePatchFactory') value: component
       value: (Array with: ((record at: 'fieldNativeBefore') at: 'snapshots') with: (record at: 'fieldOriginalAfterImages'))
       value: (undo ifTrue: ['undo'] ifFalse: ['redo']).
     ((fieldPatch isKindOf: Dictionary) and: [(fieldPatch at: 'profile') = 'native_field_patch_v2'])
       ifFalse: [component error: 'Audited local native field patch required'].
     (fieldPatch at: 'verifyBeforeApply') value ifFalse: [component error: 'Touched native field patch conflict']
   ].
   encoded := reader value: component value: (command at: 1) value: targets.
   orderRequired := #('disconnect_data' 'delete_node') includes: operation.
   (undo and: [orderRequired]) ifTrue: [
     (record includesKey: 'deleteInverseValuesReader') ifFalse: [component error: 'Original typed inverse material unavailable'].
     currentValues := ((root at: scope) at: 'copyObservation') value: ((root at: scope) at: 'observationValues').
     inverseValues := ((definition notNil and: [definition isArray and: [definition size = 2]])
       ifTrue: [definition last] ifFalse: [record at: 'deleteInverseValuesReader'])
       value: component value: record value: currentValues.
     (inverseValues isKindOf: Dictionary)
       ifFalse: [component error: inverseValues asString].
     (inverseValues at: 'compatible') == true
       ifFalse: [component error: 'Three-way inverse value conflict: ', (inverseValues at: 'conflicts') printString].
     inverseExpected := inverseValues at: 'expected'
     . (record includesKey: 'topologyLocalProfile') ifTrue: [
       topologyLocalPlanner isNil ifTrue: [component error: 'Explicit fresh local topology planner is required'].
       topologyLocalPlan := topologyLocalPlanner value: component value: record
         value: (Array with: currentValues with: inverseExpected).
       (topologyLocalPlan isKindOf: Dictionary) ifFalse: [component error: topologyLocalPlan asString].
       ((topologyLocalPlan at: 'profile') = 'ordinary_topology_local_inverse_v1'
         and: [(topologyLocalPlan at: 'verifyBeforeDispatch') value])
         ifFalse: [component error: 'Local native/source topology CURRENT preflight unavailable']
     ] ifFalse: [(record includesKey: 'topologyExactInverseFactory') ifTrue: [| exact |
       exact := (record at: 'topologyExactInverseFactory') value: component value: record value: currentValues.
       (exact isKindOf: Dictionary) ifFalse: [component error: exact asString].
       ((exact at: 'profile') = 'ordinary_topology_exact_inverse_v1' and: [(exact at: 'verifyBeforeDispatch') value])
         ifFalse: [component error: 'Exact retained topology inverse preflight unavailable'].
       record at: 'topologyExactInversePlan' put: exact
     ]]
   ] ifFalse: [fieldLocal ifTrue: [
     | localPlanner |
     (record at: 'fieldLocalHeadId') = (managed ifTrue: [managedHead] ifFalse: [token])
       ifFalse: [component error: 'Actual local native/source head does not own this history'].
     currentValues := ((root at: scope) at: 'copyObservation') value: ((root at: scope) at: 'observationValues').
     "Fresh fixed code may inspect retained original material; never replace the material."
     localPlanner := (definition notNil and: [definition class name asString = 'BlockContextTemplate'])
       ifTrue: [definition] ifFalse: [
       (definition isArray and: [definition size = 3]) ifTrue: [definition last]
         ifFalse: [record at: 'fieldLocalPlanner']].
     localPlanner class name asString = 'BlockContextTemplate'
       ifFalse: [component error: 'Fixed current local planner required'].
     fieldLocalPlan := localPlanner value: component value: record
       value: (Array with: currentValues with: (undo ifTrue: ['undo'] ifFalse: ['redo'])).
     ((fieldLocalPlan isKindOf: Dictionary) and: [(fieldLocalPlan at: 'profile') = 'native_source_local_inverse_v1'])
       ifFalse: [component error: fieldLocalPlan asString].
     fieldPatch := fieldLocalPlan at: 'nativePatch'. inverseExpected := (fieldLocalPlan at: 'values') at: 'expected'
   ] ifFalse: [
     encoded = (record at: (undo ifTrue: ['after'] ifFalse: ['before']))
       ifFalse: [preconditionConflict := true. component error: 'Patch conflict']]].
   diagram := (root at: scope) at: 'diagram'.
   diagram == (record at: 'diagram') ifFalse: [preconditionConflict := true. component error: 'Graphics source changed; recovery expired'].
   scopeView := (root at: scope) at: 'activeDiagram'.
   (sameOrder value: ((root at: scope) at: 'activeScopeChain') value: (record at: 'scopeChain' ifAbsent: [#()]))
     ifFalse: [preconditionConflict := true. component error: 'Hierarchy object identity changed'].
   target := record at: 'target'.
   fieldReplay ifTrue: [
     | originalParent |
     originalParent := record at: 'fieldTargetParent' ifAbsent: [| image parentSlot parentObject graphSlot |
       operation = 'rewire_data' ifFalse: [component error: 'Original field target parent unavailable'].
       "The first rewire version already retained this original slot in its complete images."
       parentObject := target diagramElement.
       image := ((record at: 'fieldNativeBefore') at: 'snapshots') at: parentObject
         ifAbsent: [component error: 'Original rewire occurrence material unavailable'].
       parentSlot := parentObject class allInstVarNames indexOf: 'manager'.
       parentSlot = 0 ifTrue: [parentSlot := parentObject class allInstVarNames indexOf: #manager].
       parentSlot = 0 ifTrue: [
         "SGConnectionWrapperGO delegates manager to its original graphObject."
         graphSlot := parentObject class allInstVarNames indexOf: 'graphObject'.
         graphSlot = 0 ifTrue: [graphSlot := parentObject class allInstVarNames indexOf: #graphObject].
         (image first = 'fields' and: [graphSlot > 0 and: [image last size = parentObject class instSize]])
           ifFalse: [component error: 'Original rewire graphObject slot material unavailable'].
         parentObject := image last at: graphSlot.
         parentObject == target diagramElement basicGraphObject
           ifFalse: [component error: 'Original rewire basic object identity expired'].
         image := ((record at: 'fieldNativeBefore') at: 'snapshots') at: parentObject
           ifAbsent: [component error: 'Original rewire basic object material unavailable'].
         parentSlot := parentObject class allInstVarNames indexOf: 'manager'.
         parentSlot = 0 ifTrue: [parentSlot := parentObject class allInstVarNames indexOf: #manager]].
       (image first = 'fields' and: [parentSlot > 0 and: [image last size = parentObject class instSize]])
         ifFalse: [component error: 'Original rewire parent slot material unavailable'].
       image last at: parentSlot].
     (target diagramElement manager == originalParent and: [
       (target diagramElement manager children anySatisfy: [:member | member == target diagramElement])])
       ifFalse: [component error: 'Native field target parent or occurrence expired']
   ].
   (record includesKey: 'portChildScope') ifTrue: [
     | child hierarchy suffix interfaces |
     hierarchy := target diagramElement. child := record at: 'portChildParent'.
     hierarchy contents == child ifFalse: [component error: 'Hierarchy child manager identity changed'].
     hierarchy manager == (record at: 'portParent') ifFalse: [component error: 'Hierarchy parent identity changed'].
     encoded := reader value: component value: (record at: 'portChildScope') value: #().
     encoded = (record at: (undo ifTrue: ['portChildAfter'] ifFalse: ['portChildBefore']))
       ifFalse: [component error: 'Hierarchy child scope conflict'].
     (record at: 'portScopeNames') doWithIndex: [:name :i |
       encoded := reader value: component value: name value: #().
       encoded = ((record at: (undo ifTrue: ['portScopesAfter'] ifFalse: ['portScopesBefore'])) at: i)
         ifFalse: [component error: 'Hierarchy descendant scope conflict']
     ].
     suffix := undo ifTrue: ['After'] ifFalse: ['Before'].
     (sameOrder value: (record at: 'portParent') children value: (record at: ('port', suffix, 'ParentOrder')))
       ifFalse: [component error: 'Hierarchy parent order conflict'].
     (sameOrder value: child children value: (record at: ('port', suffix, 'ChildOrder')))
       ifFalse: [component error: 'Hierarchy child order conflict'].
     interfaces := hierarchy basicGraphObject interfaceGOs.
     (sameOrder value: interfaces value: (record at: ('port', suffix, 'InterfaceOrder')))
       ifFalse: [component error: 'Hierarchy interface order conflict'].
     scopeView := (root at: scope) at: 'activeDiagram'
   ].
   (#('set_formula' 'set_formula_binding') includes: operation) ifTrue: [
     | formula identifiers values config mapping entry expected |
     target isValid ifFalse: [component error: 'Formula target became invalid'].
     formula := target element instVarNamed: 'formula'.
     (formula == (record at: 'formulaObject') and: [formula owner == target element])
       ifFalse: [component error: 'Formula object or owner changed'].
     identifiers := formula identifiers. values := record at: 'formulaIdentifierValues'.
     (sameOrder value: identifiers value: (record at: 'formulaIdentifiers'))
       ifFalse: [component error: 'Formula formal identity or order changed'].
     1 to: identifiers size do: [:i | | id saved | id := identifiers at: i. saved := values at: i.
       (id identifier = saved first and: [id aliasName = (saved at: 2)]) ifFalse: [component error: 'Formula formal contents changed']
     ].
     ((formula formulaBasic = (record at: ((undo and: [operation = 'set_formula']) ifTrue: ['newFormulaText'] ifFalse: ['oldFormulaText']))) and: [
       formula esFormula = (record at: ((undo and: [operation = 'set_formula']) ifTrue: ['newFormulaCompiled'] ifFalse: ['oldFormulaCompiled']))])
       ifFalse: [component error: 'Formula raw contents changed'].
     config := component getDefaultData.
     (config notNil and: [config isValid and: [config item == (record at: 'configuration')]])
       ifFalse: [component error: 'Formula configuration identity changed'].
     mapping := config item instVarNamed: 'dependentParameters'.
     mapping == (record at: 'bindingMap') ifFalse: [component error: 'Formula binding map identity changed'].
     entry := mapping at: target element aliasName ifAbsent: [component error: 'Formula bindings removed'].
     entry == (record at: 'bindingEntry') ifFalse: [component error: 'Formula binding entry identity changed'].
     expected := record at: ((undo and: [operation = 'set_formula_binding']) ifTrue: ['newBindings'] ifFalse: ['oldBindings']).
     (sameMap value: entry value: expected) ifFalse: [component error: 'Formula raw bindings conflict'].
     operation = 'set_formula_binding' ifTrue: [
       (record at: 'newActual') isValid ifFalse: [component error: 'Binding parameter became invalid'].
       (record at: 'newActual') element aliasName = (record at: 'newActualAlias')
         ifFalse: [component error: 'Binding parameter identity changed']
     ]
   ].
   (record includesKey: 'sequenceState') ifTrue: [
     | saved calls |
     saved := record at: 'sequenceState'.
     calls := (target diagramElement respondsTo: #sequenceCalls) ifTrue: [target diagramElement sequenceCalls] ifFalse: [#()].
     (sameOrder value: calls value: (saved collect: [:s | s first]))
       ifFalse: [component error: 'Sequence call identity or order changed'].
     saved do: [:s |
       | call |
       call := s first.
       ((call manager == (s at: 2) and: [call seqNo = (s at: 3)]) and: [
         call seqAlias == (s at: 4) and: [(call instVarNamed: 'labelGO') == (s at: 6)]])
         ifFalse: [component error: 'Sequence call ownership or binding changed']
     ]
   ].
   (#('set_array_values' 'set_matrix_values' 'set_distribution_values') includes: operation) ifTrue: [
     | config destination current expected |
     config := component getDefaultData.
     (config notNil and: [config item == (record at: 'configuration')]) ifFalse: [component error: 'Default configuration identity changed'].
     destination := target element isUniqueDataConfigured ifTrue: [config item relatedClassConfig] ifFalse: [config item].
     destination == (record at: 'destination') ifFalse: [component error: 'Array configuration owner changed'].
     current := destination configForElement: target element. expected := record at: (undo ifTrue: ['newConfig'] ifFalse: ['oldConfig']).
     (current class = expected class and: [current maxSize = expected maxSize and: [current value = expected value]])
       ifFalse: [component error: 'Array raw configuration conflict']
   ].
   operation = 'set_scalar_value' ifTrue: [
     | config destination |
     config := component getDefaultData.
     (config notNil and: [config item == (record at: 'configuration')]) ifFalse: [component error: 'Default configuration identity changed'].
     destination := target element isUniqueDataConfigured ifTrue: [config item relatedClassConfig] ifFalse: [config item].
     destination == (record at: 'destination') ifFalse: [component error: 'Scalar configuration owner changed'].
     (destination configForElement: target element) = (record at: (undo ifTrue: ['newConfig'] ifFalse: ['oldConfig'])) ifFalse: [component error: 'Scalar raw configuration conflict']
   ].
   operation = 'set_table_values' ifTrue: [
     | config destination current expected |
     config := component getDefaultData.
     (config notNil and: [config item == (record at: 'configuration')]) ifFalse: [component error: 'Table configuration identity changed'].
     destination := target element isUniqueDataConfigured ifTrue: [config item relatedClassConfig] ifFalse: [config item].
     destination == (record at: 'destination') ifFalse: [component error: 'Table configuration owner changed'].
     current := destination configForElement: target element.
     current == (record at: 'tableConfig') ifFalse: [component error: 'Table raw configuration identity changed'].
     expected := record at: (undo ifTrue: ['newTableValues'] ifFalse: ['oldTableValues']).
     (current values == expected and: [expected getPhysValue = (record at: (undo ifTrue: ['newTablePhysical'] ifFalse: ['oldTablePhysical']))])
       ifFalse: [component error: 'Table value conflict'].
     (record at: 'oldTableValues') getPhysValue = (record at: 'oldTablePhysical')
       ifFalse: [component error: 'Retained table inverse was modified'].
     (config getEntryFor: target) dataElement isWriteProtected ifTrue: [component error: 'Table became write protected']
   ].
   (#('set_table_axis' 'set_table_interpolation') includes: operation) ifTrue: [
     | config destination current expected |
     config := component getDefaultData.
     (config notNil and: [config item == (record at: 'configuration')]) ifFalse: [component error: 'Table configuration identity changed'].
     destination := target element isUniqueDataConfigured ifTrue: [config item relatedClassConfig] ifFalse: [config item].
     destination == (record at: 'destination') ifFalse: [component error: 'Table configuration owner changed'].
     current := destination configForElement: target element.
     current == (record at: 'tableConfig') ifFalse: [component error: 'Table raw configuration identity changed'].
     operation = 'set_table_axis' ifTrue: [
       expected := record at: (undo ifTrue: ['newTablePart'] ifFalse: ['oldTablePart']).
       ((current perform: (record at: 'tableSlot')) == expected and: [
         expected getPhysValue = (record at: (undo ifTrue: ['newTablePartPhysical'] ifFalse: ['oldTablePartPhysical']))])
         ifFalse: [component error: 'Table setting conflict'].
       (record at: 'oldTablePart') getPhysValue = (record at: 'oldTablePartPhysical')
         ifFalse: [component error: 'Retained table setting inverse was modified']
     ] ifFalse: [
       target element getInterpolation = (record at: (undo ifTrue: ['newDeclarationInterpolation'] ifFalse: ['oldDeclarationInterpolation']))
         ifFalse: [component error: 'Table declaration interpolation conflict']
     ].
     (config getEntryFor: target) dataElement isWriteProtected ifTrue: [component error: 'Table became write protected']
   ].
   operation = 'set_sequence' ifTrue: [
     | alias method |
     value := record at: (undo ifTrue: ['previous'] ifFalse: ['value']).
     alias := record at: (undo ifTrue: ['oldAlias'] ifFalse: ['newAlias']).
     method := record at: (undo ifTrue: ['oldMethod'] ifFalse: ['newMethod']).
     (target getMethod: alias) == method ifFalse: [component error: 'Sequence method identity changed'].
     method notNil ifTrue: [
       method owner == diagram specification ifFalse: [component error: 'Sequence method owner changed'].
       (target checkSequence: (Array with: alias with: value)) ifFalse: [component error: 'Sequence number already occupied']
     ]
   ].
   operation = 'set_sequence_number' ifTrue: [
     value := record at: (undo ifTrue: ['previous'] ifFalse: ['value']).
     (target checkSequence: (Array with: target diagramElement description first with: value)) ifFalse: [component error: 'Sequence number already occupied']
   ].
   operation = 'create_block' ifTrue: [
     (record includesKey: 'messageOwnerReferences') ifTrue: [
       (enumReferences value: component) = (record at: 'messageOwnerReferences')
         ifFalse: [preconditionConflict := true. component error: 'Message owner references changed; operation refused']
     ].
     ((record includesKey: 'createMaterial') and: [(record at: 'createMaterial') includesKey: 'declarationBefore']) ifTrue: [
       undo ifTrue: [preconditionConflict := true.
         component error: 'Declaration same-original-object history required; delete/recreate inverse forbidden'].
       (((record at: 'createMaterial') at: 'phase') = 'prepared' and: [
         ((((record at: 'createMaterial') at: 'declarationBefore') at: 'images') at: 'verify') value])
         ifFalse: [preconditionConflict := true. component error: 'Original declaration body/configuration changed before factory dispatch'].
       ((record at: 'createMaterial') at: 'messageDeclaration' ifAbsent: [false]) ifTrue: [
         (((((record at: 'createMaterial') at: 'declarationBefore') at: 'referenceRows')
             value: component item dbObject readReferences) = (((record at: 'createMaterial') at: 'declarationBefore') at: 'ownerReferences')
           and: [((((record at: 'createMaterial') at: 'declarationBefore') at: 'referenceRows')
             value: component item dbObject readIsReferencedByOnly) = (((record at: 'createMaterial') at: 'declarationBefore') at: 'ownerDatabaseReferences')])
           ifFalse: [preconditionConflict := true. component error: 'Complete original message Module reference sets changed before factory dispatch']
       ]
     ].
     (record includesKey: 'placementHierarchy') ifFalse: [
       (record at: 'diagramName') = 'Main' ifFalse: [component error: 'Legacy child placement identity unavailable'].
       "Older Main recovery records predate scoped placement."
       record at: 'placementHierarchy' put: nil
     ].
     (sameOrder value: (record at: 'creationParent') children value: (record at: (undo ifTrue: ['creationAfterOrder'] ifFalse: ['creationOrder'])))
       ifFalse: [preconditionConflict := true. component error: 'Creation parent order conflict'].
     (diagram getGraphicalHierarchyFromHierarchyElement: (record at: 'placementHierarchy')) == (record at: 'creationParent')
       ifFalse: [component error: 'Creation hierarchy identity changed'].
     (undo and: [args first = 'hierarchy']) ifTrue: [
       (record includesKey: 'createdHierarchyAfter') ifFalse: [component error: 'Created hierarchy has no child recovery checkpoint'].
       encoded := reader value: component value: (record at: 'createdHierarchyScope') value: #().
       encoded = (record at: 'createdHierarchyAfter')
         ifFalse: [component error: 'Created hierarchy contents changed; inverse refused']
     ].
     (undo and: [record includesKey: 'createdModel']) ifTrue: [
       | walk visited createdElement |
       visited := 0. createdElement := (record at: 'createdModel') element.
       (record at: 'createdModel') isValid ifFalse: [component error: 'Created model identity changed'].
       walk := [:view :depth |
         (depth > 16 or: [visited >= 65536]) ifTrue: [component error: 'Created model reference scan bound reached'].
         view getAllDiagramElements do: [:node |
           visited := visited + 1.
           visited > 65536 ifTrue: [component error: 'Created model reference scan bound reached'].
           (node isBlockDiagramFunctionalElement and: [node getModelElement element == createdElement]) ifTrue: [
             node diagramElement == (record at: 'created') diagramElement
               ifFalse: [component error: 'Created model has another graphical occurrence; inverse refused']
           ].
           node isBlockDiagramHierarchy ifTrue: [walk value: node value: depth + 1]
         ]
       ]. walk value: diagram value: 0
     ].
     (record includesKey: 'enumFolder') ifTrue: [
       | folder enumeration |
       folder := record at: 'enumFolder'.
       folder isValid ifFalse: [component error: 'Enum folder changed'].
       undo ifTrue: [
         enumeration := record at: 'createdDefinition'.
         (enumeration isValid and: [(folder getItem: (record at: 'enumName')) item == enumeration item])
           ifFalse: [component error: 'Created enum identity changed'].
         enumeration getEnumerationValues asArray = (record at: 'enumItems') asArray ifFalse: [component error: 'Created enum items changed'].
         record at: 'enumInverseItems' put: enumeration getEnumerationValues asArray copy.
         (enumReferences value: enumeration) = (record at: 'enumReferencesAfter')
           ifFalse: [component error: 'Created enum references changed; inverse refused'].
         component getAllVariables do: [:candidate |
           ((candidate respondsTo: #getModelType) and: [candidate getModelType = 'enum']) ifTrue: [
             (candidate getRepresentedClass item == enumeration item and: [candidate element ~~ (record at: 'createdModel') element])
               ifTrue: [preconditionConflict := true. component error: 'Created enum still has another declaration; inverse refused']
           ]
         ]
       ] ifFalse: [
         (folder item childrenKeys anySatisfy: [:k | k label = (record at: 'enumName')])
           ifTrue: [component error: 'Enum type name appeared after prepare']
       ]
     ]
   ].
   orderRequired := #('disconnect_data' 'delete_node') includes: operation.
   orderRequired ifTrue: [
     undo ifTrue: [
       (record includesKey: 'detachedGraphicalGuard')
         ifFalse: [component error: 'Detached graphical material checkpoint unavailable'].
       ((record at: 'detachedGraphicalGuard') at: 'verify') value
         ifFalse: [component error: 'Detached graphical material changed; inverse refused']
     ].
     (record includesKey: 'edgeDependencyReader') ifFalse: [component error: 'Original endpoint dependency record unavailable'].
     (((record at: 'edgeDependencyReader') value: component value: record value: (undo ifTrue: ['detached'] ifFalse: ['attached'])) == true)
       ifFalse: [component error: 'Original endpoint dependency conflict'].
     (record includesKey: 'orderParent') ifFalse: [preconditionConflict := true. component error: 'Recovery record lacks order checkpoint'].
     orderParent := record at: 'orderParent'.
     orderParent == (scopeView == diagram ifTrue: [diagram topGraphicalHierarchy contents]
       ifFalse: [scopeView diagramElement contents])
       ifFalse: [preconditionConflict := true. component error: 'Direct scope parent identity changed'].
     expectedOrder := record at: (undo ifTrue: ['beforeOrder'] ifFalse: ['afterOrder']).
     drawingReader := record at: 'drawingOrderReader' ifAbsent: [component error: 'Original drawing checkpoint unavailable'].
     expectedDrawingOrder := record at: (undo ifTrue: ['drawingBeforeOrder'] ifFalse: ['drawingAfterOrder']).
     (undo and: [definition notNil]) ifTrue: [
       orderPlan := (definition isArray ifTrue: [definition first] ifFalse: [definition])
         value: component value: record value: orderParent.
       (orderPlan isKindOf: Dictionary) ifFalse: [component error: orderPlan asString].
       ((orderPlan at: 'compatible') and: [(orderPlan at: 'verifyBeforeApply') value])
         ifFalse: [preconditionConflict := true. component error: 'Parent children three-way inverse conflict: ',
           (orderPlan at: 'conflicts') printString].
       restorePositions := orderPlan at: 'positions'. expectedOrder := orderPlan at: 'merged'.
       expectedDrawingOrder := orderPlan at: 'drawingMerged'.
       drawingWitnessEncoded := ((root at: scope) at: 'encodeObservation') value: (orderPlan at: 'drawingWitness').
       mode = 'revert' ifTrue: [
         drawingWitnessEncoded = ((record at: 'graphicalPreflight') at: 'drawingWitnessEncoded' ifAbsent: ['null'])
           ifFalse: [preconditionConflict := true. component error: 'Durable causal drawing witness changed']]
     ] ifFalse: [
       (sameOrder value: orderParent children value: (record at: (undo ifTrue: ['afterOrder'] ifFalse: ['beforeOrder'])))
         ifFalse: [preconditionConflict := true. component error: 'Parent children order conflict']].
     (record includesKey: 'orderEvidenceReader') ifTrue: [
       orderReader := record at: 'orderEvidenceReader'.
       orderBeforeImage := orderReader value: record value: orderParent children asArray copy.
       orderExpectedImage := orderReader value: record value: expectedOrder.
       mode = 'revert' ifTrue: [
         (command size = 7 and: [(command at: 6) = (orderBeforeImage at: 'signature')])
           ifFalse: [preconditionConflict := true. component error: 'Durable CURRENT parent order preflight changed or missing']]
     ]
     . drawingBeforeImage := (drawingReader value: component value: record value: orderParent sortedChildren asArray copy) value: true.
     drawingExpectedImage := (drawingReader value: component value: record value: expectedDrawingOrder) value: false
   ].
   validation ifTrue: [
     result := reader value: component value: (command at: 1) value: targets.
     topologyLocalPlan notNil ifTrue: [| prepared |
       ((result = encoded) and: [(topologyLocalPlan at: 'verifyBeforeDispatch') value])
         ifFalse: [component error: 'Local topology CURRENT changed during validation'].
       prepared := record at: 'topologyLocalPreflight'.
       prepared at: 'plan' put: topologyLocalPlan; at: 'observation' put: encoded;
         at: 'expected' put: (((root at: scope) at: 'encodeObservation') value: inverseExpected);
         at: 'head' put: token; at: 'state' put: (record at: 'state')
     ].
     fieldLocal ifTrue: [| localPrepared |
       (result = encoded and: [(fieldLocalPlan at: 'verifyBeforeDispatch') value])
         ifFalse: [component error: 'Local CURRENT changed during validation'].
       localPrepared := record at: 'fieldLocalPreflight'.
       localPrepared at: 'plan' put: fieldLocalPlan; at: 'observation' put: encoded;
         at: 'expected' put: (((root at: scope) at: 'encodeObservation') value: inverseExpected);
         at: 'head' put: (managed ifTrue: [managedHead] ifFalse: [token]);
         at: 'state' put: (record at: 'state'); at: 'result' put: (managed ifTrue: [managedResult] ifFalse: [nil]);
         at: 'direction' put: (undo ifTrue: ['undo'] ifFalse: ['redo']).
       result := '{"observation":', result, ',"inverse_expected":', (localPrepared at: 'expected'),
         ',"field_local_inverse_profile":"native_source_local_inverse_v1","native_token":"', token, '"}'
     ].
     orderBeforeImage notNil ifTrue: [
       (record includesKey: 'graphicalOriginal') ifFalse: [component error: 'Original graphical material unavailable'].
       graphicalCurrent := (((record includesKey: 'topologyCaptureProfile') and: [topologyCurrentReader notNil])
         ifTrue: [topologyCurrentReader] ifFalse: [record at: 'graphicalReader']) value: component
         value: ((record at: 'graphicalOriginal') at: 'snapshots') keys asArray.
       (graphicalCurrent isKindOf: Dictionary) ifFalse: [component error: graphicalCurrent].
       graphicalPreflight := record at: 'graphicalPreflight'.
       graphicalPreflight at: 'version' put: (graphicalPreflight at: 'version') + 1;
         at: 'mode' put: 'revert'; at: 'current' put: graphicalCurrent;
         at: 'observation' put: result; at: 'inverseExpected' put: (((root at: scope) at: 'copyObservation') value: inverseExpected).
       graphicalPreflight at: 'signature' put: token, '/g', (graphicalPreflight at: 'version') printString.
       graphicalPreflight at: 'drawingWitnessEncoded' put: (drawingWitnessEncoded ifNil: ['null']).
       result := '{"observation":', result, ',"parent_order_before":', (orderBeforeImage at: 'image'),
         ',"parent_order_expected":', (orderExpectedImage at: 'image'),
         ',"drawing_order_before":', (drawingBeforeImage at: 'image'),
         ',"drawing_order_expected":', (drawingExpectedImage at: 'image'),
         ',"drawing_order_witness":', (drawingWitnessEncoded ifNil: ['null']),
         ',"parent_order_signature":"', (orderBeforeImage at: 'signature'),
         '","graphical_current":', (graphicalCurrent at: 'descriptor'),
         ',"graphical_signature":"', (graphicalPreflight at: 'signature'),
         '","inverse_expected":', (((root at: scope) at: 'encodeObservation') value: inverseExpected), '}'
     ]
   ] ifFalse: [
   orderPlan notNil ifTrue: [(orderPlan at: 'verifyBeforeApply') value
     ifFalse: [preconditionConflict := true. component error: 'Prepared parent order inverse changed']].
   topologyLocalPlan notNil ifTrue: [| prepared |
     prepared := record at: 'topologyLocalPreflight'.
     ((prepared at: 'head' ifAbsent: [nil]) = token and: [(prepared at: 'state') = 'applied' and: [
       (prepared at: 'observation') = encoded and: [
       (prepared at: 'expected') = (((root at: scope) at: 'encodeObservation') value: inverseExpected) and: [
       (((prepared at: 'plan') at: 'verifyBeforeDispatch') value) and: [(topologyLocalPlan at: 'verifyBeforeDispatch') value]]]]])
       ifFalse: [component error: 'Durable local topology CURRENT/expected/head changed before setters'].
     record at: 'topologyLocalInversePlan' put: topologyLocalPlan
   ].
   undo ifTrue: [record at: 'drawingInverseWitnessEncoded' put: (drawingWitnessEncoded ifNil: ['null'])].
   orderRequired ifTrue: [
     undo ifTrue: [((record at: 'detachedGraphicalGuard') at: 'verify') value
       ifFalse: [preconditionConflict := true. component error: 'Detached graphical material changed before setters']].
     (((record at: 'edgeDependencyReader') value: component value: record value: (undo ifTrue: ['detached'] ifFalse: ['attached'])) == true)
       ifFalse: [preconditionConflict := true. component error: 'Endpoint dependencies changed before setters']].
   orderBeforeImage notNil ifTrue: [
     ((orderReader value: record value: orderParent children asArray copy) at: 'signature') = (orderBeforeImage at: 'signature')
       ifFalse: [preconditionConflict := true. component error: 'CURRENT parent order changed before setters'].
     record at: (undo ifTrue: ['orderRevertStartedImage'] ifFalse: ['orderStartedImage']) put: (orderBeforeImage at: 'image')
       ; at: (undo ifTrue: ['drawingRevertStartedImage'] ifFalse: ['drawingStartedImage']) put: (drawingBeforeImage at: 'image')
   ].
   orderRequired ifTrue: [
     graphicalPreflight := record at: 'graphicalPreflight' ifAbsent: [component error: 'Graphical CURRENT unavailable'].
     graphicalCurrent := graphicalPreflight at: 'current'.
     ((command size = (undo ifTrue: [7] ifFalse: [6]) and: [
       command last = (graphicalPreflight at: 'signature')]) and: [
       (graphicalPreflight at: 'mode') = (undo ifTrue: ['revert'] ifFalse: ['apply']) and: [
       (graphicalCurrent at: 'verify') value]])
       ifFalse: [preconditionConflict := true. component error: 'Durable graphical CURRENT changed before setters'].
     undo ifTrue: [
       ((graphicalPreflight at: 'observation' ifAbsent: [nil]) = encoded and: [
         (inverseValues at: 'same') value: (graphicalPreflight at: 'inverseExpected' ifAbsent: [nil]) value: inverseExpected])
         ifFalse: [preconditionConflict := true. component error: 'Prepared inverse observations changed before setters'].
       record at: 'inverseExpectedValues' put: (((root at: scope) at: 'copyObservation') value: inverseExpected);
         at: 'inverseExpectedEncoded' put: (((root at: scope) at: 'encodeObservation') value: inverseExpected)
     ].
     record at: (undo ifTrue: ['graphicalRevertStarted'] ifFalse: ['graphicalStarted']) put: (graphicalCurrent at: 'descriptor');
       at: (undo ifTrue: ['graphicalRevertStartedSignature'] ifFalse: ['graphicalStartedSignature'])
         put: (graphicalPreflight at: 'signature')
   ].
   fieldLocal ifTrue: [| localPrepared |
     localPrepared := record at: 'fieldLocalPreflight'.
     ((localPrepared at: 'head' ifAbsent: [nil]) = (managed ifTrue: [managedHead] ifFalse: [token]) and: [
       (localPrepared at: 'state') = (record at: 'state') and: [
       (localPrepared at: 'result') = (managed ifTrue: [managedResult] ifFalse: [nil]) and: [
       (localPrepared at: 'direction') = (undo ifTrue: ['undo'] ifFalse: ['redo']) and: [
       (localPrepared at: 'observation') = encoded and: [
       (localPrepared at: 'expected') = (((root at: scope) at: 'encodeObservation') value: inverseExpected) and: [
       (((localPrepared at: 'plan') at: 'verifyBeforeDispatch') value) and: [(fieldLocalPlan at: 'verifyBeforeDispatch') value]]]]]]])
       ifFalse: [component error: 'Prepared local native/source CURRENT or history context changed before setters'].
     record at: 'inverseExpectedValues' put: (((root at: scope) at: 'copyObservation') value: inverseExpected);
       at: 'inverseExpectedEncoded' put: (((root at: scope) at: 'encodeObservation') value: inverseExpected);
       at: 'fieldLocalExecutionBeforeNative' put: (fieldLocalPlan at: 'nativeCurrent');
       at: 'fieldLocalExecutionBeforeSource' put: ((fieldLocalPlan at: 'sourceMaterial') copy
         at: 'snapshots' put: (fieldLocalPlan at: 'sourceCurrent');
         at: 'verify' put: [((fieldLocalPlan at: 'sourceMaterial') at: 'verifyImages') value: (fieldLocalPlan at: 'sourceCurrent')]; yourself);
       at: 'fieldLocalExecutionBeforeValues' put: currentValues.
     record removeKey: 'fieldLocalExecutedHead' ifAbsent: []
   ].
   (record includesKey: 'topologyCaptureProfile') ifTrue: [| native sourceBefore fullEncoded scopedEncoded completeValues |
     native := record at: 'topologyNativeBefore'.
     record at: 'topologyExecutionBeforeNative' put: ((native at: 'captureImages') value:
       (native at: 'snapshots') keys).
     sourceBefore := (record at: 'topologySourceMaterialReader') value: component value:
       (Array with: diagram specification specSourceInternalOrNil with:
         ((record at: 'topologySourceMaterialBefore') at: 'snapshots') keys).
     (sourceBefore isKindOf: Dictionary) ifFalse: [component error: sourceBefore asString].
     fullEncoded := reader value: component value: (command at: 1) value: #().
     (fullEncoded startsWith: 'BDE_STRUCTURE_ERROR:') ifTrue: [component error: fullEncoded].
     completeValues := ((root at: scope) at: 'copyObservation') value: ((root at: scope) at: 'observationValues').
     scopedEncoded := reader value: component value: (command at: 1) value: targets.
     scopedEncoded = encoded ifFalse: [component error: 'Scoped topology CURRENT changed during complete head capture'].
     ((sourceBefore at: 'verify') value and: [(native at: 'verifyImages') value:
       (record at: 'topologyExecutionBeforeNative')])
       ifFalse: [component error: 'Topology CURRENT changed before mutation'].
     record at: 'topologyExecutionBeforeSource' put: sourceBefore;
       at: 'topologyExecutionBeforeValues' put: completeValues;
       at: 'topologyExecutionBeforeState' put: (record at: 'state');
       at: 'topologyExecutionBeforeParentOrder' put: orderParent children asArray copy;
       at: 'topologyExecutionBeforeDrawingOrder' put: orderParent sortedChildren asArray copy;
       at: 'topologyExecutionBeforeParentEvidence' put: (orderBeforeImage at: 'value');
       at: 'topologyExecutionBeforeDrawingEvidence' put: (drawingBeforeImage at: 'value');
       at: 'topologyExecutionSerial' put: (record at: 'topologyExecutionSerial' ifAbsent: [0]) + 1.
     record removeKey: 'topologyExecutedHead' ifAbsent: [].
     (undo and: [record includesKey: 'topologyExactInversePlan']) ifTrue: [
       ((record at: 'topologyExactInversePlan') at: 'verifyBeforeDispatch') value
         ifFalse: [component error: 'Exact topology CURRENT changed before model mutation']]
   ].
   ((root at: scope) includesKey: 'allocatorRetirementPending')
     ifTrue: [preconditionConflict := true. component error: 'Allocator scope retirement pending; ordinary writes blocked'].
   mutationStarted := true.
   failureRecord := record.
   preconditionConflict := false.
   managed ifTrue: [record at: 'managedExecution' put: (Dictionary new
     at: 'head' put: managedHead; at: 'result' put: managedResult;
     at: 'expectedState' put: managedState; at: 'afterState' put: (undo ifTrue: ['reverted'] ifFalse: ['applied']); yourself)].
   record at: 'state' put: (undo ifTrue: ['revert_started'] ifFalse: ['started']).
   (record includesKey: 'fieldNativeBefore') ifTrue: [| serial |
     serial := (record at: 'fieldExecutionSerial' ifAbsent: [0]) + 1.
     record removeKey: 'fieldSourceCompensation' ifAbsent: [].
     record at: 'fieldExecutionSerial' put: serial;
       at: 'fieldExecutionPatch' put: nil; at: 'fieldExecutionNormalization' put: nil;
       at: 'fieldExecutionSourcePatch' put: nil; at: 'fieldExecutionSourceRoot' put: nil;
       at: 'fieldSourceTransactionId' put: nil;
       at: 'fieldExecutionStatus' put: (Dictionary new
         at: 'execution_sequence' put: serial;
         at: 'direction' put: (fieldReplay ifTrue: [undo ifTrue: ['undo'] ifFalse: ['redo']] ifFalse: ['forward']);
         at: 'phase' put: 'started'; at: 'store_started' put: false; at: 'store_completed' put: false;
         at: 'terminal_verified' put: false; at: 'serialized_source_verified' put: false; yourself)
   ].
   fieldReplay ifTrue: [
     record at: 'fieldExecutionPatch' put: fieldPatch;
       at: 'fieldExecutionDirection' put: (undo ifTrue: ['undo'] ifFalse: ['redo']).
     stage := 'field_patch'. (record at: 'fieldExecutionStatus') at: 'phase' put: stage.
     (fieldPatch at: 'execute') value.
     fieldLocal ifTrue: [
       fieldAnchors := fieldLocalPlan at: 'anchors'. fieldDesired := fieldLocalPlan at: 'nativeDesired'.
       (((record at: 'fieldNativeBefore') at: 'verifyImages') value: fieldDesired)
         ifFalse: [component error: 'Local raw patch differs from merged native target']
     ] ifFalse: [
       fieldAnchors := (((record at: 'fieldNativeBefore') at: 'snapshots') keys,
         (record at: 'fieldOriginalAfterImages') keys) asOrderedCollection.
       fieldAnchors add: diagram topGraphicalHierarchy.
       fieldDesired := ((record at: 'fieldNativeBefore') at: 'captureImages') value: fieldAnchors].
     record at: 'fieldExecutionDesiredImages' put: fieldDesired
   ].
   (record includesKey: 'portChildScope') ifTrue: [
     | external internal hierarchy child interfaces suffix |
     hierarchy := target diagramElement. child := record at: 'portChildParent'.
     interfaces := hierarchy basicGraphObject interfaceGOs.
     operation = 'create_hierarchy_port' ifTrue: [
       undo ifTrue: [
         internal := record at: 'portInternal'.
         internal removeConnections. child removeGO: internal display: false
       ] ifFalse: [
         created := checkReturn value: ((args at: 2) = 'input'
           ifTrue: [target addInputPin: (args at: 3)] ifFalse: [target addOutputPin: (args at: 3)]).
         created isNil ifTrue: [component error: 'Native port creation returned nil'].
         external := created diagramElement. internal := external getInternalConnectorGO.
         record at: 'portInternal' put: internal; at: 'portExternal' put: external.
         (internal manager == child and: [external manager == hierarchy basicGraphObject])
           ifFalse: [component error: 'Created port owner mismatch'].
         (external oppHierNode == internal getConnectorGO and: [internal interfaceElementGO == external])
           ifFalse: [component error: 'Created port pairing mismatch']
       ]
     ] ifFalse: [
       external := record at: 'portExternal'. internal := record at: 'portInternal'.
       undo ifTrue: [
         (interfaces includes: external) ifTrue: [component error: 'Retained external port already exists'].
         interfaces add: external beforeIndex: (record at: 'portExternalIndex').
         (record at: 'portRetainedChild') do: [:s | restore value: s].
         (record at: 'portRetainedParent') do: [:s | restore value: s]
       ] ifFalse: [
         (record at: 'portParentEdges') do: [:edge | checkReturn value: (diagram removeDiagramObject: edge)].
         (record at: 'portChildEdges') do: [:edge | checkReturn value: (diagram removeDiagramObject: edge)].
         internal removeConnections. child removeGO: internal display: false
       ]
     ].
     undo ifTrue: [
       (sameOrder value: interfaces value: (record at: 'portBeforeInterfaceOrder'))
         ifFalse: [component error: 'Port inverse interface order mismatch'].
       (sameOrder value: child children value: (record at: 'portBeforeChildOrder'))
         ifFalse: [component error: 'Port inverse child order mismatch'].
       (sameOrder value: (record at: 'portParent') children value: (record at: 'portBeforeParentOrder'))
         ifFalse: [component error: 'Port inverse parent order mismatch']
     ] ifFalse: [
       record at: 'portAfterInterfaceOrder' put: interfaces asArray copy;
         at: 'portAfterChildOrder' put: child children asArray copy;
         at: 'portAfterParentOrder' put: (record at: 'portParent') children asArray copy
     ]
   ].
   (#('set_formula' 'set_formula_binding') includes: operation) ifTrue: [
     | formula config entry |
     formula := record at: 'formulaObject'. config := record at: 'configuration'.
     operation = 'set_formula' ifTrue: [
       formula formula: (record at: (undo ifTrue: ['oldFormulaText'] ifFalse: ['newFormulaText']));
         esFormula: (record at: (undo ifTrue: ['oldFormulaCompiled'] ifFalse: ['newFormulaCompiled'])).
       target element ownerSGClass modified
     ] ifFalse: [
       entry := record at: 'bindingEntry'.
       undo ifTrue: [entry at: (record at: 'bindingFormal') aliasName put: (record at: 'oldActualAlias'). config modified]
         ifFalse: [
           config addParameter: (record at: 'newActual') element forDependentParameter: target element identifier: (record at: 'bindingFormal').
           record at: 'newBindings' put: entry deepCopy
         ]
     ]. target autoCommitDatabase
   ].
   (#('set_table_axis' 'set_table_interpolation') includes: operation) ifTrue: [
     | raw destination |
     raw := record at: 'tableConfig'. destination := record at: 'destination'.
     operation = 'set_table_axis' ifTrue: [
       raw perform: (record at: 'tableSetter') with: (record at: (undo ifTrue: ['oldTablePart'] ifFalse: ['newTablePart']))
     ] ifFalse: [
       target element setInterpolation: (record at: (undo ifTrue: ['oldDeclarationInterpolation'] ifFalse: ['newDeclarationInterpolation'])).
       component item modified
     ].
     destination setConfig: raw forElement: target element.
     destination modified. target autoCommitDatabase
   ].
   operation = 'set_table_values' ifTrue: [
     | raw destination |
     raw := record at: 'tableConfig'. destination := record at: 'destination'.
     raw values: (record at: (undo ifTrue: ['oldTableValues'] ifFalse: ['newTableValues'])).
     destination setConfig: raw forElement: target element.
     destination modified. target autoCommitDatabase
   ].
   (#('set_array_values' 'set_matrix_values' 'set_distribution_values') includes: operation) ifTrue: [
     | destination config data |
     destination := record at: 'destination'.
     undo ifTrue: [destination setConfig: (record at: 'oldConfig') deepCopy forElement: target element] ifFalse: [
       config := component getDefaultData. data := checkReturn value: (config getEntryFor: target).
       operation = 'set_matrix_values' ifTrue: [
         checkReturn value: (data setXSize: (record at: 'value') size).
         checkReturn value: (data setYSize: (record at: 'value') first size)
       ] ifFalse: [checkReturn value: (data setSize: (record at: 'value') size)].
       checkReturn value: (data setPhysValue: (record at: 'value')).
       destination setConfig: data dataElement dataConfig forElement: target element.
       record at: 'newConfig' put: (destination configForElement: target element) deepCopy
     ].
     destination modified. target autoCommitDatabase
   ].
   operation = 'set_scalar_value' ifTrue: [
     | destination config data |
     destination := record at: 'destination'.
     undo ifTrue: [destination setConfig: (record at: 'oldConfig') forElement: target element] ifFalse: [
       config := component getDefaultData. data := checkReturn value: (config getEntryFor: target).
       checkReturn value: (data setPhysValue: (record at: 'value')).
       destination setConfig: data dataElement dataConfig forElement: target element.
       record at: 'newConfig' put: (destination configForElement: target element)
     ].
     destination modified. target autoCommitDatabase
   ].
   operation = 'set_sequence' ifTrue: [
     | alias |
     alias := record at: (undo ifTrue: ['oldAlias'] ifFalse: ['newAlias']).
     target diagramElement updateBasicSeqNo: value seqAlias: alias.
     undo ifTrue: [(target diagramElement instVarNamed: 'labelGO') text: (record at: 'oldLabel')]
       ifFalse: [target diagramElement updateLabelGONoBasic: value methodName: (record at: 'newMethodName')]
   ].
   operation = 'set_sequence_number' ifTrue: [
     checkReturn value: (target setSequenceNumber: value).
     undo ifTrue: [(target diagramElement instVarNamed: 'labelGO') text: (record at: 'oldLabel')]
       ifFalse: [target diagramElement updateLabelGONoBasic: value methodName: target getSequenceActivator getName]
   ].
   operation = 'create_block' ifTrue: [
     blockKind := args first.
     undo ifTrue: [
       checkReturn value: (diagram removeDiagramObject: (record at: 'created')).
       (record includesKey: 'createdModel') ifTrue: [checkReturn value: (component deleteModelElement: (record at: 'createdModel'))].
       (record includesKey: 'createdDefinition') ifTrue: [
         | enumeration |
         enumeration := record at: 'createdDefinition'.
         (enumReferences value: enumeration) = (record at: 'enumReferencesBefore')
           ifFalse: [component error: 'Created enum still has references; deletion refused'].
         checkReturn value: ((record at: 'enumFolder') deleteSubItemObject: enumeration).
         ((record at: 'enumFolder') item childrenKeys anySatisfy: [:k | k label = (record at: 'enumName')])
           ifTrue: [component error: 'Created enum deletion did not persist']
       ].
       (sameOrder value: (record at: 'creationParent') children value: (record at: 'creationOrder'))
         ifFalse: [component error: 'Creation inverse changed parent order']
     ] ifFalse: [
       location := (args at: 3) asNumber @ (args at: 4) asNumber.
       model := nil. created := nil.
       blockKind = 'comment' ifTrue: [created := checkReturn value: (diagram placeComment: (args at: 2) location: location hierarchy: (record at: 'placementHierarchy'))].
       blockKind = 'hierarchy' ifTrue: [created := checkReturn value: (diagram placeHierarchy: (args at: 2) location: location hierarchy: (record at: 'placementHierarchy') inputPins: (record at: 'inputNames') outputPins: (record at: 'outputNames'))].
       blockKind = 'literal' ifTrue: [created := checkReturn value: (diagram placeLiteralString: (args at: 2) location: location hierarchy: (record at: 'placementHierarchy'))].
       blockKind = 'operator' ifTrue: [
         (#('limit' 'wraparound') includes: (args at: 2)) ifTrue: [
           | g |
           g := (args at: 2) = 'limit' ifTrue: [ASDConversionGO createDefaultLimit] ifFalse: [ASDConversionGO createDefaultWrapAround].
           g isNil ifTrue: [component error: 'Conversion factory returned nil'].
           g moveTo: location.
           (record at: 'creationParent') contents addGO: g display: false.
           created := checkReturn value: (g getAPIHandleForItem: diagram)
         ] ifFalse: [created := checkReturn value: (diagram placeOperator: (args at: 2) location: location hierarchy: (record at: 'placementHierarchy') numOfArgs: (args at: 5) asNumber)]
       ].
       blockKind = 'control' ifTrue: [created := checkReturn value: (diagram placeControl: (args at: 2) location: location hierarchy: (record at: 'placementHierarchy') numOfArgs: (args at: 5) asNumber)].
       (creators includesKey: blockKind) ifTrue: [model := checkReturn value: (component perform: (creators at: blockKind) with: (args at: 2))].
       blockKind = 'delta_t' ifTrue: [model := checkReturn value: component addDeltaT].
       blockKind = 'oned_table_group' ifTrue: [model := checkReturn value: (component addOneDTableGroup: (args at: 2) xDistribution: (record at: 'distributions') first)].
       blockKind = 'twod_table_group' ifTrue: [model := checkReturn value: (component addTwoDTableGroup: (args at: 2) xDistribution: (record at: 'distributions') first yDistribution: ((record at: 'distributions') at: 2))].
       (record includesKey: 'enumFolder') ifTrue: [
         | enumeration |
         enumeration := checkReturn value: ((record at: 'enumFolder') addComponent: (record at: 'enumName') ofType: 'Enumeration').
         record at: 'createdDefinition' put: enumeration; at: 'definition' put: enumeration.
         record at: 'enumDefinitionOID' put: enumeration getOID.
         checkReturn value: (enumeration setEnumerationValues: (record at: 'enumItems')).
         enumeration autoCommitDatabase.
         enumeration getEnumerationValues asArray = (record at: 'enumItems') asArray ifFalse: [component error: 'Enum creation items did not persist'].
         record at: 'enumReferencesBefore' put: (enumReferences value: enumeration)
       ].
       (#('enumeration' 'component') includes: blockKind) ifTrue: [model := checkReturn value: (component addLibItem: (record at: 'definition') forName: (args at: 2))].
       blockKind = 'existing_model' ifTrue: [model := record at: 'existingModel'].
       model notNil ifTrue: [
         blockKind = 'existing_model' ifFalse: [record at: 'createdModel' put: model].
         (#('enumeration' 'component') includes: blockKind) ifTrue: [
           model getRepresentedClass item == (record at: 'definition') item ifFalse: [component error: 'Created definition identity mismatch']
         ].
         (record includesKey: 'messageEnumeration') ifTrue: [
           checkReturn value: (model setEnumeration: (record at: 'messageEnumeration')).
           model getRepresentedClass item == (record at: 'messageEnumeration') item
             ifFalse: [component error: 'Message enumeration identity mismatch']
         ] ifFalse: [
           (creators includesKey: blockKind) ifTrue: [(args at: 5) isEmpty ifFalse: [checkReturn value: (model setModelType: (args at: 5))]]
         ].
         (record includesKey: 'messageScope') ifTrue: [checkReturn value: (model setScope: (record at: 'messageScope'))].
         (args size = 6 and: [#('array' 'distribution') includes: blockKind]) ifTrue: [
           checkReturn value: (model setMaxSize: (((args at: 6) copyFrom: 2 to: (args at: 6) size) asNumber))
         ].
         (args size = 6 and: [blockKind = 'matrix']) ifTrue: [
           | limits | limits := ((args at: 6) copyFrom: 2 to: (args at: 6) size) subStrings: $x.
           checkReturn value: (model setMaxXSize: limits first asNumber).
           checkReturn value: (model setMaxYSize: limits last asNumber)
         ].
         (args size = 6 and: [#('oned_table' 'oned_table_fixed' 'twod_table' 'twod_table_fixed') includes: blockKind]) ifTrue: [
           | limits | limits := ((args at: 6) copyFrom: 2 to: (args at: 6) size) subStrings: $x.
           checkReturn value: (model setMaxXSize: limits first asNumber).
           model isTwoDTable ifTrue: [checkReturn value: (model setMaxYSize: limits last asNumber)]
         ].
         (args size = 6 and: [(#('array' 'matrix' 'distribution' 'oned_table' 'oned_table_fixed' 'twod_table' 'twod_table_fixed' 'receive_message' 'send_message' 'send_receive_message') includes: blockKind) not]) ifTrue: [
           | initial code config data destination |
           code := args at: 6. initial := code copyFrom: 2 to: code size.
           code first = $N ifTrue: [initial := Number fromString: initial].
           code first = $B ifTrue: [initial := initial = '1'].
           config := component getDefaultData. data := checkReturn value: (config getEntryFor: model).
           data isNil ifTrue: [component error: 'Created scalar has no existing default entry'].
           checkReturn value: (data setPhysValue: initial).
           destination := model element isUniqueDataConfigured ifTrue: [config item relatedClassConfig] ifFalse: [config item].
           destination setConfig: data dataElement dataConfig forElement: model element.
           destination modified. model autoCommitDatabase
         ].
         created := checkReturn value: (diagram place: model location: location hierarchy: (record at: 'placementHierarchy'))
       ].
       created isNil ifTrue: [component error: 'Block creation produced no object'].
       record at: 'created' put: created.
       created isBlockDiagramFunctionalElement ifTrue: [
         "Match the loader's raster normalization before capturing the actual after."
         created diagramElement fitToRaster: SGDefaultPaneCtrl ascetDefaultRaster
       ]
     ]
   ].
   (operation = 'set_edge_route' and: [fieldReplay not]) ifTrue: [
     setRoute value: target diagramElement basicGraphObject value: (record at: (undo ifTrue: ['oldRoute'] ifFalse: ['newRoute'])) value: target diagramElement basicGraphObject linkPoints copy
   ].
   operation = 'connect_data' ifTrue: [
     undo ifTrue: [checkReturn value: (diagram removeDiagramObject: (record at: 'created'))]
     ifFalse: [record at: 'created' put: (checkReturn value: (diagram connect: (record at: 'source') to: target withPoints: nil))]
   ].
   ((#('set_literal' 'set_comment' 'move_node') includes: operation) and: [fieldReplay not]) ifTrue: [
     operation = 'set_literal' ifTrue: [
       checkReturn value: (target setLiteralText: (record at: (undo ifTrue: ['previous'] ifFalse: ['value']))).
       target diagramElement moveTo: target diagramElement getPosition
     ].
     operation = 'set_comment' ifTrue: [checkReturn value: (target setComment: (record at: (undo ifTrue: ['previous'] ifFalse: ['value'])))].
     operation = 'move_node' ifTrue: [
       checkReturn value: (target moveTo: (record at: (undo ifTrue: ['oldAnchor'] ifFalse: ['value'])) copy).
       undo ifFalse: [
         (record at: 'oldRoutes') do: [:pair |
           | g corners endpoints |
           g := pair first. corners := g storageCornerPoints collect: [:p | p copy].
           endpoints := Array with: g cornerPoints first copy with: g cornerPoints last copy.
           setRoute value: g value: corners value: endpoints
         ]
       ]
     ].
     undo ifTrue: [
       operation = 'move_node' ifFalse: [target diagramElement moveTo: (record at: 'oldAnchor')].
       (record at: 'oldRoutes') do: [:pair |
         setRoute value: pair first value: (pair at: 2) value: (Array with: (pair at: 3) first with: (pair at: 3) last)
       ]
     ]
   ].
   (#('disconnect_data' 'delete_transition') includes: operation) ifTrue: [undo ifTrue: [restore value: (record at: 'retained')] ifFalse: [checkReturn value: (diagram removeDiagramObject: target)]].
   (#('delete_node' 'delete_state') includes: operation) ifTrue: [
     undo ifTrue: [(orderPlan isNil ifTrue: [record at: 'retainedSet'] ifFalse: [orderPlan at: 'restores'])
       do: [:s | restore value: s]]
     ifFalse: [(record at: 'incident') do: [:e | checkReturn value: (diagram removeDiagramObject: e)]. checkReturn value: (diagram removeDiagramObject: target)]
   ].
   ((record includesKey: 'sequenceState') and: [undo]) ifTrue: [
     (record at: 'sequenceState') do: [:s |
       s first moveTo: (s at: 5) copy.
       (s at: 6) moveTo: (s at: 7) copy.
       (s at: 6) text: (s at: 8)
     ]
   ].
   (operation = 'rewire_data' and: [fieldReplay not]) ifTrue: [
     undo ifTrue: [swap value: target value: (record at: 'new') value: (record at: 'source'). setRoute value: target diagramElement basicGraphObject value: (record at: 'route') value: (record at: 'routeEndpoints')]
     ifFalse: [swap value: target value: (record at: 'source') value: (record at: 'new')]
   ].
   operation = 'create_transition' ifTrue: [
     undo ifTrue: [checkReturn value: (diagram removeDiagramObject: (record at: 'created'))]
     ifFalse: [record at: 'created' put: (checkReturn value: (diagram connect: (record at: 'source') outPos: ((args at: 3) asNumber @ (args at: 4) asNumber) to: target inPos: ((args at: 5) asNumber @ (args at: 6) asNumber)))]
   ].
   operation = 'set_transition_priority' ifTrue: [checkReturn value: (target setPriority: (record at: (undo ifTrue: ['previous'] ifFalse: ['value'])))].
   operation = 'rename_state' ifTrue: [checkReturn value: (target setName: (record at: (undo ifTrue: ['previous'] ifFalse: ['value'])))].
   operation = 'set_transition_esdl' ifTrue: [
     undo ifTrue: [info := record at: 'info'. index := record at: 'index'.
       info instVarNamed: ('action', index printString, 'ASDL') put: (record at: 'oldSource').
       info instVarNamed: ('action', index printString, 'MethodCall') put: (record at: 'oldCall').
       (record at: 'oldCall') aliasName: (record at: 'oldAlias')]
     ifFalse: [(args at: 2) = 'action' ifTrue: [checkReturn value: (target setESDLAction: (record at: 'value'))]
       ifFalse: [checkReturn value: (target setESDLCondition: (record at: 'value'))]]
   ].
   orderRequired ifTrue: [
     (sameOrder value: orderParent children value: expectedOrder)
       ifFalse: [component error: 'Parent children order postcondition failed'].
     "Store renumbers sorted children. Establish the independently merged drawing order first."
     expectedDrawingOrder doWithIndex: [:member :number | member basicGraphObject drawingOrder: number].
     (sameOrder value: orderParent sortedChildren value: expectedDrawingOrder)
       ifFalse: [component error: 'Drawing order pre-store postcondition failed']
   ].
   (record includesKey: 'fieldNativeBefore') ifTrue: [
     graphicalCurrent := record at: 'fieldNativeBefore'.
     graphicalActual := (graphicalCurrent at: 'diff') value.
     record at: (undo ifTrue: ['fieldRevertedPreStoreActual'] ifFalse: ['fieldAppliedPreStoreActual']) put: graphicalActual;
       at: (undo ifTrue: ['fieldRevertedPreStoreImages'] ifFalse: ['fieldAppliedPreStoreImages'])
       put: (graphicalCurrent at: 'terminalSnapshots') value
   ].
   stage := 'store'.
   (record includesKey: 'fieldExecutionStatus') ifTrue: [
     (record at: 'fieldExecutionStatus') at: 'phase' put: stage; at: 'store_started' put: true].
   checkReturn value: diagram storeToCache.
   (record includesKey: 'fieldExecutionStatus') ifTrue: [
     (record at: 'fieldExecutionStatus') at: 'store_completed' put: true].
   (record includesKey: 'fieldNativeBefore') ifTrue: [
     graphicalCurrent := record at: 'fieldNativeBefore'.
     record at: (undo ifTrue: ['fieldRevertedPostStoreActual'] ifFalse: ['fieldAppliedPostStoreActual'])
       put: (graphicalCurrent at: 'diff') value;
       at: (undo ifTrue: ['fieldRevertedPostStoreImages'] ifFalse: ['fieldAppliedPostStoreImages'])
       put: (graphicalCurrent at: 'terminalSnapshots') value
   ].
   (operation = 'create_block' and: [undo not and: [record includesKey: 'createdDefinition']]) ifTrue: [
     record at: 'enumReferencesAfter' put: (enumReferences value: (record at: 'createdDefinition'))
   ].
   (operation = 'create_block' and: [undo not]) ifTrue: [record at: 'creationAfterOrder' put: (record at: 'creationParent') children asArray copy].
   orderRequired ifTrue: [
     (sameOrder value: orderParent children value: expectedOrder)
       ifFalse: [component error: 'Store changed parent children order'].
     (sameOrder value: orderParent sortedChildren value: expectedDrawingOrder)
       ifFalse: [component error: 'Store changed drawing order'].
     drawingAfterImage := (drawingReader value: component value: record value: orderParent sortedChildren asArray copy) value: true.
     (drawingAfterImage at: 'image') = (drawingExpectedImage at: 'image')
       ifFalse: [component error: 'Stored drawing numbers differ'].
     record at: (undo ifTrue: ['drawingRevertedImage'] ifFalse: ['drawingAppliedImage']) put: (drawingAfterImage at: 'image');
       at: (undo ifTrue: ['drawingEffectsReverted'] ifFalse: ['drawingEffectsApplied'])
       put: ('[{"kind":"drawing_order","before":', (drawingBeforeImage at: 'image'),
         ',"after":', (drawingAfterImage at: 'image'), '}]').
     (((record at: 'edgeDependencyReader') value: component value: record value: (undo ifTrue: ['attached'] ifFalse: ['detached'])) == true)
       ifFalse: [component error: 'Stored endpoint dependencies differ from terminal state'].
     orderReader notNil ifTrue: [
       orderAfterImage := orderReader value: record value: orderParent children asArray copy.
       record at: (undo ifTrue: ['orderEffectsReverted'] ifFalse: ['orderEffectsApplied'])
         put: ('[{"kind":"parent_order","before":', (orderBeforeImage at: 'image'),
           ',"after":', (orderAfterImage at: 'image'), '}]');
         at: (undo ifTrue: ['orderRevertedImage'] ifFalse: ['orderAppliedImage']) put: (orderAfterImage at: 'image')
     ]
   ].
   (root at: scope) at: 'checkpoint' put: (((root at: scope) at: 'copySource') value: diagram specification specSourceInternalOrNil).
   (record includesKey: 'portChildScope') ifTrue: [
     | effects parentRef childResult scopeAfter out |
     childResult := reader value: component value: (record at: 'portChildScope') value: #().
     (childResult startsWith: 'BDE_STRUCTURE_ERROR:') ifTrue: [component error: childResult].
     undo ifTrue: [childResult = (record at: 'portChildBefore') ifFalse: [component error: 'Port child inverse observation mismatch']]
       ifFalse: [record at: 'portChildAfter' put: childResult].
     parentRef := (record at: 'diagramName'), '/n', target diagramElement identifier printString.
     scopeAfter := OrderedCollection new. out := WriteStream on: String new. out nextPut: $[.
     (record at: 'portScopeNames') doWithIndex: [:name :i |
       encoded := reader value: component value: name value: #().
       (encoded startsWith: 'BDE_STRUCTURE_ERROR:') ifTrue: [component error: encoded].
       undo ifTrue: [encoded = ((record at: 'portScopesBefore') at: i)
         ifFalse: [component error: 'Port descendant inverse observation mismatch']].
       scopeAfter add: encoded. i > 1 ifTrue: [out nextPut: $,].
       out nextPutAll: '{"$d":[["kind","hierarchy_scope"],["diagram","'; nextPutAll: name;
         nextPutAll: '"],["parent_ref","'; nextPutAll: parentRef; nextPutAll: '"],["before",';
         nextPutAll: ((record at: (undo ifTrue: ['portScopesAfter'] ifFalse: ['portScopesBefore'])) at: i);
         nextPutAll: '],["after",'; nextPutAll: encoded; nextPutAll: ']]}'
     ]. out nextPut: $]. effects := out contents.
     undo ifFalse: [record at: 'portScopesAfter' put: scopeAfter asArray].
     record at: (undo ifTrue: ['scopeEffectsReverted'] ifFalse: ['scopeEffectsApplied']) put: effects
   ].
   (operation = 'create_block' and: [undo not and: [args first = 'hierarchy']]) ifTrue: [
     | childTargets childParent |
     record at: 'createdHierarchyScope' put: ((command at: 1), '/h', (record at: 'created') diagramElement identifier printString).
     encoded := reader value: component value: (record at: 'createdHierarchyScope') value: #().
     (encoded startsWith: 'BDE_STRUCTURE_ERROR:') ifTrue: [component error: encoded].
     record at: 'createdHierarchyAfter' put: encoded.
     childTargets := ((record at: 'created') getAllDiagramElements, (record at: 'created') getAllDiagramComments)
       collect: [:node | 'n', node diagramElement identifier printString].
     childTargets isEmpty ifTrue: [childTargets := #('__empty_hierarchy_guard__')].
     childParent := diagram getGraphicalHierarchyFromHierarchyElement: (record at: 'created').
     record at: 'createdHierarchyGuardTargets' put: childTargets asArray;
       at: 'createdHierarchyParent' put: childParent;
       at: 'createdHierarchyOrder' put: childParent children asArray copy;
       at: 'createdHierarchyGuardAfter' put: (reader value: component value: (record at: 'createdHierarchyScope') value: childTargets)
   ].
   result := reader value: component value: (command at: 1) value: targets.
   (result startsWith: 'BDE_STRUCTURE_ERROR:') ifTrue: [component error: result].
   ((record includesKey: 'fieldForwardSourceNormalizer') and: [fieldReplay not]) ifTrue: [
     | generated protected rawNative context sourcePatch |
     stage := 'field_forward_source_normalization'.
     (record at: 'fieldExecutionStatus') at: 'phase' put: stage.
     generated := (record at: 'fieldSourceMaterialReader') value: component value:
       (Array with: diagram specification specSourceInternalOrNil with:
         ((record at: 'fieldSourceMaterialBefore') at: 'snapshots') keys).
     (generated isKindOf: Dictionary) ifFalse: [component error: generated asString].
     record at: 'fieldForwardRawSourceMaterial' put: generated.
     rawNative := ((record at: 'fieldNativeBefore') at: 'captureImages') value:
       ((record at: 'fieldNativeBefore') at: 'snapshots') keys.
     protected := IdentityDictionary new.
     rawNative keysAndValuesDo: [:object :entry | entry first ~= 'boundary' ifTrue: [protected at: object put: entry]].
     context := Array new: 6.
     context at: 1 put: (record at: 'fieldSourceMaterialBefore'); at: 2 put: generated;
       at: 3 put: protected; at: 4 put: (record at: 'fieldNativePatchFactory');
       at: 5 put: (record at: 'fieldSourceSame');
       at: 6 put: [((record at: 'fieldNativeBefore') at: 'verifyImages') value: protected].
     sourcePatch := (record at: 'fieldForwardSourceNormalizer') value: component value: context.
     (sourcePatch isKindOf: Dictionary) ifFalse: [component error: sourcePatch asString].
     record at: 'fieldExecutionSourcePatch' put: sourcePatch;
       at: 'fieldExecutionSourceRoot' put: (sourcePatch at: 'sourceRoot').
     (sourcePatch at: 'execute') value.
     (root at: scope) at: 'checkpoint' put: (((root at: scope) at: 'copySource') value: diagram specification specSourceInternalOrNil).
   ].
   fieldReplay ifTrue: [| observed expectedSource sourcePatch |
     stage := 'field_store_normalization'.
     (record at: 'fieldExecutionStatus') at: 'phase' put: stage.
     fieldAnchors addAll: fieldDesired keys.
     observed := ((record at: 'fieldNativeBefore') at: 'captureImages') value: fieldAnchors.
     record at: 'fieldExecutionBeforeNormalizationImages' put: observed.
     fieldNormalization := (record at: 'fieldNativePatchFactory') value: component
       value: (Array with: fieldDesired with: observed) value: 'undo'.
     (fieldNormalization isKindOf: Dictionary) ifFalse: [component error: fieldNormalization asString].
     (fieldNormalization at: 'verifyBeforeApply') value
       ifFalse: [component error: 'Observed store/read collateral changed before normalization'].
     record at: 'fieldExecutionNormalization' put: fieldNormalization.
     (fieldNormalization at: 'execute') value.
     (((record at: 'fieldNativeBefore') at: 'verifyImages') value: fieldDesired)
       ifFalse: [component error: 'Causal store/read normalization did not restore desired native images'].
     result := reader value: component value: (command at: 1) value: targets.
     (result startsWith: 'BDE_STRUCTURE_ERROR:') ifTrue: [component error: result].
     (((record at: 'fieldNativeBefore') at: 'verifyImages') value: fieldDesired)
       ifFalse: [component error: 'Final field observation changed normalized native images'].
     expectedSource := fieldLocal ifTrue: [fieldLocalPlan at: 'expectedSource']
       ifFalse: [record at: (undo ifTrue: ['fieldNativeSourceBefore'] ifFalse: ['fieldOriginalAfterSource'])].
     stage := 'field_source_patch'. (record at: 'fieldExecutionStatus') at: 'phase' put: stage.
     sourcePatch := fieldLocal ifTrue: [(fieldLocalPlan at: 'restoreSource') value]
       ifFalse: [(record at: 'fieldSourceRestoreFactory') value: component value: record
         value: (undo ifTrue: ['undo'] ifFalse: ['redo'])].
     (sourcePatch isKindOf: Dictionary) ifFalse: [component error: sourcePatch asString].
     record at: 'fieldExecutionSourcePatch' put: sourcePatch;
       at: 'fieldExecutionSourceRoot' put: (sourcePatch at: 'sourceRoot').
     (sourcePatch at: 'execute') value.
     (((record at: 'fieldSourceSame') value: component value: diagram specification specSourceInternalOrNil value: expectedSource) == true)
       ifFalse: [component error: 'Serialized field source differs after exact native restoration'].
     (root at: scope) at: 'checkpoint' put: (((root at: scope) at: 'copySource') value: diagram specification specSourceInternalOrNil)
   ].
   (record includesKey: 'fieldNativeBefore') ifTrue: [
     graphicalCurrent := record at: 'fieldNativeBefore'.
     graphicalActual := (graphicalCurrent at: 'diff') value.
     record at: (undo ifTrue: ['fieldRevertedActual'] ifFalse: ['fieldAppliedActual']) put: graphicalActual;
       at: (undo ifTrue: ['fieldRevertedImages'] ifFalse: ['fieldAppliedImages'])
       put: (graphicalCurrent at: 'terminalSnapshots') value;
       at: (undo ifTrue: ['fieldRevertedSource'] ifFalse: ['fieldAppliedSource'])
       put: (((root at: scope) at: 'copySource') value: diagram specification specSourceInternalOrNil).
     (graphicalCurrent at: 'verifyAfter') value ifFalse: [component error: 'Terminal native field material drifted'].
     (undo not and: [managed not]) ifTrue: [| material patch |
       record at: 'fieldExecutionSourceRoot' put: diagram specification specSourceInternalOrNil.
       (record includesKey: 'fieldOriginalAfterImages')
         ifTrue: [component error: 'Original forward native field material cannot be replaced'].
       record at: 'fieldOriginalAfterImages' put: (record at: 'fieldAppliedImages');
         at: 'fieldOriginalAfterActual' put: graphicalActual;
         at: 'fieldOriginalAfterSource' put: (record at: 'fieldAppliedSource').
     (record includesKey: 'fieldSourceMaterialReader') ifTrue: [
     info := (record at: 'fieldSourceMaterialReader') value: component value:
       (Array with: diagram specification specSourceInternalOrNil with:
         ((record at: 'fieldSourceMaterialBefore') at: 'snapshots') keys).
     (info isKindOf: Dictionary) ifFalse: [component error: info asString].
     (info at: 'verify') value ifFalse: [component error: 'Actual source identity images drifted after forward'].
     record at: 'fieldSourceMaterialAfter' put: info;
       at: 'fieldSourceMaterialRootPreserved' put:
         ((info at: 'sourceRoot') == ((record at: 'fieldSourceMaterialBefore') at: 'sourceRoot')).
     ].
       material := Array with: (graphicalCurrent at: 'snapshots') with: (record at: 'fieldOriginalAfterImages').
       #('undo' 'redo') do: [:direction |
         patch := (record at: 'fieldNativePatchFactory') value: component value: material value: direction.
         (patch isKindOf: Dictionary) ifFalse: [component error: patch asString].
         record at: (direction = 'undo' ifTrue: ['fieldOriginalUndoPatch'] ifFalse: ['fieldOriginalRedoPatch']) put: patch
       ].
       ((record at: 'fieldOriginalUndoPatch') at: 'verifyBeforeApply') value
         ifFalse: [component error: 'Original actual field patch does not match forward terminal']
     ]
   ].
   (operation = 'create_block' and: [args first = 'hierarchy']) ifTrue: [
     | effects parentRef |
     parentRef := (record at: 'diagramName'), '/n', (record at: 'created') diagramElement identifier printString.
     undo ifTrue: [
       (scopeView getAllDiagramElements anySatisfy: [:node | node diagramElement == (record at: 'created') diagramElement])
         ifTrue: [component error: 'Created hierarchy still present after inverse']
     ].
     effects := '[{"$d":[["kind","hierarchy_scope"],["diagram","', (record at: 'createdHierarchyScope'),
       '"],["parent_ref","', parentRef, '"],["', (undo ifTrue: ['after'] ifFalse: ['before']),
       '",null],["', (undo ifTrue: ['before'] ifFalse: ['after']), '",', (record at: 'createdHierarchyAfter'), ']]}]'.
     record at: (undo ifTrue: ['scopeEffectsReverted'] ifFalse: ['scopeEffectsApplied']) put: effects
   ].
   orderAfterImage notNil ifTrue: [
     stage := 'graphical_after'.
     graphicalActual := (graphicalCurrent at: 'encode') value: (graphicalCurrent at: 'diff') value.
     record at: (undo ifTrue: ['graphicalActualReverted'] ifFalse: ['graphicalActualApplied']) put: graphicalActual;
       at: (undo ifTrue: ['graphicalRevertedCurrent'] ifFalse: ['graphicalAppliedCurrent']) put: graphicalCurrent.
     (graphicalCurrent at: 'verifyAfter') value
       ifFalse: [component error: 'Actual graphical terminal capture drifted'].
     undo ifFalse: [ | removed anchors boundaries guard |
       removed := operation = 'disconnect_data'
         ifTrue: [Array with: (record at: 'retained')] ifFalse: [record at: 'retainedSet'].
       anchors := (removed collect: [:saved | saved first]) asOrderedCollection.
       boundaries := IdentitySet new. boundaries add: orderParent; add: diagram topGraphicalHierarchy.
       (record at: 'edgeDependencies') do: [:edgeRow | (edgeRow at: 'pins') do: [:pinRow |
         anchors add: (pinRow at: 'registration').
         (removed anySatisfy: [:saved | saved first == (pinRow at: 'owner')]) ifFalse: [
           #('owner' 'basic' 'manager' 'members' 'pin' 'connector' 'connectorManager' 'point' 'connections')
             do: [:key | boundaries add: (pinRow at: key)]
         ]
       ]].
       guard := (graphicalCurrent at: 'freezeTerminalSubset') value: anchors value: boundaries.
       (guard at: 'verify') value ifFalse: [component error: 'Detached graphical material capture drifted'].
       record at: 'detachedGraphicalGuard' put: guard
     ]
   ].
   (undo and: [record includesKey: 'topologyExactInversePlan']) ifTrue: [
     stage := 'topology_exact_inverse_normalization'.
     ((record at: 'topologyExactInversePlan') at: 'execute') value.
     result := reader value: component value: (command at: 1) value: targets.
     (result startsWith: 'BDE_STRUCTURE_ERROR:') ifTrue: [component error: result].
     ((record at: 'topologyExactInversePlan') at: 'verifyOriginal') value
       ifFalse: [component error: 'Final topology read changed original-reference normalization'].
     "Recompute the observed patch after every actual normalization primitive."
     graphicalActual := (graphicalCurrent at: 'encode') value: (graphicalCurrent at: 'diff') value.
     record at: 'graphicalActualReverted' put: graphicalActual;
       at: 'graphicalRevertedCurrent' put: graphicalCurrent.
     (graphicalCurrent at: 'verifyAfter') value
       ifFalse: [component error: 'Normalized topology actual graphical terminal drifted']
   ].
   (record includesKey: 'topologyCaptureProfile') ifTrue: [| native sourceAfter nativeAfter normalizationContext normalizationPlan sourceRaw fullEncoded scopedEncoded completeValues |
     (undo and: [record includesKey: 'topologyLocalInversePlan']) ifTrue: [
       stage := 'topology_local_inverse_normalization'.
       ((record at: 'topologyLocalInversePlan') at: 'execute') value.
       result := reader value: component value: (command at: 1) value: targets.
       (result startsWith: 'BDE_STRUCTURE_ERROR:') ifTrue: [component error: result].
       ((record at: 'topologyLocalInversePlan') at: 'verifyDesired') value
         ifFalse: [component error: 'Final topology read changed local native/source target'].
       graphicalActual := (graphicalCurrent at: 'encode') value: (graphicalCurrent at: 'diff') value.
       record at: 'graphicalActualReverted' put: graphicalActual;
         at: 'graphicalRevertedCurrent' put: graphicalCurrent.
       (graphicalCurrent at: 'verifyAfter') value
         ifFalse: [component error: 'Local topology actual graphical terminal drifted']
     ].
     stage := 'topology_material_terminal'. native := record at: 'topologyNativeBefore'.
     nativeAfter := (native at: 'captureImages') value:
       ((record at: 'topologyExecutionBeforeNative') keys, (Array with: diagram topGraphicalHierarchy)).
     sourceAfter := (record at: 'topologySourceMaterialReader') value: component value:
       (Array with: diagram specification specSourceInternalOrNil with:
         ((record at: 'topologyExecutionBeforeSource') at: 'snapshots') keys).
     (sourceAfter isKindOf: Dictionary) ifFalse: [component error: sourceAfter asString].
     (undo not and: [record includesKey: 'topologyForwardSourceNormalizer']) ifTrue: [
       stage := 'topology_forward_source_normalization'. sourceRaw := sourceAfter.
       normalizationContext := Array new: 4.
       normalizationContext at: 1 put: (record at: 'topologyExecutionBeforeSource');
         at: 2 put: sourceRaw; at: 3 put: nativeAfter;
         at: 4 put: [((native at: 'verifyImages') value: nativeAfter)].
       normalizationPlan := (record at: 'topologyForwardSourceNormalizer') value: component value: normalizationContext.
       (normalizationPlan isKindOf: Dictionary) ifFalse: [component error: normalizationPlan asString].
       record at: 'topologyForwardSourceRaw' put: sourceRaw;
         at: 'topologyForwardSourceNormalization' put: normalizationPlan.
       (normalizationPlan at: 'execute') value.
       sourceAfter := (record at: 'topologySourceMaterialReader') value: component value:
         (Array with: diagram specification specSourceInternalOrNil with:
           ((sourceRaw at: 'snapshots') keys, ((record at: 'topologyExecutionBeforeSource') at: 'snapshots') keys)).
       (sourceAfter isKindOf: Dictionary) ifFalse: [component error: sourceAfter asString].
       (normalizationPlan at: 'verifyDesired') value
         ifFalse: [component error: 'Topology normalized source terminal drifted']
     ].
     fullEncoded := reader value: component value: (command at: 1) value: #().
     (fullEncoded startsWith: 'BDE_STRUCTURE_ERROR:') ifTrue: [component error: fullEncoded].
     completeValues := ((root at: scope) at: 'copyObservation') value: ((root at: scope) at: 'observationValues').
     scopedEncoded := reader value: component value: (command at: 1) value: targets.
     scopedEncoded = result ifFalse: [component error: 'Scoped topology terminal changed during complete head capture'].
     ((sourceAfter at: 'verify') value and: [(native at: 'verifyImages') value: nativeAfter])
       ifFalse: [component error: 'Topology terminal native/source material drifted'].
     record at: 'topologyExecutedHead' put: (Dictionary new
       at: 'profile' put: 'actual_topology_execution_head_v1';
       at: 'previousHead' put: (record at: 'topologyHeadId');
       at: 'result' put: (managed ifTrue: [managedResult] ifFalse: [nil]);
       at: 'sequence' put: (record at: 'topologyExecutionSerial');
       at: 'beforeState' put: (record at: 'topologyExecutionBeforeState');
       at: 'afterState' put: (undo ifTrue: ['reverted'] ifFalse: ['applied']);
       at: 'parent' put: orderParent; at: 'collection' put: orderParent children;
       at: 'beforeParentOrder' put: (record at: 'topologyExecutionBeforeParentOrder');
       at: 'afterParentOrder' put: orderParent children asArray copy;
       at: 'beforeDrawingOrder' put: (record at: 'topologyExecutionBeforeDrawingOrder');
       at: 'afterDrawingOrder' put: orderParent sortedChildren asArray copy;
       at: 'beforeParentEvidence' put: (record at: 'topologyExecutionBeforeParentEvidence');
       at: 'afterParentEvidence' put: (orderAfterImage at: 'value');
       at: 'beforeDrawingEvidence' put: (record at: 'topologyExecutionBeforeDrawingEvidence');
       at: 'afterDrawingEvidence' put: (drawingAfterImage at: 'value');
       at: 'beforeEndpointMode' put: (undo ifTrue: ['detached'] ifFalse: ['attached']);
       at: 'afterEndpointMode' put: (undo ifTrue: ['attached'] ifFalse: ['detached']);
       at: 'direction' put: (undo ifTrue: ['undo'] ifFalse: ['forward']);
       at: 'beforeNative' put: (record at: 'topologyExecutionBeforeNative');
       at: 'afterNative' put: nativeAfter;
       at: 'beforeSource' put: (record at: 'topologyExecutionBeforeSource');
       at: 'afterSource' put: sourceAfter;
       at: 'beforeValues' put: (record at: 'topologyExecutionBeforeValues');
       at: 'afterValues' put: completeValues; yourself).
     undo ifFalse: [record at: 'topologyHeadAfterNative' put: nativeAfter;
       at: 'topologyHeadAfterSource' put: sourceAfter;
       at: 'topologyHeadAfterValues' put: (((root at: scope) at: 'copyObservation') value: ((root at: scope) at: 'observationValues'))]
   ].
   fieldLocal ifTrue: [
     stage := 'field_local_terminal'. (record at: 'fieldExecutionStatus') at: 'phase' put: stage.
     result = (record at: 'inverseExpectedEncoded')
       ifFalse: [component error: 'Local typed terminal differs from independent expected graph'].
     (((fieldLocalPlan at: 'sourceMaterial') at: 'verifyImages') value: (fieldLocalPlan at: 'sourceDesired'))
       ifFalse: [component error: 'Local source original-reference target drifted at terminal'].
     info := (record at: 'fieldSourceMaterialReader') value: component value:
       (Array with: diagram specification specSourceInternalOrNil with: (fieldLocalPlan at: 'sourceDesired') keys).
     (info isKindOf: Dictionary) ifFalse: [component error: info asString].
     (info at: 'verify') value ifFalse: [component error: 'Actual local after source material drifted'].
     record at: 'fieldLocalExecutedHead' put: (Dictionary new
       at: 'previousHead' put: (record at: 'fieldLocalHeadId');
       at: 'result' put: (managed ifTrue: [managedResult] ifFalse: [nil]);
       at: 'beforeNative' put: (record at: 'fieldLocalExecutionBeforeNative');
       at: 'afterNative' put: (fieldLocalPlan at: 'nativeDesired');
       at: 'beforeSource' put: (record at: 'fieldLocalExecutionBeforeSource');
       at: 'afterSource' put: info;
       at: 'beforeValues' put: (record at: 'fieldLocalExecutionBeforeValues');
       at: 'afterValues' put: (((root at: scope) at: 'copyObservation') value: ((root at: scope) at: 'observationValues')); yourself)
   ].
   ((record includesKey: 'fieldLocalProfile') and: [fieldReplay not]) ifTrue: [
     record at: 'fieldLocalHeadAfterNative' put: (record at: 'fieldOriginalAfterImages');
       at: 'fieldLocalHeadAfterSource' put: (record at: 'fieldSourceMaterialAfter');
       at: 'fieldLocalHeadAfterValues' put: (((root at: scope) at: 'copyObservation') value: ((root at: scope) at: 'observationValues'))].
   undo ifTrue: [record at: 'lastObserved' put: result;
     at: 'state' put: ((fieldLocal ifTrue: [result = (record at: 'inverseExpectedEncoded')] ifFalse: [orderRequired
       ifTrue: [(inverseValues at: 'same') value: ((root at: scope) at: 'observationValues') value: inverseExpected]
       ifFalse: [result = (record at: 'before')]]) ifTrue: ['reverted'] ifFalse: ['restore_mismatch'])]
   ifFalse: [record at: 'after' put: result; at: 'state' put: 'applied'.
     orderRequired ifTrue: [record at: 'afterValues' put: (((root at: scope) at: 'copyObservation') value: ((root at: scope) at: 'observationValues'))]].
   managed ifTrue: [record at: 'lastObserved' put: result].
   (record includesKey: 'fieldExecutionStatus') ifTrue: [
     (record at: 'fieldExecutionStatus') at: 'phase' put: 'terminal';
       at: 'terminal_verified' put: true; at: 'serialized_source_verified' put: true.
     result := '{"observation":', result, ',"field_execution":',
       (((record at: 'fieldNativeBefore') at: 'encode') value:
         ((record at: 'fieldStatusReader') value: component value: record value: token)), '}'
   ].
   (operation = 'create_block' and: [record includesKey: 'createdDefinition']) ifTrue: [
     | out observedItems |
     observedItems := undo ifTrue: [record at: 'enumInverseItems'] ifFalse: [(record at: 'createdDefinition') getEnumerationValues].
     out := WriteStream on: String new.
     out nextPutAll: '[{"$d":[["kind","enumeration_definition"],["path","BDE_Tool_Experiments\\';
       nextPutAll: (record at: 'enumName'); nextPutAll: '"],["oid","';
       nextPutAll: (record at: 'enumDefinitionOID'); nextPutAll: '"],["';
       nextPutAll: (undo ifTrue: ['after'] ifFalse: ['before']); nextPutAll: '",null],["';
       nextPutAll: (undo ifTrue: ['before'] ifFalse: ['after']); nextPutAll: '",{"$d":[["items",['.
     observedItems asArray doWithIndex: [:item :i | i > 1 ifTrue: [out nextPut: $,]. out nextPut: $"; nextPutAll: item; nextPut: $"].
     out nextPutAll: ']]]}]]}]'.
     record at: (undo ifTrue: ['libraryEffectsReverted'] ifFalse: ['libraryEffectsApplied']) put: out contents.
     undo ifFalse: [record at: 'enumTerminalItems' put: observedItems asArray copy].
     result := '{"$d":[["observation",', result, '],["library_effects",', out contents, ']]}'
   ].
   (operation = 'create_block' and: [args first = 'hierarchy']) ifTrue: [
     result := '{"$d":[["observation",', result, '],["scope_effects",',
       (record at: (undo ifTrue: ['scopeEffectsReverted'] ifFalse: ['scopeEffectsApplied'])), ']]}'
   ]
   . (record includesKey: 'portChildScope') ifTrue: [
     result := '{"$d":[["observation",', result, '],["scope_effects",',
       (record at: (undo ifTrue: ['scopeEffectsReverted'] ifFalse: ['scopeEffectsApplied'])), ']]}'
   ].
   orderAfterImage notNil ifTrue: [
     result := '{"observation":', result, ',"parent_order_effects":',
       (record at: (undo ifTrue: ['orderEffectsReverted'] ifFalse: ['orderEffectsApplied'])),
       ',"graphical_current":', (graphicalCurrent at: 'descriptor'),
       ',"drawing_order_effects":', (record at: (undo ifTrue: ['drawingEffectsReverted'] ifFalse: ['drawingEffectsApplied'])),
       ',"graphical_actual":', graphicalActual, '}'
   ]
   ]
 ]. result
 ] ifFail: [:error |
   | scopes cache |
   mutationStarted ifTrue: [
     (failureRecord includesKey: 'fieldExecutionStatus') ifTrue: [
       (failureRecord at: 'fieldExecutionStatus') at: 'phase' put: stage; at: 'terminal_verified' put: false].
     scopes := Smalltalk at: #DogeBDEStructureIdentityV2 ifAbsent: [Dictionary new].
     cache := scopes at: (component getOID, '/', ((command at: 1) subStrings: $/) first) ifAbsent: [Dictionary new].
     ((failureRecord includesKey: 'fieldLocalProfile') and: [
       (failureRecord at: 'fieldExecutionSourcePatch' ifAbsent: [nil]) notNil and: [
       (((failureRecord at: 'fieldExecutionSourcePatch') at: 'progress') at: 'state') = 'applied' and: [
       ((failureRecord at: 'fieldExecutionSourcePatch') at: 'verifyDesired') value]]])
       ifTrue: [cache at: 'checkpoint' put: ((cache at: 'copySource') value: (failureRecord at: 'diagram') specification specSourceInternalOrNil)]
       ifFalse: [cache removeKey: 'checkpoint' ifAbsent: []]
   ].
   ((preconditionConflict and: [mutationStarted not]) ifTrue: ['BDE_STRUCTURE_CONFLICT: '] ifFalse: ['BDE_STRUCTURE_ERROR: ']), stage, ' ', error printString, ' ', error messageText]
]]
