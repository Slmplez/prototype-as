"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001860; bytecode file offset 0x8ffcfc"
!ASDInterfaceView methodsFor: 'recovered'!
updateOnlineCombobox
    ^self
! !

"ASDBase.ic method 0x20003da8; bytecode file offset 0x90206c"
!ASDInterfaceView methodsFor: 'recovered'!
initializeOuterPageSpecificationIcon: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20003f58; bytecode file offset 0x90206c"
!ASDInterfaceView methodsFor: 'recovered'!
createWidgetHierarchyPageSpecification: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20060334; bytecode file offset 0x95ccc0"
!ASDInterfaceView methodsFor: 'recovered'!
closeAndSave
    | recoveredValue0 |
    (self) save.
    recoveredValue0 := (self) closeWithoutAskingForPermission.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073388; bytecode file offset 0x970b34"
!ASDInterfaceView methodsFor: 'recovered'!
createWindowMenu
    ^nil
! !

"ASDBase.ic method 0x200795c4; bytecode file offset 0x97c330"
!ASDInterfaceView methodsFor: 'recovered'!
isPrintVisible
    ^false
! !

"ASDBase.ic method 0x2007bc8c; bytecode file offset 0x97c330"
!ASDInterfaceView methodsFor: 'recovered'!
isMoveMethodToVisible
    ^false
! !

"ASDBase.ic method 0x2007cf54; bytecode file offset 0x97c330"
!ASDInterfaceView methodsFor: 'recovered'!
canAddDiagram
    ^false
! !

"ASDBase.ic method 0x2007d03c; bytecode file offset 0x97c330"
!ASDInterfaceView methodsFor: 'recovered'!
isDefaultProjectVisible
    ^false
! !

"ASDBase.ic method 0x2007d514; bytecode file offset 0x97c330"
!ASDInterfaceView methodsFor: 'recovered'!
isInsertDiagramVisible
    ^false
! !

"ASDBase.ic method 0x2007dc84; bytecode file offset 0x97c330"
!ASDInterfaceView methodsFor: 'recovered'!
isExportCodePossible
    ^false
! !

"ASDBase.ic method 0x2007f94c; bytecode file offset 0x97c330"
!ASDInterfaceView methodsFor: 'recovered'!
isExportCodeVisible
    ^false
! !

"ASDBase.ic method 0x200f8678; bytecode file offset 0x9f4f40"
!ASDInterfaceView methodsFor: 'recovered'!
windowLabelString
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) editorName.
    recoveredValue1 := (recoveredValue0) , (' for: ').
    recoveredValue2 := uiController.
    recoveredValue3 := (recoveredValue2) item.
    recoveredValue4 := (recoveredValue3) label.
    recoveredValue5 := (recoveredValue1) , (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2014863c; bytecode file offset 0xa44ef8"
!ASDInterfaceView methodsFor: 'recovered'!
createTreePaneTrees: recoveredArg1 forTreePane: recoveredArg2 inForm: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    (self) createOutlineTree: (recoveredValue0) forTreePane: (recoveredValue1) inForm: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    (self) createWorkspaceTree: (recoveredValue3) forTreePane: (recoveredValue4) inForm: (recoveredValue5).
    recoveredValue6 := recoveredArg2.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20219ce8; bytecode file offset 0xb165c0"
!ASDInterfaceView methodsFor: 'recovered'!
initDragAndDrop
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    super initDragAndDrop.
    recoveredValue0 := (self) outlineTree.
    recoveredValue1 := (recoveredValue0) createTargetAdapter.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := XmNdragOverCallback.
    (recoveredValue2) addCallback: (recoveredValue3) receiver: (self) selector: ('classOver:clientData:callData:') clientData: (nil).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := XmNdropCallback.
    (recoveredValue4) addCallback: (recoveredValue5) receiver: (self) selector: ('classDrop:clientData:callData:') clientData: (nil).
    ^self
! !

"ASDBase.ic method 0x2035d704; bytecode file offset 0xc59fdc"
!ASDInterfaceView methodsFor: 'recovered'!
createEditorSpecificMenus: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) createInsertMenu.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) addMenu: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) createExtrasMenu.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) addMenu: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToolsMenu.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) addMenu: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := 'Rnz'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 'EHI_81124'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := ASDAscetController.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSCMInstalled.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) scmCreateMenu.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) addMenu: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

