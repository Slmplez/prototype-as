[:component :token :reader |
 component handleExceptionsIn: [
 | registry record state before after current fresh library effects matches folder enumeration raw refs currentLibrary scopes childView childParts childFound orders orderCurrent orderTerminal orderStarted root active sameOrder endpointMatches graphical undo terminal graphicalStarted graphicalActual graphicalSignature drawingCurrent drawingTerminal drawingStarted drawingEffects material execution |
 registry := Smalltalk at: #DogeBDEStructureEditsV3 ifAbsent: [Dictionary new].
 record := registry at: token ifAbsent: [component error: 'Recovery token unavailable'].
 ((record at: 'component') = component getOID and: [(record at: 'owner' ifAbsent: [nil]) == component item])
   ifFalse: [component error: 'Recovery native owner mismatch or legacy record'].
 fresh := component getDiagram: ((record at: 'diagramName') subStrings: $/) first.
 fresh specification == (record at: 'diagram') specification
   ifFalse: [component error: 'Recovery specification expired'].
 state := record at: 'state'.
 (#('prepared' 'started' 'applied' 'revert_started' 'reverted' 'restore_mismatch') includes: state)
   ifFalse: [component error: 'Unknown recovery state'].
 (#('disconnect_data' 'delete_node') includes: (record at: 'operation')) ifTrue: [
   (record includesKey: 'graphicalOriginal')
     ifFalse: [component error: 'Recovery raw original unavailable in legacy record']
 ].
 before := record at: 'before'.
 after := record at: ((#('reverted' 'restore_mismatch') includes: state) ifTrue: ['lastObserved'] ifFalse: ['after']) ifAbsent: ['null'].
 (record includesKey: 'topologyManagedExecution') ifTrue: [after := record at: 'lastObserved' ifAbsent: ['null']].
 current := reader value: component value: (record at: 'diagramName')
   value: (record at: 'lastObservedTargets' ifAbsent: [record at: 'targets']).
 (current startsWith: 'BDE_STRUCTURE_ERROR:') ifTrue: [component error: current].
 library := ''.
 scopes := ''.
 orders := ''.
 graphical := ''.
 (#('disconnect_data' 'delete_node') includes: (record at: 'operation')) ifTrue: [
   (record includesKey: 'orderEvidenceReader') ifFalse: [component error: 'Recovery parent order evidence unavailable in legacy record'].
   root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/', ((record at: 'diagramName') subStrings: $/) first).
   (root at: 'diagram') == (record at: 'diagram') ifFalse: [component error: 'Recovery current graphical owner expired'].
   sameOrder := [:left :right | left size = right size and: [
     ((1 to: left size) anySatisfy: [:i | (left at: i) ~~ (right at: i)]) not]].
   (sameOrder value: (root at: 'activeScopeChain') value: (record at: 'scopeChain'))
     ifFalse: [component error: 'Recovery current scope lineage changed'].
   active := root at: 'activeDiagram'.
   (active == (record at: 'diagram') ifTrue: [active topGraphicalHierarchy contents] ifFalse: [active diagramElement contents])
     == (record at: 'orderParent') ifFalse: [component error: 'Recovery CURRENT direct parent changed'].
   ((record at: 'orderParent') children anySatisfy: [:member | member manager ~~ (record at: 'orderParent')])
     ifTrue: [component error: 'Recovery CURRENT member ownership changed'].
   orderCurrent := (record at: 'orderEvidenceReader') value: record value: (record at: 'orderParent') children asArray copy.
   orderTerminal := record at: ((#('reverted' 'restore_mismatch') includes: state)
     ifTrue: ['orderRevertedImage'] ifFalse: ['orderAppliedImage']) ifAbsent: ['null'].
   orderStarted := record at: ((#('revert_started' 'reverted' 'restore_mismatch') includes: state)
     ifTrue: ['orderRevertStartedImage'] ifFalse: ['orderStartedImage']) ifAbsent: ['null'].
   effects := record at: ((#('reverted' 'restore_mismatch') includes: state)
     ifTrue: ['orderEffectsReverted'] ifFalse: ['orderEffectsApplied']) ifAbsent: ['null'].
   endpointMatches := false.
   (#('applied' 'reverted' 'restore_mismatch') includes: state) ifTrue: [
     (record includesKey: 'edgeDependencyReader') ifTrue: [
       endpointMatches := ((record at: 'edgeDependencyReader') value: component value: record
         value: (state = 'applied' ifTrue: ['detached'] ifFalse: ['attached'])) == true]
   ].
   undo := #('revert_started' 'reverted' 'restore_mismatch') includes: state.
   graphicalStarted := record at: (undo ifTrue: ['graphicalRevertStarted'] ifFalse: ['graphicalStarted']) ifAbsent: ['null'].
   graphicalActual := record at: (undo ifTrue: ['graphicalActualReverted'] ifFalse: ['graphicalActualApplied']) ifAbsent: ['null'].
   graphicalSignature := record at: (undo ifTrue: ['graphicalRevertStartedSignature'] ifFalse: ['graphicalStartedSignature']) ifAbsent: [nil].
   terminal := record at: (undo ifTrue: ['graphicalRevertedCurrent'] ifFalse: ['graphicalAppliedCurrent']) ifAbsent: [nil].
   matches := terminal notNil and: [terminal includesKey: 'verifyAfter'].
   matches ifTrue: [matches := (terminal at: 'verifyAfter') value].
   graphical := ',"graphical_original":', ((record at: 'graphicalOriginal') at: 'descriptor'),
     ',"graphical_started":', graphicalStarted, ',"graphical_actual":', graphicalActual,
     ',"graphical_signature":', (graphicalSignature isNil ifTrue: ['null'] ifFalse: ['"', graphicalSignature, '"']),
     ',"inverse_expected":', (undo ifTrue: [record at: 'inverseExpectedEncoded' ifAbsent: ['null']] ifFalse: ['null']),
     ',"current_graphical_matches_terminal":',
       (matches and: [(#('applied' 'reverted' 'restore_mismatch') includes: state) and: [graphicalActual ~= 'null']]) printString.
   orders := ',"parent_order_effects":', effects, ',"parent_order_original":', (record at: 'orderBeforeImage'),
     ',"parent_order_started":', orderStarted, ',"parent_order_current":', (orderCurrent at: 'image'),
     ',"current_edge_dependencies_match_terminal":', endpointMatches printString,
     ',"current_parent_order_matches_terminal":',
     ((orderCurrent at: 'image') = orderTerminal and: [orderTerminal ~= 'null' and: [effects ~= 'null']]) printString.
   (record includesKey: 'drawingOrderReader') ifTrue: [
     drawingCurrent := ((record at: 'drawingOrderReader') value: component value: record
       value: (record at: 'orderParent') sortedChildren asArray copy) value: true.
     drawingStarted := record at: (undo ifTrue: ['drawingRevertStartedImage'] ifFalse: ['drawingStartedImage']) ifAbsent: ['null'].
     drawingTerminal := record at: (undo ifTrue: ['drawingRevertedImage'] ifFalse: ['drawingAppliedImage']) ifAbsent: ['null'].
     drawingEffects := record at: (undo ifTrue: ['drawingEffectsReverted'] ifFalse: ['drawingEffectsApplied']) ifAbsent: ['null'].
     orders := orders, ',"drawing_order_original":', (record at: 'drawingOriginalImage'),
       ',"drawing_order_witness":', (record at: 'drawingInverseWitnessEncoded' ifAbsent: ['null']),
       ',"drawing_order_started":', drawingStarted, ',"drawing_order_current":', (drawingCurrent at: 'image'),
       ',"drawing_order_effects":', drawingEffects, ',"current_drawing_order_matches_terminal":',
       ((drawingCurrent at: 'image') = drawingTerminal and: [drawingTerminal ~= 'null' and: [drawingEffects ~= 'null']]) printString
   ]
 ].
 (record includesKey: 'portChildScope') ifTrue: [
   effects := record at: ((#('reverted' 'restore_mismatch') includes: state)
     ifTrue: ['scopeEffectsReverted'] ifFalse: ['scopeEffectsApplied']) ifAbsent: ['null'].
   matches := (reader value: component value: (record at: 'portChildScope') value: #()) =
     (record at: ((#('reverted' 'restore_mismatch') includes: state)
       ifTrue: ['portChildBefore'] ifFalse: ['portChildAfter']) ifAbsent: ['null']).
   (record at: 'portScopeNames') doWithIndex: [:name :i |
     matches := matches and: [
       (reader value: component value: name value: #()) =
       ((record at: ((#('reverted' 'restore_mismatch') includes: state)
         ifTrue: ['portScopesBefore'] ifFalse: ['portScopesAfter']) ifAbsent: [#()]) at: i ifAbsent: ['null'])]
   ].
   scopes := ',"scope_effects":', effects, ',"current_scopes_match_terminal":',
     (matches and: [effects ~= 'null']) printString
 ].
 (record includesKey: 'createdHierarchyScope') ifTrue: [
   effects := record at: ((#('reverted' 'restore_mismatch') includes: state)
     ifTrue: ['scopeEffectsReverted'] ifFalse: ['scopeEffectsApplied']) ifAbsent: ['null'].
   matches := false. childView := record at: 'diagram'. childFound := true.
   childParts := (record at: 'createdHierarchyScope') subStrings: $/.
   2 to: childParts size do: [:i |
     | candidates identifier |
     childFound ifTrue: [
       identifier := ((childParts at: i) copyFrom: 2 to: (childParts at: i) size) asNumber.
       candidates := childView getAllDiagramElements select: [:node |
         node isBlockDiagramHierarchy and: [node diagramElement identifier = identifier]].
       candidates size = 1 ifTrue: [childView := candidates first] ifFalse: [childFound := false]
     ]
   ].
   (#('reverted' 'restore_mismatch') includes: state) ifTrue: [matches := childFound not]
     ifFalse: [
       (state = 'applied' and: [childFound]) ifTrue: [
         matches := childView diagramElement == (record at: 'created') diagramElement and: [
           (reader value: component value: (record at: 'createdHierarchyScope') value: #()) = (record at: 'createdHierarchyAfter')]
       ]
     ].
   scopes := ',"scope_effects":', effects, ',"current_scopes_match_terminal":',
     (matches and: [effects ~= 'null']) printString
 ].
 (record includesKey: 'enumFolder') ifTrue: [
   effects := record at: ((#('reverted' 'restore_mismatch') includes: state)
     ifTrue: ['libraryEffectsReverted'] ifFalse: ['libraryEffectsApplied']) ifAbsent: ['null'].
   folder := record at: 'enumFolder'. matches := false. currentLibrary := 'unresolved'.
   folder isValid ifTrue: [
     (#('reverted' 'restore_mismatch') includes: state) ifTrue: [
       matches := (folder item childrenKeys anySatisfy: [:k | k label = (record at: 'enumName')]) not.
       currentLibrary := matches ifTrue: ['absent'] ifFalse: ['name_present']
     ] ifFalse: [
       state = 'applied' ifTrue: [
         enumeration := record at: 'createdDefinition'.
         matches := enumeration isValid and: [
           ((folder getItem: (record at: 'enumName')) item == enumeration item) and: [
             enumeration getOID = (record at: 'enumDefinitionOID') and: [
               enumeration getEnumerationValues asArray = (record at: 'enumTerminalItems')]]].
         matches ifTrue: [
           raw := enumeration item dbObject.
           (raw isKindOf: DBProxy) ifTrue: [
             refs := raw readReferences.
             refs isError ifTrue: [component error: 'Enum recovery reference read failed'].
             refs := refs isReferencedBys asSet copy
           ] ifFalse: [
             (raw isKindOf: DBXmlObject) ifFalse: [component error: 'Unsupported enum recovery reference backend'].
             refs := raw references referencedBy asSet copy
           ].
           matches := refs = (record at: 'enumReferencesAfter')
         ].
         currentLibrary := matches ifTrue: ['identity_items_references_match'] ifFalse: ['definition_or_references_changed']
       ]
     ]
   ].
   library := ',"library_effects":', effects, ',"current_library_matches_terminal":',
     (matches and: [effects ~= 'null']) printString, ',"current_library_status":"', currentLibrary, '"'
 ].
 material := (record includesKey: 'managedInverseId') ifTrue: [
   ',"material_ownership":{"profile":"', (record at: 'materialProtocol'),
   '","native_token":"', token, '","owner_change_id":"', (record at: 'managedInverseId'), '"}'
 ] ifFalse: [',"material_ownership":null'].
 execution := (record includesKey: 'managedExecution') ifTrue: [ | e |
   e := record at: 'managedExecution'.
   ',"managed_execution":{"head_change_id":"', (e at: 'head'),
   '","result_change_id":"', (e at: 'result'), '","expected_state":"', (e at: 'expectedState'),
   '","after_state":"', (e at: 'afterState'), '"}'
 ] ifFalse: [',"managed_execution":null'].
 (record includesKey: 'fieldStatusReader') ifTrue: [
   execution := execution, ',"field_execution":', (((record at: 'fieldNativeBefore') at: 'encode') value:
     ((record at: 'fieldStatusReader') value: component value: record value: token))
 ].
 (record includesKey: 'fieldLocalProfile') ifTrue: [
   execution := execution, ',"inverse_expected":', (record at: 'inverseExpectedEncoded' ifAbsent: ['null'])].
 (record includesKey: 'topologyManagedExecution') ifTrue: [
   | native proof managedTerminal completed encoder parentValue drawingValue nativeMatches sourceMatches |
   native := record at: 'topologyNativeBefore'. encoder := native at: 'encode'.
   proof := (record at: 'topologyManagedExecution') copy.
   proof at: 'normalization' put: ((record at: 'topologyManagedMaterialPlan') at: 'progress') copy.
   managedTerminal := record at: 'topologyManagedTerminalAnswer' ifAbsent: [nil].
   completed := record at: 'topologyExecutedHead' ifAbsent: [nil].
   nativeMatches := false. sourceMatches := false. matches := false.
   (managedTerminal notNil and: [completed notNil and: [
     (proof at: 'phase') = 'terminal' and: [(completed at: 'result') = (proof at: 'result_change_id')]]]) ifTrue: [
     nativeMatches := (native at: 'verifyImages') value: (completed at: 'afterNative').
     sourceMatches := ((completed at: 'afterSource') at: 'sourceRoot') == (record at: 'diagram') specification specSourceInternalOrNil
       and: [((completed at: 'afterSource') at: 'verify') value].
     matches := ((record at: 'topologyManagedGraphical') at: 'verifyAfter') value.
     parentValue := (record at: 'orderEvidenceReader') value: record value: (record at: 'orderParent') children asArray copy.
     drawingValue := ((record at: 'drawingOrderReader') value: component value: record
       value: (record at: 'orderParent') sortedChildren asArray copy) value: true.
     orders := ',"parent_order_effects":', (encoder value: (managedTerminal at: 'parent_order_effects')),
       ',"parent_order_original":', (record at: 'orderBeforeImage'),
       ',"parent_order_started":', (encoder value: ((managedTerminal at: 'parent_order_effects') first at: 'before')),
       ',"parent_order_current":', (parentValue at: 'image'),
       ',"current_parent_order_matches_terminal":',
         ((encoder value: (parentValue at: 'value')) = (encoder value: ((managedTerminal at: 'parent_order_effects') first at: 'after'))) printString,
       ',"current_edge_dependencies_match_terminal":', endpointMatches printString,
       ',"drawing_order_original":', (record at: 'drawingOriginalImage'),
       ',"drawing_order_witness":null',
       ',"drawing_order_effects":', (encoder value: (managedTerminal at: 'drawing_order_effects')),
       ',"drawing_order_started":', (encoder value: ((managedTerminal at: 'drawing_order_effects') first at: 'before')),
       ',"drawing_order_current":', (drawingValue at: 'image'),
       ',"current_drawing_order_matches_terminal":',
         ((encoder value: (drawingValue at: 'value')) = (encoder value: ((managedTerminal at: 'drawing_order_effects') first at: 'after'))) printString.
     graphical := ',"graphical_original":', ((record at: 'graphicalOriginal') at: 'descriptor'),
       ',"graphical_started":', (encoder value: (managedTerminal at: 'graphical_current')),
       ',"graphical_actual":', (encoder value: (managedTerminal at: 'graphical_actual')),
       ',"graphical_signature":"', ((record at: 'topologyManagedPreflight') at: 'graphicalSignature'), '"',
       ',"current_graphical_matches_terminal":', matches printString
   ].
   execution := execution, ',"topology_execution":', (encoder value: proof),
     ',"inverse_expected":', (record at: 'inverseExpectedEncoded' ifAbsent: ['null']),
     ',"current_topology_native_matches_terminal":', nativeMatches printString,
     ',"current_topology_source_matches_terminal":', sourceMatches printString
 ].
 '{"state":"', state, '","before":', before, ',"after":', after, ',"current":', current, library, scopes, orders, graphical, material, execution, '}'
 ] ifFail: [:error | 'BDE_RECOVERY_ERROR: ', error messageText]
]
