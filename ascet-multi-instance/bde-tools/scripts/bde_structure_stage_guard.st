[:frame |
 | definition component command reader stage preconditionConflict registry root scope diagram scopeView record mode operation token args targets result encoded target undo value sameOrder orderParent orderRequired sameMap enumReferences orderPlan restorePositions expectedOrder orderBeforeImage orderExpectedImage orderReader graphicalCurrent graphicalPreflight currentValues inverseValues inverseExpected drawingReader drawingBeforeImage drawingExpectedImage expectedDrawingOrder drawingWitnessEncoded managed validation managedHead managedState managedResult fieldReplay fieldPatch fieldLocal topologyCurrentReader fieldLocalPlan topologyLocalPlanner topologyLocalPlan |
 definition := frame at: 'definition' ifAbsent: [nil].
 component := frame at: 'component' ifAbsent: [nil].
 command := frame at: 'command' ifAbsent: [nil].
 reader := frame at: 'reader' ifAbsent: [nil].
 stage := frame at: 'stage' ifAbsent: [nil].
 preconditionConflict := frame at: 'preconditionConflict' ifAbsent: [nil].
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
 result := frame at: 'result' ifAbsent: [nil].
 encoded := frame at: 'encoded' ifAbsent: [nil].
 target := frame at: 'target' ifAbsent: [nil].
 undo := frame at: 'undo' ifAbsent: [nil].
 value := frame at: 'value' ifAbsent: [nil].
 sameOrder := frame at: 'sameOrder' ifAbsent: [nil].
 orderParent := frame at: 'orderParent' ifAbsent: [nil].
 orderRequired := frame at: 'orderRequired' ifAbsent: [nil].
 sameMap := frame at: 'sameMap' ifAbsent: [nil].
 enumReferences := frame at: 'enumReferences' ifAbsent: [nil].
 orderPlan := frame at: 'orderPlan' ifAbsent: [nil].
 restorePositions := frame at: 'restorePositions' ifAbsent: [nil].
 expectedOrder := frame at: 'expectedOrder' ifAbsent: [nil].
 orderBeforeImage := frame at: 'orderBeforeImage' ifAbsent: [nil].
 orderExpectedImage := frame at: 'orderExpectedImage' ifAbsent: [nil].
 orderReader := frame at: 'orderReader' ifAbsent: [nil].
 graphicalCurrent := frame at: 'graphicalCurrent' ifAbsent: [nil].
 graphicalPreflight := frame at: 'graphicalPreflight' ifAbsent: [nil].
 currentValues := frame at: 'currentValues' ifAbsent: [nil].
 inverseValues := frame at: 'inverseValues' ifAbsent: [nil].
 inverseExpected := frame at: 'inverseExpected' ifAbsent: [nil].
 drawingReader := frame at: 'drawingReader' ifAbsent: [nil].
 drawingBeforeImage := frame at: 'drawingBeforeImage' ifAbsent: [nil].
 drawingExpectedImage := frame at: 'drawingExpectedImage' ifAbsent: [nil].
 expectedDrawingOrder := frame at: 'expectedDrawingOrder' ifAbsent: [nil].
 drawingWitnessEncoded := frame at: 'drawingWitnessEncoded' ifAbsent: [nil].
 managed := frame at: 'managed' ifAbsent: [nil].
 validation := frame at: 'validation' ifAbsent: [nil].
 managedHead := frame at: 'managedHead' ifAbsent: [nil].
 managedState := frame at: 'managedState' ifAbsent: [nil].
 managedResult := frame at: 'managedResult' ifAbsent: [nil].
 fieldReplay := frame at: 'fieldReplay' ifAbsent: [nil].
 fieldPatch := frame at: 'fieldPatch' ifAbsent: [nil].
 fieldLocal := frame at: 'fieldLocal' ifAbsent: [nil].
 topologyCurrentReader := frame at: 'topologyCurrentReader' ifAbsent: [nil].
 fieldLocalPlan := frame at: 'fieldLocalPlan' ifAbsent: [nil].
 topologyLocalPlanner := frame at: 'topologyLocalPlanner' ifAbsent: [nil].
 topologyLocalPlan := frame at: 'topologyLocalPlan' ifAbsent: [nil].
 [
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
     (#('native_connect_material_v3' 'native_connect_material_v4') includes: (connectMaterial at: 'profile')) ifTrue: [
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
   ].

 ] ensure: [
 frame at: 'definition' put: definition.
 frame at: 'component' put: component.
 frame at: 'command' put: command.
 frame at: 'reader' put: reader.
 frame at: 'stage' put: stage.
 frame at: 'preconditionConflict' put: preconditionConflict.
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
 frame at: 'result' put: result.
 frame at: 'encoded' put: encoded.
 frame at: 'target' put: target.
 frame at: 'undo' put: undo.
 frame at: 'value' put: value.
 frame at: 'sameOrder' put: sameOrder.
 frame at: 'orderParent' put: orderParent.
 frame at: 'orderRequired' put: orderRequired.
 frame at: 'sameMap' put: sameMap.
 frame at: 'enumReferences' put: enumReferences.
 frame at: 'orderPlan' put: orderPlan.
 frame at: 'restorePositions' put: restorePositions.
 frame at: 'expectedOrder' put: expectedOrder.
 frame at: 'orderBeforeImage' put: orderBeforeImage.
 frame at: 'orderExpectedImage' put: orderExpectedImage.
 frame at: 'orderReader' put: orderReader.
 frame at: 'graphicalCurrent' put: graphicalCurrent.
 frame at: 'graphicalPreflight' put: graphicalPreflight.
 frame at: 'currentValues' put: currentValues.
 frame at: 'inverseValues' put: inverseValues.
 frame at: 'inverseExpected' put: inverseExpected.
 frame at: 'drawingReader' put: drawingReader.
 frame at: 'drawingBeforeImage' put: drawingBeforeImage.
 frame at: 'drawingExpectedImage' put: drawingExpectedImage.
 frame at: 'expectedDrawingOrder' put: expectedDrawingOrder.
 frame at: 'drawingWitnessEncoded' put: drawingWitnessEncoded.
 frame at: 'managed' put: managed.
 frame at: 'validation' put: validation.
 frame at: 'managedHead' put: managedHead.
 frame at: 'managedState' put: managedState.
 frame at: 'managedResult' put: managedResult.
 frame at: 'fieldReplay' put: fieldReplay.
 frame at: 'fieldPatch' put: fieldPatch.
 frame at: 'fieldLocal' put: fieldLocal.
 frame at: 'topologyCurrentReader' put: topologyCurrentReader.
 frame at: 'fieldLocalPlan' put: fieldLocalPlan.
 frame at: 'topologyLocalPlanner' put: topologyLocalPlanner.
 frame at: 'topologyLocalPlan' put: topologyLocalPlan.
 ]. frame
]
