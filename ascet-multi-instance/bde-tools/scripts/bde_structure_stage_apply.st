[:frame |
 | component stage mutationStarted preconditionConflict failureRecord diagram record operation args checkReturn target restore swap undo info value index sameOrder orderParent orderRequired blockKind model location created creators setRoute enumReferences orderPlan expectedOrder graphicalCurrent graphicalActual expectedDrawingOrder managed managedHead managedState managedResult fieldReplay fieldPatch fieldAnchors fieldDesired fieldLocal fieldLocalPlan |
 component := frame at: 'component' ifAbsent: [nil].
 stage := frame at: 'stage' ifAbsent: [nil].
 mutationStarted := frame at: 'mutationStarted' ifAbsent: [nil].
 preconditionConflict := frame at: 'preconditionConflict' ifAbsent: [nil].
 failureRecord := frame at: 'failureRecord' ifAbsent: [nil].
 diagram := frame at: 'diagram' ifAbsent: [nil].
 record := frame at: 'record' ifAbsent: [nil].
 operation := frame at: 'operation' ifAbsent: [nil].
 args := frame at: 'args' ifAbsent: [nil].
 checkReturn := frame at: 'checkReturn' ifAbsent: [nil].
 target := frame at: 'target' ifAbsent: [nil].
 restore := frame at: 'restore' ifAbsent: [nil].
 swap := frame at: 'swap' ifAbsent: [nil].
 undo := frame at: 'undo' ifAbsent: [nil].
 info := frame at: 'info' ifAbsent: [nil].
 value := frame at: 'value' ifAbsent: [nil].
 index := frame at: 'index' ifAbsent: [nil].
 sameOrder := frame at: 'sameOrder' ifAbsent: [nil].
 orderParent := frame at: 'orderParent' ifAbsent: [nil].
 orderRequired := frame at: 'orderRequired' ifAbsent: [nil].
 blockKind := frame at: 'blockKind' ifAbsent: [nil].
 model := frame at: 'model' ifAbsent: [nil].
 location := frame at: 'location' ifAbsent: [nil].
 created := frame at: 'created' ifAbsent: [nil].
 creators := frame at: 'creators' ifAbsent: [nil].
 setRoute := frame at: 'setRoute' ifAbsent: [nil].
 enumReferences := frame at: 'enumReferences' ifAbsent: [nil].
 orderPlan := frame at: 'orderPlan' ifAbsent: [nil].
 expectedOrder := frame at: 'expectedOrder' ifAbsent: [nil].
 graphicalCurrent := frame at: 'graphicalCurrent' ifAbsent: [nil].
 graphicalActual := frame at: 'graphicalActual' ifAbsent: [nil].
 expectedDrawingOrder := frame at: 'expectedDrawingOrder' ifAbsent: [nil].
 managed := frame at: 'managed' ifAbsent: [nil].
 managedHead := frame at: 'managedHead' ifAbsent: [nil].
 managedState := frame at: 'managedState' ifAbsent: [nil].
 managedResult := frame at: 'managedResult' ifAbsent: [nil].
 fieldReplay := frame at: 'fieldReplay' ifAbsent: [nil].
 fieldPatch := frame at: 'fieldPatch' ifAbsent: [nil].
 fieldAnchors := frame at: 'fieldAnchors' ifAbsent: [nil].
 fieldDesired := frame at: 'fieldDesired' ifAbsent: [nil].
 fieldLocal := frame at: 'fieldLocal' ifAbsent: [nil].
 fieldLocalPlan := frame at: 'fieldLocalPlan' ifAbsent: [nil].
 [
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

 ] ensure: [
 frame at: 'component' put: component.
 frame at: 'stage' put: stage.
 frame at: 'mutationStarted' put: mutationStarted.
 frame at: 'preconditionConflict' put: preconditionConflict.
 frame at: 'failureRecord' put: failureRecord.
 frame at: 'diagram' put: diagram.
 frame at: 'record' put: record.
 frame at: 'operation' put: operation.
 frame at: 'args' put: args.
 frame at: 'checkReturn' put: checkReturn.
 frame at: 'target' put: target.
 frame at: 'restore' put: restore.
 frame at: 'swap' put: swap.
 frame at: 'undo' put: undo.
 frame at: 'info' put: info.
 frame at: 'value' put: value.
 frame at: 'index' put: index.
 frame at: 'sameOrder' put: sameOrder.
 frame at: 'orderParent' put: orderParent.
 frame at: 'orderRequired' put: orderRequired.
 frame at: 'blockKind' put: blockKind.
 frame at: 'model' put: model.
 frame at: 'location' put: location.
 frame at: 'created' put: created.
 frame at: 'creators' put: creators.
 frame at: 'setRoute' put: setRoute.
 frame at: 'enumReferences' put: enumReferences.
 frame at: 'orderPlan' put: orderPlan.
 frame at: 'expectedOrder' put: expectedOrder.
 frame at: 'graphicalCurrent' put: graphicalCurrent.
 frame at: 'graphicalActual' put: graphicalActual.
 frame at: 'expectedDrawingOrder' put: expectedDrawingOrder.
 frame at: 'managed' put: managed.
 frame at: 'managedHead' put: managedHead.
 frame at: 'managedState' put: managedState.
 frame at: 'managedResult' put: managedResult.
 frame at: 'fieldReplay' put: fieldReplay.
 frame at: 'fieldPatch' put: fieldPatch.
 frame at: 'fieldAnchors' put: fieldAnchors.
 frame at: 'fieldDesired' put: fieldDesired.
 frame at: 'fieldLocal' put: fieldLocal.
 frame at: 'fieldLocalPlan' put: fieldLocalPlan.
 ]. frame
]
