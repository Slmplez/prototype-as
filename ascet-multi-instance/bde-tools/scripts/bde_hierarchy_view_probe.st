[:component :mode :unused |
 | answer stage |
 stage := 'start'. answer := ''.
 component handleExceptionsIn: [
 CwAppContext default syncExecInUI: [
 component handleExceptionsIn: [
 | root copyGraph sameGraph source savedSource view controller pane top initial uiOuter uiInner apiOuter apiInner diagram matches oldModified stream position size entries deep checkUndo routed overlay guarded |
 (#('map' 'route' 'overlay_guard') includes: mode) ifFalse: [component error: 'Invalid fixed probe mode'].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: component getOID, '/Main'.
 diagram := root at: 'diagram'.
 copyGraph := root at: 'copySource'. sameGraph := root at: 'sameSource'.
 source := diagram specification specSourceInternalOrNil. savedSource := copyGraph value: source.
 stage := 'open'.
 mode = 'overlay_guard' ifTrue: [
   overlay := (Smalltalk at: #DogeBDEOverlaysV1) at: component getOID.
   pane := overlay at: 'pane'. controller := pane getBDEController
 ] ifFalse: [
   view := component edit. controller := view view uiController. pane := controller graphPaneController
 ].
 oldModified := controller isGraphicModified.
 oldModified ifTrue: [component error: 'Dirty sandbox editor'].
 pane selectedGOs isEmpty ifFalse: [component error: 'Selection present; routing deferred'].
 initial := pane actualHierarchy. top := pane topHierarchyGO.
 initial isNil ifTrue: [component error: 'Missing initial hierarchy'].
 stage := 'resolve_outer'.
 matches := top hierarchyChildrenLocal select: [:h | h basicGraphObject identifier = 12].
 matches size = 1 ifFalse: [component error: 'Outer UI hierarchy missing or ambiguous'].
 uiOuter := matches first.
 stage := 'resolve_inner'.
 matches := uiOuter hierarchyChildrenLocal select: [:h | h basicGraphObject identifier = 5].
 matches size = 1 ifFalse: [component error: 'Inner UI hierarchy missing or ambiguous'].
 uiInner := matches first.
 uiOuter == uiInner ifTrue: [component error: 'Distinct scopes resolved to one object'].
 (uiOuter parent == top and: [uiInner parent == uiOuter]) ifFalse: [component error: 'UI parent identity mismatch'].
 matches := diagram getAllDiagramElements select: [:n | n isBlockDiagramHierarchy and: [n diagramElement identifier = 12]].
 matches size = 1 ifFalse: [component error: 'Outer API hierarchy missing or ambiguous'].
 apiOuter := matches first.
 matches := apiOuter getAllDiagramElements select: [:n | n isBlockDiagramHierarchy and: [n diagramElement identifier = 5]].
 matches size = 1 ifFalse: [component error: 'Inner API hierarchy missing or ambiguous'].
 apiInner := matches first.
 (uiOuter basicGraphObject getActualName = 'Stage' and: [uiInner basicGraphObject getActualName = 'Stage'])
   ifFalse: [component error: 'Fixture duplicate names changed'].
 stage := 'undo_checkpoint'.
 stream := pane instVarNamed: 'memento'. entries := #(). deep := OrderedCollection new.
 stream notNil ifTrue: [
   (stream class name asString = 'ReadWriteStream' and: [stream size <= 10000]) ifFalse: [component error: 'Unsupported Undo stream'].
   position := stream position. size := stream size. entries := stream contents copy.
   entries do: [:entry |
     (entry class name asString = 'SGMemento' and: [entry class instSize = 2]) ifFalse: [component error: 'Unsupported Undo entry'].
     deep add: (Array with: (entry instVarNamed: 'parentHierarchyGO') with: (copyGraph value: (entry instVarNamed: 'currentLevelGODB')))
   ]
 ].
 checkUndo := [
   (pane instVarNamed: 'memento') == stream ifFalse: [component error: 'Undo stream identity changed'].
   stream notNil ifTrue: [
     (stream position = position and: [stream size = size]) ifFalse: [component error: 'Undo cursor or size changed'].
     1 to: entries size do: [:i |
       | now | now := stream contents at: i.
       (now == (entries at: i) and: [(now instVarNamed: 'parentHierarchyGO') == (deep at: i) first and: [
         sameGraph value: (now instVarNamed: 'currentLevelGODB') value: ((deep at: i) at: 2)]])
         ifFalse: [component error: 'Undo entry content changed']
     ]
   ]
 ].
 routed := 0. guarded := 0.
 mode = 'overlay_guard' ifTrue: [
   overlay := (Smalltalk at: #DogeBDEOverlaysV1) at: component getOID.
   ((overlay at: 'pane') == pane and: [(Array with: top with: uiOuter with: uiInner) anySatisfy: [:h | h == (overlay at: 'hierarchy')]]) ifFalse: [component error: 'Overlay canvas differs']
 ].
 mode = 'map' ifFalse: [
   stage := 'route'.
   [
     (Array with: uiOuter with: uiInner with: top) do: [:target |
       pane updateWithHierarchyGO: target.
       pane actualHierarchy == target ifFalse: [component error: 'Active hierarchy identity mismatch'].
       overlay notNil ifTrue: [
         | draws suppressed |
         draws := overlay at: 'draws' ifAbsent: [0]. suppressed := overlay at: 'scopeSuppressions' ifAbsent: [0].
         (overlay at: 'callback') value: (overlay at: 'widget') value: overlay value: nil.
         (overlay includesKey: 'callbackError') ifTrue: [component error: (overlay at: 'callbackError')].
         target == (overlay at: 'hierarchy') ifTrue: [
           (overlay at: 'draws') = (draws + 1) ifFalse: [component error: 'Selected-scope overlay did not resume']
         ] ifFalse: [
           ((overlay at: 'draws') = draws and: [(overlay at: 'scopeSuppressions') = (suppressed + 1)])
             ifFalse: [component error: 'Overlay drew on a different hierarchy']
         ]. guarded := guarded + 1
       ].
       controller isGraphicModified = oldModified ifFalse: [component error: 'Routing changed modified flag'].
       checkUndo value. routed := routed + 1
     ]
   ] ensure: [
     stage := 'restore_initial'. pane actualHierarchy == initial ifFalse: [pane updateWithHierarchyGO: initial]
   ]
 ].
 stage := 'verify'. checkUndo value.
 pane actualHierarchy == initial ifFalse: [component error: 'Initial hierarchy not restored'].
 controller isGraphicModified = oldModified ifFalse: [component error: 'Modified flag changed'].
 (sameGraph value: diagram specification specSourceInternalOrNil value: savedSource) ifFalse: [component error: 'Database graphical source changed'].
 answer := '{"passed":true,"outer_id":12,"inner_id":5,"same_names":true,"distinct_ui_objects":true,"parent_identity_checked":true,"initial_scope_restored":true,"source_unchanged":true,"dirty_unchanged":true,"undo_content_unchanged":true,"undo_entries":', entries size printString,
   ',"routed_scopes":', routed printString,
   ',"overlay_guard_checks":', guarded printString,
   ',"outer_ui_api_same_object":', (uiOuter == apiOuter diagramElement) printString,
   ',"inner_ui_api_same_object":', (uiInner == apiInner diagramElement) printString, '}'
 ] ifFail: [:error | answer := 'BDE_VIEW_ERROR: ', stage, ' ', error printString, ' ', error messageText]
 ]. answer
 ] ifFail: [:error | 'BDE_VIEW_ERROR: ', stage, ' ', error printString, ' ', error messageText]
]
