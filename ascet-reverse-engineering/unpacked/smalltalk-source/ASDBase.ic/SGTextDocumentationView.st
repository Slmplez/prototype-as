"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006304; bytecode file offset 0x902de8"
!SGTextDocumentationView methodsFor: 'recovered'!
textPaneValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2002d234; bytecode file offset 0x934580"
!SGTextDocumentationView methodsFor: 'recovered'!
wordWrap
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) optionWordWrap.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033944; bytecode file offset 0x934580"
!SGTextDocumentationView methodsFor: 'recovered'!
item
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) item.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20042f4c; bytecode file offset 0x9451f8"
!SGTextDocumentationView methodsFor: 'recovered'!
textPane
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('textPane').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004317c; bytecode file offset 0x9451f8"
!SGTextDocumentationView methodsFor: 'recovered'!
views
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('views').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043c4c; bytecode file offset 0x9451f8"
!SGTextDocumentationView methodsFor: 'recovered'!
textObjects
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('textObjects').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200460dc; bytecode file offset 0x9451f8"
!SGTextDocumentationView methodsFor: 'recovered'!
textLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('text').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20050e90; bytecode file offset 0x94d84c"
!SGTextDocumentationView methodsFor: 'recovered'!
notReadOnly
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) readOnly.
    recoveredValue2 := (recoveredValue1) not.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005ac5c; bytecode file offset 0x957a6c"
!SGTextDocumentationView methodsFor: 'recovered'!
assignViewActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) menuViewAssign.
    ^self
! !

"ASDBase.ic method 0x2005ae90; bytecode file offset 0x957a6c"
!SGTextDocumentationView methodsFor: 'recovered'!
textObjectsdefaultActionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) menuTRename.
    ^self
! !

"ASDBase.ic method 0x2005b19c; bytecode file offset 0x957a6c"
!SGTextDocumentationView methodsFor: 'recovered'!
deassignViewActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) menuViewDeassign.
    ^self
! !

"ASDBase.ic method 0x20064bb4; bytecode file offset 0x961970"
!SGTextDocumentationView methodsFor: 'recovered'!
menuEditCopy
    | recoveredValue0 |
    recoveredValue0 := (self) textPane.
    (recoveredValue0) copySelection.
    ^self
! !

"ASDBase.ic method 0x20064cf4; bytecode file offset 0x961970"
!SGTextDocumentationView methodsFor: 'recovered'!
menuEditPaste
    | recoveredValue0 |
    recoveredValue0 := (self) textPane.
    (recoveredValue0) paste.
    ^self
! !

"ASDBase.ic method 0x20065054; bytecode file offset 0x961970"
!SGTextDocumentationView methodsFor: 'recovered'!
menuEditCut
    | recoveredValue0 |
    recoveredValue0 := (self) textPane.
    (recoveredValue0) cutSelection.
    ^self
! !

"ASDBase.ic method 0x2009ff68; bytecode file offset 0x99c9e0"
!SGTextDocumentationView methodsFor: 'recovered'!
updateWindowLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) labelForItem.
    (self) updateTitle: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a28e4; bytecode file offset 0x99f1a0"
!SGTextDocumentationView methodsFor: 'recovered'!
initFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGTextDocumentationCtrl.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createFor: (recoveredValue1).
    uiController := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200aed5c; bytecode file offset 0x9ab6a8"
!SGTextDocumentationView methodsFor: 'recovered'!
viewsvisualInfoCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (recoveredValue2) name.
    (recoveredValue0) label: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200af3b0; bytecode file offset 0x9abc84"
!SGTextDocumentationView methodsFor: 'recovered'!
viewsextendedSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) selectedItems.
    (recoveredValue0) selectedViews: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b4448; bytecode file offset 0x9b0db4"
!SGTextDocumentationView methodsFor: 'recovered'!
menuEditSave
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (self) textPane.
    recoveredValue2 := (recoveredValue1) value.
    (recoveredValue0) setText: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b5484; bytecode file offset 0x9b1d3c"
!SGTextDocumentationView methodsFor: 'recovered'!
isClosingPossible
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) toSave.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200dd7b8; bytecode file offset 0x9da19c"
!SGTextDocumentationView methodsFor: 'recovered'!
textObjectsvisualInfoCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (self) uiController.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue2) item.
    recoveredValue4 := (recoveredValue1) labelForTextObject: (recoveredValue3).
    (recoveredValue0) label: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20114a80; bytecode file offset 0xa11348"
!SGTextDocumentationView methodsFor: 'recovered'!
assignButtons
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) widgetAt: ('assignOpMode').
    recoveredValue2 := (self) widgetAt: ('deassignOpMode').
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2012f288; bytecode file offset 0xa2bbdc"
!SGTextDocumentationView methodsFor: 'recovered'!
menuViewDeassign
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) deassignSelectedViewsFromSelectedTextObjects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) textObjects.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) refresh.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012f300; bytecode file offset 0xa2bbdc"
!SGTextDocumentationView methodsFor: 'recovered'!
menuViewAssign
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) assignSelectedViewsToSelectedTextObjects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) textObjects.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) refresh.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013568c; bytecode file offset 0xa31f50"
!SGTextDocumentationView methodsFor: 'recovered'!
textObjectsendEditCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := uiController.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue3) newValue.
    (recoveredValue0) renameTextObject: (recoveredValue2) to: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (recoveredValue6) item.
    (recoveredValue5) refreshItem: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x2014b9a0; bytecode file offset 0xa4827c"
!SGTextDocumentationView methodsFor: 'recovered'!
menuEditSelectAll
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredLocal2 := 0.
    recoveredValue0 := (self) textPane.
    recoveredValue1 := (recoveredValue0) getLastPosition.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) textPane.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue3) @ (recoveredValue4).
    (recoveredValue2) setSelection: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201598d4; bytecode file offset 0xa5619c"
!SGTextDocumentationView methodsFor: 'recovered'!
menuTRename
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) textObjects.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectedPos.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) textObjects.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) editItemAt: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017b2cc; bytecode file offset 0xa77b90"
!SGTextDocumentationView methodsFor: 'recovered'!
menuTDelete
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeSelectedTextObjects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) updateTextObjectList.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) updateTextPane.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d06fc; bytecode file offset 0xaccfc8"
!SGTextDocumentationView methodsFor: 'recovered'!
createMenuBar
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := CwMenuBar.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) createViewMenu.
    (recoveredValue3) addMenu: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := (self) createTextMenu.
    (recoveredValue5) addMenu: (recoveredValue6).
    recoveredValue7 := (self) createEditMenu.
    (recoveredValue2) addMenu: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2021efcc; bytecode file offset 0xb1b898"
!SGTextDocumentationView methodsFor: 'recovered'!
writeToFile
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := uiController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) mainController.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'Choose a File!!'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := '*.*'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack7 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) promptForFileNameLabel: (recoveredStack2) defaultFileName: (recoveredStack3) searchPath: (recoveredStack4) searchMask: (recoveredStack5) shouldExist: (recoveredStack6) multipleSelect: (recoveredStack7) parentWindow: (recoveredStack8).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) saveFileString: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022c35c; bytecode file offset 0xb28c28"
!SGTextDocumentationView methodsFor: 'recovered'!
updateTitle: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Notes Editor for: '.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) notReadOnly.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := ' <R>'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20264924; bytecode file offset 0xb61218"
!SGTextDocumentationView methodsFor: 'recovered'!
updateTextObjectList
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) textObjects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) textObjects.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) textObjects.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) selectItem: (recoveredStack2) notify: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) setPos: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20264948; bytecode file offset 0xb61218"
!SGTextDocumentationView methodsFor: 'recovered'!
updateCategoryList
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) views.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) views.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) views.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) selectItem: (recoveredStack2) notify: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) setPos: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026857c; bytecode file offset 0xb64e5c"
!SGTextDocumentationView methodsFor: 'recovered'!
textObjectsbeginEditCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (self) notReadOnly.
    (recoveredValue0) doit: (recoveredValue1).
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue2) item.
    recoveredValue4 := (recoveredValue3) name.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := EwTextEditPolicy.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue5) on: (recoveredValue6).
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := recoveredValue8.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) size.
    recoveredValue12 := (0) @ (recoveredValue11).
    (recoveredValue9) selection: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    (recoveredValue8) value: (recoveredValue13).
    recoveredValue14 := recoveredArg3.
    recoveredValue15 := recoveredLocal2.
    (recoveredValue14) editPolicy: (recoveredValue15).
    ^self
! !

"ASDBase.ic method 0x2026fe60; bytecode file offset 0xb6c734"
!SGTextDocumentationView methodsFor: 'recovered'!
menuTaskSelectViews
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) viewsForSelectedTextObjects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) views.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) selectedItems: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 |
    recoveredBlock23Value0 := (self) views.
    recoveredBlock23Value1 := recoveredBlock23Arg1.
    recoveredBlock23Value2 := (recoveredBlock23Value0) selectItem: (recoveredBlock23Value1) notify: (true).
    recoveredBlock23Value2
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029adc8; bytecode file offset 0xb976a0"
!SGTextDocumentationView methodsFor: 'recovered'!
menuViewAssignedTextObjects
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) textObjectsForSelectedViews.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) textObjects.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) endEdit.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) textObjects.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) selectedItems: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 |
    recoveredBlock27Value0 := (self) textObjects.
    recoveredBlock27Value1 := recoveredBlock27Arg1.
    recoveredBlock27Value2 := (recoveredBlock27Value0) selectItem: (recoveredBlock27Value1) notify: (true).
    recoveredBlock27Value2
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b0534; bytecode file offset 0xbace08"
!SGTextDocumentationView methodsFor: 'recovered'!
readFromFile
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := uiController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) mainController.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'Choose a File!!'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := '*.*'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack7 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) promptForFileNameLabel: (recoveredStack2) defaultFileName: (recoveredStack3) searchPath: (recoveredStack4) searchMask: (recoveredStack5) shouldExist: (recoveredStack6) multipleSelect: (recoveredStack7) parentWindow: (recoveredStack8).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) getFileString: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) textPane.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c74ac; bytecode file offset 0xbc3d98"
!SGTextDocumentationView methodsFor: 'recovered'!
textDocuEditorFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) reason.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := XmCRFOCUS.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := CwMessagePrompter.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'Database missing. Close Notes Editor...'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) close.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) updateWindowLabel.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) updateCategoryList.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) checkTextAssignment.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) textObjects.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) refresh.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ece98; bytecode file offset 0xbe977c"
!SGTextDocumentationView methodsFor: 'recovered'!
initFor: recoveredArg1 item: recoveredArg2 readOnly: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRead.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CwMessagePrompter.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'No Read rights for: '.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := SGTextDocumentationCtrl.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFor: (recoveredStack2) item: (recoveredStack3) readOnly: (recoveredStack4).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            uiController := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) views.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := CwMessagePrompter.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'Please create some Documentation Views first'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f72c4; bytecode file offset 0xbf3ba8"
!SGTextDocumentationView methodsFor: 'recovered'!
menuTAdd
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) toSave.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) addTextObject.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) updateTextObjectList.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) resetSelectedTextObjects.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) textObjects.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) endEdit.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) textObjects.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) selectedItems: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) textObjects.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) selectItem: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) menuTRename.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f9a04; bytecode file offset 0xbf6310"
!SGTextDocumentationView methodsFor: 'recovered'!
menuTShiftUp
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedTextObjects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) shiftUpTextObjects: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) updateTextObjectList.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) textObjects.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) selectedItems: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 |
    recoveredBlock35Value0 := (self) textObjects.
    recoveredBlock35Value1 := recoveredBlock35Arg1.
    recoveredBlock35Value2 := (recoveredBlock35Value0) selectItem: (recoveredBlock35Value1) notify: (true).
    recoveredBlock35Value2
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f9a34; bytecode file offset 0xbf6310"
!SGTextDocumentationView methodsFor: 'recovered'!
menuTShiftDown
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedTextObjects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) shiftDownTextObjects: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) updateTextObjectList.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) textObjects.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) selectedItems: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 |
    recoveredBlock35Value0 := (self) textObjects.
    recoveredBlock35Value1 := recoveredBlock35Arg1.
    recoveredBlock35Value2 := (recoveredBlock35Value0) selectItem: (recoveredBlock35Value1) notify: (true).
    recoveredBlock35Value2
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20306cc0; bytecode file offset 0xc035a8"
!SGTextDocumentationView methodsFor: 'recovered'!
textObjectsextendedSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) toSave.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) textObjects.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) endEdit.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) textObjects.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) selectedItems: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedTextObjects.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 |
    recoveredBlock25Value0 := (self) textObjects.
    recoveredBlock25Value1 := recoveredBlock25Arg1.
    recoveredBlock25Value2 := (recoveredBlock25Value0) selectItem: (recoveredBlock25Value1) notify: (false).
    recoveredBlock25Value2
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedItems.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) selectedTextObjects: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) updateTextPane.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20387050; bytecode file offset 0xc83944"
!SGTextDocumentationView methodsFor: 'recovered'!
saveFileString: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsFileStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := 131072.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) | (recoveredStack4).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := 524288.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) | (recoveredStack4).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2) oflag: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 'Could not open file '.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) textPane.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Value0 recoveredBlock49Value1 recoveredBlock49Value2 |
    recoveredBlock49Value0 := recoveredLocal2.
    recoveredBlock49Value1 := recoveredBlock49Arg1.
    recoveredBlock49Value2 := (recoveredBlock49Value0) nextPut: (recoveredBlock49Value1).
    recoveredBlock49Value2
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038a7e8; bytecode file offset 0xc870c8"
!SGTextDocumentationView methodsFor: 'recovered'!
updateTextPane
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedTextObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) textPane.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) textLabel.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := ' '.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) labelString: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) textPane.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) textPane.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) uiController.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) getText.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) textLabel.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) labelString: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) textPane.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a81e0; bytecode file offset 0xca4ac8"
!SGTextDocumentationView methodsFor: 'recovered'!
initWidgetFonts
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280f4e3cArg1 | 
    | block280f4e3cStack0 block280f4e3cStack1 block280f4e3cStack2 block280f4e3cStack3 block280f4e3cStack4 block280f4e3cPC block280f4e3cStep block280f4e3cDone block280f4e3cResult |
    block280f4e3cStack0 := self.
    block280f4e3cPC := 4.
    block280f4e3cDone := false.
    [block280f4e3cDone not] whileTrue: [
        block280f4e3cStep := block280f4e3cPC.
        block280f4e3cStep = 4 ifTrue: [
            block280f4e3cStack1 := block280f4e3cArg1.
            block280f4e3cPC := 5.
        ].
        block280f4e3cStep = 5 ifTrue: [
            block280f4e3cStack1 := (block280f4e3cStack1) class.
            block280f4e3cPC := 6.
        ].
        block280f4e3cStep = 6 ifTrue: [
            block280f4e3cStack2 := CwLabel.
            block280f4e3cPC := 8.
        ].
        block280f4e3cStep = 8 ifTrue: [
            block280f4e3cStack1 := (block280f4e3cStack1) = (block280f4e3cStack2).
            block280f4e3cPC := 9.
        ].
        block280f4e3cStep = 9 ifTrue: [
            (block280f4e3cStack1) ifTrue: [block280f4e3cPC := 12] ifFalse: [block280f4e3cPC := 19].
        ].
        block280f4e3cStep = 12 ifTrue: [
            block280f4e3cStack1 := block280f4e3cArg1.
            block280f4e3cPC := 13.
        ].
        block280f4e3cStep = 13 ifTrue: [
            block280f4e3cStack2 := SGUserInterfaceSettings.
            block280f4e3cPC := 15.
        ].
        block280f4e3cStep = 15 ifTrue: [
            block280f4e3cStack2 := (block280f4e3cStack2) smallFontList.
            block280f4e3cPC := 17.
        ].
        block280f4e3cStep = 17 ifTrue: [
            (block280f4e3cStack1) fontList: (block280f4e3cStack2).
            block280f4e3cPC := 19.
        ].
        block280f4e3cStep = 19 ifTrue: [
            block280f4e3cStack1 := block280f4e3cArg1.
            block280f4e3cPC := 20.
        ].
        block280f4e3cStep = 20 ifTrue: [
            block280f4e3cStack1 := (block280f4e3cStack1) class.
            block280f4e3cPC := 21.
        ].
        block280f4e3cStep = 21 ifTrue: [
            block280f4e3cStack2 := CwObjectComboBox.
            block280f4e3cPC := 23.
        ].
        block280f4e3cStep = 23 ifTrue: [
            block280f4e3cStack1 := (block280f4e3cStack1) = (block280f4e3cStack2).
            block280f4e3cPC := 24.
        ].
        block280f4e3cStep = 24 ifTrue: [
            (block280f4e3cStack1) ifTrue: [block280f4e3cPC := 28] ifFalse: [block280f4e3cPC := 35].
        ].
        block280f4e3cStep = 28 ifTrue: [
            block280f4e3cStack1 := block280f4e3cArg1.
            block280f4e3cPC := 29.
        ].
        block280f4e3cStep = 29 ifTrue: [
            block280f4e3cStack2 := SGUserInterfaceSettings.
            block280f4e3cPC := 31.
        ].
        block280f4e3cStep = 31 ifTrue: [
            block280f4e3cStack2 := (block280f4e3cStack2) smallFontList.
            block280f4e3cPC := 33.
        ].
        block280f4e3cStep = 33 ifTrue: [
            (block280f4e3cStack1) fontList: (block280f4e3cStack2).
            block280f4e3cPC := 35.
        ].
        block280f4e3cStep = 35 ifTrue: [
            block280f4e3cStack1 := nil.
            block280f4e3cPC := 36.
        ].
        block280f4e3cStep = 36 ifTrue: [
            block280f4e3cStack2 := block280f4e3cArg1.
            block280f4e3cPC := 37.
        ].
        block280f4e3cStep = 37 ifTrue: [
            block280f4e3cStack2 := (block280f4e3cStack2) class.
            block280f4e3cPC := 38.
        ].
        block280f4e3cStep = 38 ifTrue: [
            block280f4e3cStack3 := RBEnhancedText.
            block280f4e3cPC := 40.
        ].
        block280f4e3cStep = 40 ifTrue: [
            block280f4e3cStack2 := (block280f4e3cStack2) = (block280f4e3cStack3).
            block280f4e3cPC := 41.
        ].
        block280f4e3cStep = 41 ifTrue: [
            (block280f4e3cStack2) ifTrue: [block280f4e3cPC := 44] ifFalse: [block280f4e3cPC := 52].
        ].
        block280f4e3cStep = 44 ifTrue: [
            block280f4e3cPC := 45.
        ].
        block280f4e3cStep = 45 ifTrue: [
            block280f4e3cStack1 := block280f4e3cArg1.
            block280f4e3cPC := 46.
        ].
        block280f4e3cStep = 46 ifTrue: [
            block280f4e3cStack2 := SGUserInterfaceSettings.
            block280f4e3cPC := 48.
        ].
        block280f4e3cStep = 48 ifTrue: [
            block280f4e3cStack2 := (block280f4e3cStack2) smallFontList.
            block280f4e3cPC := 50.
        ].
        block280f4e3cStep = 50 ifTrue: [
            block280f4e3cStack1 := (block280f4e3cStack1) fontList: (block280f4e3cStack2).
            block280f4e3cPC := 52.
        ].
        block280f4e3cStep = 52 ifTrue: [
            block280f4e3cResult := block280f4e3cStack1.
            block280f4e3cDone := true.
        ].
    ].
    block280f4e3cResult
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := SGUserInterfaceSettings.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) views.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) updateListFontAndItemHeight: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := SGUserInterfaceSettings.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) textObjects.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) updateListFontAndItemHeight: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c6018; bytecode file offset 0xcc290c"
!SGTextDocumentationView methodsFor: 'recovered'!
createViewMenu
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := EtasMenu.
    recoveredValue1 := (recoveredValue0) defaultMenuClass.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) title: ('~Views').
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := [
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := false.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack2 := self.
            recoveredBlock18PC := 26.
        ].
        recoveredBlock18Step = 26 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) uiController.
            recoveredBlock18PC := 28.
        ].
        recoveredBlock18Step = 28 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) selectedTextObjects.
            recoveredBlock18PC := 30.
        ].
        recoveredBlock18Step = 30 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) notEmpty.
            recoveredBlock18PC := 32.
        ].
        recoveredBlock18Step = 32 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 36] ifFalse: [recoveredBlock18PC := 52].
        ].
        recoveredBlock18Step = 36 ifTrue: [
            recoveredBlock18PC := 37.
        ].
        recoveredBlock18Step = 37 ifTrue: [
            recoveredBlock18Stack1 := false.
            recoveredBlock18PC := 38.
        ].
        recoveredBlock18Step = 38 ifTrue: [
            recoveredBlock18Stack2 := self.
            recoveredBlock18PC := 39.
        ].
        recoveredBlock18Step = 39 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) uiController.
            recoveredBlock18PC := 41.
        ].
        recoveredBlock18Step = 41 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) selectedViews.
            recoveredBlock18PC := 43.
        ].
        recoveredBlock18Step = 43 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) notEmpty.
            recoveredBlock18PC := 45.
        ].
        recoveredBlock18Step = 45 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 48] ifFalse: [recoveredBlock18PC := 52].
        ].
        recoveredBlock18Step = 48 ifTrue: [
            recoveredBlock18PC := 49.
        ].
        recoveredBlock18Step = 49 ifTrue: [
            recoveredBlock18Stack1 := self.
            recoveredBlock18PC := 50.
        ].
        recoveredBlock18Step = 50 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) notReadOnly.
            recoveredBlock18PC := 52.
        ].
        recoveredBlock18Step = 52 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    (recoveredValue4) add: ('menuViewAssign') label: ('~Assign Views') enable: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) addLine.
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := [
    | recoveredBlock63Value0 recoveredBlock63Value1 recoveredBlock63Value2 |
    recoveredBlock63Value0 := (self) uiController.
    recoveredBlock63Value1 := (recoveredBlock63Value0) selectedViews.
    recoveredBlock63Value2 := (recoveredBlock63Value1) notEmpty.
    recoveredBlock63Value2
].
    (recoveredValue7) add: ('menuViewAssignedTextObjects') label: ('Select ~Text Segments') enable: (recoveredValue8).
    recoveredLocal1 := recoveredValue2.
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x203d6e7c; bytecode file offset 0xcd376c"
!SGTextDocumentationView methodsFor: 'recovered'!
toSave
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) textPane.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedTextObject.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) textPane.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) getText.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := RBUserQuestion.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'Do you want to store '.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) uiController.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectedTextObject.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := ' ?'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirm: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) yesNoCancel.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) textPane.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) setText: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 84.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) textPane.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) getText.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045b74c; bytecode file offset 0xd58078"
!SGTextDocumentationView methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    (self) iconSmall: ('GeneralFileEdit') large: ('GeneralFileEdit32').
    (self) grayBackground.
    (self) updateFonts.
    recoveredValue0 := CwSmalltalkTextSelectionManager.
    recoveredValue1 := (self) textPane.
    recoveredValue2 := (recoveredValue0) for: (recoveredValue1).
    (recoveredValue2) connect.
    (self) updateTextObjectList.
    (self) updateTextPane.
    recoveredValue3 := (self) createMenuBar.
    windowMenuBar := recoveredValue3.
    recoveredValue4 := (self) mainWindow.
    recoveredValue5 := windowMenuBar.
    recoveredValue6 := (self) mainWindow.
    recoveredValue7 := (recoveredValue5) createMenuBarFor: (recoveredValue6) owner: (self).
    recoveredValue8 := (recoveredValue7) manageChild.
    (recoveredValue4) menuBar: (recoveredValue8).
    recoveredValue9 := (self) views.
    recoveredValue10 := (self) createViewMenu.
    (recoveredValue9) menu: (recoveredValue10) owner: (self).
    recoveredValue11 := (self) textObjects.
    recoveredValue12 := (self) createTextMenu.
    (recoveredValue11) menu: (recoveredValue12) owner: (self).
    recoveredValue13 := SGUserInterfaceSettings.
    recoveredValue14 := (self) textPane.
    (recoveredValue13) updateTextFont: (recoveredValue14).
    (self) updateWindowLabel.
    recoveredValue15 := (self) textPane.
    recoveredValue16 := (self) createEditMenu.
    (recoveredValue15) menu: (recoveredValue16) owner: (self).
    recoveredValue17 := (self) textPane.
    recoveredValue18 := (self) notReadOnly.
    (recoveredValue17) editable: (recoveredValue18).
    recoveredValue19 := (self) assignButtons.
    recoveredValue20 := [:recoveredBlock99Arg1 | 
    | recoveredBlock99Value0 recoveredBlock99Value1 recoveredBlock99Value2 |
    recoveredBlock99Value0 := recoveredBlock99Arg1.
    recoveredBlock99Value1 := (self) notReadOnly.
    recoveredBlock99Value2 := (recoveredBlock99Value0) sensitive: (recoveredBlock99Value1).
    recoveredBlock99Value2
].
    (recoveredValue19) do: (recoveredValue20).
    ^self
! !

"ASDBase.ic method 0x2050d500; bytecode file offset 0xe09e04"
!SGTextDocumentationView methodsFor: 'recovered'!
getFileString: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := CwMessagePrompter.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'No file: '.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := '...'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := CfsReadWriteFileStream.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := CwMessagePrompter.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := 'File: '.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := ' is not printable'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredPC := 125.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := [:recoveredBlock128Arg1 | 
    | recoveredBlock128Stack0 recoveredBlock128Stack1 recoveredBlock128Stack2 recoveredBlock128Stack3 recoveredBlock128Stack4 recoveredBlock128PC recoveredBlock128Step recoveredBlock128Done recoveredBlock128Result |
    recoveredBlock128Stack0 := self.
    recoveredBlock128PC := 134.
    recoveredBlock128Done := false.
    [recoveredBlock128Done not] whileTrue: [
        recoveredBlock128Step := recoveredBlock128PC.
        recoveredBlock128Step = 134 ifTrue: [
            recoveredBlock128Stack1 := nil.
            recoveredBlock128PC := 135.
        ].
        recoveredBlock128Step = 135 ifTrue: [
            recoveredBlock128Stack2 := recoveredBlock128Arg1.
            recoveredBlock128PC := 136.
        ].
        recoveredBlock128Step = 136 ifTrue: [
            recoveredBlock128Stack2 := (recoveredBlock128Stack2) isAlphaNumeric.
            recoveredBlock128PC := 138.
        ].
        recoveredBlock128Step = 138 ifTrue: [
            (recoveredBlock128Stack2) ifTrue: [recoveredBlock128PC := 176] ifFalse: [recoveredBlock128PC := 142].
        ].
        recoveredBlock128Step = 142 ifTrue: [
            recoveredBlock128PC := 143.
        ].
        recoveredBlock128Step = 143 ifTrue: [
            recoveredBlock128Stack1 := nil.
            recoveredBlock128PC := 144.
        ].
        recoveredBlock128Step = 144 ifTrue: [
            recoveredBlock128Stack2 := recoveredBlock128Arg1.
            recoveredBlock128PC := 145.
        ].
        recoveredBlock128Step = 145 ifTrue: [
            recoveredBlock128Stack2 := (recoveredBlock128Stack2) isPunctuation.
            recoveredBlock128PC := 147.
        ].
        recoveredBlock128Step = 147 ifTrue: [
            (recoveredBlock128Stack2) ifTrue: [recoveredBlock128PC := 176] ifFalse: [recoveredBlock128PC := 150].
        ].
        recoveredBlock128Step = 150 ifTrue: [
            recoveredBlock128PC := 151.
        ].
        recoveredBlock128Step = 151 ifTrue: [
            recoveredBlock128Stack1 := nil.
            recoveredBlock128PC := 152.
        ].
        recoveredBlock128Step = 152 ifTrue: [
            recoveredBlock128Stack2 := recoveredBlock128Arg1.
            recoveredBlock128PC := 153.
        ].
        recoveredBlock128Step = 153 ifTrue: [
            recoveredBlock128Stack2 := (recoveredBlock128Stack2) isSeparator.
            recoveredBlock128PC := 155.
        ].
        recoveredBlock128Step = 155 ifTrue: [
            (recoveredBlock128Stack2) ifTrue: [recoveredBlock128PC := 176] ifFalse: [recoveredBlock128PC := 158].
        ].
        recoveredBlock128Step = 158 ifTrue: [
            recoveredBlock128PC := 159.
        ].
        recoveredBlock128Step = 159 ifTrue: [
            recoveredBlock128Stack1 := CwMessagePrompter.
            recoveredBlock128PC := 161.
        ].
        recoveredBlock128Step = 161 ifTrue: [
            recoveredBlock128Stack2 := 'File: '.
            recoveredBlock128PC := 163.
        ].
        recoveredBlock128Step = 163 ifTrue: [
            recoveredBlock128Stack3 := recoveredArg1.
            recoveredBlock128PC := 166.
        ].
        recoveredBlock128Step = 166 ifTrue: [
            recoveredBlock128Stack2 := (recoveredBlock128Stack2) , (recoveredBlock128Stack3).
            recoveredBlock128PC := 168.
        ].
        recoveredBlock128Step = 168 ifTrue: [
            recoveredBlock128Stack3 := ' is not printable'.
            recoveredBlock128PC := 170.
        ].
        recoveredBlock128Step = 170 ifTrue: [
            recoveredBlock128Stack2 := (recoveredBlock128Stack2) , (recoveredBlock128Stack3).
            recoveredBlock128PC := 172.
        ].
        recoveredBlock128Step = 172 ifTrue: [
            (recoveredBlock128Stack1) message: (recoveredBlock128Stack2).
            recoveredBlock128PC := 174.
        ].
        recoveredBlock128Step = 174 ifTrue: [
            recoveredBlock128Stack1 := nil.
            recoveredBlock128PC := 175.
        ].
        recoveredBlock128Step = 175 ifTrue: [
            ^recoveredBlock128Stack1
        ].
        recoveredBlock128Step = 176 ifTrue: [
            recoveredBlock128Result := recoveredBlock128Stack1.
            recoveredBlock128Done := true.
        ].
    ].
    recoveredBlock128Result
].
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20545384; bytecode file offset 0xe41ca8"
!SGTextDocumentationView methodsFor: 'recovered'!
createEditMenu
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := EtasMenu.
    recoveredValue1 := (recoveredValue0) defaultMenuClass.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) title: ('~Edit').
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := [
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := false.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack2 := self.
            recoveredBlock18PC := 26.
        ].
        recoveredBlock18Step = 26 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) textPane.
            recoveredBlock18PC := 28.
        ].
        recoveredBlock18Step = 28 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) getSelection.
            recoveredBlock18PC := 30.
        ].
        recoveredBlock18Step = 30 ifTrue: [
            (recoveredBlock18Stack2 == nil) ifTrue: [recoveredBlock18PC := 38] ifFalse: [recoveredBlock18PC := 34].
        ].
        recoveredBlock18Step = 34 ifTrue: [
            recoveredBlock18PC := 35.
        ].
        recoveredBlock18Step = 35 ifTrue: [
            recoveredBlock18Stack1 := self.
            recoveredBlock18PC := 36.
        ].
        recoveredBlock18Step = 36 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) notReadOnly.
            recoveredBlock18PC := 38.
        ].
        recoveredBlock18Step = 38 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    (recoveredValue4) add: ('menuEditCut') label: ('~Cut') enable: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := [
    | recoveredBlock46Stack0 recoveredBlock46Stack1 recoveredBlock46Stack2 recoveredBlock46Stack3 recoveredBlock46PC recoveredBlock46Step recoveredBlock46Done recoveredBlock46Result |
    recoveredBlock46Stack0 := self.
    recoveredBlock46PC := 52.
    recoveredBlock46Done := false.
    [recoveredBlock46Done not] whileTrue: [
        recoveredBlock46Step := recoveredBlock46PC.
        recoveredBlock46Step = 52 ifTrue: [
            recoveredBlock46Stack1 := false.
            recoveredBlock46PC := 53.
        ].
        recoveredBlock46Step = 53 ifTrue: [
            recoveredBlock46Stack2 := self.
            recoveredBlock46PC := 54.
        ].
        recoveredBlock46Step = 54 ifTrue: [
            recoveredBlock46Stack2 := (recoveredBlock46Stack2) textPane.
            recoveredBlock46PC := 56.
        ].
        recoveredBlock46Step = 56 ifTrue: [
            recoveredBlock46Stack2 := (recoveredBlock46Stack2) getSelection.
            recoveredBlock46PC := 58.
        ].
        recoveredBlock46Step = 58 ifTrue: [
            (recoveredBlock46Stack2 == nil) ifTrue: [recoveredBlock46PC := 66] ifFalse: [recoveredBlock46PC := 62].
        ].
        recoveredBlock46Step = 62 ifTrue: [
            recoveredBlock46PC := 63.
        ].
        recoveredBlock46Step = 63 ifTrue: [
            recoveredBlock46Stack1 := self.
            recoveredBlock46PC := 64.
        ].
        recoveredBlock46Step = 64 ifTrue: [
            recoveredBlock46Stack1 := (recoveredBlock46Stack1) notReadOnly.
            recoveredBlock46PC := 66.
        ].
        recoveredBlock46Step = 66 ifTrue: [
            recoveredBlock46Result := recoveredBlock46Stack1.
            recoveredBlock46Done := true.
        ].
    ].
    recoveredBlock46Result
].
    (recoveredValue6) add: ('menuEditCopy') label: ('Cop~y') enable: (recoveredValue7).
    recoveredValue8 := recoveredValue2.
    recoveredValue9 := [
    | recoveredBlock74Stack0 recoveredBlock74Stack1 recoveredBlock74Stack2 recoveredBlock74Stack3 recoveredBlock74PC recoveredBlock74Step recoveredBlock74Done recoveredBlock74Result |
    recoveredBlock74Stack0 := self.
    recoveredBlock74PC := 80.
    recoveredBlock74Done := false.
    [recoveredBlock74Done not] whileTrue: [
        recoveredBlock74Step := recoveredBlock74PC.
        recoveredBlock74Step = 80 ifTrue: [
            recoveredBlock74Stack1 := false.
            recoveredBlock74PC := 81.
        ].
        recoveredBlock74Step = 81 ifTrue: [
            recoveredBlock74Stack2 := self.
            recoveredBlock74PC := 82.
        ].
        recoveredBlock74Step = 82 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) uiController.
            recoveredBlock74PC := 84.
        ].
        recoveredBlock74Step = 84 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) selectedTextObject.
            recoveredBlock74PC := 86.
        ].
        recoveredBlock74Step = 86 ifTrue: [
            (recoveredBlock74Stack2 == nil) ifTrue: [recoveredBlock74PC := 94] ifFalse: [recoveredBlock74PC := 90].
        ].
        recoveredBlock74Step = 90 ifTrue: [
            recoveredBlock74PC := 91.
        ].
        recoveredBlock74Step = 91 ifTrue: [
            recoveredBlock74Stack1 := self.
            recoveredBlock74PC := 92.
        ].
        recoveredBlock74Step = 92 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) notReadOnly.
            recoveredBlock74PC := 94.
        ].
        recoveredBlock74Step = 94 ifTrue: [
            recoveredBlock74Result := recoveredBlock74Stack1.
            recoveredBlock74Done := true.
        ].
    ].
    recoveredBlock74Result
].
    (recoveredValue8) add: ('menuEditPaste') label: ('~Paste') enable: (recoveredValue9).
    recoveredValue10 := recoveredValue2.
    recoveredValue11 := [
    | recoveredBlock102Stack0 recoveredBlock102Stack1 recoveredBlock102Stack2 recoveredBlock102Stack3 recoveredBlock102PC recoveredBlock102Step recoveredBlock102Done recoveredBlock102Result |
    recoveredBlock102Stack0 := self.
    recoveredBlock102PC := 108.
    recoveredBlock102Done := false.
    [recoveredBlock102Done not] whileTrue: [
        recoveredBlock102Step := recoveredBlock102PC.
        recoveredBlock102Step = 108 ifTrue: [
            recoveredBlock102Stack1 := false.
            recoveredBlock102PC := 109.
        ].
        recoveredBlock102Step = 109 ifTrue: [
            recoveredBlock102Stack2 := self.
            recoveredBlock102PC := 110.
        ].
        recoveredBlock102Step = 110 ifTrue: [
            recoveredBlock102Stack2 := (recoveredBlock102Stack2) uiController.
            recoveredBlock102PC := 112.
        ].
        recoveredBlock102Step = 112 ifTrue: [
            recoveredBlock102Stack2 := (recoveredBlock102Stack2) selectedTextObject.
            recoveredBlock102PC := 114.
        ].
        recoveredBlock102Step = 114 ifTrue: [
            (recoveredBlock102Stack2 == nil) ifTrue: [recoveredBlock102PC := 126] ifFalse: [recoveredBlock102PC := 118].
        ].
        recoveredBlock102Step = 118 ifTrue: [
            recoveredBlock102PC := 119.
        ].
        recoveredBlock102Step = 119 ifTrue: [
            recoveredBlock102Stack1 := self.
            recoveredBlock102PC := 120.
        ].
        recoveredBlock102Step = 120 ifTrue: [
            recoveredBlock102Stack1 := (recoveredBlock102Stack1) textPane.
            recoveredBlock102PC := 122.
        ].
        recoveredBlock102Step = 122 ifTrue: [
            recoveredBlock102Stack1 := (recoveredBlock102Stack1) value.
            recoveredBlock102PC := 124.
        ].
        recoveredBlock102Step = 124 ifTrue: [
            recoveredBlock102Stack1 := (recoveredBlock102Stack1) notEmpty.
            recoveredBlock102PC := 126.
        ].
        recoveredBlock102Step = 126 ifTrue: [
            recoveredBlock102Result := recoveredBlock102Stack1.
            recoveredBlock102Done := true.
        ].
    ].
    recoveredBlock102Result
].
    (recoveredValue10) add: ('menuEditSelectAll') label: ('Select ~all') enable: (recoveredValue11).
    recoveredValue12 := recoveredValue2.
    (recoveredValue12) addLine.
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := [
    | recoveredBlock137Stack0 recoveredBlock137Stack1 recoveredBlock137Stack2 recoveredBlock137Stack3 recoveredBlock137PC recoveredBlock137Step recoveredBlock137Done recoveredBlock137Result |
    recoveredBlock137Stack0 := self.
    recoveredBlock137PC := 144.
    recoveredBlock137Done := false.
    [recoveredBlock137Done not] whileTrue: [
        recoveredBlock137Step := recoveredBlock137PC.
        recoveredBlock137Step = 144 ifTrue: [
            recoveredBlock137Stack1 := false.
            recoveredBlock137PC := 145.
        ].
        recoveredBlock137Step = 145 ifTrue: [
            recoveredBlock137Stack2 := self.
            recoveredBlock137PC := 146.
        ].
        recoveredBlock137Step = 146 ifTrue: [
            recoveredBlock137Stack2 := (recoveredBlock137Stack2) uiController.
            recoveredBlock137PC := 148.
        ].
        recoveredBlock137Step = 148 ifTrue: [
            recoveredBlock137Stack2 := (recoveredBlock137Stack2) selectedTextObject.
            recoveredBlock137PC := 150.
        ].
        recoveredBlock137Step = 150 ifTrue: [
            (recoveredBlock137Stack2 == nil) ifTrue: [recoveredBlock137PC := 158] ifFalse: [recoveredBlock137PC := 154].
        ].
        recoveredBlock137Step = 154 ifTrue: [
            recoveredBlock137PC := 155.
        ].
        recoveredBlock137Step = 155 ifTrue: [
            recoveredBlock137Stack1 := self.
            recoveredBlock137PC := 156.
        ].
        recoveredBlock137Step = 156 ifTrue: [
            recoveredBlock137Stack1 := (recoveredBlock137Stack1) notReadOnly.
            recoveredBlock137PC := 158.
        ].
        recoveredBlock137Step = 158 ifTrue: [
            recoveredBlock137Result := recoveredBlock137Stack1.
            recoveredBlock137Done := true.
        ].
    ].
    recoveredBlock137Result
].
    (recoveredValue13) add: ('menuEditSave') label: ('~Save') enable: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    (recoveredValue15) addLine.
    recoveredValue16 := recoveredValue2.
    recoveredValue17 := [
    | recoveredBlock169Stack0 recoveredBlock169Stack1 recoveredBlock169Stack2 recoveredBlock169Stack3 recoveredBlock169PC recoveredBlock169Step recoveredBlock169Done recoveredBlock169Result |
    recoveredBlock169Stack0 := self.
    recoveredBlock169PC := 176.
    recoveredBlock169Done := false.
    [recoveredBlock169Done not] whileTrue: [
        recoveredBlock169Step := recoveredBlock169PC.
        recoveredBlock169Step = 176 ifTrue: [
            recoveredBlock169Stack1 := false.
            recoveredBlock169PC := 177.
        ].
        recoveredBlock169Step = 177 ifTrue: [
            recoveredBlock169Stack2 := self.
            recoveredBlock169PC := 178.
        ].
        recoveredBlock169Step = 178 ifTrue: [
            recoveredBlock169Stack2 := (recoveredBlock169Stack2) uiController.
            recoveredBlock169PC := 180.
        ].
        recoveredBlock169Step = 180 ifTrue: [
            recoveredBlock169Stack2 := (recoveredBlock169Stack2) selectedTextObject.
            recoveredBlock169PC := 182.
        ].
        recoveredBlock169Step = 182 ifTrue: [
            (recoveredBlock169Stack2 == nil) ifTrue: [recoveredBlock169PC := 190] ifFalse: [recoveredBlock169PC := 186].
        ].
        recoveredBlock169Step = 186 ifTrue: [
            recoveredBlock169PC := 187.
        ].
        recoveredBlock169Step = 187 ifTrue: [
            recoveredBlock169Stack1 := self.
            recoveredBlock169PC := 188.
        ].
        recoveredBlock169Step = 188 ifTrue: [
            recoveredBlock169Stack1 := (recoveredBlock169Stack1) notReadOnly.
            recoveredBlock169PC := 190.
        ].
        recoveredBlock169Step = 190 ifTrue: [
            recoveredBlock169Result := recoveredBlock169Stack1.
            recoveredBlock169Done := true.
        ].
    ].
    recoveredBlock169Result
].
    (recoveredValue16) add: ('readFromFile') label: ('~Read from File...') enable: (recoveredValue17).
    recoveredValue18 := recoveredValue2.
    recoveredValue19 := [
    | recoveredBlock198Value0 recoveredBlock198Value1 recoveredBlock198Value2 |
    recoveredBlock198Value0 := (self) uiController.
    recoveredBlock198Value1 := (recoveredBlock198Value0) selectedTextObject.
    recoveredBlock198Value2 := (recoveredBlock198Value1) notNil.
    recoveredBlock198Value2
].
    (recoveredValue18) add: ('writeToFile') label: ('~Write to File...') enable: (recoveredValue19).
    recoveredLocal1 := recoveredValue2.
    recoveredValue20 := recoveredLocal1.
    ^recoveredValue20
! !

"ASDBase.ic method 0x20552298; bytecode file offset 0xe4ebb8"
!SGTextDocumentationView methodsFor: 'recovered'!
createTextMenu
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := EtasMenu.
    recoveredValue1 := (recoveredValue0) defaultMenuClass.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) title: ('~Text Segments').
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := [
    | recoveredBlock18Value0 |
    recoveredBlock18Value0 := (self) notReadOnly.
    recoveredBlock18Value0
].
    (recoveredValue4) add: ('menuTAdd') label: ('~Add') enable: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := [
    | recoveredBlock34Stack0 recoveredBlock34Stack1 recoveredBlock34Stack2 recoveredBlock34Stack3 recoveredBlock34PC recoveredBlock34Step recoveredBlock34Done recoveredBlock34Result |
    recoveredBlock34Stack0 := self.
    recoveredBlock34PC := 40.
    recoveredBlock34Done := false.
    [recoveredBlock34Done not] whileTrue: [
        recoveredBlock34Step := recoveredBlock34PC.
        recoveredBlock34Step = 40 ifTrue: [
            recoveredBlock34Stack1 := false.
            recoveredBlock34PC := 41.
        ].
        recoveredBlock34Step = 41 ifTrue: [
            recoveredBlock34Stack2 := self.
            recoveredBlock34PC := 42.
        ].
        recoveredBlock34Step = 42 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) uiController.
            recoveredBlock34PC := 44.
        ].
        recoveredBlock34Step = 44 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) selectedTextObject.
            recoveredBlock34PC := 46.
        ].
        recoveredBlock34Step = 46 ifTrue: [
            (recoveredBlock34Stack2 == nil) ifTrue: [recoveredBlock34PC := 54] ifFalse: [recoveredBlock34PC := 50].
        ].
        recoveredBlock34Step = 50 ifTrue: [
            recoveredBlock34PC := 51.
        ].
        recoveredBlock34Step = 51 ifTrue: [
            recoveredBlock34Stack1 := self.
            recoveredBlock34PC := 52.
        ].
        recoveredBlock34Step = 52 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) notReadOnly.
            recoveredBlock34PC := 54.
        ].
        recoveredBlock34Step = 54 ifTrue: [
            recoveredBlock34Result := recoveredBlock34Stack1.
            recoveredBlock34Done := true.
        ].
    ].
    recoveredBlock34Result
].
    (recoveredValue6) add: ('menuTRename') label: ('~Rename') enable: (recoveredValue7).
    recoveredValue8 := recoveredValue2.
    recoveredValue9 := [
    | recoveredBlock62Stack0 recoveredBlock62Stack1 recoveredBlock62Stack2 recoveredBlock62Stack3 recoveredBlock62PC recoveredBlock62Step recoveredBlock62Done recoveredBlock62Result |
    recoveredBlock62Stack0 := self.
    recoveredBlock62PC := 68.
    recoveredBlock62Done := false.
    [recoveredBlock62Done not] whileTrue: [
        recoveredBlock62Step := recoveredBlock62PC.
        recoveredBlock62Step = 68 ifTrue: [
            recoveredBlock62Stack1 := false.
            recoveredBlock62PC := 69.
        ].
        recoveredBlock62Step = 69 ifTrue: [
            recoveredBlock62Stack2 := self.
            recoveredBlock62PC := 70.
        ].
        recoveredBlock62Step = 70 ifTrue: [
            recoveredBlock62Stack2 := (recoveredBlock62Stack2) uiController.
            recoveredBlock62PC := 72.
        ].
        recoveredBlock62Step = 72 ifTrue: [
            recoveredBlock62Stack2 := (recoveredBlock62Stack2) selectedTextObjects.
            recoveredBlock62PC := 74.
        ].
        recoveredBlock62Step = 74 ifTrue: [
            recoveredBlock62Stack2 := (recoveredBlock62Stack2) notEmpty.
            recoveredBlock62PC := 76.
        ].
        recoveredBlock62Step = 76 ifTrue: [
            (recoveredBlock62Stack2) ifTrue: [recoveredBlock62PC := 80] ifFalse: [recoveredBlock62PC := 84].
        ].
        recoveredBlock62Step = 80 ifTrue: [
            recoveredBlock62PC := 81.
        ].
        recoveredBlock62Step = 81 ifTrue: [
            recoveredBlock62Stack1 := self.
            recoveredBlock62PC := 82.
        ].
        recoveredBlock62Step = 82 ifTrue: [
            recoveredBlock62Stack1 := (recoveredBlock62Stack1) notReadOnly.
            recoveredBlock62PC := 84.
        ].
        recoveredBlock62Step = 84 ifTrue: [
            recoveredBlock62Result := recoveredBlock62Stack1.
            recoveredBlock62Done := true.
        ].
    ].
    recoveredBlock62Result
].
    (recoveredValue8) add: ('menuTDelete') label: ('~Delete') enable: (recoveredValue9).
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) addLine.
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := [
    | recoveredBlock95Stack0 recoveredBlock95Stack1 recoveredBlock95Stack2 recoveredBlock95Stack3 recoveredBlock95PC recoveredBlock95Step recoveredBlock95Done recoveredBlock95Result |
    recoveredBlock95Stack0 := self.
    recoveredBlock95PC := 102.
    recoveredBlock95Done := false.
    [recoveredBlock95Done not] whileTrue: [
        recoveredBlock95Step := recoveredBlock95PC.
        recoveredBlock95Step = 102 ifTrue: [
            recoveredBlock95Stack1 := false.
            recoveredBlock95PC := 103.
        ].
        recoveredBlock95Step = 103 ifTrue: [
            recoveredBlock95Stack2 := self.
            recoveredBlock95PC := 104.
        ].
        recoveredBlock95Step = 104 ifTrue: [
            recoveredBlock95Stack2 := (recoveredBlock95Stack2) uiController.
            recoveredBlock95PC := 106.
        ].
        recoveredBlock95Step = 106 ifTrue: [
            recoveredBlock95Stack2 := (recoveredBlock95Stack2) selectedTextObjects.
            recoveredBlock95PC := 108.
        ].
        recoveredBlock95Step = 108 ifTrue: [
            recoveredBlock95Stack2 := (recoveredBlock95Stack2) notEmpty.
            recoveredBlock95PC := 110.
        ].
        recoveredBlock95Step = 110 ifTrue: [
            (recoveredBlock95Stack2) ifTrue: [recoveredBlock95PC := 114] ifFalse: [recoveredBlock95PC := 118].
        ].
        recoveredBlock95Step = 114 ifTrue: [
            recoveredBlock95PC := 115.
        ].
        recoveredBlock95Step = 115 ifTrue: [
            recoveredBlock95Stack1 := self.
            recoveredBlock95PC := 116.
        ].
        recoveredBlock95Step = 116 ifTrue: [
            recoveredBlock95Stack1 := (recoveredBlock95Stack1) notReadOnly.
            recoveredBlock95PC := 118.
        ].
        recoveredBlock95Step = 118 ifTrue: [
            recoveredBlock95Result := recoveredBlock95Stack1.
            recoveredBlock95Done := true.
        ].
    ].
    recoveredBlock95Result
].
    (recoveredValue11) add: ('menuTShiftUp') label: ('Move ~Up') enable: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := [
    | recoveredBlock126Stack0 recoveredBlock126Stack1 recoveredBlock126Stack2 recoveredBlock126Stack3 recoveredBlock126PC recoveredBlock126Step recoveredBlock126Done recoveredBlock126Result |
    recoveredBlock126Stack0 := self.
    recoveredBlock126PC := 132.
    recoveredBlock126Done := false.
    [recoveredBlock126Done not] whileTrue: [
        recoveredBlock126Step := recoveredBlock126PC.
        recoveredBlock126Step = 132 ifTrue: [
            recoveredBlock126Stack1 := false.
            recoveredBlock126PC := 133.
        ].
        recoveredBlock126Step = 133 ifTrue: [
            recoveredBlock126Stack2 := self.
            recoveredBlock126PC := 134.
        ].
        recoveredBlock126Step = 134 ifTrue: [
            recoveredBlock126Stack2 := (recoveredBlock126Stack2) uiController.
            recoveredBlock126PC := 136.
        ].
        recoveredBlock126Step = 136 ifTrue: [
            recoveredBlock126Stack2 := (recoveredBlock126Stack2) selectedTextObjects.
            recoveredBlock126PC := 138.
        ].
        recoveredBlock126Step = 138 ifTrue: [
            recoveredBlock126Stack2 := (recoveredBlock126Stack2) notEmpty.
            recoveredBlock126PC := 140.
        ].
        recoveredBlock126Step = 140 ifTrue: [
            (recoveredBlock126Stack2) ifTrue: [recoveredBlock126PC := 144] ifFalse: [recoveredBlock126PC := 148].
        ].
        recoveredBlock126Step = 144 ifTrue: [
            recoveredBlock126PC := 145.
        ].
        recoveredBlock126Step = 145 ifTrue: [
            recoveredBlock126Stack1 := self.
            recoveredBlock126PC := 146.
        ].
        recoveredBlock126Step = 146 ifTrue: [
            recoveredBlock126Stack1 := (recoveredBlock126Stack1) notReadOnly.
            recoveredBlock126PC := 148.
        ].
        recoveredBlock126Step = 148 ifTrue: [
            recoveredBlock126Result := recoveredBlock126Stack1.
            recoveredBlock126Done := true.
        ].
    ].
    recoveredBlock126Result
].
    (recoveredValue13) add: ('menuTShiftDown') label: ('Move D~own') enable: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    (recoveredValue15) addLine.
    recoveredValue16 := recoveredValue2.
    recoveredValue17 := [
    | recoveredBlock159Stack0 recoveredBlock159Stack1 recoveredBlock159Stack2 recoveredBlock159Stack3 recoveredBlock159PC recoveredBlock159Step recoveredBlock159Done recoveredBlock159Result |
    recoveredBlock159Stack0 := self.
    recoveredBlock159PC := 166.
    recoveredBlock159Done := false.
    [recoveredBlock159Done not] whileTrue: [
        recoveredBlock159Step := recoveredBlock159PC.
        recoveredBlock159Step = 166 ifTrue: [
            recoveredBlock159Stack1 := false.
            recoveredBlock159PC := 167.
        ].
        recoveredBlock159Step = 167 ifTrue: [
            recoveredBlock159Stack2 := self.
            recoveredBlock159PC := 168.
        ].
        recoveredBlock159Step = 168 ifTrue: [
            recoveredBlock159Stack2 := (recoveredBlock159Stack2) uiController.
            recoveredBlock159PC := 170.
        ].
        recoveredBlock159Step = 170 ifTrue: [
            recoveredBlock159Stack2 := (recoveredBlock159Stack2) selectedTextObjects.
            recoveredBlock159PC := 172.
        ].
        recoveredBlock159Step = 172 ifTrue: [
            recoveredBlock159Stack2 := (recoveredBlock159Stack2) notEmpty.
            recoveredBlock159PC := 174.
        ].
        recoveredBlock159Step = 174 ifTrue: [
            (recoveredBlock159Stack2) ifTrue: [recoveredBlock159PC := 178] ifFalse: [recoveredBlock159PC := 194].
        ].
        recoveredBlock159Step = 178 ifTrue: [
            recoveredBlock159PC := 179.
        ].
        recoveredBlock159Step = 179 ifTrue: [
            recoveredBlock159Stack1 := false.
            recoveredBlock159PC := 180.
        ].
        recoveredBlock159Step = 180 ifTrue: [
            recoveredBlock159Stack2 := self.
            recoveredBlock159PC := 181.
        ].
        recoveredBlock159Step = 181 ifTrue: [
            recoveredBlock159Stack2 := (recoveredBlock159Stack2) uiController.
            recoveredBlock159PC := 183.
        ].
        recoveredBlock159Step = 183 ifTrue: [
            recoveredBlock159Stack2 := (recoveredBlock159Stack2) selectedViews.
            recoveredBlock159PC := 185.
        ].
        recoveredBlock159Step = 185 ifTrue: [
            recoveredBlock159Stack2 := (recoveredBlock159Stack2) notEmpty.
            recoveredBlock159PC := 187.
        ].
        recoveredBlock159Step = 187 ifTrue: [
            (recoveredBlock159Stack2) ifTrue: [recoveredBlock159PC := 190] ifFalse: [recoveredBlock159PC := 194].
        ].
        recoveredBlock159Step = 190 ifTrue: [
            recoveredBlock159PC := 191.
        ].
        recoveredBlock159Step = 191 ifTrue: [
            recoveredBlock159Stack1 := self.
            recoveredBlock159PC := 192.
        ].
        recoveredBlock159Step = 192 ifTrue: [
            recoveredBlock159Stack1 := (recoveredBlock159Stack1) notReadOnly.
            recoveredBlock159PC := 194.
        ].
        recoveredBlock159Step = 194 ifTrue: [
            recoveredBlock159Result := recoveredBlock159Stack1.
            recoveredBlock159Done := true.
        ].
    ].
    recoveredBlock159Result
].
    (recoveredValue16) add: ('menuViewDeassign') label: ('Deass~ign Views') enable: (recoveredValue17).
    recoveredValue18 := recoveredValue2.
    (recoveredValue18) addLine.
    recoveredValue19 := recoveredValue2.
    recoveredValue20 := [
    | recoveredBlock205Value0 recoveredBlock205Value1 recoveredBlock205Value2 |
    recoveredBlock205Value0 := (self) uiController.
    recoveredBlock205Value1 := (recoveredBlock205Value0) selectedTextObjects.
    recoveredBlock205Value2 := (recoveredBlock205Value1) notEmpty.
    recoveredBlock205Value2
].
    (recoveredValue19) add: ('menuTaskSelectViews') label: ('~Select Assigned Views') enable: (recoveredValue20).
    recoveredLocal1 := recoveredValue2.
    recoveredValue21 := recoveredLocal1.
    ^recoveredValue21
! !

"ASDBase.ic method 0x2069c1ac; bytecode file offset 0xf98c2c"
!SGTextDocumentationView methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredLocal20 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal20 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal19 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal18 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := CwTopLevelShell.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'aTopLevelShell1'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 recoveredBlock24Value5 recoveredBlock24Value6 recoveredBlock24Value7 recoveredBlock24Value8 recoveredBlock24Value9 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := recoveredBlock24Value0.
    (recoveredBlock24Value1) title: ('ASCET Notes Editor for: ').
    recoveredBlock24Value2 := recoveredBlock24Value0.
    recoveredBlock24Value3 := recoveredLocal18.
    recoveredBlock24Value4 := (400) * (recoveredBlock24Value3).
    recoveredBlock24Value5 := (recoveredBlock24Value4) rounded.
    (recoveredBlock24Value2) height: (recoveredBlock24Value5).
    recoveredBlock24Value6 := recoveredLocal19.
    recoveredBlock24Value7 := (450) * (recoveredBlock24Value6).
    recoveredBlock24Value8 := (recoveredBlock24Value7) rounded.
    recoveredBlock24Value9 := (recoveredBlock24Value0) width: (recoveredBlock24Value8).
    recoveredBlock24Value9
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) createApplicationShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 'aTopLevelShell1'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := recoveredLocal16.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := 'textPane'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := [:recoveredBlock127Arg1 | 
    | recoveredBlock127Value0 recoveredBlock127Value1 recoveredBlock127Value2 recoveredBlock127Value3 recoveredBlock127Value4 recoveredBlock127Value5 recoveredBlock127Value6 |
    recoveredBlock127Value0 := recoveredBlock127Arg1.
    recoveredBlock127Value1 := recoveredBlock127Value0.
    recoveredBlock127Value2 := recoveredLocal18.
    recoveredBlock127Value3 := (1000) * (recoveredBlock127Value2).
    recoveredBlock127Value4 := (recoveredBlock127Value3) rounded.
    (recoveredBlock127Value1) height: (recoveredBlock127Value4).
    recoveredBlock127Value5 := XmMULTILINEEDIT.
    recoveredBlock127Value6 := (recoveredBlock127Value0) editMode: (recoveredBlock127Value5).
    recoveredBlock127Value6
].
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := 'aScrolledText1'.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := 'textPane'.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := 'aForm2'.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack3 := [:recoveredBlock193Arg1 | 
    | recoveredBlock193Value0 recoveredBlock193Value1 recoveredBlock193Value2 recoveredBlock193Value3 recoveredBlock193Value4 recoveredBlock193Value5 recoveredBlock193Value6 recoveredBlock193Value7 recoveredBlock193Value8 recoveredBlock193Value9 recoveredBlock193Value10 recoveredBlock193Value11 recoveredBlock193Value12 recoveredBlock193Value13 recoveredBlock193Value14 recoveredBlock193Value15 recoveredBlock193Value16 |
    recoveredBlock193Value0 := recoveredBlock193Arg1.
    recoveredBlock193Value1 := recoveredBlock193Value0.
    recoveredBlock193Value2 := recoveredLocal18.
    recoveredBlock193Value3 := (10) * (recoveredBlock193Value2).
    recoveredBlock193Value4 := (recoveredBlock193Value3) rounded.
    (recoveredBlock193Value1) y: (recoveredBlock193Value4).
    recoveredBlock193Value5 := recoveredBlock193Value0.
    recoveredBlock193Value6 := recoveredLocal19.
    recoveredBlock193Value7 := (10) * (recoveredBlock193Value6).
    recoveredBlock193Value8 := (recoveredBlock193Value7) rounded.
    (recoveredBlock193Value5) x: (recoveredBlock193Value8).
    recoveredBlock193Value9 := recoveredBlock193Value0.
    recoveredBlock193Value10 := recoveredLocal18.
    recoveredBlock193Value11 := (120) * (recoveredBlock193Value10).
    recoveredBlock193Value12 := (recoveredBlock193Value11) rounded.
    (recoveredBlock193Value9) height: (recoveredBlock193Value12).
    recoveredBlock193Value13 := recoveredLocal19.
    recoveredBlock193Value14 := (240) * (recoveredBlock193Value13).
    recoveredBlock193Value15 := (recoveredBlock193Value14) rounded.
    recoveredBlock193Value16 := (recoveredBlock193Value0) width: (recoveredBlock193Value15).
    recoveredBlock193Value16
].
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := 'aForm2'.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack2 := 'viewLab'.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack3 := [:recoveredBlock271Arg1 | 
    | recoveredBlock271Value0 recoveredBlock271Value1 recoveredBlock271Value2 recoveredBlock271Value3 recoveredBlock271Value4 recoveredBlock271Value5 recoveredBlock271Value6 recoveredBlock271Value7 recoveredBlock271Value8 recoveredBlock271Value9 recoveredBlock271Value10 recoveredBlock271Value11 recoveredBlock271Value12 recoveredBlock271Value13 |
    recoveredBlock271Value0 := recoveredBlock271Arg1.
    recoveredBlock271Value1 := recoveredBlock271Value0.
    recoveredBlock271Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock271Value1) alignment: (recoveredBlock271Value2).
    recoveredBlock271Value3 := recoveredBlock271Value0.
    (recoveredBlock271Value3) labelString: ('Views').
    recoveredBlock271Value4 := recoveredBlock271Value0.
    recoveredBlock271Value5 := recoveredLocal18.
    recoveredBlock271Value6 := (20) * (recoveredBlock271Value5).
    recoveredBlock271Value7 := (recoveredBlock271Value6) rounded.
    (recoveredBlock271Value4) height: (recoveredBlock271Value7).
    recoveredBlock271Value8 := recoveredBlock271Value0.
    recoveredBlock271Value9 := recoveredLocal19.
    recoveredBlock271Value10 := (190) * (recoveredBlock271Value9).
    recoveredBlock271Value11 := (recoveredBlock271Value10) rounded.
    (recoveredBlock271Value8) width: (recoveredBlock271Value11).
    recoveredBlock271Value12 := recoveredBlock271Value0.
    recoveredBlock271Value13 := (self) defaultLabelBlue.
    (recoveredBlock271Value12) foregroundColor: (recoveredBlock271Value13).
    recoveredBlock271Value0
].
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack2 := 'viewLab'.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack2 := 'views'.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack3 := [:block2812d294Arg1 | 
    | block2812d294Value0 block2812d294Value1 block2812d294Value2 |
    block2812d294Value0 := block2812d294Arg1.
    block2812d294Value1 := XmEXTENDEDSELECT.
    block2812d294Value2 := (block2812d294Value0) selectionPolicy: (block2812d294Value1).
    block2812d294Value2
].
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasScrolledIconList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack2 := 'aScrolledIconList1'.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack2 := 'views'.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack2 := 'aRowColumn1'.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack3 := [:recoveredBlock392Arg1 | 
    | recoveredBlock392Value0 recoveredBlock392Value1 recoveredBlock392Value2 recoveredBlock392Value3 recoveredBlock392Value4 recoveredBlock392Value5 recoveredBlock392Value6 recoveredBlock392Value7 recoveredBlock392Value8 recoveredBlock392Value9 recoveredBlock392Value10 recoveredBlock392Value11 recoveredBlock392Value12 recoveredBlock392Value13 recoveredBlock392Value14 recoveredBlock392Value15 recoveredBlock392Value16 recoveredBlock392Value17 recoveredBlock392Value18 |
    recoveredBlock392Value0 := recoveredBlock392Arg1.
    recoveredBlock392Value1 := recoveredBlock392Value0.
    recoveredBlock392Value2 := recoveredLocal18.
    recoveredBlock392Value3 := (50) * (recoveredBlock392Value2).
    recoveredBlock392Value4 := (recoveredBlock392Value3) rounded.
    (recoveredBlock392Value1) y: (recoveredBlock392Value4).
    recoveredBlock392Value5 := recoveredBlock392Value0.
    recoveredBlock392Value6 := recoveredLocal19.
    recoveredBlock392Value7 := (200) * (recoveredBlock392Value6).
    recoveredBlock392Value8 := (recoveredBlock392Value7) rounded.
    (recoveredBlock392Value5) x: (recoveredBlock392Value8).
    recoveredBlock392Value9 := recoveredBlock392Value0.
    recoveredBlock392Value10 := recoveredLocal18.
    recoveredBlock392Value11 := (70) * (recoveredBlock392Value10).
    recoveredBlock392Value12 := (recoveredBlock392Value11) rounded.
    (recoveredBlock392Value9) height: (recoveredBlock392Value12).
    recoveredBlock392Value13 := recoveredBlock392Value0.
    recoveredBlock392Value14 := recoveredLocal19.
    recoveredBlock392Value15 := (40) * (recoveredBlock392Value14).
    recoveredBlock392Value16 := (recoveredBlock392Value15) rounded.
    (recoveredBlock392Value13) width: (recoveredBlock392Value16).
    recoveredBlock392Value17 := XmPACKNONE.
    recoveredBlock392Value18 := (recoveredBlock392Value0) packing: (recoveredBlock392Value17).
    recoveredBlock392Value18
].
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack1 := (recoveredStack1) createRowColumn: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack2 := 'aRowColumn1'.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack2 := 'assignOpMode'.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack3 := [:recoveredBlock472Arg1 | 
    | recoveredBlock472Value0 recoveredBlock472Value1 recoveredBlock472Value2 recoveredBlock472Value3 recoveredBlock472Value4 recoveredBlock472Value5 recoveredBlock472Value6 recoveredBlock472Value7 recoveredBlock472Value8 recoveredBlock472Value9 |
    recoveredBlock472Value0 := recoveredBlock472Arg1.
    recoveredBlock472Value1 := recoveredBlock472Value0.
    (recoveredBlock472Value1) labelString: ('>>').
    recoveredBlock472Value2 := recoveredBlock472Value0.
    recoveredBlock472Value3 := recoveredLocal18.
    recoveredBlock472Value4 := (30) * (recoveredBlock472Value3).
    recoveredBlock472Value5 := (recoveredBlock472Value4) rounded.
    (recoveredBlock472Value2) height: (recoveredBlock472Value5).
    recoveredBlock472Value6 := recoveredLocal19.
    recoveredBlock472Value7 := (40) * (recoveredBlock472Value6).
    recoveredBlock472Value8 := (recoveredBlock472Value7) rounded.
    recoveredBlock472Value9 := (recoveredBlock472Value0) width: (recoveredBlock472Value8).
    recoveredBlock472Value9
].
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack2 := 'assignOpMode'.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack2 := 'deassignOpMode'.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack3 := [:recoveredBlock528Arg1 | 
    | recoveredBlock528Value0 recoveredBlock528Value1 recoveredBlock528Value2 recoveredBlock528Value3 recoveredBlock528Value4 recoveredBlock528Value5 recoveredBlock528Value6 recoveredBlock528Value7 recoveredBlock528Value8 recoveredBlock528Value9 recoveredBlock528Value10 recoveredBlock528Value11 recoveredBlock528Value12 recoveredBlock528Value13 |
    recoveredBlock528Value0 := recoveredBlock528Arg1.
    recoveredBlock528Value1 := recoveredBlock528Value0.
    (recoveredBlock528Value1) labelString: ('<<').
    recoveredBlock528Value2 := recoveredBlock528Value0.
    recoveredBlock528Value3 := recoveredLocal18.
    recoveredBlock528Value4 := (40) * (recoveredBlock528Value3).
    recoveredBlock528Value5 := (recoveredBlock528Value4) rounded.
    (recoveredBlock528Value2) y: (recoveredBlock528Value5).
    recoveredBlock528Value6 := recoveredBlock528Value0.
    recoveredBlock528Value7 := recoveredLocal18.
    recoveredBlock528Value8 := (30) * (recoveredBlock528Value7).
    recoveredBlock528Value9 := (recoveredBlock528Value8) rounded.
    (recoveredBlock528Value6) height: (recoveredBlock528Value9).
    recoveredBlock528Value10 := recoveredLocal19.
    recoveredBlock528Value11 := (40) * (recoveredBlock528Value10).
    recoveredBlock528Value12 := (recoveredBlock528Value11) rounded.
    recoveredBlock528Value13 := (recoveredBlock528Value0) width: (recoveredBlock528Value12).
    recoveredBlock528Value13
].
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack2 := 'deassignOpMode'.
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            recoveredStack2 := 'text'.
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack3 := [:recoveredBlock598Arg1 | 
    | recoveredBlock598Value0 recoveredBlock598Value1 recoveredBlock598Value2 recoveredBlock598Value3 recoveredBlock598Value4 recoveredBlock598Value5 recoveredBlock598Value6 recoveredBlock598Value7 recoveredBlock598Value8 recoveredBlock598Value9 recoveredBlock598Value10 recoveredBlock598Value11 recoveredBlock598Value12 recoveredBlock598Value13 recoveredBlock598Value14 recoveredBlock598Value15 recoveredBlock598Value16 recoveredBlock598Value17 recoveredBlock598Value18 recoveredBlock598Value19 recoveredBlock598Value20 recoveredBlock598Value21 |
    recoveredBlock598Value0 := recoveredBlock598Arg1.
    recoveredBlock598Value1 := recoveredBlock598Value0.
    recoveredBlock598Value2 := recoveredLocal19.
    recoveredBlock598Value3 := (5) * (recoveredBlock598Value2).
    recoveredBlock598Value4 := (recoveredBlock598Value3) rounded.
    (recoveredBlock598Value1) x: (recoveredBlock598Value4).
    recoveredBlock598Value5 := recoveredBlock598Value0.
    recoveredBlock598Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock598Value5) alignment: (recoveredBlock598Value6).
    recoveredBlock598Value7 := recoveredBlock598Value0.
    (recoveredBlock598Value7) labelString: ('Text').
    recoveredBlock598Value8 := recoveredBlock598Value0.
    recoveredBlock598Value9 := recoveredLocal18.
    recoveredBlock598Value10 := (159) * (recoveredBlock598Value9).
    recoveredBlock598Value11 := (recoveredBlock598Value10) rounded.
    (recoveredBlock598Value8) y: (recoveredBlock598Value11).
    recoveredBlock598Value12 := recoveredBlock598Value0.
    recoveredBlock598Value13 := recoveredLocal18.
    recoveredBlock598Value14 := (20) * (recoveredBlock598Value13).
    recoveredBlock598Value15 := (recoveredBlock598Value14) rounded.
    (recoveredBlock598Value12) height: (recoveredBlock598Value15).
    recoveredBlock598Value16 := recoveredBlock598Value0.
    recoveredBlock598Value17 := recoveredLocal19.
    recoveredBlock598Value18 := (38) * (recoveredBlock598Value17).
    recoveredBlock598Value19 := (recoveredBlock598Value18) rounded.
    (recoveredBlock598Value16) width: (recoveredBlock598Value19).
    recoveredBlock598Value20 := recoveredBlock598Value0.
    recoveredBlock598Value21 := (self) defaultLabelBlue.
    (recoveredBlock598Value20) foregroundColor: (recoveredBlock598Value21).
    recoveredBlock598Value0
].
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 671.
        ].
        recoveredStep = 671 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 676.
        ].
        recoveredStep = 676 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 679.
        ].
        recoveredStep = 679 ifTrue: [
            recoveredStack2 := 'text'.
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 687.
        ].
        recoveredStep = 687 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            recoveredStack2 := 'textForm'.
            recoveredPC := 694.
        ].
        recoveredStep = 694 ifTrue: [
            recoveredStack3 := [:recoveredBlock694Arg1 | 
    | recoveredBlock694Value0 recoveredBlock694Value1 recoveredBlock694Value2 recoveredBlock694Value3 recoveredBlock694Value4 recoveredBlock694Value5 recoveredBlock694Value6 recoveredBlock694Value7 recoveredBlock694Value8 recoveredBlock694Value9 recoveredBlock694Value10 recoveredBlock694Value11 recoveredBlock694Value12 recoveredBlock694Value13 recoveredBlock694Value14 recoveredBlock694Value15 recoveredBlock694Value16 |
    recoveredBlock694Value0 := recoveredBlock694Arg1.
    recoveredBlock694Value1 := recoveredBlock694Value0.
    recoveredBlock694Value2 := recoveredLocal18.
    recoveredBlock694Value3 := (5) * (recoveredBlock694Value2).
    recoveredBlock694Value4 := (recoveredBlock694Value3) rounded.
    (recoveredBlock694Value1) y: (recoveredBlock694Value4).
    recoveredBlock694Value5 := recoveredBlock694Value0.
    recoveredBlock694Value6 := recoveredLocal19.
    recoveredBlock694Value7 := (253) * (recoveredBlock694Value6).
    recoveredBlock694Value8 := (recoveredBlock694Value7) rounded.
    (recoveredBlock694Value5) x: (recoveredBlock694Value8).
    recoveredBlock694Value9 := recoveredBlock694Value0.
    recoveredBlock694Value10 := recoveredLocal18.
    recoveredBlock694Value11 := (148) * (recoveredBlock694Value10).
    recoveredBlock694Value12 := (recoveredBlock694Value11) rounded.
    (recoveredBlock694Value9) height: (recoveredBlock694Value12).
    recoveredBlock694Value13 := recoveredLocal19.
    recoveredBlock694Value14 := (149) * (recoveredBlock694Value13).
    recoveredBlock694Value15 := (recoveredBlock694Value14) rounded.
    recoveredBlock694Value16 := (recoveredBlock694Value0) width: (recoveredBlock694Value15).
    recoveredBlock694Value16
].
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 751.
        ].
        recoveredStep = 751 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 756.
        ].
        recoveredStep = 756 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 759.
        ].
        recoveredStep = 759 ifTrue: [
            recoveredStack2 := 'textForm'.
            recoveredPC := 762.
        ].
        recoveredStep = 762 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 765.
        ].
        recoveredStep = 765 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 767.
        ].
        recoveredStep = 767 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 770.
        ].
        recoveredStep = 770 ifTrue: [
            recoveredStack2 := 'textLabel'.
            recoveredPC := 774.
        ].
        recoveredStep = 774 ifTrue: [
            recoveredStack3 := [:recoveredBlock774Arg1 | 
    | recoveredBlock774Value0 recoveredBlock774Value1 recoveredBlock774Value2 recoveredBlock774Value3 recoveredBlock774Value4 recoveredBlock774Value5 recoveredBlock774Value6 recoveredBlock774Value7 recoveredBlock774Value8 recoveredBlock774Value9 recoveredBlock774Value10 recoveredBlock774Value11 recoveredBlock774Value12 recoveredBlock774Value13 |
    recoveredBlock774Value0 := recoveredBlock774Arg1.
    recoveredBlock774Value1 := recoveredBlock774Value0.
    recoveredBlock774Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock774Value1) alignment: (recoveredBlock774Value2).
    recoveredBlock774Value3 := recoveredBlock774Value0.
    (recoveredBlock774Value3) labelString: ('Text Segments').
    recoveredBlock774Value4 := recoveredBlock774Value0.
    recoveredBlock774Value5 := recoveredLocal18.
    recoveredBlock774Value6 := (20) * (recoveredBlock774Value5).
    recoveredBlock774Value7 := (recoveredBlock774Value6) rounded.
    (recoveredBlock774Value4) height: (recoveredBlock774Value7).
    recoveredBlock774Value8 := recoveredBlock774Value0.
    recoveredBlock774Value9 := recoveredLocal19.
    recoveredBlock774Value10 := (149) * (recoveredBlock774Value9).
    recoveredBlock774Value11 := (recoveredBlock774Value10) rounded.
    (recoveredBlock774Value8) width: (recoveredBlock774Value11).
    recoveredBlock774Value12 := recoveredBlock774Value0.
    recoveredBlock774Value13 := (self) defaultLabelBlue.
    (recoveredBlock774Value12) foregroundColor: (recoveredBlock774Value13).
    recoveredBlock774Value0
].
            recoveredPC := 823.
        ].
        recoveredStep = 823 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 825.
        ].
        recoveredStep = 825 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 827.
        ].
        recoveredStep = 827 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 830.
        ].
        recoveredStep = 830 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 833.
        ].
        recoveredStep = 833 ifTrue: [
            recoveredStack2 := 'textLabel'.
            recoveredPC := 836.
        ].
        recoveredStep = 836 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 839.
        ].
        recoveredStep = 839 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 841.
        ].
        recoveredStep = 841 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 844.
        ].
        recoveredStep = 844 ifTrue: [
            recoveredStack2 := 'textObjects'.
            recoveredPC := 848.
        ].
        recoveredStep = 848 ifTrue: [
            recoveredStack3 := [:block2812d2b8Arg1 | 
    | block2812d2b8Value0 block2812d2b8Value1 block2812d2b8Value2 |
    block2812d2b8Value0 := block2812d2b8Arg1.
    block2812d2b8Value1 := XmEXTENDEDSELECT.
    block2812d2b8Value2 := (block2812d2b8Value0) selectionPolicy: (block2812d2b8Value1).
    block2812d2b8Value2
].
            recoveredPC := 852.
        ].
        recoveredStep = 852 ifTrue: [
            recoveredPC := 862.
        ].
        recoveredStep = 862 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasScrolledIconList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 864.
        ].
        recoveredStep = 864 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 866.
        ].
        recoveredStep = 866 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 869.
        ].
        recoveredStep = 869 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 872.
        ].
        recoveredStep = 872 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 874.
        ].
        recoveredStep = 874 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 877.
        ].
        recoveredStep = 877 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 880.
        ].
        recoveredStep = 880 ifTrue: [
            recoveredStack2 := 'aScrolledIconList2'.
            recoveredPC := 884.
        ].
        recoveredStep = 884 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 887.
        ].
        recoveredStep = 887 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 889.
        ].
        recoveredStep = 889 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 892.
        ].
        recoveredStep = 892 ifTrue: [
            recoveredStack2 := 'textObjects'.
            recoveredPC := 896.
        ].
        recoveredStep = 896 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 899.
        ].
        recoveredStep = 899 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 901.
        ].
        recoveredStep = 901 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 904.
        ].
        recoveredStep = 904 ifTrue: [
            recoveredStack2 := [:recoveredBlock904Arg1 | 
    | recoveredBlock904Value0 recoveredBlock904Value1 recoveredBlock904Value2 |
    recoveredBlock904Value0 := recoveredBlock904Arg1.
    recoveredBlock904Value1 := recoveredLocal15.
    recoveredBlock904Value2 := (recoveredBlock904Value0) workWindow: (recoveredBlock904Value1).
    recoveredBlock904Value2
].
            recoveredPC := 920.
        ].
        recoveredStep = 920 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 925.
        ].
        recoveredStep = 925 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 928.
        ].
        recoveredStep = 928 ifTrue: [
            recoveredStack2 := [:recoveredBlock928Arg1 | 
    | recoveredBlock928Value0 recoveredBlock928Value1 recoveredBlock928Value2 recoveredBlock928Value3 recoveredBlock928Value4 recoveredBlock928Value5 recoveredBlock928Value6 recoveredBlock928Value7 recoveredBlock928Value8 recoveredBlock928Value9 recoveredBlock928Value10 recoveredBlock928Value11 recoveredBlock928Value12 recoveredBlock928Value13 recoveredBlock928Value14 recoveredBlock928Value15 recoveredBlock928Value16 recoveredBlock928Value17 recoveredBlock928Value18 recoveredBlock928Value19 recoveredBlock928Value20 recoveredBlock928Value21 recoveredBlock928Value22 recoveredBlock928Value23 recoveredBlock928Value24 recoveredBlock928Value25 recoveredBlock928Value26 recoveredBlock928Value27 recoveredBlock928Value28 recoveredBlock928Value29 recoveredBlock928Value30 |
    recoveredBlock928Value0 := recoveredBlock928Arg1.
    recoveredBlock928Value1 := recoveredBlock928Value0.
    recoveredBlock928Value2 := XmATTACHFORM.
    (recoveredBlock928Value1) bottomAttachment: (recoveredBlock928Value2).
    recoveredBlock928Value3 := recoveredBlock928Value0.
    (recoveredBlock928Value3) bottomOffset: (5).
    recoveredBlock928Value4 := recoveredBlock928Value0.
    recoveredBlock928Value5 := XmATTACHWIDGET.
    (recoveredBlock928Value4) topAttachment: (recoveredBlock928Value5).
    recoveredBlock928Value6 := recoveredBlock928Value0.
    recoveredBlock928Value7 := recoveredLocal5.
    (recoveredBlock928Value6) topWidget: (recoveredBlock928Value7).
    recoveredBlock928Value8 := recoveredBlock928Value0.
    (recoveredBlock928Value8) topOffset: (5).
    recoveredBlock928Value9 := recoveredBlock928Value0.
    recoveredBlock928Value10 := XmATTACHFORM.
    (recoveredBlock928Value9) leftAttachment: (recoveredBlock928Value10).
    recoveredBlock928Value11 := recoveredBlock928Value0.
    (recoveredBlock928Value11) leftOffset: (5).
    recoveredBlock928Value12 := recoveredBlock928Value0.
    recoveredBlock928Value13 := XmATTACHFORM.
    (recoveredBlock928Value12) rightAttachment: (recoveredBlock928Value13).
    recoveredBlock928Value14 := recoveredBlock928Value0.
    (recoveredBlock928Value14) rightOffset: (5).
    recoveredBlock928Value15 := recoveredBlock928Value0.
    recoveredBlock928Value16 := recoveredLocal19.
    recoveredBlock928Value17 := (5) * (recoveredBlock928Value16).
    recoveredBlock928Value18 := (recoveredBlock928Value17) rounded.
    (recoveredBlock928Value15) x: (recoveredBlock928Value18).
    recoveredBlock928Value19 := recoveredBlock928Value0.
    recoveredBlock928Value20 := recoveredLocal18.
    recoveredBlock928Value21 := (184) * (recoveredBlock928Value20).
    recoveredBlock928Value22 := (recoveredBlock928Value21) rounded.
    (recoveredBlock928Value19) y: (recoveredBlock928Value22).
    recoveredBlock928Value23 := recoveredBlock928Value0.
    recoveredBlock928Value24 := recoveredLocal18.
    recoveredBlock928Value25 := (558) * (recoveredBlock928Value24).
    recoveredBlock928Value26 := (recoveredBlock928Value25) rounded.
    (recoveredBlock928Value23) height: (recoveredBlock928Value26).
    recoveredBlock928Value27 := recoveredLocal19.
    recoveredBlock928Value28 := (680) * (recoveredBlock928Value27).
    recoveredBlock928Value29 := (recoveredBlock928Value28) rounded.
    recoveredBlock928Value30 := (recoveredBlock928Value0) width: (recoveredBlock928Value29).
    recoveredBlock928Value30
].
            recoveredPC := 1049.
        ].
        recoveredStep = 1049 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1053.
        ].
        recoveredStep = 1053 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 1056.
        ].
        recoveredStep = 1056 ifTrue: [
            recoveredStack2 := [:block2812d2dcArg1 | 
    | block2812d2dcValue0 block2812d2dcValue1 block2812d2dcValue2 block2812d2dcValue3 block2812d2dcValue4 block2812d2dcValue5 block2812d2dcValue6 block2812d2dcValue7 block2812d2dcValue8 block2812d2dcValue9 block2812d2dcValue10 block2812d2dcValue11 block2812d2dcValue12 |
    block2812d2dcValue0 := block2812d2dcArg1.
    block2812d2dcValue1 := block2812d2dcValue0.
    block2812d2dcValue2 := XmATTACHPOSITION.
    (block2812d2dcValue1) bottomAttachment: (block2812d2dcValue2).
    block2812d2dcValue3 := block2812d2dcValue0.
    (block2812d2dcValue3) bottomPosition: (35).
    block2812d2dcValue4 := block2812d2dcValue0.
    block2812d2dcValue5 := XmATTACHFORM.
    (block2812d2dcValue4) topAttachment: (block2812d2dcValue5).
    block2812d2dcValue6 := block2812d2dcValue0.
    (block2812d2dcValue6) topOffset: (5).
    block2812d2dcValue7 := block2812d2dcValue0.
    block2812d2dcValue8 := XmATTACHFORM.
    (block2812d2dcValue7) leftAttachment: (block2812d2dcValue8).
    block2812d2dcValue9 := block2812d2dcValue0.
    (block2812d2dcValue9) leftOffset: (5).
    block2812d2dcValue10 := block2812d2dcValue0.
    block2812d2dcValue11 := XmATTACHPOSITION.
    (block2812d2dcValue10) rightAttachment: (block2812d2dcValue11).
    block2812d2dcValue12 := (block2812d2dcValue0) rightPosition: (55).
    block2812d2dcValue12
].
            recoveredPC := 1060.
        ].
        recoveredStep = 1060 ifTrue: [
            recoveredPC := 1124.
        ].
        recoveredStep = 1124 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1129.
        ].
        recoveredStep = 1129 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 1132.
        ].
        recoveredStep = 1132 ifTrue: [
            recoveredStack2 := [:recoveredBlock1132Arg1 | 
    | recoveredBlock1132Value0 recoveredBlock1132Value1 recoveredBlock1132Value2 recoveredBlock1132Value3 recoveredBlock1132Value4 recoveredBlock1132Value5 recoveredBlock1132Value6 |
    recoveredBlock1132Value0 := recoveredBlock1132Arg1.
    recoveredBlock1132Value1 := recoveredBlock1132Value0.
    recoveredBlock1132Value2 := XmATTACHFORM.
    (recoveredBlock1132Value1) leftAttachment: (recoveredBlock1132Value2).
    recoveredBlock1132Value3 := recoveredBlock1132Value0.
    recoveredBlock1132Value4 := XmATTACHWIDGET.
    (recoveredBlock1132Value3) rightAttachment: (recoveredBlock1132Value4).
    recoveredBlock1132Value5 := recoveredLocal8.
    recoveredBlock1132Value6 := (recoveredBlock1132Value0) rightWidget: (recoveredBlock1132Value5).
    recoveredBlock1132Value6
].
            recoveredPC := 1166.
        ].
        recoveredStep = 1166 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1171.
        ].
        recoveredStep = 1171 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 1174.
        ].
        recoveredStep = 1174 ifTrue: [
            recoveredStack2 := [:recoveredBlock1174Arg1 | 
    | recoveredBlock1174Value0 recoveredBlock1174Value1 recoveredBlock1174Value2 recoveredBlock1174Value3 recoveredBlock1174Value4 recoveredBlock1174Value5 recoveredBlock1174Value6 recoveredBlock1174Value7 recoveredBlock1174Value8 recoveredBlock1174Value9 recoveredBlock1174Value10 recoveredBlock1174Value11 recoveredBlock1174Value12 recoveredBlock1174Value13 recoveredBlock1174Value14 recoveredBlock1174Value15 recoveredBlock1174Value16 recoveredBlock1174Value17 recoveredBlock1174Value18 recoveredBlock1174Value19 recoveredBlock1174Value20 recoveredBlock1174Value21 recoveredBlock1174Value22 recoveredBlock1174Value23 recoveredBlock1174Value24 recoveredBlock1174Value25 |
    recoveredBlock1174Value0 := recoveredBlock1174Arg1.
    recoveredBlock1174Value1 := recoveredBlock1174Value0.
    recoveredBlock1174Value2 := XmATTACHFORM.
    (recoveredBlock1174Value1) bottomAttachment: (recoveredBlock1174Value2).
    recoveredBlock1174Value3 := recoveredBlock1174Value0.
    recoveredBlock1174Value4 := XmATTACHWIDGET.
    (recoveredBlock1174Value3) topAttachment: (recoveredBlock1174Value4).
    recoveredBlock1174Value5 := recoveredBlock1174Value0.
    recoveredBlock1174Value6 := recoveredLocal11.
    (recoveredBlock1174Value5) topWidget: (recoveredBlock1174Value6).
    recoveredBlock1174Value7 := recoveredBlock1174Value0.
    recoveredBlock1174Value8 := XmATTACHFORM.
    (recoveredBlock1174Value7) leftAttachment: (recoveredBlock1174Value8).
    recoveredBlock1174Value9 := recoveredBlock1174Value0.
    recoveredBlock1174Value10 := XmATTACHWIDGET.
    (recoveredBlock1174Value9) rightAttachment: (recoveredBlock1174Value10).
    recoveredBlock1174Value11 := recoveredBlock1174Value0.
    recoveredBlock1174Value12 := recoveredLocal8.
    (recoveredBlock1174Value11) rightWidget: (recoveredBlock1174Value12).
    recoveredBlock1174Value13 := recoveredBlock1174Value0.
    (recoveredBlock1174Value13) rightOffset: (5).
    recoveredBlock1174Value14 := recoveredBlock1174Value0.
    recoveredBlock1174Value15 := recoveredLocal18.
    recoveredBlock1174Value16 := (20) * (recoveredBlock1174Value15).
    recoveredBlock1174Value17 := (recoveredBlock1174Value16) rounded.
    (recoveredBlock1174Value14) y: (recoveredBlock1174Value17).
    recoveredBlock1174Value18 := recoveredBlock1174Value0.
    recoveredBlock1174Value19 := recoveredLocal18.
    recoveredBlock1174Value20 := (100) * (recoveredBlock1174Value19).
    recoveredBlock1174Value21 := (recoveredBlock1174Value20) rounded.
    (recoveredBlock1174Value18) height: (recoveredBlock1174Value21).
    recoveredBlock1174Value22 := recoveredLocal19.
    recoveredBlock1174Value23 := (190) * (recoveredBlock1174Value22).
    recoveredBlock1174Value24 := (recoveredBlock1174Value23) rounded.
    recoveredBlock1174Value25 := (recoveredBlock1174Value0) width: (recoveredBlock1174Value24).
    recoveredBlock1174Value25
].
            recoveredPC := 1273.
        ].
        recoveredStep = 1273 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1277.
        ].
        recoveredStep = 1277 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1280.
        ].
        recoveredStep = 1280 ifTrue: [
            recoveredStack2 := [:block2812d300Arg1 | 
    | block2812d300Value0 block2812d300Value1 block2812d300Value2 block2812d300Value3 block2812d300Value4 block2812d300Value5 |
    block2812d300Value0 := block2812d300Arg1.
    block2812d300Value1 := block2812d300Value0.
    block2812d300Value2 := XmATTACHPOSITION.
    (block2812d300Value1) bottomAttachment: (block2812d300Value2).
    block2812d300Value3 := block2812d300Value0.
    (block2812d300Value3) bottomPosition: (70).
    block2812d300Value4 := XmATTACHFORM.
    block2812d300Value5 := (block2812d300Value0) rightAttachment: (block2812d300Value4).
    block2812d300Value5
].
            recoveredPC := 1284.
        ].
        recoveredStep = 1284 ifTrue: [
            recoveredPC := 1316.
        ].
        recoveredStep = 1316 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1321.
        ].
        recoveredStep = 1321 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1324.
        ].
        recoveredStep = 1324 ifTrue: [
            recoveredStack2 := [:recoveredBlock1324Arg1 | 
    | recoveredBlock1324Value0 recoveredBlock1324Value1 recoveredBlock1324Value2 recoveredBlock1324Value3 recoveredBlock1324Value4 recoveredBlock1324Value5 recoveredBlock1324Value6 recoveredBlock1324Value7 recoveredBlock1324Value8 recoveredBlock1324Value9 recoveredBlock1324Value10 recoveredBlock1324Value11 |
    recoveredBlock1324Value0 := recoveredBlock1324Arg1.
    recoveredBlock1324Value1 := recoveredBlock1324Value0.
    recoveredBlock1324Value2 := XmATTACHWIDGET.
    (recoveredBlock1324Value1) topAttachment: (recoveredBlock1324Value2).
    recoveredBlock1324Value3 := recoveredBlock1324Value0.
    recoveredBlock1324Value4 := recoveredLocal12.
    (recoveredBlock1324Value3) topWidget: (recoveredBlock1324Value4).
    recoveredBlock1324Value5 := recoveredBlock1324Value0.
    (recoveredBlock1324Value5) topOffset: (5).
    recoveredBlock1324Value6 := recoveredBlock1324Value0.
    recoveredBlock1324Value7 := XmATTACHFORM.
    (recoveredBlock1324Value6) leftAttachment: (recoveredBlock1324Value7).
    recoveredBlock1324Value8 := recoveredBlock1324Value0.
    (recoveredBlock1324Value8) leftOffset: (5).
    recoveredBlock1324Value9 := recoveredBlock1324Value0.
    recoveredBlock1324Value10 := XmATTACHFORM.
    (recoveredBlock1324Value9) rightAttachment: (recoveredBlock1324Value10).
    recoveredBlock1324Value11 := (recoveredBlock1324Value0) rightOffset: (5).
    recoveredBlock1324Value11
].
            recoveredPC := 1384.
        ].
        recoveredStep = 1384 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1389.
        ].
        recoveredStep = 1389 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1392.
        ].
        recoveredStep = 1392 ifTrue: [
            recoveredStack2 := [:recoveredBlock1392Arg1 | 
    | recoveredBlock1392Value0 recoveredBlock1392Value1 recoveredBlock1392Value2 recoveredBlock1392Value3 recoveredBlock1392Value4 recoveredBlock1392Value5 recoveredBlock1392Value6 recoveredBlock1392Value7 recoveredBlock1392Value8 recoveredBlock1392Value9 recoveredBlock1392Value10 recoveredBlock1392Value11 recoveredBlock1392Value12 recoveredBlock1392Value13 recoveredBlock1392Value14 recoveredBlock1392Value15 |
    recoveredBlock1392Value0 := recoveredBlock1392Arg1.
    recoveredBlock1392Value1 := recoveredBlock1392Value0.
    recoveredBlock1392Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1392Value1) bottomAttachment: (recoveredBlock1392Value2).
    recoveredBlock1392Value3 := recoveredBlock1392Value0.
    recoveredBlock1392Value4 := recoveredLocal12.
    (recoveredBlock1392Value3) bottomWidget: (recoveredBlock1392Value4).
    recoveredBlock1392Value5 := recoveredBlock1392Value0.
    recoveredBlock1392Value6 := XmATTACHFORM.
    (recoveredBlock1392Value5) topAttachment: (recoveredBlock1392Value6).
    recoveredBlock1392Value7 := recoveredBlock1392Value0.
    (recoveredBlock1392Value7) topOffset: (5).
    recoveredBlock1392Value8 := recoveredBlock1392Value0.
    recoveredBlock1392Value9 := XmATTACHWIDGET.
    (recoveredBlock1392Value8) leftAttachment: (recoveredBlock1392Value9).
    recoveredBlock1392Value10 := recoveredBlock1392Value0.
    recoveredBlock1392Value11 := recoveredLocal12.
    (recoveredBlock1392Value10) leftWidget: (recoveredBlock1392Value11).
    recoveredBlock1392Value12 := recoveredBlock1392Value0.
    (recoveredBlock1392Value12) leftOffset: (5).
    recoveredBlock1392Value13 := recoveredBlock1392Value0.
    recoveredBlock1392Value14 := XmATTACHFORM.
    (recoveredBlock1392Value13) rightAttachment: (recoveredBlock1392Value14).
    recoveredBlock1392Value15 := (recoveredBlock1392Value0) rightOffset: (5).
    recoveredBlock1392Value15
].
            recoveredPC := 1468.
        ].
        recoveredStep = 1468 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1473.
        ].
        recoveredStep = 1473 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1476.
        ].
        recoveredStep = 1476 ifTrue: [
            recoveredStack2 := [:block2812d324Arg1 | 
    | block2812d324Value0 block2812d324Value1 block2812d324Value2 block2812d324Value3 block2812d324Value4 block2812d324Value5 block2812d324Value6 |
    block2812d324Value0 := block2812d324Arg1.
    block2812d324Value1 := block2812d324Value0.
    block2812d324Value2 := XmATTACHFORM.
    (block2812d324Value1) topAttachment: (block2812d324Value2).
    block2812d324Value3 := block2812d324Value0.
    block2812d324Value4 := XmATTACHFORM.
    (block2812d324Value3) leftAttachment: (block2812d324Value4).
    block2812d324Value5 := XmATTACHFORM.
    block2812d324Value6 := (block2812d324Value0) rightAttachment: (block2812d324Value5).
    block2812d324Value6
].
            recoveredPC := 1480.
        ].
        recoveredStep = 1480 ifTrue: [
            recoveredPC := 1512.
        ].
        recoveredStep = 1512 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1517.
        ].
        recoveredStep = 1517 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1520.
        ].
        recoveredStep = 1520 ifTrue: [
            recoveredStack2 := [:recoveredBlock1520Arg1 | 
    | recoveredBlock1520Value0 recoveredBlock1520Value1 recoveredBlock1520Value2 recoveredBlock1520Value3 recoveredBlock1520Value4 recoveredBlock1520Value5 recoveredBlock1520Value6 recoveredBlock1520Value7 recoveredBlock1520Value8 recoveredBlock1520Value9 recoveredBlock1520Value10 recoveredBlock1520Value11 recoveredBlock1520Value12 recoveredBlock1520Value13 recoveredBlock1520Value14 recoveredBlock1520Value15 recoveredBlock1520Value16 recoveredBlock1520Value17 recoveredBlock1520Value18 recoveredBlock1520Value19 recoveredBlock1520Value20 recoveredBlock1520Value21 recoveredBlock1520Value22 |
    recoveredBlock1520Value0 := recoveredBlock1520Arg1.
    recoveredBlock1520Value1 := recoveredBlock1520Value0.
    recoveredBlock1520Value2 := XmATTACHFORM.
    (recoveredBlock1520Value1) bottomAttachment: (recoveredBlock1520Value2).
    recoveredBlock1520Value3 := recoveredBlock1520Value0.
    recoveredBlock1520Value4 := XmATTACHWIDGET.
    (recoveredBlock1520Value3) topAttachment: (recoveredBlock1520Value4).
    recoveredBlock1520Value5 := recoveredBlock1520Value0.
    recoveredBlock1520Value6 := recoveredLocal3.
    (recoveredBlock1520Value5) topWidget: (recoveredBlock1520Value6).
    recoveredBlock1520Value7 := recoveredBlock1520Value0.
    recoveredBlock1520Value8 := XmATTACHFORM.
    (recoveredBlock1520Value7) leftAttachment: (recoveredBlock1520Value8).
    recoveredBlock1520Value9 := recoveredBlock1520Value0.
    recoveredBlock1520Value10 := XmATTACHFORM.
    (recoveredBlock1520Value9) rightAttachment: (recoveredBlock1520Value10).
    recoveredBlock1520Value11 := recoveredBlock1520Value0.
    recoveredBlock1520Value12 := recoveredLocal18.
    recoveredBlock1520Value13 := (40) * (recoveredBlock1520Value12).
    recoveredBlock1520Value14 := (recoveredBlock1520Value13) rounded.
    (recoveredBlock1520Value11) y: (recoveredBlock1520Value14).
    recoveredBlock1520Value15 := recoveredBlock1520Value0.
    recoveredBlock1520Value16 := recoveredLocal18.
    recoveredBlock1520Value17 := (108) * (recoveredBlock1520Value16).
    recoveredBlock1520Value18 := (recoveredBlock1520Value17) rounded.
    (recoveredBlock1520Value15) height: (recoveredBlock1520Value18).
    recoveredBlock1520Value19 := recoveredLocal19.
    recoveredBlock1520Value20 := (149) * (recoveredBlock1520Value19).
    recoveredBlock1520Value21 := (recoveredBlock1520Value20) rounded.
    recoveredBlock1520Value22 := (recoveredBlock1520Value0) width: (recoveredBlock1520Value21).
    recoveredBlock1520Value22
].
            recoveredPC := 1605.
        ].
        recoveredStep = 1605 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1609.
        ].
        recoveredStep = 1609 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 1612.
        ].
        recoveredStep = 1612 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 1616.
        ].
        recoveredStep = 1616 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1617.
        ].
        recoveredStep = 1617 ifTrue: [
            recoveredStack4 := 'textDocuEditorFocus:clientData:callData:'.
            recoveredPC := 1620.
        ].
        recoveredStep = 1620 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1621.
        ].
        recoveredStep = 1621 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1625.
        ].
        recoveredStep = 1625 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 1628.
        ].
        recoveredStep = 1628 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 1632.
        ].
        recoveredStep = 1632 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1633.
        ].
        recoveredStep = 1633 ifTrue: [
            recoveredStack4 := 'textPaneValue:clientData:callData:'.
            recoveredPC := 1636.
        ].
        recoveredStep = 1636 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1637.
        ].
        recoveredStep = 1637 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1641.
        ].
        recoveredStep = 1641 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1644.
        ].
        recoveredStep = 1644 ifTrue: [
            recoveredStack2 := XmNvisualInfoCallback.
            recoveredPC := 1648.
        ].
        recoveredStep = 1648 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1649.
        ].
        recoveredStep = 1649 ifTrue: [
            recoveredStack4 := 'viewsvisualInfoCallback:clientData:callData:'.
            recoveredPC := 1652.
        ].
        recoveredStep = 1652 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1653.
        ].
        recoveredStep = 1653 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1657.
        ].
        recoveredStep = 1657 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1660.
        ].
        recoveredStep = 1660 ifTrue: [
            recoveredStack2 := XmNextendedSelectionCallback.
            recoveredPC := 1664.
        ].
        recoveredStep = 1664 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1665.
        ].
        recoveredStep = 1665 ifTrue: [
            recoveredStack4 := 'viewsextendedSelectionCallback:clientData:callData:'.
            recoveredPC := 1668.
        ].
        recoveredStep = 1668 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1669.
        ].
        recoveredStep = 1669 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1673.
        ].
        recoveredStep = 1673 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1676.
        ].
        recoveredStep = 1676 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1680.
        ].
        recoveredStep = 1680 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1681.
        ].
        recoveredStep = 1681 ifTrue: [
            recoveredStack4 := 'assignViewActivate:clientData:callData:'.
            recoveredPC := 1684.
        ].
        recoveredStep = 1684 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1685.
        ].
        recoveredStep = 1685 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1689.
        ].
        recoveredStep = 1689 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1692.
        ].
        recoveredStep = 1692 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1696.
        ].
        recoveredStep = 1696 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1697.
        ].
        recoveredStep = 1697 ifTrue: [
            recoveredStack4 := 'deassignViewActivate:clientData:callData:'.
            recoveredPC := 1700.
        ].
        recoveredStep = 1700 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1701.
        ].
        recoveredStep = 1701 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1705.
        ].
        recoveredStep = 1705 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1708.
        ].
        recoveredStep = 1708 ifTrue: [
            recoveredStack2 := XmNbeginEditCallback.
            recoveredPC := 1712.
        ].
        recoveredStep = 1712 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1713.
        ].
        recoveredStep = 1713 ifTrue: [
            recoveredStack4 := 'textObjectsbeginEditCallback:clientData:callData:'.
            recoveredPC := 1716.
        ].
        recoveredStep = 1716 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1717.
        ].
        recoveredStep = 1717 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1721.
        ].
        recoveredStep = 1721 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1724.
        ].
        recoveredStep = 1724 ifTrue: [
            recoveredStack2 := XmNdefaultActionCallback.
            recoveredPC := 1728.
        ].
        recoveredStep = 1728 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1729.
        ].
        recoveredStep = 1729 ifTrue: [
            recoveredStack4 := 'textObjectsdefaultActionCallback:clientData:callData:'.
            recoveredPC := 1732.
        ].
        recoveredStep = 1732 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1733.
        ].
        recoveredStep = 1733 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1737.
        ].
        recoveredStep = 1737 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1740.
        ].
        recoveredStep = 1740 ifTrue: [
            recoveredStack2 := XmNendEditCallback.
            recoveredPC := 1744.
        ].
        recoveredStep = 1744 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1745.
        ].
        recoveredStep = 1745 ifTrue: [
            recoveredStack4 := 'textObjectsendEditCallback:clientData:callData:'.
            recoveredPC := 1748.
        ].
        recoveredStep = 1748 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1749.
        ].
        recoveredStep = 1749 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1753.
        ].
        recoveredStep = 1753 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1756.
        ].
        recoveredStep = 1756 ifTrue: [
            recoveredStack2 := XmNextendedSelectionCallback.
            recoveredPC := 1760.
        ].
        recoveredStep = 1760 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1761.
        ].
        recoveredStep = 1761 ifTrue: [
            recoveredStack4 := 'textObjectsextendedSelectionCallback:clientData:callData:'.
            recoveredPC := 1764.
        ].
        recoveredStep = 1764 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1765.
        ].
        recoveredStep = 1765 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1769.
        ].
        recoveredStep = 1769 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1772.
        ].
        recoveredStep = 1772 ifTrue: [
            recoveredStack2 := XmNvisualInfoCallback.
            recoveredPC := 1776.
        ].
        recoveredStep = 1776 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1777.
        ].
        recoveredStep = 1777 ifTrue: [
            recoveredStack4 := 'textObjectsvisualInfoCallback:clientData:callData:'.
            recoveredPC := 1780.
        ].
        recoveredStep = 1780 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1781.
        ].
        recoveredStep = 1781 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1785.
        ].
        recoveredStep = 1785 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1788.
        ].
        recoveredStep = 1788 ifTrue: [
            recoveredStack2 := recoveredLocal20.
            recoveredPC := 1791.
        ].
        recoveredStep = 1791 ifTrue: [
            recoveredStack3 := recoveredLocal16.
            recoveredPC := 1794.
        ].
        recoveredStep = 1794 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1799.
        ].
        recoveredStep = 1799 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

