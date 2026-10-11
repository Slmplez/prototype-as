[:frame |
 | component command reader stage root scope diagram scopeView record operation token args targets result encoded target undo info value sameOrder orderParent orderRequired expectedOrder orderBeforeImage orderAfterImage orderReader graphicalCurrent graphicalActual inverseValues inverseExpected drawingReader drawingBeforeImage drawingExpectedImage drawingAfterImage expectedDrawingOrder managed managedResult fieldReplay fieldAnchors fieldDesired fieldNormalization fieldLocal fieldLocalPlan |
 component := frame at: 'component' ifAbsent: [nil].
 command := frame at: 'command' ifAbsent: [nil].
 reader := frame at: 'reader' ifAbsent: [nil].
 stage := frame at: 'stage' ifAbsent: [nil].
 root := frame at: 'root' ifAbsent: [nil].
 scope := frame at: 'scope' ifAbsent: [nil].
 diagram := frame at: 'diagram' ifAbsent: [nil].
 scopeView := frame at: 'scopeView' ifAbsent: [nil].
 record := frame at: 'record' ifAbsent: [nil].
 operation := frame at: 'operation' ifAbsent: [nil].
 token := frame at: 'token' ifAbsent: [nil].
 args := frame at: 'args' ifAbsent: [nil].
 targets := frame at: 'targets' ifAbsent: [nil].
 result := frame at: 'result' ifAbsent: [nil].
 encoded := frame at: 'encoded' ifAbsent: [nil].
 target := frame at: 'target' ifAbsent: [nil].
 undo := frame at: 'undo' ifAbsent: [nil].
 info := frame at: 'info' ifAbsent: [nil].
 value := frame at: 'value' ifAbsent: [nil].
 sameOrder := frame at: 'sameOrder' ifAbsent: [nil].
 orderParent := frame at: 'orderParent' ifAbsent: [nil].
 orderRequired := frame at: 'orderRequired' ifAbsent: [nil].
 expectedOrder := frame at: 'expectedOrder' ifAbsent: [nil].
 orderBeforeImage := frame at: 'orderBeforeImage' ifAbsent: [nil].
 orderAfterImage := frame at: 'orderAfterImage' ifAbsent: [nil].
 orderReader := frame at: 'orderReader' ifAbsent: [nil].
 graphicalCurrent := frame at: 'graphicalCurrent' ifAbsent: [nil].
 graphicalActual := frame at: 'graphicalActual' ifAbsent: [nil].
 inverseValues := frame at: 'inverseValues' ifAbsent: [nil].
 inverseExpected := frame at: 'inverseExpected' ifAbsent: [nil].
 drawingReader := frame at: 'drawingReader' ifAbsent: [nil].
 drawingBeforeImage := frame at: 'drawingBeforeImage' ifAbsent: [nil].
 drawingExpectedImage := frame at: 'drawingExpectedImage' ifAbsent: [nil].
 drawingAfterImage := frame at: 'drawingAfterImage' ifAbsent: [nil].
 expectedDrawingOrder := frame at: 'expectedDrawingOrder' ifAbsent: [nil].
 managed := frame at: 'managed' ifAbsent: [nil].
 managedResult := frame at: 'managedResult' ifAbsent: [nil].
 fieldReplay := frame at: 'fieldReplay' ifAbsent: [nil].
 fieldAnchors := frame at: 'fieldAnchors' ifAbsent: [nil].
 fieldDesired := frame at: 'fieldDesired' ifAbsent: [nil].
 fieldNormalization := frame at: 'fieldNormalization' ifAbsent: [nil].
 fieldLocal := frame at: 'fieldLocal' ifAbsent: [nil].
 fieldLocalPlan := frame at: 'fieldLocalPlan' ifAbsent: [nil].
 [
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

 ] ensure: [
 frame at: 'component' put: component.
 frame at: 'command' put: command.
 frame at: 'reader' put: reader.
 frame at: 'stage' put: stage.
 frame at: 'root' put: root.
 frame at: 'scope' put: scope.
 frame at: 'diagram' put: diagram.
 frame at: 'scopeView' put: scopeView.
 frame at: 'record' put: record.
 frame at: 'operation' put: operation.
 frame at: 'token' put: token.
 frame at: 'args' put: args.
 frame at: 'targets' put: targets.
 frame at: 'result' put: result.
 frame at: 'encoded' put: encoded.
 frame at: 'target' put: target.
 frame at: 'undo' put: undo.
 frame at: 'info' put: info.
 frame at: 'value' put: value.
 frame at: 'sameOrder' put: sameOrder.
 frame at: 'orderParent' put: orderParent.
 frame at: 'orderRequired' put: orderRequired.
 frame at: 'expectedOrder' put: expectedOrder.
 frame at: 'orderBeforeImage' put: orderBeforeImage.
 frame at: 'orderAfterImage' put: orderAfterImage.
 frame at: 'orderReader' put: orderReader.
 frame at: 'graphicalCurrent' put: graphicalCurrent.
 frame at: 'graphicalActual' put: graphicalActual.
 frame at: 'inverseValues' put: inverseValues.
 frame at: 'inverseExpected' put: inverseExpected.
 frame at: 'drawingReader' put: drawingReader.
 frame at: 'drawingBeforeImage' put: drawingBeforeImage.
 frame at: 'drawingExpectedImage' put: drawingExpectedImage.
 frame at: 'drawingAfterImage' put: drawingAfterImage.
 frame at: 'expectedDrawingOrder' put: expectedDrawingOrder.
 frame at: 'managed' put: managed.
 frame at: 'managedResult' put: managedResult.
 frame at: 'fieldReplay' put: fieldReplay.
 frame at: 'fieldAnchors' put: fieldAnchors.
 frame at: 'fieldDesired' put: fieldDesired.
 frame at: 'fieldNormalization' put: fieldNormalization.
 frame at: 'fieldLocal' put: fieldLocal.
 frame at: 'fieldLocalPlan' put: fieldLocalPlan.
 ]. frame
]
