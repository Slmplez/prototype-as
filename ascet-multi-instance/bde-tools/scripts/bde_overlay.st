[:component :modeRequest :commands |
 component handleExceptionsIn: [
 | answer |
 answer := 'not_dispatched'.
 CwAppContext default syncExecInUI: [
 component handleExceptionsIn: [
   | overlays key saved view controller pane widget callback destroyCallback data oldMemento oldModified anchors requested hex main nodes drawCount streamState oldStream stateUnchanged refresh root copyGraph sameGraph clearUnchanged mode modeParts diagramName scopeParts targetHierarchy scopeView grouped otherOverlays existing presentationToken editorOwner checkEditor |
   modeParts := modeRequest subStrings: $|.
   (#(2 3) includes: modeParts size) ifFalse: [component error: 'Explicit presentation scope required'].
   mode := modeParts first. diagramName := modeParts at: 2. scopeParts := diagramName subStrings: $/.
   presentationToken := modeParts size = 3 ifTrue: [modeParts last] ifFalse: [''].
   grouped := mode startsWith: 'group_'.
   grouped ifTrue: [mode := mode copyFrom: 7 to: mode size].
   editorOwner := component item.
   checkEditor := [:c | c notNil and: [c item == editorOwner]].
   (scopeParts first = 'Main' and: [scopeParts size <= 17]) ifFalse: [component error: 'Invalid presentation scope'].
   refresh := [:area |
     area displayRects: (Array with: (Rectangle
       origin: (area dPToLp: 0@0)
       corner: (area dPToLp: area width@area height)))
   ].
   root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: component getOID, '/Main'.
   copyGraph := root at: 'copySource'. sameGraph := root at: 'sameSource'.
   streamState := [:p |
     | m deep entries | m := p instVarNamed: 'memento'.
     m isNil ifTrue: [Array with: nil] ifFalse: [
       m class name asString = 'ReadWriteStream' ifFalse: [component error: 'Unsupported existing Undo stream'].
       m size > 10000 ifTrue: [component error: 'Undo inspection bound exceeded'].
       entries := m contents copy. deep := OrderedCollection new.
       entries do: [:entry |
         (entry class name asString = 'SGMemento' and: [entry class instSize = 2])
           ifFalse: [component error: 'Unsupported Undo entry structure'].
         deep add: (Array with: (entry instVarNamed: 'parentHierarchyGO')
           with: (copyGraph value: (entry instVarNamed: 'currentLevelGODB')))
       ].
       Array with: m with: m position with: m size with: entries with: deep
     ]
   ].
   stateUnchanged := [:p :old |
     | now entries same | now := p instVarNamed: 'memento'. same := now == old first.
     (same and: [old size > 1]) ifTrue: [
       same := now position = (old at: 2) and: [now size = (old at: 3)].
       same ifTrue: [
         entries := now contents.
         1 to: (old at: 4) size do: [:i |
         ((entries at: i) == ((old at: 4) at: i) and: [
           ((entries at: i) instVarNamed: 'parentHierarchyGO') == ((old at: 5) at: i) first and: [
             sameGraph value: ((entries at: i) instVarNamed: 'currentLevelGODB') value: (((old at: 5) at: i) at: 2)]])
           ifFalse: [same := false]
       ]]
     ]. same
   ].
   overlays := Smalltalk at: (grouped ifTrue: [#DogeBDEGroupOverlaysV1] ifFalse: [#DogeBDEOverlaysV1]) ifAbsentPut: [Dictionary new].
   key := grouped ifTrue: [component getOID, '/', diagramName] ifFalse: [component getOID].
   mode = 'status' ifTrue: [
     saved := overlays at: key ifAbsent: [nil].
     answer := saved isNil ifTrue: ['absent'] ifFalse: [
       'registered|draws=', (saved at: 'draws' ifAbsent: [0]) printString,
       '|exposes=', (saved at: 'exposes' ifAbsent: [0]) printString,
       '|scope_suppressions=', (saved at: 'scopeSuppressions' ifAbsent: [0]) printString,
       '|diagram=', (saved at: 'diagram' ifAbsent: ['Main']),
       '|token=', (saved at: 'presentationToken' ifAbsent: ['']),
       '|scope_active=', ((saved at: 'pane') actualHierarchy == (saved at: 'hierarchy')) printString,
       '|error=', (saved at: 'callbackError' ifAbsent: ['none']),
       '|undo_stream_unchanged=', (stateUnchanged value: (saved at: 'pane') value: (saved at: 'oldStream')) printString,
       '|undo_content_checked=true',
       '|undo_entries=', ((saved at: 'oldStream') size = 1 ifTrue: ['nil'] ifFalse: [((saved at: 'oldStream') at: 3) printString])]
   ] ifFalse: [
   mode = 'clear' ifTrue: [
     saved := overlays at: key ifAbsent: [nil].
     (saved notNil and: [(saved at: 'diagram' ifAbsent: ['Main']) ~= diagramName]) ifTrue: [component error: 'PRESENTATION_SCOPE_MISMATCH: clear targets a different overlay scope'].
     (saved notNil and: [(saved at: 'presentationToken' ifAbsent: ['']) ~= presentationToken])
       ifTrue: [component error: 'PRESENTATION_OWNER_MISMATCH: clear targets another diff'].
     clearUnchanged := true.
     saved notNil ifTrue: [
       clearUnchanged := stateUnchanged value: (saved at: 'pane') value: (saved at: 'oldStream').
       widget := saved at: 'widget'.
       widget isDestroyed ifFalse: [
         widget removeCallback: ((Smalltalk at: #CwConstants) at: 'XmNexposeCallback') receiver: (saved at: 'callback') selector: #value:value:value: clientData: saved.
         (saved includesKey: 'destroyCallback') ifTrue: [widget removeCallback: ((Smalltalk at: #CwConstants) at: 'XmNdestroyCallback') receiver: (saved at: 'destroyCallback') selector: #value:value:value: clientData: saved]
       ].
       overlays removeKey: key. widget isDestroyed ifFalse: [refresh value: widget. widget redraw].
       clearUnchanged := clearUnchanged and: [stateUnchanged value: (saved at: 'pane') value: (saved at: 'oldStream')]
     ]. clearUnchanged ifFalse: [component error: 'Undo content changed during presentation'].
     answer := 'cleared|undo_content_unchanged=true'
   ] ifFalse: [
     mode = 'show' ifFalse: [component error: 'Unknown presentation mode'].
     (overlays includesKey: key) ifTrue: [component error: 'Clear existing overlay first'].
     otherOverlays := Smalltalk at: (grouped ifTrue: [#DogeBDEOverlaysV1] ifFalse: [#DogeBDEGroupOverlaysV1]) ifAbsent: [Dictionary new].
     (otherOverlays values anySatisfy: [:entry | (entry at: 'component') getOID = component getOID])
       ifTrue: [component error: 'Clear other presentation mode for this component first'].
     existing := grouped ifTrue: [overlays values detect: [:entry | (entry at: 'component') getOID = component getOID] ifNone: [nil]] ifFalse: [nil].
     existing isNil ifTrue: [
       answer := 'existing_editor'.
       view := EtasMainDatabaseCtrl etasMainController getOpenEditorFor: editorOwner
         editorClass: (root at: 'specification') editorClassForEdition.
       view isNil ifTrue: [component error: 'UI_EDITOR_NOT_OPEN: open the original BDE editor before presentation; automatic opening may change DEFAULT Project/configuration'].
       answer := 'controller'. controller := view uiController.
       (checkEditor value: controller) ifFalse: [component error: 'UI_OWNER_UNAVAILABLE: original BDE editor has no exact component owner'].
       pane := controller graphPaneController
     ] ifFalse: [
       controller := existing at: 'controller'. pane := existing at: 'pane'.
       (stateUnchanged value: pane value: (existing at: 'oldStream')) ifFalse: [component error: 'Existing group Undo content changed']
     ].
     (checkEditor value: controller) ifFalse: [component error: 'UI_OWNER_UNAVAILABLE: BDE controller item is missing or belongs to another component'].
     widget := pane widget.
     answer := 'memento'.
     oldMemento := pane instVarNamed: 'memento'. oldModified := controller isGraphicModified. oldStream := streamState value: pane.
     targetHierarchy := pane topHierarchyGO. scopeView := root at: 'diagram'.
     scopeParts size > 1 ifTrue: [
       2 to: scopeParts size do: [:index |
         | part nativeId matches previous |
         part := scopeParts at: index.
         (part size >= 2 and: [part first = $h]) ifFalse: [component error: 'Exact hierarchy ID required'].
         nativeId := (part copyFrom: 2 to: part size) asNumber.
         (nativeId isInteger and: [nativeId >= 0 and: [nativeId <= 2147483647 and: [part = ('h', nativeId printString)]]]) ifFalse: [component error: 'Noncanonical hierarchy ID'].
         previous := targetHierarchy.
         matches := previous hierarchyChildrenLocal select: [:h | h basicGraphObject identifier = nativeId].
         matches size = 1 ifFalse: [component error: 'UI hierarchy missing or ambiguous'].
         targetHierarchy := matches first.
         targetHierarchy parent == previous ifFalse: [component error: 'UI hierarchy parent identity mismatch'].
         matches := scopeView getAllDiagramElements select: [:n | n isBlockDiagramHierarchy and: [n diagramElement identifier = nativeId]].
         matches size = 1 ifFalse: [component error: 'API hierarchy missing or ambiguous'].
         scopeView := matches first
       ]
     ].
     pane actualHierarchy == targetHierarchy ifFalse: [pane updateWithHierarchyGO: targetHierarchy].
     pane actualHierarchy == targetHierarchy ifFalse: [component error: 'Active canvas identity differs'].
     (checkEditor value: controller) ifFalse: [component error: 'UI_OWNER_UNAVAILABLE: BDE owner changed during routing'].
     ((stateUnchanged value: pane value: oldStream) and: [controller isGraphicModified = oldModified]) ifFalse: [component error: 'Routing changed editor state'].
     widget gc isNil ifTrue: [component error: 'UI_NOT_READY: drawing context is not initialized; retry presentation after editor realization'].
     anchors := Dictionary new. requested := Set new.
     1 to: commands size by: 6 do: [:i | (commands at: i) = 'model' ifTrue: [requested add: (commands at: i + 2)]].
     requested isEmpty ifFalse: [
       hex := [:bytes | | stream digits |
         (bytes isKindOf: ByteArray) ifFalse: [component error: 'Model anchor has no byte OID'].
         stream := WriteStream on: String new. digits := '0123456789abcdef'.
         bytes do: [:b | stream nextPut: (digits at: (b // 16) + 1); nextPut: (digits at: (b \\ 16) + 1)]. stream contents
       ].
       main := root at: 'diagram'.
       main isStateMachineDiagram ifTrue: [component error: 'Model diff display requires an ordinary Main BDE'].
       nodes := scopeView getAllDiagramElements.
       nodes size > 20000 ifTrue: [component error: 'Model anchor lookup bound exceeded'].
       nodes do: [:n | n class name asString = 'EtasAPIBlockDiagramFunctionalElement' ifTrue: [
         | ref | ref := 'm_', (hex value: n getModelElement element xmlOID).
         (requested includes: ref) ifTrue: [(anchors at: ref ifAbsentPut: [OrderedCollection new]) add: n]
       ]].
       requested do: [:ref | (anchors includesKey: ref) ifFalse: [component error: 'PRESENTATION_UNAVAILABLE: model has no selected-scope graphical occurrence']]
     ].
     drawCount := 0.
     1 to: commands size by: 6 do: [:i |
       drawCount := drawCount + ((commands at: i) = 'model' ifTrue: [(anchors at: (commands at: i + 2)) size] ifFalse: [1])
     ].
     drawCount > 100 ifTrue: [component error: 'PRESENTATION_LIMIT: occurrence drawing bound exceeded'].
     callback := [:w :payload :event |
       | gc drawable previous oldWidth oldStyle oldCap oldJoin rows i shape colour x y a b position extent frame nameGO |
       (payload at: 'component') handleExceptionsIn: [
       ((checkEditor value: (payload at: 'controller')) and: [(payload at: 'pane') actualHierarchy == (payload at: 'hierarchy')]) ifTrue: [
       gc := (payload at: 'widget') gc. drawable := (payload at: 'widget') window.
       drawable isNil ifTrue: [(payload at: 'component') error: 'Drawing window is not realized'].
       (gc prepareForDrawable: drawable) ifFalse: [(payload at: 'component') error: 'Drawing context cannot prepare the current window'].
       previous := gc instVarNamed: 'gcForeground'. rows := payload at: 'commands'.
       oldWidth := gc instVarNamed: 'gcLineWidth'. oldStyle := gc instVarNamed: 'gcLineStyle'.
       oldCap := gc instVarNamed: 'gcCapStyle'. oldJoin := gc instVarNamed: 'gcJoinStyle'.
       [
         gc setLineAttributes: 2 lineStyle: oldStyle capStyle: oldCap joinStyle: oldJoin.
         i := 1.
         [i <= rows size] whileTrue: [
           shape := rows at: i. colour := (rows at: i + 1) asNumber.
           gc setForeground: ((payload at: 'widget') pixelNearestToColor: (colour = 255 ifTrue: [CgRGBColor red] ifFalse: [CgRGBColor green])).
           shape = 'model' ifTrue: [
             ((payload at: 'anchors') at: (rows at: i + 2)) do: [:n |
               position := n getPosition. extent := n getSize. frame := n diagramElement logicFrame.
               x := frame right.
               nameGO := n diagramElement instVarNamed: 'actualNameGO'.
               nameGO notNil ifTrue: [x := x max: nameGO frame right].
               x := x + 16. y := position y + 13 + ((rows at: i + 3) asNumber * 14).
               (rows at: i + 3) = '0' ifTrue: [drawable drawRectangle: gc x: position x - 4 y: position y - 4 width: extent x + 8 height: extent y + 8].
               drawable drawString: gc x: x y: y string: (rows at: i + 4)
             ]
           ] ifFalse: [
           x := (rows at: i + 2) asNumber. y := (rows at: i + 3) asNumber.
           shape = 'text' ifTrue: [
             drawable drawString: gc x: x y: y string: (rows at: i + 4)
           ] ifFalse: [
           a := (rows at: i + 4) asNumber. b := (rows at: i + 5) asNumber.
           shape = 'rect' ifTrue: [drawable drawRectangle: gc x: x y: y width: a height: b]
           ifFalse: [drawable drawLine: gc x1: x y1: y x2: a y2: b].
           colour = 255 ifTrue: [
             drawable drawLine: gc x1: x - 3 y1: y - 3 x2: x + 3 y2: y + 3.
             drawable drawLine: gc x1: x - 3 y1: y + 3 x2: x + 3 y2: y - 3
           ] ifFalse: [
             drawable drawLine: gc x1: x - 3 y1: y x2: x + 3 y2: y.
             drawable drawLine: gc x1: x y1: y - 3 x2: x y2: y + 3
           ]]]. i := i + 6
         ]
       ] ensure: [
         gc setForeground: previous.
         gc setLineAttributes: oldWidth lineStyle: oldStyle capStyle: oldCap joinStyle: oldJoin.
         gc updateDC
       ].
       payload at: 'draws' put: ((payload at: 'draws' ifAbsent: [0]) + 1).
       event notNil ifTrue: [payload at: 'exposes' put: ((payload at: 'exposes' ifAbsent: [0]) + 1)]
       ] ifFalse: [payload at: 'scopeSuppressions' put: ((payload at: 'scopeSuppressions' ifAbsent: [0]) + 1)]
       ] ifFail: [:error | payload at: 'callbackError' put: error messageText]
     ].
     destroyCallback := [:w :payload :event |
       ((overlays at: key ifAbsent: [nil]) == payload) ifTrue: [overlays removeKey: key]
     ].
     data := Dictionary new at: 'widget' put: widget; at: 'component' put: component; at: 'callback' put: callback;
       at: 'controller' put: controller;
       at: 'presentationToken' put: presentationToken;
       at: 'destroyCallback' put: destroyCallback; at: 'commands' put: commands; at: 'anchors' put: anchors;
       at: 'pane' put: pane; at: 'hierarchy' put: targetHierarchy; at: 'diagram' put: diagramName; at: 'oldStream' put: oldStream; yourself.
     [
       answer := 'callback'. widget addCallback: ((Smalltalk at: #CwConstants) at: 'XmNexposeCallback') receiver: callback selector: #value:value:value: clientData: data.
       data at: 'exposeRegistered' put: true.
       widget addCallback: ((Smalltalk at: #CwConstants) at: 'XmNdestroyCallback') receiver: destroyCallback selector: #value:value:value: clientData: data.
       data at: 'destroyRegistered' put: true.
       overlays at: key put: data.
       answer := 'redraw'. refresh value: widget. widget redraw.
       answer := 'draw'. callback value: widget value: data value: nil.
       (data includesKey: 'callbackError') ifTrue: [component error: ('Drawing callback failed: ', (data at: 'callbackError'))].
       ((pane instVarNamed: 'memento') == oldMemento and: [(stateUnchanged value: pane value: oldStream) and: [controller isGraphicModified = oldModified]]) ifFalse: [component error: 'Presentation changed editor state']
     ] ifCurtailed: [
       (data at: 'exposeRegistered' ifAbsent: [false]) ifTrue: [widget removeCallback: ((Smalltalk at: #CwConstants) at: 'XmNexposeCallback') receiver: callback selector: #value:value:value: clientData: data].
       (data at: 'destroyRegistered' ifAbsent: [false]) ifTrue: [widget removeCallback: ((Smalltalk at: #CwConstants) at: 'XmNdestroyCallback') receiver: destroyCallback selector: #value:value:value: clientData: data].
       overlays removeKey: key ifAbsent: []
     ].
     answer := 'shown|', widget class name asString, '|memento_identity_unchanged|undo_stream_unchanged|undo_entries=',
       (oldStream size = 1 ifTrue: ['nil'] ifFalse: [(oldStream at: 3) printString]), '|undo_content_checked=true|dirty_unchanged'
   ]]
 ] ifFail: [:error | answer := 'BDE_OVERLAY_ERROR: ', answer, ' ', error printString, ' ', error messageText]
 ]. answer
 ] ifFail: [:error | 'BDE_OVERLAY_ERROR: ', error printString, ' ', error messageText]
]
