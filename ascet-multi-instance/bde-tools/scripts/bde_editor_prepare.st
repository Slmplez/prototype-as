[:component :mode |
 component handleExceptionsIn: [
 | answer |
 answer := 'not_dispatched'.
 CwAppContext default syncExecInUI: [
 component handleExceptionsIn: [
 | root owner view controller pane widget opened |
 (#('prepare' 'status') includes: mode) ifFalse: [component error: 'Unknown fixed editor action'].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: component getOID, '/Main'.
 owner := component item.
 (root at: 'owner') == owner ifFalse: [component error: 'Editor fixture owner changed'].
 view := EtasMainDatabaseCtrl etasMainController getOpenEditorFor: owner
   editorClass: (root at: 'specification') editorClassForEdition.
 opened := false.
 view isNil ifTrue: [
   mode = 'status' ifTrue: [component error: 'Exact fixture editor is not open'].
   view := component edit.
   (view isKindOf: EtasAPIError) ifTrue: [component error: view errorMessage].
   view := view view. opened := true
 ].
 controller := view uiController.
 (controller notNil and: [controller item == owner])
   ifFalse: [component error: 'Editor controller exact owner mismatch'].
 pane := controller graphPaneController. widget := pane widget.
 (widget notNil and: [widget isDestroyed not]) ifFalse: [component error: 'Editor widget unavailable'].
 controller isGraphicModified ifTrue: [component error: 'Prepared fixture editor is modified'].
 pane selectedGOs isEmpty ifFalse: [component error: 'Prepared fixture editor has a selection'].
 answer := 'ready|opened=', opened printString,
   '|owner_exact=true|controller=', controller class name asString,
   '|pane=', pane class name asString, '|widget=', widget class name asString,
   '|window_realized=', widget window notNil printString,
   '|main_active=', (pane actualHierarchy == pane topHierarchyGO) printString,
   '|graphic_modified=false|selection_empty=true'
 ] ifFail: [:error | answer := 'BDE_EDITOR_PREPARE_ERROR: ', error messageText]
 ]. answer
 ] ifFail: [:error | 'BDE_EDITOR_PREPARE_ERROR: ', error messageText]
]
