[:frame |
 | definition component command reader stage registry root scope diagram scopeView record mode operation token args targets before result encoded checkReturn nodes edges pins findNode findPin findEdge source target newPin retained slot info value index incident savedSet orderParent beforeOrder afterOrder removedObjects blockKind model creators oidHex findModel enumReferences orderBeforeImage orderExpectedImage orderReader graphicalCurrent graphicalPreflight drawingReader drawingBeforeImage drawingExpectedImage |
 definition := frame at: 'definition' ifAbsent: [nil].
 component := frame at: 'component' ifAbsent: [nil].
 command := frame at: 'command' ifAbsent: [nil].
 reader := frame at: 'reader' ifAbsent: [nil].
 stage := frame at: 'stage' ifAbsent: [nil].
 registry := frame at: 'registry' ifAbsent: [nil].
 root := frame at: 'root' ifAbsent: [nil].
 scope := frame at: 'scope' ifAbsent: [nil].
 diagram := frame at: 'diagram' ifAbsent: [nil].
 scopeView := frame at: 'scopeView' ifAbsent: [nil].
 record := frame at: 'record' ifAbsent: [nil].
 mode := frame at: 'mode' ifAbsent: [nil].
 operation := frame at: 'operation' ifAbsent: [nil].
 token := frame at: 'token' ifAbsent: [nil].
 args := frame at: 'args' ifAbsent: [nil].
 targets := frame at: 'targets' ifAbsent: [nil].
 before := frame at: 'before' ifAbsent: [nil].
 result := frame at: 'result' ifAbsent: [nil].
 encoded := frame at: 'encoded' ifAbsent: [nil].
 checkReturn := frame at: 'checkReturn' ifAbsent: [nil].
 nodes := frame at: 'nodes' ifAbsent: [nil].
 edges := frame at: 'edges' ifAbsent: [nil].
 pins := frame at: 'pins' ifAbsent: [nil].
 findNode := frame at: 'findNode' ifAbsent: [nil].
 findPin := frame at: 'findPin' ifAbsent: [nil].
 findEdge := frame at: 'findEdge' ifAbsent: [nil].
 source := frame at: 'source' ifAbsent: [nil].
 target := frame at: 'target' ifAbsent: [nil].
 newPin := frame at: 'newPin' ifAbsent: [nil].
 retained := frame at: 'retained' ifAbsent: [nil].
 slot := frame at: 'slot' ifAbsent: [nil].
 info := frame at: 'info' ifAbsent: [nil].
 value := frame at: 'value' ifAbsent: [nil].
 index := frame at: 'index' ifAbsent: [nil].
 incident := frame at: 'incident' ifAbsent: [nil].
 savedSet := frame at: 'savedSet' ifAbsent: [nil].
 orderParent := frame at: 'orderParent' ifAbsent: [nil].
 beforeOrder := frame at: 'beforeOrder' ifAbsent: [nil].
 afterOrder := frame at: 'afterOrder' ifAbsent: [nil].
 removedObjects := frame at: 'removedObjects' ifAbsent: [nil].
 blockKind := frame at: 'blockKind' ifAbsent: [nil].
 model := frame at: 'model' ifAbsent: [nil].
 creators := frame at: 'creators' ifAbsent: [nil].
 oidHex := frame at: 'oidHex' ifAbsent: [nil].
 findModel := frame at: 'findModel' ifAbsent: [nil].
 enumReferences := frame at: 'enumReferences' ifAbsent: [nil].
 orderBeforeImage := frame at: 'orderBeforeImage' ifAbsent: [nil].
 orderExpectedImage := frame at: 'orderExpectedImage' ifAbsent: [nil].
 orderReader := frame at: 'orderReader' ifAbsent: [nil].
 graphicalCurrent := frame at: 'graphicalCurrent' ifAbsent: [nil].
 graphicalPreflight := frame at: 'graphicalPreflight' ifAbsent: [nil].
 drawingReader := frame at: 'drawingReader' ifAbsent: [nil].
 drawingBeforeImage := frame at: 'drawingBeforeImage' ifAbsent: [nil].
 drawingExpectedImage := frame at: 'drawingExpectedImage' ifAbsent: [nil].
 [
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

 ] ensure: [
 frame at: 'definition' put: definition.
 frame at: 'component' put: component.
 frame at: 'command' put: command.
 frame at: 'reader' put: reader.
 frame at: 'stage' put: stage.
 frame at: 'registry' put: registry.
 frame at: 'root' put: root.
 frame at: 'scope' put: scope.
 frame at: 'diagram' put: diagram.
 frame at: 'scopeView' put: scopeView.
 frame at: 'record' put: record.
 frame at: 'mode' put: mode.
 frame at: 'operation' put: operation.
 frame at: 'token' put: token.
 frame at: 'args' put: args.
 frame at: 'targets' put: targets.
 frame at: 'before' put: before.
 frame at: 'result' put: result.
 frame at: 'encoded' put: encoded.
 frame at: 'checkReturn' put: checkReturn.
 frame at: 'nodes' put: nodes.
 frame at: 'edges' put: edges.
 frame at: 'pins' put: pins.
 frame at: 'findNode' put: findNode.
 frame at: 'findPin' put: findPin.
 frame at: 'findEdge' put: findEdge.
 frame at: 'source' put: source.
 frame at: 'target' put: target.
 frame at: 'newPin' put: newPin.
 frame at: 'retained' put: retained.
 frame at: 'slot' put: slot.
 frame at: 'info' put: info.
 frame at: 'value' put: value.
 frame at: 'index' put: index.
 frame at: 'incident' put: incident.
 frame at: 'savedSet' put: savedSet.
 frame at: 'orderParent' put: orderParent.
 frame at: 'beforeOrder' put: beforeOrder.
 frame at: 'afterOrder' put: afterOrder.
 frame at: 'removedObjects' put: removedObjects.
 frame at: 'blockKind' put: blockKind.
 frame at: 'model' put: model.
 frame at: 'creators' put: creators.
 frame at: 'oidHex' put: oidHex.
 frame at: 'findModel' put: findModel.
 frame at: 'enumReferences' put: enumReferences.
 frame at: 'orderBeforeImage' put: orderBeforeImage.
 frame at: 'orderExpectedImage' put: orderExpectedImage.
 frame at: 'orderReader' put: orderReader.
 frame at: 'graphicalCurrent' put: graphicalCurrent.
 frame at: 'graphicalPreflight' put: graphicalPreflight.
 frame at: 'drawingReader' put: drawingReader.
 frame at: 'drawingBeforeImage' put: drawingBeforeImage.
 frame at: 'drawingExpectedImage' put: drawingExpectedImage.
 ]. frame
]
