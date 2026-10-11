"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000f50; bytecode file offset 0x8ffcfc"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
updateToolbar
    ^self
! !

"ASDBase.ic method 0x200018c8; bytecode file offset 0x8ffcfc"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
getBDEController
    ^self
! !

"ASDBase.ic method 0x20042b4c; bytecode file offset 0x9451f8"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
widgetItemList
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('itemList').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043f3c; bytecode file offset 0x9451f8"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
widgetGeneralToolbar
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('generalToolbar').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20045e3c; bytecode file offset 0x9451f8"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
widgetCategoryList
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('categoryList').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004613c; bytecode file offset 0x9451f8"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
widgetDatabaseWidget
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('databaseWidget').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20046b3c; bytecode file offset 0x9451f8"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
widgetPreviewArea
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('previewArea').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004df28; bytecode file offset 0x94d048"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
menuFileExport
    (self) exportLibrary.
    ^self
! !

"ASDBase.ic method 0x2004e4f8; bytecode file offset 0x94d048"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
menuFileSave
    (self) saveLibrary.
    ^self
! !

"ASDBase.ic method 0x2004ed50; bytecode file offset 0x94d048"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
menuFileOpen
    (self) openLibrary.
    ^self
! !

"ASDBase.ic method 0x2004eff0; bytecode file offset 0x94d048"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
menuFileImport
    (self) importLibrary.
    ^self
! !

"ASDBase.ic method 0x2004f7b8; bytecode file offset 0x94d048"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
initToolBars
    (self) createGeneralToolbar.
    ^self
! !

"ASDBase.ic method 0x2005a368; bytecode file offset 0x957a6c"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
categoryListDefaultActionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) menuCategoryRename.
    ^self
! !

"ASDBase.ic method 0x2005a650; bytecode file offset 0x957a6c"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
itemListExtendedSelection: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updatePreview.
    ^self
! !

"ASDBase.ic method 0x2005b088; bytecode file offset 0x957a6c"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
exposePreview: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updatePreview.
    ^self
! !

"ASDBase.ic method 0x20064824; bytecode file offset 0x961970"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredValue0 |
    recoveredValue0 := (self) widgetDatabaseWidget.
    (recoveredValue0) initializeAfterOpen.
    ^self
! !

"ASDBase.ic method 0x2007c8bc; bytecode file offset 0x97c330"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
itemIsModifiable
    ^false
! !

"ASDBase.ic method 0x200cd188; bytecode file offset 0x9c9a94"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
saveLibrary
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ASDItemLibrary.
    recoveredValue1 := (recoveredValue0) instance.
    (recoveredValue1) writeLibraryToXMLFile.
    (self) updateCategories.
    ^self
! !

"ASDBase.ic method 0x200cd1a0; bytecode file offset 0x9c9a94"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
importLibrary
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ASDItemLibrary.
    recoveredValue1 := (recoveredValue0) instance.
    (recoveredValue1) importLibraryFromXMLFile.
    (self) updateCategories.
    ^self
! !

"ASDBase.ic method 0x200cd1b8; bytecode file offset 0x9c9a94"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
exportLibrary
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ASDItemLibrary.
    recoveredValue1 := (recoveredValue0) instance.
    (recoveredValue1) exportLibraryToXMLFile.
    (self) updateCategories.
    ^self
! !

"ASDBase.ic method 0x200cd1d0; bytecode file offset 0x9c9a94"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
openLibrary
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ASDItemLibrary.
    recoveredValue1 := (recoveredValue0) instance.
    (recoveredValue1) readLibraryFromXMLFile.
    (self) updateCategories.
    ^self
! !

"ASDBase.ic method 0x2010b5cc; bytecode file offset 0xa07e94"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
preClose
    | recoveredValue0 recoveredValue1 |
    super preClose.
    recoveredValue0 := ASDItemLibrary.
    recoveredValue1 := (recoveredValue0) instance.
    (recoveredValue1) removeDependent: (self).
    ^self
! !

"ASDBase.ic method 0x2011182c; bytecode file offset 0xa0e0e8"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
toolbarSelection: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) userData.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) userData.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011af84; bytecode file offset 0xa1784c"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
initMenus
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) mainWindow.
    recoveredValue1 := (self) createMenus.
    recoveredValue2 := (self) mainWindow.
    recoveredValue3 := (recoveredValue1) createMenuBarFor: (recoveredValue2) owner: (self).
    recoveredValue4 := (recoveredValue3) manageChild.
    (recoveredValue0) menuBar: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20148168; bytecode file offset 0xa44a38"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
categoryListEndEdit: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ASDItemLibrary.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue2) oldValue.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue4) newValue.
    (recoveredValue1) renameCategory: (recoveredValue3) to: (recoveredValue5).
    recoveredValue6 := (self) widgetCategoryList.
    (recoveredValue6) refresh.
    ^self
! !

"ASDBase.ic method 0x20175bcc; bytecode file offset 0xa72494"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
update: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := ASDItemLibrary.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) updateCategories.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) updatePreview.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) updateToolbar.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20197ebc; bytecode file offset 0xa94780"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
topShellFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) reason.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := XmCRLOSINGFOCUS.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) updateToolbar.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2019f6d0; bytecode file offset 0xa9bf9c"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
categories
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDItemLibrary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getCategories.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:block280d2060Arg1 :block280d2060Arg2 | 
    | block280d2060Value0 block280d2060Value1 block280d2060Value2 block280d2060Value3 block280d2060Value4 |
    block280d2060Value0 := block280d2060Arg1.
    block280d2060Value1 := (block280d2060Value0) label.
    block280d2060Value2 := block280d2060Arg2.
    block280d2060Value3 := (block280d2060Value2) label.
    block280d2060Value4 := (block280d2060Value1) < (block280d2060Value3).
    block280d2060Value4
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201b1014; bytecode file offset 0xaad8dc"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
menuFocusDelete
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetItemList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFocus.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) menuItemDelete.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCategoryList.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFocus.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) menuCategoryDelete.
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b15c8; bytecode file offset 0xaade90"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
menuCategoryRename
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCategoryList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectedPos.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCategoryList.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCategoryList.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSelectedPos.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) editItemAt: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20207a00; bytecode file offset 0xb042d4"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
menuIDForSelector: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) menuIDs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) keyAtValue: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'debug'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesSubstring: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 'bfr9fe'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) etasDevHaltFor: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202221b0; bytecode file offset 0xb1ea88"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
categoryListBeginEdit: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := EwTextEditPolicy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) on: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue5) item.
    recoveredValue7 := (recoveredValue6) size.
    recoveredValue8 := (0) @ (recoveredValue7).
    (recoveredValue4) selection: (recoveredValue8).
    recoveredValue9 := recoveredArg3.
    recoveredValue10 := (recoveredValue9) item.
    (recoveredValue3) value: (recoveredValue10).
    recoveredValue11 := recoveredArg3.
    recoveredValue12 := recoveredValue11.
    recoveredValue13 := recoveredLocal1.
    (recoveredValue12) editPolicy: (recoveredValue13).
    (recoveredValue11) doit: (true).
    ^self
! !

"ASDBase.ic method 0x20225300; bytecode file offset 0xb21bd8"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
updateContents
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDatabaseWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortedLibraryKeys.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:block280dc218Arg1 | 
    | block280dc218Value0 block280dc218Value1 |
    block280dc218Value0 := block280dc218Arg1.
    block280dc218Value1 := (block280dc218Value0) asRBDBReference.
    block280dc218Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) updateList: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) selectedLibrary: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) selectedObject: (recoveredStack1).
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

"ASDBase.ic method 0x20231800; bytecode file offset 0xb2e0d8"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
menuCategoryDelete
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCategoryList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFocus.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
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
            recoveredStack0 := (recoveredStack0) widgetCategoryList.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:block280dd244Arg1 | 
    | block280dd244Value0 block280dd244Value1 block280dd244Value2 block280dd244Value3 |
    block280dd244Value0 := ASDItemLibrary.
    block280dd244Value1 := (block280dd244Value0) instance.
    block280dd244Value2 := block280dd244Arg1.
    block280dd244Value3 := (block280dd244Value1) deleteCategory: (block280dd244Value2).
    block280dd244Value3
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) updateCategories.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20235a90; bytecode file offset 0xb32364"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
categoryListSingleSelection: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetItemList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemsForCategory.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetItemList.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetItemList.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) selectPos: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetPreviewArea.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) drawBackground.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20255574; bytecode file offset 0xb51e48"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
contextMenuDatabaseWidget: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := 'menuItemAdd'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := 'Add to Block Library...'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := (self) widgetDatabaseWidget.
    recoveredBlock10Value1 := (recoveredBlock10Value0) classList.
    recoveredBlock10Value2 := (recoveredBlock10Value1) selectedItems.
    recoveredBlock10Value3 := (recoveredBlock10Value2) notEmpty.
    recoveredBlock10Value3
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20275efc; bytecode file offset 0xb727dc"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
itemsForCategory
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCategoryList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := ASDItemLibrary.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCategoryList.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedItems.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) getItemsForCategory: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:block280e0b5cArg1 :block280e0b5cArg2 | 
    | block280e0b5cValue0 block280e0b5cValue1 block280e0b5cValue2 block280e0b5cValue3 block280e0b5cValue4 |
    block280e0b5cValue0 := block280e0b5cArg1.
    block280e0b5cValue1 := (block280e0b5cValue0) label.
    block280e0b5cValue2 := block280e0b5cArg2.
    block280e0b5cValue3 := (block280e0b5cValue2) label.
    block280e0b5cValue4 := (block280e0b5cValue1) < (block280e0b5cValue3).
    block280e0b5cValue4
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028c800; bytecode file offset 0xb890dc"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
menuItemDelete
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetItemList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFocus.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCategoryList.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := ASDItemLibrary.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetItemList.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedItems.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetCategoryList.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectedItems.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) removeItems: (recoveredStack1) fromCategory: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) updateCategories.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ae790; bytecode file offset 0xbab064"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
selectCategoryNamed: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCategoryList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) deselectAllItems.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCategoryList.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := (recoveredBlock10Value0) label.
    recoveredBlock10Value2 := recoveredArg1.
    recoveredBlock10Value3 := (recoveredBlock10Value1) equalsIgnoringCase: (recoveredBlock10Value2).
    recoveredBlock10Value3
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCategoryList.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) selectItem: (recoveredStack1) notify: (recoveredStack2).
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

"ASDBase.ic method 0x202e7fd4; bytecode file offset 0xbe48a8"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
createMenus
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwMenuBar.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFileMenu.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) addMenu: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEditCategoryMenu.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) addMenu: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEditItemMenu.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) addMenu: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) addToolboxMenuItemsFor: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) removeTrailingSeparators.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033398c; bytecode file offset 0xc30294"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    super initializeAfterCreate.
    (self) iconSmall: ('EditorLibrary') large: ('EditorLibrary32').
    (self) initMenus.
    (self) initToolBars.
    (self) initWidgetPopups.
    recoveredValue0 := EtasMainDatabaseCtrl.
    recoveredValue1 := (recoveredValue0) create.
    (self) uiController: (recoveredValue1).
    recoveredValue2 := (self) uiController.
    recoveredValue3 := (self) widgetDatabaseWidget.
    recoveredValue4 := (recoveredValue3) widgetController.
    (recoveredValue2) dbWidgetController: (recoveredValue4).
    recoveredValue5 := (self) widgetDatabaseWidget.
    (recoveredValue5) unmanageCloseButtons.
    (self) updateFonts.
    (self) updateContents.
    recoveredValue6 := ASDItemLibrary.
    recoveredValue7 := (recoveredValue6) instance.
    (recoveredValue7) addDependent: (self).
    ^self
! !

"ASDBase.ic method 0x20335dc0; bytecode file offset 0xc326a8"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
menuItemMoveToCategory
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetItemList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
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
            recoveredStack0 := (recoveredStack0) widgetCategoryList.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := ASDItemLibraryDialog.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptAtCurrentMousePosition.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := ASDItemLibrary.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetItemList.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedItems.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetCategoryList.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectedItems.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) moveItems: (recoveredStack1) fromCategory: (recoveredStack2) toCategory: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) updateCategories.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20370820; bytecode file offset 0xc6d11c"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
menuCategoryAdd
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CwTextPrompter.
    recoveredValue1 := (recoveredValue0) prompt: ('Please enter a name for the new category:') answer: ('MyCategory').
    recoveredValue2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) trimBlanks.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) isEmpty.
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 26] ifFalse: [recoveredBlock12PC := 36].
        ].
        recoveredBlock12Step = 26 ifTrue: [
            recoveredBlock12Stack1 := RBUserInfo.
            recoveredBlock12PC := 28.
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12Stack2 := 'The category name cannot be empty.'.
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) errorMessage: (recoveredBlock12Stack2).
            recoveredBlock12PC := 32.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            (recoveredBlock12Stack1) prompt.
            recoveredBlock12PC := 34.
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 35.
        ].
        recoveredBlock12Step = 35 ifTrue: [
            ^recoveredBlock12Stack1
        ].
        recoveredBlock12Step = 36 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) isValidNonEmptyXMLString.
            recoveredBlock12PC := 39.
        ].
        recoveredBlock12Step = 39 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 52] ifFalse: [recoveredBlock12PC := 42].
        ].
        recoveredBlock12Step = 42 ifTrue: [
            recoveredBlock12Stack1 := RBUserInfo.
            recoveredBlock12PC := 44.
        ].
        recoveredBlock12Step = 44 ifTrue: [
            recoveredBlock12Stack2 := 'The name includes invalid characters and can not be used!!'.
            recoveredBlock12PC := 46.
        ].
        recoveredBlock12Step = 46 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) errorMessage: (recoveredBlock12Stack2).
            recoveredBlock12PC := 48.
        ].
        recoveredBlock12Step = 48 ifTrue: [
            (recoveredBlock12Stack1) prompt.
            recoveredBlock12PC := 50.
        ].
        recoveredBlock12Step = 50 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 51.
        ].
        recoveredBlock12Step = 51 ifTrue: [
            ^recoveredBlock12Stack1
        ].
        recoveredBlock12Step = 52 ifTrue: [
            recoveredBlock12Stack1 := ASDItemLibrary.
            recoveredBlock12PC := 54.
        ].
        recoveredBlock12Step = 54 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) instance.
            recoveredBlock12PC := 56.
        ].
        recoveredBlock12Step = 56 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 57.
        ].
        recoveredBlock12Step = 57 ifTrue: [
            (recoveredBlock12Stack1) addCategory: (recoveredBlock12Stack2).
            recoveredBlock12PC := 59.
        ].
        recoveredBlock12Step = 59 ifTrue: [
            (recoveredBlock12Stack0) updateCategories.
            recoveredBlock12PC := 61.
        ].
        recoveredBlock12Step = 61 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 62.
        ].
        recoveredBlock12Step = 62 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 63.
        ].
        recoveredBlock12Step = 63 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) selectCategoryNamed: (recoveredBlock12Stack1).
            recoveredBlock12PC := 65.
        ].
        recoveredBlock12Step = 65 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack0.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x203780ac; bytecode file offset 0xc74994"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
updateCategories
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCategoryList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCategoryList.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCategoryList.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCategoryList.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) categories.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetItemList.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) deselectAllItems.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCategoryList.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) selectItem: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetItemList.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemsForCategory.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) updatePreview.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038ab84; bytecode file offset 0xc87470"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
menuItemAdd
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) widgetDatabaseWidget.
    recoveredValue3 := (recoveredValue2) classList.
    recoveredValue4 := (recoveredValue3) selectedItems.
    recoveredValue5 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) isFolder.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 26] ifFalse: [recoveredBlock14PC := 48].
        ].
        recoveredBlock14Step = 26 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 27.
        ].
        recoveredBlock14Step = 27 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) allClassChildren.
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredBlock14Stack2 := [:recoveredBlock14Block29Arg1 | 
    | recoveredBlock14Block29Value0 recoveredBlock14Block29Value1 recoveredBlock14Block29Value2 |
    recoveredBlock14Block29Value0 := recoveredLocal1.
    recoveredBlock14Block29Value1 := recoveredBlock14Block29Arg1.
    recoveredBlock14Block29Value2 := (recoveredBlock14Block29Value0) add: (recoveredBlock14Block29Value1).
    recoveredBlock14Block29Value2
].
            recoveredBlock14PC := 43.
        ].
        recoveredBlock14Step = 43 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) do: (recoveredBlock14Stack2).
            recoveredBlock14PC := 45.
        ].
        recoveredBlock14Step = 45 ifTrue: [
            recoveredBlock14PC := 54.
        ].
        recoveredBlock14Step = 48 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal1.
            recoveredBlock14PC := 51.
        ].
        recoveredBlock14Step = 51 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 52.
        ].
        recoveredBlock14Step = 52 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) add: (recoveredBlock14Stack2).
            recoveredBlock14PC := 54.
        ].
        recoveredBlock14Step = 54 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := ASDItemLibrary.
    recoveredValue7 := (recoveredValue6) instance.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) asOrderedCollection.
    (recoveredValue7) addItems: (recoveredValue9).
    (self) updateCategories.
    ^self
! !

"ASDBase.ic method 0x2039ccc8; bytecode file offset 0xc995a4"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
initWidgetPopups
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCategoryList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := EtasMenu.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultMenuClass.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) contextMenuCategoryList: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCategoryList.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) menu: (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetItemList.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := EtasMenu.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultMenuClass.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) contextMenuItemList: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetItemList.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) menu: (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDatabaseWidget.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := EtasMenu.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultMenuClass.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) contextMenuDatabaseWidget: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDatabaseWidget.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) menu: (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203dbb50; bytecode file offset 0xcd844c"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
createEditItemMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasMenu.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMenuClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := '~Items'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) title: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := 'menuFocusDelete'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := 'Delete'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 |
    recoveredBlock19Value0 := (self) widgetItemList.
    recoveredBlock19Value1 := (recoveredBlock19Value0) selectedItems.
    recoveredBlock19Value2 := (recoveredBlock19Value1) notEmpty.
    recoveredBlock19Value2
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack8 := CwAccelerator.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack9 := 0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack10 := XKDelete.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack8 := (recoveredStack8) mask: (recoveredStack9) keysym: (recoveredStack10).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack9 := 'Delete'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := 'menuItemMoveToCategory'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := 'Move to Category...'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock58Value0 recoveredBlock58Value1 recoveredBlock58Value2 |
    recoveredBlock58Value0 := (self) widgetItemList.
    recoveredBlock58Value1 := (recoveredBlock58Value0) selectedItems.
    recoveredBlock58Value2 := (recoveredBlock58Value1) notEmpty.
    recoveredBlock58Value2
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2042a440; bytecode file offset 0xd26d38"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
contextMenuItemList: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := 'menuFocusDelete'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := 'Delete'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 |
    recoveredBlock10Value0 := (self) widgetItemList.
    recoveredBlock10Value1 := (recoveredBlock10Value0) selectedItems.
    recoveredBlock10Value2 := (recoveredBlock10Value1) notEmpty.
    recoveredBlock10Value2
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack8 := CwAccelerator.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack9 := 0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack10 := XKDelete.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack8 := (recoveredStack8) mask: (recoveredStack9) keysym: (recoveredStack10).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack9 := 'Delete'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := 'menuItemMoveToCategory'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := 'Move to Category...'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 |
    recoveredBlock46Value0 := (self) widgetItemList.
    recoveredBlock46Value1 := (recoveredBlock46Value0) selectedItems.
    recoveredBlock46Value2 := (recoveredBlock46Value1) notEmpty.
    recoveredBlock46Value2
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack2) addSingleLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := 'menuItemLoadPath'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := 'Load Path'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock77Value0 recoveredBlock77Value1 recoveredBlock77Value2 |
    recoveredBlock77Value0 := (self) widgetItemList.
    recoveredBlock77Value1 := (recoveredBlock77Value0) selectedItems.
    recoveredBlock77Value2 := (recoveredBlock77Value1) notEmpty.
    recoveredBlock77Value2
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20450c04; bytecode file offset 0xd4d50c"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
contextMenuCategoryList: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := 'menuCategoryAdd'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := 'Add'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := 'menuFocusDelete'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := 'Delete   '.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 |
    recoveredBlock36Value0 := (self) widgetCategoryList.
    recoveredBlock36Value1 := (recoveredBlock36Value0) selectedItems.
    recoveredBlock36Value2 := (recoveredBlock36Value1) notEmpty.
    recoveredBlock36Value2
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack8 := CwAccelerator.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack9 := 0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack10 := XKDelete.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack8 := (recoveredStack8) mask: (recoveredStack9) keysym: (recoveredStack10).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack9 := 'Delete'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := 'menuCategoryRename'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := 'Rename   '.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock74Value0 recoveredBlock74Value1 recoveredBlock74Value2 recoveredBlock74Value3 |
    recoveredBlock74Value0 := (self) widgetCategoryList.
    recoveredBlock74Value1 := (recoveredBlock74Value0) selectedItems.
    recoveredBlock74Value2 := (recoveredBlock74Value1) size.
    recoveredBlock74Value3 := (recoveredBlock74Value2) = (1).
    recoveredBlock74Value3
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack8 := CwAccelerator.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack9 := 0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack10 := XKF2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack8 := (recoveredStack8) mask: (recoveredStack9) keysym: (recoveredStack10).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack9 := 'F2'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20470084; bytecode file offset 0xd6c9a0"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
createEditCategoryMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasMenu.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMenuClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := '~Category'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) title: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := 'menuCategoryAdd'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := 'Add'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := 'menuFocusDelete'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := 'Delete  '.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 |
    recoveredBlock44Value0 := (self) widgetCategoryList.
    recoveredBlock44Value1 := (recoveredBlock44Value0) selectedItems.
    recoveredBlock44Value2 := (recoveredBlock44Value1) notEmpty.
    recoveredBlock44Value2
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack8 := CwAccelerator.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack9 := 0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack10 := XKDelete.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack8 := (recoveredStack8) mask: (recoveredStack9) keysym: (recoveredStack10).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack9 := 'Delete'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := 'menuCategoryRename'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack4 := 'Rename  '.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock82Value0 recoveredBlock82Value1 recoveredBlock82Value2 recoveredBlock82Value3 |
    recoveredBlock82Value0 := (self) widgetCategoryList.
    recoveredBlock82Value1 := (recoveredBlock82Value0) selectedItems.
    recoveredBlock82Value2 := (recoveredBlock82Value1) size.
    recoveredBlock82Value3 := (recoveredBlock82Value2) = (1).
    recoveredBlock82Value3
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack8 := CwAccelerator.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack9 := 0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack10 := XKF2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack8 := (recoveredStack8) mask: (recoveredStack9) keysym: (recoveredStack10).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack9 := 'F2'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204a4738; bytecode file offset 0xda1064"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
createFileMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasMenu.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMenuClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := '~File'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) title: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := 'menuFileOpen'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := '~Open'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack8 := CwAccelerator.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack9 := ControlMask.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack10 := XKO.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack8 := (recoveredStack8) mask: (recoveredStack9) keysym: (recoveredStack10).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack9 := 'Ctrl+O'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := 'menuFileSave'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := '~Save'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack8 := CwAccelerator.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack9 := ControlMask.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack10 := XKS.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack8 := (recoveredStack8) mask: (recoveredStack9) keysym: (recoveredStack10).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack9 := 'Ctrl+S'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack2) addSingleLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := 'menuFileImport'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack4 := '~Import'.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := 'menuFileExport'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack4 := '~Export'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204e2158; bytecode file offset 0xddea68"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
createGeneralToolbar
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) widgetGeneralToolbar.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 recoveredBlock7Value8 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredBlock7Value0.
    recoveredBlock7Value2 := recoveredBlock7Arg1.
    recoveredBlock7Value3 := (recoveredBlock7Value2) name.
    recoveredBlock7Value4 := (recoveredBlock7Value3) asString.
    recoveredBlock7Value5 := (self) returnIcon16WithName: (recoveredBlock7Value4).
    (recoveredBlock7Value1) image: (recoveredBlock7Value5).
    recoveredBlock7Value6 := recoveredBlock7Value0.
    recoveredBlock7Value7 := [
    | recoveredBlock7Block25Value0 |
    recoveredBlock7Block25Value0 := (self) openLibrary.
    recoveredBlock7Block25Value0
].
    (recoveredBlock7Value6) userData: (recoveredBlock7Value7).
    recoveredBlock7Value8 := (recoveredBlock7Value0) toolTipText: ('Open a Block Library').
    recoveredBlock7Value8
].
    (recoveredValue0) createToolButton: ('GeneralFileOpen') argBlock: (recoveredValue1).
    recoveredValue2 := (self) widgetGeneralToolbar.
    recoveredValue3 := [:recoveredBlock48Arg1 | 
    | recoveredBlock48Value0 recoveredBlock48Value1 recoveredBlock48Value2 recoveredBlock48Value3 recoveredBlock48Value4 recoveredBlock48Value5 recoveredBlock48Value6 recoveredBlock48Value7 recoveredBlock48Value8 |
    recoveredBlock48Value0 := recoveredBlock48Arg1.
    recoveredBlock48Value1 := recoveredBlock48Value0.
    recoveredBlock48Value2 := recoveredBlock48Arg1.
    recoveredBlock48Value3 := (recoveredBlock48Value2) name.
    recoveredBlock48Value4 := (recoveredBlock48Value3) asString.
    recoveredBlock48Value5 := (self) returnIcon16WithName: (recoveredBlock48Value4).
    (recoveredBlock48Value1) image: (recoveredBlock48Value5).
    recoveredBlock48Value6 := recoveredBlock48Value0.
    recoveredBlock48Value7 := [
    | recoveredBlock48Block65Value0 |
    recoveredBlock48Block65Value0 := (self) saveLibrary.
    recoveredBlock48Block65Value0
].
    (recoveredBlock48Value6) userData: (recoveredBlock48Value7).
    recoveredBlock48Value8 := (recoveredBlock48Value0) toolTipText: ('Save Current Block Library').
    recoveredBlock48Value8
].
    (recoveredValue2) createToolButton: ('GeneralFileSave') argBlock: (recoveredValue3).
    recoveredValue4 := (self) widgetGeneralToolbar.
    recoveredValue5 := [:recoveredBlock88Arg1 | 
    | recoveredBlock88Value0 recoveredBlock88Value1 recoveredBlock88Value2 recoveredBlock88Value3 recoveredBlock88Value4 recoveredBlock88Value5 |
    recoveredBlock88Value0 := recoveredBlock88Arg1.
    recoveredBlock88Value1 := recoveredBlock88Value0.
    recoveredBlock88Value2 := (self) returnIconWithName: ('GeneralImport').
    (recoveredBlock88Value1) image: (recoveredBlock88Value2).
    recoveredBlock88Value3 := recoveredBlock88Value0.
    recoveredBlock88Value4 := [
    | recoveredBlock88Block104Value0 |
    recoveredBlock88Block104Value0 := (self) importLibrary.
    recoveredBlock88Block104Value0
].
    (recoveredBlock88Value3) userData: (recoveredBlock88Value4).
    recoveredBlock88Value5 := (recoveredBlock88Value0) toolTipText: ('Import a Block Library').
    recoveredBlock88Value5
].
    (recoveredValue4) createToolButton: ('EditorLibraryImport') argBlock: (recoveredValue5).
    recoveredValue6 := (self) widgetGeneralToolbar.
    recoveredValue7 := [:recoveredBlock126Arg1 | 
    | recoveredBlock126Value0 recoveredBlock126Value1 recoveredBlock126Value2 recoveredBlock126Value3 recoveredBlock126Value4 recoveredBlock126Value5 |
    recoveredBlock126Value0 := recoveredBlock126Arg1.
    recoveredBlock126Value1 := recoveredBlock126Value0.
    recoveredBlock126Value2 := (self) returnIconWithName: ('GeneralExport').
    (recoveredBlock126Value1) image: (recoveredBlock126Value2).
    recoveredBlock126Value3 := recoveredBlock126Value0.
    recoveredBlock126Value4 := [
    | recoveredBlock126Block142Value0 |
    recoveredBlock126Block142Value0 := (self) exportLibrary.
    recoveredBlock126Block142Value0
].
    (recoveredBlock126Value3) userData: (recoveredBlock126Value4).
    recoveredBlock126Value5 := (recoveredBlock126Value0) toolTipText: ('Export a Block Library').
    recoveredBlock126Value5
].
    (recoveredValue6) createToolButton: ('EditorLibraryExport') argBlock: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x20500a10; bytecode file offset 0xdfd35c"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
menuCategoryLoadPath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCategoryList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectedPos.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCategoryList.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Local1 recoveredBlock19Local2 recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19Stack5 recoveredBlock19Stack6 recoveredBlock19Stack7 recoveredBlock19Stack8 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := ASDItemLibrary.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) instance.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 31.
        ].
        recoveredBlock19Step = 31 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) getLoadPathForCategory: (recoveredBlock19Stack2).
            recoveredBlock19PC := 33.
        ].
        recoveredBlock19Step = 33 ifTrue: [
            recoveredBlock19Local1 := recoveredBlock19Stack1.
            recoveredBlock19PC := 34.
        ].
        recoveredBlock19Step = 34 ifTrue: [
            recoveredBlock19Stack1 := RBFileSelectionPrompter.
            recoveredBlock19PC := 36.
        ].
        recoveredBlock19Step = 36 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) new.
            recoveredBlock19PC := 38.
        ].
        recoveredBlock19Step = 38 ifTrue: [
            recoveredBlock19Local2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 39.
        ].
        recoveredBlock19Step = 39 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local2.
            recoveredBlock19PC := 40.
        ].
        recoveredBlock19Step = 40 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 41.
        ].
        recoveredBlock19Step = 41 ifTrue: [
            recoveredBlock19Stack3 := 'Select Import File for: '.
            recoveredBlock19PC := 43.
        ].
        recoveredBlock19Step = 43 ifTrue: [
            recoveredBlock19Stack4 := recoveredBlock19Arg1.
            recoveredBlock19PC := 44.
        ].
        recoveredBlock19Step = 44 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) , (recoveredBlock19Stack4).
            recoveredBlock19PC := 46.
        ].
        recoveredBlock19Step = 46 ifTrue: [
            (recoveredBlock19Stack2) title: (recoveredBlock19Stack3).
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 49.
        ].
        recoveredBlock19Step = 49 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Local1.
            recoveredBlock19PC := 50.
        ].
        recoveredBlock19Step = 50 ifTrue: [
            (recoveredBlock19Stack3 ~~ nil) ifTrue: [recoveredBlock19PC := 62] ifFalse: [recoveredBlock19PC := 54].
        ].
        recoveredBlock19Step = 54 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Arg1.
            recoveredBlock19PC := 55.
        ].
        recoveredBlock19Step = 55 ifTrue: [
            recoveredBlock19Stack4 := '.exp'.
            recoveredBlock19PC := 57.
        ].
        recoveredBlock19Step = 57 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) , (recoveredBlock19Stack4).
            recoveredBlock19PC := 59.
        ].
        recoveredBlock19Step = 59 ifTrue: [
            recoveredBlock19PC := 65.
        ].
        recoveredBlock19Step = 62 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Local1.
            recoveredBlock19PC := 63.
        ].
        recoveredBlock19Step = 63 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) fileNameOnly.
            recoveredBlock19PC := 65.
        ].
        recoveredBlock19Step = 65 ifTrue: [
            (recoveredBlock19Stack2) fileName: (recoveredBlock19Stack3).
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 68.
        ].
        recoveredBlock19Step = 68 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Local1.
            recoveredBlock19PC := 69.
        ].
        recoveredBlock19Step = 69 ifTrue: [
            (recoveredBlock19Stack3 ~~ nil) ifTrue: [recoveredBlock19PC := 80] ifFalse: [recoveredBlock19PC := 72].
        ].
        recoveredBlock19Step = 72 ifTrue: [
            recoveredBlock19Stack3 := EtasGeneralDllApi.
            recoveredBlock19PC := 74.
        ].
        recoveredBlock19Step = 74 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) getAppDataPath.
            recoveredBlock19PC := 76.
        ].
        recoveredBlock19Step = 76 ifTrue: [
            recoveredBlock19PC := 83.
        ].
        recoveredBlock19Step = 80 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Local1.
            recoveredBlock19PC := 81.
        ].
        recoveredBlock19Step = 81 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) pathName.
            recoveredBlock19PC := 83.
        ].
        recoveredBlock19Step = 83 ifTrue: [
            (recoveredBlock19Stack2) searchPath: (recoveredBlock19Stack3).
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 86.
        ].
        recoveredBlock19Step = 86 ifTrue: [
            recoveredBlock19Stack3 := Dictionary.
            recoveredBlock19PC := 88.
        ].
        recoveredBlock19Step = 88 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) new.
            recoveredBlock19PC := 90.
        ].
        recoveredBlock19Step = 90 ifTrue: [
            recoveredBlock19Stack4 := recoveredBlock19Stack3.
            recoveredBlock19PC := 91.
        ].
        recoveredBlock19Step = 91 ifTrue: [
            recoveredBlock19Stack5 := '*.exp'.
            recoveredBlock19PC := 93.
        ].
        recoveredBlock19Step = 93 ifTrue: [
            recoveredBlock19Stack6 := EtExpFile.
            recoveredBlock19PC := 95.
        ].
        recoveredBlock19Step = 95 ifTrue: [
            recoveredBlock19Stack7 := ' '.
            recoveredBlock19PC := 97.
        ].
        recoveredBlock19Step = 97 ifTrue: [
            recoveredBlock19Stack6 := (recoveredBlock19Stack6) , (recoveredBlock19Stack7).
            recoveredBlock19PC := 99.
        ].
        recoveredBlock19Step = 99 ifTrue: [
            (recoveredBlock19Stack4) at: (recoveredBlock19Stack5) put: (recoveredBlock19Stack6).
            recoveredBlock19Stack4 := recoveredBlock19Stack3.
            recoveredBlock19PC := 102.
        ].
        recoveredBlock19Step = 102 ifTrue: [
            recoveredBlock19Stack5 := '*.xml'.
            recoveredBlock19PC := 104.
        ].
        recoveredBlock19Step = 104 ifTrue: [
            recoveredBlock19Stack6 := EtXmlFile.
            recoveredBlock19PC := 106.
        ].
        recoveredBlock19Step = 106 ifTrue: [
            recoveredBlock19Stack7 := ' '.
            recoveredBlock19PC := 108.
        ].
        recoveredBlock19Step = 108 ifTrue: [
            recoveredBlock19Stack6 := (recoveredBlock19Stack6) , (recoveredBlock19Stack7).
            recoveredBlock19PC := 110.
        ].
        recoveredBlock19Step = 110 ifTrue: [
            (recoveredBlock19Stack4) at: (recoveredBlock19Stack5) put: (recoveredBlock19Stack6).
            recoveredBlock19Stack4 := recoveredBlock19Stack3.
            recoveredBlock19PC := 113.
        ].
        recoveredBlock19Step = 113 ifTrue: [
            recoveredBlock19Stack5 := '*.amd'.
            recoveredBlock19PC := 115.
        ].
        recoveredBlock19Step = 115 ifTrue: [
            recoveredBlock19Stack6 := EtAmdFile.
            recoveredBlock19PC := 117.
        ].
        recoveredBlock19Step = 117 ifTrue: [
            recoveredBlock19Stack7 := ' '.
            recoveredBlock19PC := 119.
        ].
        recoveredBlock19Step = 119 ifTrue: [
            recoveredBlock19Stack6 := (recoveredBlock19Stack6) , (recoveredBlock19Stack7).
            recoveredBlock19PC := 121.
        ].
        recoveredBlock19Step = 121 ifTrue: [
            (recoveredBlock19Stack4) at: (recoveredBlock19Stack5) put: (recoveredBlock19Stack6).
            recoveredBlock19Stack4 := recoveredBlock19Stack3.
            recoveredBlock19PC := 124.
        ].
        recoveredBlock19Step = 124 ifTrue: [
            recoveredBlock19Stack5 := '*.axl'.
            recoveredBlock19PC := 126.
        ].
        recoveredBlock19Step = 126 ifTrue: [
            recoveredBlock19Stack6 := EtAxlFile.
            recoveredBlock19PC := 128.
        ].
        recoveredBlock19Step = 128 ifTrue: [
            recoveredBlock19Stack7 := ' '.
            recoveredBlock19PC := 130.
        ].
        recoveredBlock19Step = 130 ifTrue: [
            recoveredBlock19Stack6 := (recoveredBlock19Stack6) , (recoveredBlock19Stack7).
            recoveredBlock19PC := 132.
        ].
        recoveredBlock19Step = 132 ifTrue: [
            (recoveredBlock19Stack4) at: (recoveredBlock19Stack5) put: (recoveredBlock19Stack6).
            recoveredBlock19Stack4 := recoveredBlock19Stack3.
            recoveredBlock19PC := 135.
        ].
        recoveredBlock19Step = 135 ifTrue: [
            recoveredBlock19Stack5 := '*.*'.
            recoveredBlock19PC := 137.
        ].
        recoveredBlock19Step = 137 ifTrue: [
            recoveredBlock19Stack6 := 'All files '.
            recoveredBlock19PC := 139.
        ].
        recoveredBlock19Step = 139 ifTrue: [
            (recoveredBlock19Stack4) at: (recoveredBlock19Stack5) put: (recoveredBlock19Stack6).
            recoveredBlock19PC := 141.
        ].
        recoveredBlock19Step = 141 ifTrue: [
            (recoveredBlock19Stack2) filterDictionary: (recoveredBlock19Stack3).
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 144.
        ].
        recoveredBlock19Step = 144 ifTrue: [
            recoveredBlock19Stack3 := '*.exp'.
            recoveredBlock19PC := 146.
        ].
        recoveredBlock19Step = 146 ifTrue: [
            (recoveredBlock19Stack2) searchMask: (recoveredBlock19Stack3).
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 149.
        ].
        recoveredBlock19Step = 149 ifTrue: [
            recoveredBlock19Stack3 := 1.
            recoveredBlock19PC := 151.
        ].
        recoveredBlock19Step = 151 ifTrue: [
            (recoveredBlock19Stack2) accessType: (recoveredBlock19Stack3).
            recoveredBlock19PC := 153.
        ].
        recoveredBlock19Step = 153 ifTrue: [
            recoveredBlock19PC := 154.
        ].
        recoveredBlock19Step = 154 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local2.
            recoveredBlock19PC := 155.
        ].
        recoveredBlock19Step = 155 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) prompt.
            recoveredBlock19PC := 157.
        ].
        recoveredBlock19Step = 157 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 158.
        ].
        recoveredBlock19Step = 158 ifTrue: [
            recoveredBlock19Local1 := recoveredBlock19Stack2.
            recoveredBlock19PC := 159.
        ].
        recoveredBlock19Step = 159 ifTrue: [
            (recoveredBlock19Stack1 ~~ nil) ifTrue: [recoveredBlock19PC := 164] ifFalse: [recoveredBlock19PC := 162].
        ].
        recoveredBlock19Step = 162 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 163.
        ].
        recoveredBlock19Step = 163 ifTrue: [
            ^recoveredBlock19Stack1
        ].
        recoveredBlock19Step = 164 ifTrue: [
            recoveredBlock19Stack1 := ASDItemLibrary.
            recoveredBlock19PC := 166.
        ].
        recoveredBlock19Step = 166 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) instance.
            recoveredBlock19PC := 168.
        ].
        recoveredBlock19Step = 168 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local1.
            recoveredBlock19PC := 169.
        ].
        recoveredBlock19Step = 169 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Arg1.
            recoveredBlock19PC := 170.
        ].
        recoveredBlock19Step = 170 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) setLoadPath: (recoveredBlock19Stack2) forCategory: (recoveredBlock19Stack3).
            recoveredBlock19PC := 172.
        ].
        recoveredBlock19Step = 172 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20525acc; bytecode file offset 0xe22414"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
menuItemLoadPath
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetItemList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
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
            recoveredStack0 := (recoveredStack0) widgetCategoryList.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := ASDItemLibrary.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetItemList.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedItems.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLoadPathForItem: (recoveredStack1) inCategory: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := RBFileSelectionPrompter.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'Select Import File'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 'items.exp'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileNameOnly.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) fileName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := EtasGeneralDllApi.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) getAppDataPath.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 93.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathName.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) searchPath: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := Dictionary.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := '*.exp'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack5 := EtExpFile.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack6 := ' '.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack4 := '*.amd'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack5 := EtAmdFile.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack6 := ' '.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack4 := '*.axl'.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack5 := EtAxlFile.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack6 := ' '.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack4 := '*.*'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack5 := 'All files '.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack1) filterDictionary: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := '*.exp'.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack1) searchMask: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1) accessType: (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetItemList.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := [:recoveredBlock171Arg1 | 
    | recoveredBlock171Value0 recoveredBlock171Value1 recoveredBlock171Value2 recoveredBlock171Value3 recoveredBlock171Value4 recoveredBlock171Value5 |
    recoveredBlock171Value0 := ASDItemLibrary.
    recoveredBlock171Value1 := (recoveredBlock171Value0) instance.
    recoveredBlock171Value2 := recoveredLocal1.
    recoveredBlock171Value3 := recoveredLocal3.
    recoveredBlock171Value4 := recoveredBlock171Arg1.
    recoveredBlock171Value5 := (recoveredBlock171Value1) setLoadPath: (recoveredBlock171Value2) forCategory: (recoveredBlock171Value3) forItem: (recoveredBlock171Value4).
    recoveredBlock171Value5
].
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2053a04c; bytecode file offset 0xe36974"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
updatePreview
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetPreviewArea.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) gc.
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
            recoveredStack0 := [
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := drawProcess.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack2 := [:block2810dd40Arg1 | 
    | block2810dd40Value0 block2810dd40Value1 |
    block2810dd40Value0 := block2810dd40Arg1.
    block2810dd40Value1 := (block2810dd40Value0) terminate.
    block2810dd40Value1
].
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) ifNotNil: (recoveredBlock12Stack2).
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) critical.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetItemList.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) someElement.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObject.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetPreviewArea.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) drawBackground.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 recoveredBlock64Value3 |
    recoveredBlock64Value0 := recoveredLocal4.
    recoveredBlock64Value1 := (recoveredBlock64Value0) someElement.
    recoveredLocal4 := recoveredBlock64Value1.
    recoveredBlock64Value2 := [
    | recoveredBlock64Block78Value0 recoveredBlock64Block78Value1 recoveredBlock64Block78Value2 |
    recoveredBlock64Block78Value0 := (self) widgetPreviewArea.
    recoveredBlock64Block78Value1 := [:recoveredBlock64Block78Block85Arg1 | 
    | recoveredBlock64Block78Block85Stack0 recoveredBlock64Block78Block85Stack1 recoveredBlock64Block78Block85Stack2 recoveredBlock64Block78Block85Stack3 recoveredBlock64Block78Block85Stack4 recoveredBlock64Block78Block85PC recoveredBlock64Block78Block85Step recoveredBlock64Block78Block85Done recoveredBlock64Block78Block85Result |
    recoveredBlock64Block78Block85Stack0 := nil.
    recoveredBlock64Block78Block85PC := 92.
    recoveredBlock64Block78Block85Done := false.
    [recoveredBlock64Block78Block85Done not] whileTrue: [
        recoveredBlock64Block78Block85Step := recoveredBlock64Block78Block85PC.
        recoveredBlock64Block78Block85Step = 92 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := nil.
            recoveredBlock64Block78Block85PC := 93.
        ].
        recoveredBlock64Block78Block85Step = 93 ifTrue: [
            recoveredBlock64Block78Block85Stack2 := recoveredBlock64Block78Block85Arg1.
            recoveredBlock64Block78Block85PC := 94.
        ].
        recoveredBlock64Block78Block85Step = 94 ifTrue: [
            recoveredBlock64Block78Block85Stack2 := (recoveredBlock64Block78Block85Stack2) isDestroyed.
            recoveredBlock64Block78Block85PC := 96.
        ].
        recoveredBlock64Block78Block85Step = 96 ifTrue: [
            (recoveredBlock64Block78Block85Stack2) ifTrue: [recoveredBlock64Block78Block85PC := 191] ifFalse: [recoveredBlock64Block78Block85PC := 100].
        ].
        recoveredBlock64Block78Block85Step = 100 ifTrue: [
            recoveredBlock64Block78Block85PC := 101.
        ].
        recoveredBlock64Block78Block85Step = 101 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := recoveredBlock64Block78Block85Arg1.
            recoveredBlock64Block78Block85PC := 102.
        ].
        recoveredBlock64Block78Block85Step = 102 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) boundingBox.
            recoveredBlock64Block78Block85PC := 104.
        ].
        recoveredBlock64Block78Block85Step = 104 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) extent.
            recoveredBlock64Block78Block85PC := 106.
        ].
        recoveredBlock64Block78Block85Step = 106 ifTrue: [
            recoveredLocal2 := recoveredBlock64Block78Block85Stack1.
            recoveredBlock64Block78Block85PC := 109.
        ].
        recoveredBlock64Block78Block85Step = 109 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := recoveredLocal4.
            recoveredBlock64Block78Block85PC := 112.
        ].
        recoveredBlock64Block78Block85Step = 112 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) graphicObject.
            recoveredBlock64Block78Block85PC := 114.
        ].
        recoveredBlock64Block78Block85Step = 114 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) frameGO.
            recoveredBlock64Block78Block85PC := 116.
        ].
        recoveredBlock64Block78Block85Step = 116 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) frame.
            recoveredBlock64Block78Block85PC := 118.
        ].
        recoveredBlock64Block78Block85Step = 118 ifTrue: [
            recoveredBlock64Block78Block85Stack2 := 10.
            recoveredBlock64Block78Block85PC := 120.
        ].
        recoveredBlock64Block78Block85Step = 120 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) expandBy: (recoveredBlock64Block78Block85Stack2).
            recoveredBlock64Block78Block85PC := 122.
        ].
        recoveredBlock64Block78Block85Step = 122 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) extent.
            recoveredBlock64Block78Block85PC := 124.
        ].
        recoveredBlock64Block78Block85Step = 124 ifTrue: [
            recoveredLocal3 := recoveredBlock64Block78Block85Stack1.
            recoveredBlock64Block78Block85PC := 127.
        ].
        recoveredBlock64Block78Block85Step = 127 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := recoveredLocal2.
            recoveredBlock64Block78Block85PC := 130.
        ].
        recoveredBlock64Block78Block85Step = 130 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) x.
            recoveredBlock64Block78Block85PC := 132.
        ].
        recoveredBlock64Block78Block85Step = 132 ifTrue: [
            recoveredBlock64Block78Block85Stack2 := recoveredLocal3.
            recoveredBlock64Block78Block85PC := 135.
        ].
        recoveredBlock64Block78Block85Step = 135 ifTrue: [
            recoveredBlock64Block78Block85Stack2 := (recoveredBlock64Block78Block85Stack2) x.
            recoveredBlock64Block78Block85PC := 137.
        ].
        recoveredBlock64Block78Block85Step = 137 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) / (recoveredBlock64Block78Block85Stack2).
            recoveredBlock64Block78Block85PC := 139.
        ].
        recoveredBlock64Block78Block85Step = 139 ifTrue: [
            recoveredBlock64Block78Block85Stack2 := recoveredLocal2.
            recoveredBlock64Block78Block85PC := 142.
        ].
        recoveredBlock64Block78Block85Step = 142 ifTrue: [
            recoveredBlock64Block78Block85Stack2 := (recoveredBlock64Block78Block85Stack2) y.
            recoveredBlock64Block78Block85PC := 144.
        ].
        recoveredBlock64Block78Block85Step = 144 ifTrue: [
            recoveredBlock64Block78Block85Stack3 := recoveredLocal3.
            recoveredBlock64Block78Block85PC := 147.
        ].
        recoveredBlock64Block78Block85Step = 147 ifTrue: [
            recoveredBlock64Block78Block85Stack3 := (recoveredBlock64Block78Block85Stack3) y.
            recoveredBlock64Block78Block85PC := 149.
        ].
        recoveredBlock64Block78Block85Step = 149 ifTrue: [
            recoveredBlock64Block78Block85Stack2 := (recoveredBlock64Block78Block85Stack2) / (recoveredBlock64Block78Block85Stack3).
            recoveredBlock64Block78Block85PC := 151.
        ].
        recoveredBlock64Block78Block85Step = 151 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) min: (recoveredBlock64Block78Block85Stack2).
            recoveredBlock64Block78Block85PC := 153.
        ].
        recoveredBlock64Block78Block85Step = 153 ifTrue: [
            recoveredBlock64Block78Block85Stack2 := 100.
            recoveredBlock64Block78Block85PC := 156.
        ].
        recoveredBlock64Block78Block85Step = 156 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) * (recoveredBlock64Block78Block85Stack2).
            recoveredBlock64Block78Block85PC := 157.
        ].
        recoveredBlock64Block78Block85Step = 157 ifTrue: [
            recoveredBlock64Block78Block85Stack2 := 100.
            recoveredBlock64Block78Block85PC := 160.
        ].
        recoveredBlock64Block78Block85Step = 160 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) min: (recoveredBlock64Block78Block85Stack2).
            recoveredBlock64Block78Block85PC := 162.
        ].
        recoveredBlock64Block78Block85Step = 162 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) asInteger.
            recoveredBlock64Block78Block85PC := 164.
        ].
        recoveredBlock64Block78Block85Step = 164 ifTrue: [
            recoveredLocal1 := recoveredBlock64Block78Block85Stack1.
            recoveredBlock64Block78Block85PC := 167.
        ].
        recoveredBlock64Block78Block85Step = 167 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := recoveredBlock64Block78Block85Arg1.
            recoveredBlock64Block78Block85PC := 168.
        ].
        recoveredBlock64Block78Block85Step = 168 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) zoomingFactor.
            recoveredBlock64Block78Block85PC := 170.
        ].
        recoveredBlock64Block78Block85Step = 170 ifTrue: [
            recoveredBlock64Block78Block85Stack2 := recoveredLocal1.
            recoveredBlock64Block78Block85PC := 173.
        ].
        recoveredBlock64Block78Block85Step = 173 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) ~= (recoveredBlock64Block78Block85Stack2).
            recoveredBlock64Block78Block85PC := 174.
        ].
        recoveredBlock64Block78Block85Step = 174 ifTrue: [
            (recoveredBlock64Block78Block85Stack1) ifTrue: [recoveredBlock64Block78Block85PC := 178] ifFalse: [recoveredBlock64Block78Block85PC := 185].
        ].
        recoveredBlock64Block78Block85Step = 178 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := recoveredBlock64Block78Block85Arg1.
            recoveredBlock64Block78Block85PC := 179.
        ].
        recoveredBlock64Block78Block85Step = 179 ifTrue: [
            recoveredBlock64Block78Block85Stack2 := recoveredLocal1.
            recoveredBlock64Block78Block85PC := 182.
        ].
        recoveredBlock64Block78Block85Step = 182 ifTrue: [
            recoveredBlock64Block78Block85Stack3 := true.
            recoveredBlock64Block78Block85PC := 183.
        ].
        recoveredBlock64Block78Block85Step = 183 ifTrue: [
            (recoveredBlock64Block78Block85Stack1) zoom: (recoveredBlock64Block78Block85Stack2) display: (recoveredBlock64Block78Block85Stack3).
            recoveredBlock64Block78Block85PC := 185.
        ].
        recoveredBlock64Block78Block85Step = 185 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := recoveredLocal4.
            recoveredBlock64Block78Block85PC := 188.
        ].
        recoveredBlock64Block78Block85Step = 188 ifTrue: [
            recoveredBlock64Block78Block85Stack2 := recoveredBlock64Block78Block85Arg1.
            recoveredBlock64Block78Block85PC := 189.
        ].
        recoveredBlock64Block78Block85Step = 189 ifTrue: [
            recoveredBlock64Block78Block85Stack1 := (recoveredBlock64Block78Block85Stack1) drawGraphicsWithoutNameOn: (recoveredBlock64Block78Block85Stack2).
            recoveredBlock64Block78Block85PC := 191.
        ].
        recoveredBlock64Block78Block85Step = 191 ifTrue: [
            recoveredBlock64Block78Block85Result := recoveredBlock64Block78Block85Stack1.
            recoveredBlock64Block78Block85Done := true.
        ].
    ].
    recoveredBlock64Block78Block85Result
].
    recoveredBlock64Block78Value2 := (recoveredBlock64Block78Value0) ifNotNil: (recoveredBlock64Block78Value1).
    recoveredBlock64Block78Value2
].
    recoveredBlock64Value3 := (recoveredBlock64Value2) critical.
    recoveredBlock64Value3
].
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) userBackgroundPriority.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := (recoveredStack0) forkAt: (recoveredStack1).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            drawProcess := recoveredStack0.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20694494; bytecode file offset 0xf90f6c"
!ASDItemLibraryEditorView methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredLocal20 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            widgetDictionary := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'topShell'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [:block2812bcecArg1 | 
    | block2812bcecValue0 block2812bcecValue1 block2812bcecValue2 block2812bcecValue3 block2812bcecValue4 block2812bcecValue5 block2812bcecValue6 block2812bcecValue7 |
    block2812bcecValue0 := block2812bcecArg1.
    block2812bcecValue1 := block2812bcecValue0.
    (block2812bcecValue1) title: ('Block Library Editor').
    block2812bcecValue2 := block2812bcecValue0.
    (block2812bcecValue2) height: (400).
    block2812bcecValue3 := block2812bcecValue0.
    (block2812bcecValue3) width: (400).
    block2812bcecValue4 := block2812bcecValue0.
    block2812bcecValue5 := MWMDECORALL.
    (block2812bcecValue4) mwmDecorations: (block2812bcecValue5).
    block2812bcecValue6 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    block2812bcecValue7 := (block2812bcecValue0) mwmInputMode: (block2812bcecValue6).
    block2812bcecValue7
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal20 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := 'topShell'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := recoveredLocal20.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal19 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := recoveredLocal19.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal18 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := recoveredLocal18.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 'generalToolbar'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := [:block2812bd10Arg1 | 
    | block2812bd10Value0 block2812bd10Value1 block2812bd10Value2 |
    block2812bd10Value0 := block2812bd10Arg1.
    block2812bd10Value1 := block2812bd10Value0.
    (block2812bd10Value1) showTips: (true).
    block2812bd10Value2 := block2812bd10Value0.
    (block2812bd10Value2) height: (24).
    block2812bd10Value0
].
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasToolBar: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := 'generalToolbar'.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := 'databaseFrame'.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := [:recoveredBlock148Arg1 | 
    | recoveredBlock148Value0 recoveredBlock148Value1 recoveredBlock148Value2 recoveredBlock148Value3 |
    recoveredBlock148Value0 := recoveredBlock148Arg1.
    recoveredBlock148Value1 := (self) library.
    recoveredBlock148Value2 := (recoveredBlock148Value1) interfaceName.
    recoveredBlock148Value3 := (recoveredBlock148Value0) labelString: (recoveredBlock148Value2).
    recoveredBlock148Value3
].
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := 'databaseFrame'.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := recoveredLocal16.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := 'databaseForm'.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := 'databaseForm'.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := 'libraryFrame'.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack3 := [:block2812bd34Arg1 | 
    | block2812bd34Value0 block2812bd34Value1 |
    block2812bd34Value0 := block2812bd34Arg1.
    block2812bd34Value1 := (block2812bd34Value0) labelString: ('Block Library').
    block2812bd34Value1
].
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := 'libraryFrame'.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack2 := 'libraryForm'.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := 'libraryForm'.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := 'categoryFrame'.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack3 := [:block2812bd58Arg1 | 
    | block2812bd58Value0 block2812bd58Value1 |
    block2812bd58Value0 := block2812bd58Arg1.
    block2812bd58Value1 := (block2812bd58Value0) labelString: ('Categories').
    block2812bd58Value1
].
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack2 := 'categoryFrame'.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack2 := 'categoryForm'.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack2 := 'categoryForm'.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack2 := 'itemFrame'.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack3 := [:block2812bd7cArg1 | 
    | block2812bd7cValue0 block2812bd7cValue1 |
    block2812bd7cValue0 := block2812bd7cArg1.
    block2812bd7cValue1 := (block2812bd7cValue0) labelString: ('Items').
    block2812bd7cValue1
].
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack2 := 'itemFrame'.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack2 := 'itemForm'.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack2 := 'itemForm'.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack2 := 'previewFrame'.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack3 := [:block2812bda0Arg1 | 
    | block2812bda0Value0 block2812bda0Value1 block2812bda0Value2 block2812bda0Value3 |
    block2812bda0Value0 := block2812bda0Arg1.
    block2812bda0Value1 := block2812bda0Value0.
    (block2812bda0Value1) labelString: ('').
    block2812bda0Value2 := block2812bda0Value0.
    (block2812bda0Value2) height: (110).
    block2812bda0Value3 := (block2812bda0Value0) width: (110).
    block2812bda0Value3
].
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack2 := 'previewFrame'.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack2 := 'previewForm'.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack2 := 'previewForm'.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack2 := 'databaseWidget'.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack3 := [:block2812bdc4Arg1 | 
    | block2812bdc4Value0 block2812bdc4Value1 block2812bdc4Value2 block2812bdc4Value3 block2812bdc4Value4 |
    block2812bdc4Value0 := block2812bdc4Arg1.
    block2812bdc4Value1 := MainController.
    block2812bdc4Value2 := (block2812bdc4Value1) userInterface.
    block2812bdc4Value3 := (block2812bdc4Value2) getDefaultDBWidgetOptions.
    block2812bdc4Value4 := (block2812bdc4Value0) dbWidgetOptions: (block2812bdc4Value3).
    block2812bdc4Value4
].
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasDatabaseWidget: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack2 := 'databaseWidget'.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack2 := 'categoryList'.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack3 := [:recoveredBlock496Arg1 | 
    | recoveredBlock496Value0 recoveredBlock496Value1 recoveredBlock496Value2 recoveredBlock496Value3 recoveredBlock496Value4 |
    recoveredBlock496Value0 := recoveredBlock496Arg1.
    recoveredBlock496Value1 := recoveredBlock496Value0.
    recoveredBlock496Value2 := (self) categories.
    (recoveredBlock496Value1) items: (recoveredBlock496Value2).
    recoveredBlock496Value3 := XmEXTENDEDSELECT.
    recoveredBlock496Value4 := (recoveredBlock496Value0) selectionPolicy: (recoveredBlock496Value3).
    recoveredBlock496Value4
].
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasScrolledIconList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack2 := 'categoryList'.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack2 := 'scrolledCategoryList'.
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack2 := 'itemList'.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredStack3 := [:recoveredBlock572Arg1 | 
    | recoveredBlock572Stack0 recoveredBlock572Stack1 recoveredBlock572Stack2 recoveredBlock572Stack3 recoveredBlock572Stack4 recoveredBlock572PC recoveredBlock572Step recoveredBlock572Done recoveredBlock572Result |
    recoveredBlock572Stack0 := self.
    recoveredBlock572PC := 578.
    recoveredBlock572Done := false.
    [recoveredBlock572Done not] whileTrue: [
        recoveredBlock572Step := recoveredBlock572PC.
        recoveredBlock572Step = 578 ifTrue: [
            recoveredBlock572Stack1 := recoveredBlock572Arg1.
            recoveredBlock572PC := 579.
        ].
        recoveredBlock572Step = 579 ifTrue: [
            recoveredBlock572Stack2 := recoveredBlock572Stack1.
            recoveredBlock572PC := 580.
        ].
        recoveredBlock572Step = 580 ifTrue: [
            recoveredBlock572Stack3 := self.
            recoveredBlock572PC := 581.
        ].
        recoveredBlock572Step = 581 ifTrue: [
            recoveredBlock572Stack3 := (recoveredBlock572Stack3) itemsForCategory.
            recoveredBlock572PC := 585.
        ].
        recoveredBlock572Step = 585 ifTrue: [
            (recoveredBlock572Stack2) items: (recoveredBlock572Stack3).
            recoveredBlock572Stack2 := recoveredBlock572Stack1.
            recoveredBlock572PC := 589.
        ].
        recoveredBlock572Step = 589 ifTrue: [
            recoveredBlock572Stack3 := XmEXTENDEDSELECT.
            recoveredBlock572PC := 592.
        ].
        recoveredBlock572Step = 592 ifTrue: [
            (recoveredBlock572Stack2) selectionPolicy: (recoveredBlock572Stack3).
            recoveredBlock572PC := 597.
        ].
        recoveredBlock572Step = 597 ifTrue: [
            recoveredBlock572Stack2 := [:block2812bde8Arg1 | 
    | block2812bde8Value0 block2812bde8Value1 |
    block2812bde8Value0 := block2812bde8Arg1.
    block2812bde8Value1 := (block2812bde8Value0) label.
    block2812bde8Value1
].
            recoveredBlock572PC := 600.
        ].
        recoveredBlock572Step = 600 ifTrue: [
            recoveredBlock572PC := 610.
        ].
        recoveredBlock572Step = 610 ifTrue: [
            recoveredBlock572Stack1 := (recoveredBlock572Stack1) printBlock: (recoveredBlock572Stack2).
            recoveredBlock572PC := 615.
        ].
        recoveredBlock572Step = 615 ifTrue: [
            recoveredBlock572Result := recoveredBlock572Stack1.
            recoveredBlock572Done := true.
        ].
    ].
    recoveredBlock572Result
].
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledObjectList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 628.
        ].
        recoveredStep = 628 ifTrue: [
            recoveredStack2 := 'itemList'.
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 648.
        ].
        recoveredStep = 648 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            recoveredStack2 := 'scrolledItemList'.
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack2 := 'previewArea'.
            recoveredPC := 666.
        ].
        recoveredStep = 666 ifTrue: [
            recoveredStack3 := [:block2812be0cArg1 | 
    | block2812be0cValue0 block2812be0cValue1 block2812be0cValue2 |
    block2812be0cValue0 := block2812be0cArg1.
    block2812be0cValue1 := block2812be0cValue0.
    (block2812be0cValue1) borderWidth: (1).
    block2812be0cValue2 := (block2812be0cValue0) height: (100).
    block2812be0cValue2
].
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            recoveredPC := 689.
        ].
        recoveredStep = 689 ifTrue: [
            recoveredStack1 := (recoveredStack1) createRBDrawingArea: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 700.
        ].
        recoveredStep = 700 ifTrue: [
            recoveredStack2 := 'previewArea'.
            recoveredPC := 704.
        ].
        recoveredStep = 704 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 707.
        ].
        recoveredStep = 707 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            recoveredStack2 := [:recoveredBlock712Arg1 | 
    | recoveredBlock712Value0 recoveredBlock712Value1 recoveredBlock712Value2 |
    recoveredBlock712Value0 := recoveredBlock712Arg1.
    recoveredBlock712Value1 := recoveredLocal18.
    recoveredBlock712Value2 := (recoveredBlock712Value0) workWindow: (recoveredBlock712Value1).
    recoveredBlock712Value2
].
            recoveredPC := 728.
        ].
        recoveredStep = 728 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 733.
        ].
        recoveredStep = 733 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 736.
        ].
        recoveredStep = 736 ifTrue: [
            recoveredStack2 := [:block2812be30Arg1 | 
    | block2812be30Value0 block2812be30Value1 block2812be30Value2 block2812be30Value3 block2812be30Value4 block2812be30Value5 block2812be30Value6 |
    block2812be30Value0 := block2812be30Arg1.
    block2812be30Value1 := block2812be30Value0.
    block2812be30Value2 := XmATTACHFORM.
    (block2812be30Value1) topAttachment: (block2812be30Value2).
    block2812be30Value3 := block2812be30Value0.
    block2812be30Value4 := XmATTACHFORM.
    (block2812be30Value3) leftAttachment: (block2812be30Value4).
    block2812be30Value5 := XmATTACHFORM.
    block2812be30Value6 := (block2812be30Value0) rightAttachment: (block2812be30Value5).
    block2812be30Value6
].
            recoveredPC := 740.
        ].
        recoveredStep = 740 ifTrue: [
            recoveredPC := 772.
        ].
        recoveredStep = 772 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 777.
        ].
        recoveredStep = 777 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 780.
        ].
        recoveredStep = 780 ifTrue: [
            recoveredStack2 := [:recoveredBlock780Arg1 | 
    | recoveredBlock780Value0 recoveredBlock780Value1 recoveredBlock780Value2 recoveredBlock780Value3 recoveredBlock780Value4 recoveredBlock780Value5 recoveredBlock780Value6 recoveredBlock780Value7 recoveredBlock780Value8 recoveredBlock780Value9 recoveredBlock780Value10 recoveredBlock780Value11 recoveredBlock780Value12 recoveredBlock780Value13 recoveredBlock780Value14 |
    recoveredBlock780Value0 := recoveredBlock780Arg1.
    recoveredBlock780Value1 := recoveredBlock780Value0.
    recoveredBlock780Value2 := XmATTACHWIDGET.
    (recoveredBlock780Value1) topAttachment: (recoveredBlock780Value2).
    recoveredBlock780Value3 := recoveredBlock780Value0.
    recoveredBlock780Value4 := recoveredLocal17.
    (recoveredBlock780Value3) topWidget: (recoveredBlock780Value4).
    recoveredBlock780Value5 := recoveredBlock780Value0.
    (recoveredBlock780Value5) topOffset: (5).
    recoveredBlock780Value6 := recoveredBlock780Value0.
    recoveredBlock780Value7 := XmATTACHFORM.
    (recoveredBlock780Value6) bottomAttachment: (recoveredBlock780Value7).
    recoveredBlock780Value8 := recoveredBlock780Value0.
    (recoveredBlock780Value8) bottomOffset: (5).
    recoveredBlock780Value9 := recoveredBlock780Value0.
    recoveredBlock780Value10 := XmATTACHFORM.
    (recoveredBlock780Value9) leftAttachment: (recoveredBlock780Value10).
    recoveredBlock780Value11 := recoveredBlock780Value0.
    (recoveredBlock780Value11) leftOffset: (5).
    recoveredBlock780Value12 := recoveredBlock780Value0.
    recoveredBlock780Value13 := XmATTACHPOSITION.
    (recoveredBlock780Value12) rightAttachment: (recoveredBlock780Value13).
    recoveredBlock780Value14 := (recoveredBlock780Value0) rightPosition: (50).
    recoveredBlock780Value14
].
            recoveredPC := 854.
        ].
        recoveredStep = 854 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 859.
        ].
        recoveredStep = 859 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 862.
        ].
        recoveredStep = 862 ifTrue: [
            recoveredStack2 := [:recoveredBlock862Arg1 | 
    | recoveredBlock862Value0 recoveredBlock862Value1 recoveredBlock862Value2 recoveredBlock862Value3 recoveredBlock862Value4 recoveredBlock862Value5 recoveredBlock862Value6 recoveredBlock862Value7 recoveredBlock862Value8 recoveredBlock862Value9 recoveredBlock862Value10 recoveredBlock862Value11 recoveredBlock862Value12 recoveredBlock862Value13 recoveredBlock862Value14 recoveredBlock862Value15 recoveredBlock862Value16 |
    recoveredBlock862Value0 := recoveredBlock862Arg1.
    recoveredBlock862Value1 := recoveredBlock862Value0.
    recoveredBlock862Value2 := XmATTACHWIDGET.
    (recoveredBlock862Value1) topAttachment: (recoveredBlock862Value2).
    recoveredBlock862Value3 := recoveredBlock862Value0.
    recoveredBlock862Value4 := recoveredLocal17.
    (recoveredBlock862Value3) topWidget: (recoveredBlock862Value4).
    recoveredBlock862Value5 := recoveredBlock862Value0.
    (recoveredBlock862Value5) topOffset: (5).
    recoveredBlock862Value6 := recoveredBlock862Value0.
    recoveredBlock862Value7 := XmATTACHFORM.
    (recoveredBlock862Value6) bottomAttachment: (recoveredBlock862Value7).
    recoveredBlock862Value8 := recoveredBlock862Value0.
    (recoveredBlock862Value8) bottomOffset: (5).
    recoveredBlock862Value9 := recoveredBlock862Value0.
    recoveredBlock862Value10 := XmATTACHWIDGET.
    (recoveredBlock862Value9) leftAttachment: (recoveredBlock862Value10).
    recoveredBlock862Value11 := recoveredBlock862Value0.
    recoveredBlock862Value12 := recoveredLocal16.
    (recoveredBlock862Value11) leftWidget: (recoveredBlock862Value12).
    recoveredBlock862Value13 := recoveredBlock862Value0.
    (recoveredBlock862Value13) leftOffset: (5).
    recoveredBlock862Value14 := recoveredBlock862Value0.
    recoveredBlock862Value15 := XmATTACHFORM.
    (recoveredBlock862Value14) rightAttachment: (recoveredBlock862Value15).
    recoveredBlock862Value16 := (recoveredBlock862Value0) rightOffset: (5).
    recoveredBlock862Value16
].
            recoveredPC := 944.
        ].
        recoveredStep = 944 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 949.
        ].
        recoveredStep = 949 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 952.
        ].
        recoveredStep = 952 ifTrue: [
            recoveredStack2 := [:block2812be54Arg1 | 
    | block2812be54Value0 block2812be54Value1 block2812be54Value2 block2812be54Value3 block2812be54Value4 block2812be54Value5 block2812be54Value6 block2812be54Value7 block2812be54Value8 block2812be54Value9 block2812be54Value10 block2812be54Value11 block2812be54Value12 |
    block2812be54Value0 := block2812be54Arg1.
    block2812be54Value1 := block2812be54Value0.
    block2812be54Value2 := XmATTACHFORM.
    (block2812be54Value1) topAttachment: (block2812be54Value2).
    block2812be54Value3 := block2812be54Value0.
    (block2812be54Value3) topOffset: (0).
    block2812be54Value4 := block2812be54Value0.
    block2812be54Value5 := XmATTACHPOSITION.
    (block2812be54Value4) bottomAttachment: (block2812be54Value5).
    block2812be54Value6 := block2812be54Value0.
    (block2812be54Value6) bottomPosition: (20).
    block2812be54Value7 := block2812be54Value0.
    block2812be54Value8 := XmATTACHFORM.
    (block2812be54Value7) leftAttachment: (block2812be54Value8).
    block2812be54Value9 := block2812be54Value0.
    (block2812be54Value9) leftOffset: (0).
    block2812be54Value10 := block2812be54Value0.
    block2812be54Value11 := XmATTACHFORM.
    (block2812be54Value10) rightAttachment: (block2812be54Value11).
    block2812be54Value12 := (block2812be54Value0) rightOffset: (0).
    block2812be54Value12
].
            recoveredPC := 956.
        ].
        recoveredStep = 956 ifTrue: [
            recoveredPC := 1020.
        ].
        recoveredStep = 1020 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1025.
        ].
        recoveredStep = 1025 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 1028.
        ].
        recoveredStep = 1028 ifTrue: [
            recoveredStack2 := [:recoveredBlock1028Arg1 | 
    | recoveredBlock1028Value0 recoveredBlock1028Value1 recoveredBlock1028Value2 recoveredBlock1028Value3 recoveredBlock1028Value4 recoveredBlock1028Value5 recoveredBlock1028Value6 recoveredBlock1028Value7 recoveredBlock1028Value8 recoveredBlock1028Value9 recoveredBlock1028Value10 recoveredBlock1028Value11 recoveredBlock1028Value12 recoveredBlock1028Value13 recoveredBlock1028Value14 recoveredBlock1028Value15 recoveredBlock1028Value16 |
    recoveredBlock1028Value0 := recoveredBlock1028Arg1.
    recoveredBlock1028Value1 := recoveredBlock1028Value0.
    recoveredBlock1028Value2 := XmATTACHWIDGET.
    (recoveredBlock1028Value1) topAttachment: (recoveredBlock1028Value2).
    recoveredBlock1028Value3 := recoveredBlock1028Value0.
    recoveredBlock1028Value4 := recoveredLocal12.
    (recoveredBlock1028Value3) topWidget: (recoveredBlock1028Value4).
    recoveredBlock1028Value5 := recoveredBlock1028Value0.
    (recoveredBlock1028Value5) topOffset: (5).
    recoveredBlock1028Value6 := recoveredBlock1028Value0.
    recoveredBlock1028Value7 := XmATTACHWIDGET.
    (recoveredBlock1028Value6) bottomAttachment: (recoveredBlock1028Value7).
    recoveredBlock1028Value8 := recoveredBlock1028Value0.
    recoveredBlock1028Value9 := recoveredLocal8.
    (recoveredBlock1028Value8) bottomWidget: (recoveredBlock1028Value9).
    recoveredBlock1028Value10 := recoveredBlock1028Value0.
    (recoveredBlock1028Value10) bottomOffset: (5).
    recoveredBlock1028Value11 := recoveredBlock1028Value0.
    recoveredBlock1028Value12 := XmATTACHFORM.
    (recoveredBlock1028Value11) leftAttachment: (recoveredBlock1028Value12).
    recoveredBlock1028Value13 := recoveredBlock1028Value0.
    (recoveredBlock1028Value13) leftOffset: (0).
    recoveredBlock1028Value14 := recoveredBlock1028Value0.
    recoveredBlock1028Value15 := XmATTACHFORM.
    (recoveredBlock1028Value14) rightAttachment: (recoveredBlock1028Value15).
    recoveredBlock1028Value16 := (recoveredBlock1028Value0) rightOffset: (0).
    recoveredBlock1028Value16
].
            recoveredPC := 1110.
        ].
        recoveredStep = 1110 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1115.
        ].
        recoveredStep = 1115 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1118.
        ].
        recoveredStep = 1118 ifTrue: [
            recoveredStack2 := [:block2812be78Arg1 | 
    | block2812be78Value0 block2812be78Value1 block2812be78Value2 block2812be78Value3 block2812be78Value4 block2812be78Value5 block2812be78Value6 block2812be78Value7 block2812be78Value8 block2812be78Value9 block2812be78Value10 block2812be78Value11 |
    block2812be78Value0 := block2812be78Arg1.
    block2812be78Value1 := block2812be78Value0.
    block2812be78Value2 := XmATTACHNONE.
    (block2812be78Value1) topAttachment: (block2812be78Value2).
    block2812be78Value3 := block2812be78Value0.
    block2812be78Value4 := XmATTACHFORM.
    (block2812be78Value3) bottomAttachment: (block2812be78Value4).
    block2812be78Value5 := block2812be78Value0.
    (block2812be78Value5) bottomOffset: (0).
    block2812be78Value6 := block2812be78Value0.
    block2812be78Value7 := XmATTACHFORM.
    (block2812be78Value6) leftAttachment: (block2812be78Value7).
    block2812be78Value8 := block2812be78Value0.
    (block2812be78Value8) leftOffset: (0).
    block2812be78Value9 := block2812be78Value0.
    block2812be78Value10 := XmATTACHFORM.
    (block2812be78Value9) rightAttachment: (block2812be78Value10).
    block2812be78Value11 := (block2812be78Value0) rightOffset: (0).
    block2812be78Value11
].
            recoveredPC := 1122.
        ].
        recoveredStep = 1122 ifTrue: [
            recoveredPC := 1180.
        ].
        recoveredStep = 1180 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1185.
        ].
        recoveredStep = 1185 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1188.
        ].
        recoveredStep = 1188 ifTrue: [
            recoveredStack2 := [:block2812be9cArg1 | 
    | block2812be9cValue0 block2812be9cValue1 block2812be9cValue2 block2812be9cValue3 block2812be9cValue4 block2812be9cValue5 block2812be9cValue6 block2812be9cValue7 block2812be9cValue8 |
    block2812be9cValue0 := block2812be9cArg1.
    block2812be9cValue1 := block2812be9cValue0.
    block2812be9cValue2 := XmATTACHFORM.
    (block2812be9cValue1) topAttachment: (block2812be9cValue2).
    block2812be9cValue3 := block2812be9cValue0.
    block2812be9cValue4 := XmATTACHFORM.
    (block2812be9cValue3) bottomAttachment: (block2812be9cValue4).
    block2812be9cValue5 := block2812be9cValue0.
    block2812be9cValue6 := XmATTACHFORM.
    (block2812be9cValue5) leftAttachment: (block2812be9cValue6).
    block2812be9cValue7 := XmATTACHFORM.
    block2812be9cValue8 := (block2812be9cValue0) rightAttachment: (block2812be9cValue7).
    block2812be9cValue8
].
            recoveredPC := 1192.
        ].
        recoveredStep = 1192 ifTrue: [
            recoveredPC := 1232.
        ].
        recoveredStep = 1232 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1237.
        ].
        recoveredStep = 1237 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1240.
        ].
        recoveredStep = 1240 ifTrue: [
            recoveredStack2 := [:block2812bec0Arg1 | 
    | block2812bec0Value0 block2812bec0Value1 block2812bec0Value2 block2812bec0Value3 block2812bec0Value4 block2812bec0Value5 block2812bec0Value6 block2812bec0Value7 block2812bec0Value8 block2812bec0Value9 block2812bec0Value10 block2812bec0Value11 block2812bec0Value12 |
    block2812bec0Value0 := block2812bec0Arg1.
    block2812bec0Value1 := block2812bec0Value0.
    block2812bec0Value2 := XmATTACHFORM.
    (block2812bec0Value1) topAttachment: (block2812bec0Value2).
    block2812bec0Value3 := block2812bec0Value0.
    (block2812bec0Value3) topOffset: (0).
    block2812bec0Value4 := block2812bec0Value0.
    block2812bec0Value5 := XmATTACHFORM.
    (block2812bec0Value4) bottomAttachment: (block2812bec0Value5).
    block2812bec0Value6 := block2812bec0Value0.
    (block2812bec0Value6) bottomOffset: (0).
    block2812bec0Value7 := block2812bec0Value0.
    block2812bec0Value8 := XmATTACHFORM.
    (block2812bec0Value7) leftAttachment: (block2812bec0Value8).
    block2812bec0Value9 := block2812bec0Value0.
    (block2812bec0Value9) leftOffset: (0).
    block2812bec0Value10 := block2812bec0Value0.
    block2812bec0Value11 := XmATTACHFORM.
    (block2812bec0Value10) rightAttachment: (block2812bec0Value11).
    block2812bec0Value12 := (block2812bec0Value0) rightOffset: (0).
    block2812bec0Value12
].
            recoveredPC := 1244.
        ].
        recoveredStep = 1244 ifTrue: [
            recoveredPC := 1308.
        ].
        recoveredStep = 1308 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1313.
        ].
        recoveredStep = 1313 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1316.
        ].
        recoveredStep = 1316 ifTrue: [
            recoveredStack2 := [:block2812bee4Arg1 | 
    | block2812bee4Value0 block2812bee4Value1 block2812bee4Value2 block2812bee4Value3 block2812bee4Value4 block2812bee4Value5 block2812bee4Value6 block2812bee4Value7 block2812bee4Value8 block2812bee4Value9 block2812bee4Value10 block2812bee4Value11 block2812bee4Value12 |
    block2812bee4Value0 := block2812bee4Arg1.
    block2812bee4Value1 := block2812bee4Value0.
    block2812bee4Value2 := XmATTACHFORM.
    (block2812bee4Value1) topAttachment: (block2812bee4Value2).
    block2812bee4Value3 := block2812bee4Value0.
    (block2812bee4Value3) topOffset: (0).
    block2812bee4Value4 := block2812bee4Value0.
    block2812bee4Value5 := XmATTACHFORM.
    (block2812bee4Value4) bottomAttachment: (block2812bee4Value5).
    block2812bee4Value6 := block2812bee4Value0.
    (block2812bee4Value6) bottomOffset: (0).
    block2812bee4Value7 := block2812bee4Value0.
    block2812bee4Value8 := XmATTACHFORM.
    (block2812bee4Value7) leftAttachment: (block2812bee4Value8).
    block2812bee4Value9 := block2812bee4Value0.
    (block2812bee4Value9) leftOffset: (0).
    block2812bee4Value10 := block2812bee4Value0.
    block2812bee4Value11 := XmATTACHFORM.
    (block2812bee4Value10) rightAttachment: (block2812bee4Value11).
    block2812bee4Value12 := (block2812bee4Value0) rightOffset: (0).
    block2812bee4Value12
].
            recoveredPC := 1320.
        ].
        recoveredStep = 1320 ifTrue: [
            recoveredPC := 1384.
        ].
        recoveredStep = 1384 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1389.
        ].
        recoveredStep = 1389 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1392.
        ].
        recoveredStep = 1392 ifTrue: [
            recoveredStack2 := [:block2812bf08Arg1 | 
    | block2812bf08Value0 block2812bf08Value1 block2812bf08Value2 block2812bf08Value3 block2812bf08Value4 block2812bf08Value5 block2812bf08Value6 block2812bf08Value7 block2812bf08Value8 block2812bf08Value9 block2812bf08Value10 block2812bf08Value11 block2812bf08Value12 |
    block2812bf08Value0 := block2812bf08Arg1.
    block2812bf08Value1 := block2812bf08Value0.
    block2812bf08Value2 := XmATTACHFORM.
    (block2812bf08Value1) topAttachment: (block2812bf08Value2).
    block2812bf08Value3 := block2812bf08Value0.
    (block2812bf08Value3) topOffset: (0).
    block2812bf08Value4 := block2812bf08Value0.
    block2812bf08Value5 := XmATTACHFORM.
    (block2812bf08Value4) bottomAttachment: (block2812bf08Value5).
    block2812bf08Value6 := block2812bf08Value0.
    (block2812bf08Value6) bottomOffset: (0).
    block2812bf08Value7 := block2812bf08Value0.
    block2812bf08Value8 := XmATTACHFORM.
    (block2812bf08Value7) leftAttachment: (block2812bf08Value8).
    block2812bf08Value9 := block2812bf08Value0.
    (block2812bf08Value9) leftOffset: (0).
    block2812bf08Value10 := block2812bf08Value0.
    block2812bf08Value11 := XmATTACHFORM.
    (block2812bf08Value10) rightAttachment: (block2812bf08Value11).
    block2812bf08Value12 := (block2812bf08Value0) rightOffset: (0).
    block2812bf08Value12
].
            recoveredPC := 1396.
        ].
        recoveredStep = 1396 ifTrue: [
            recoveredPC := 1460.
        ].
        recoveredStep = 1460 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1465.
        ].
        recoveredStep = 1465 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 1468.
        ].
        recoveredStep = 1468 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1469.
        ].
        recoveredStep = 1469 ifTrue: [
            recoveredStack3 := XmNfocusCallback.
            recoveredPC := 1472.
        ].
        recoveredStep = 1472 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 1473.
        ].
        recoveredStep = 1473 ifTrue: [
            recoveredStack5 := 'topShellFocus:clientData:callData:'.
            recoveredPC := 1476.
        ].
        recoveredStep = 1476 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 1477.
        ].
        recoveredStep = 1477 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredPC := 1481.
        ].
        recoveredStep = 1481 ifTrue: [
            recoveredStack2 := XmNresizeCallback.
            recoveredPC := 1484.
        ].
        recoveredStep = 1484 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1485.
        ].
        recoveredStep = 1485 ifTrue: [
            recoveredStack4 := 'shellResizeCallback:clientData:callData:'.
            recoveredPC := 1488.
        ].
        recoveredStep = 1488 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1489.
        ].
        recoveredStep = 1489 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1493.
        ].
        recoveredStep = 1493 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 1496.
        ].
        recoveredStep = 1496 ifTrue: [
            recoveredStack2 := XmNetasSingleSelectionCallback.
            recoveredPC := 1500.
        ].
        recoveredStep = 1500 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1501.
        ].
        recoveredStep = 1501 ifTrue: [
            recoveredStack4 := 'toolbarSelection:clientData:callData:'.
            recoveredPC := 1504.
        ].
        recoveredStep = 1504 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1505.
        ].
        recoveredStep = 1505 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1509.
        ].
        recoveredStep = 1509 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1512.
        ].
        recoveredStep = 1512 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1513.
        ].
        recoveredStep = 1513 ifTrue: [
            recoveredStack3 := XmNextendedSelectionCallback.
            recoveredPC := 1516.
        ].
        recoveredStep = 1516 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 1517.
        ].
        recoveredStep = 1517 ifTrue: [
            recoveredStack5 := 'categoryListSingleSelection:clientData:callData:'.
            recoveredPC := 1520.
        ].
        recoveredStep = 1520 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 1521.
        ].
        recoveredStep = 1521 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1525.
        ].
        recoveredStep = 1525 ifTrue: [
            recoveredStack3 := XmNbeginEditCallback.
            recoveredPC := 1528.
        ].
        recoveredStep = 1528 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 1529.
        ].
        recoveredStep = 1529 ifTrue: [
            recoveredStack5 := 'categoryListBeginEdit:clientData:callData:'.
            recoveredPC := 1532.
        ].
        recoveredStep = 1532 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 1533.
        ].
        recoveredStep = 1533 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1537.
        ].
        recoveredStep = 1537 ifTrue: [
            recoveredStack3 := XmNendEditCallback.
            recoveredPC := 1540.
        ].
        recoveredStep = 1540 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 1541.
        ].
        recoveredStep = 1541 ifTrue: [
            recoveredStack5 := 'categoryListEndEdit:clientData:callData:'.
            recoveredPC := 1544.
        ].
        recoveredStep = 1544 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 1545.
        ].
        recoveredStep = 1545 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredPC := 1549.
        ].
        recoveredStep = 1549 ifTrue: [
            recoveredStack2 := XmNdefaultActionCallback.
            recoveredPC := 1552.
        ].
        recoveredStep = 1552 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1553.
        ].
        recoveredStep = 1553 ifTrue: [
            recoveredStack4 := 'categoryListDefaultActionCallback:clientData:callData:'.
            recoveredPC := 1556.
        ].
        recoveredStep = 1556 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1557.
        ].
        recoveredStep = 1557 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1561.
        ].
        recoveredStep = 1561 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1564.
        ].
        recoveredStep = 1564 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 1568.
        ].
        recoveredStep = 1568 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1569.
        ].
        recoveredStep = 1569 ifTrue: [
            recoveredStack4 := 'itemListSingleSelection:clientData:callData:'.
            recoveredPC := 1572.
        ].
        recoveredStep = 1572 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1573.
        ].
        recoveredStep = 1573 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1577.
        ].
        recoveredStep = 1577 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1580.
        ].
        recoveredStep = 1580 ifTrue: [
            recoveredStack2 := XmNextendedSelectionCallback.
            recoveredPC := 1584.
        ].
        recoveredStep = 1584 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1585.
        ].
        recoveredStep = 1585 ifTrue: [
            recoveredStack4 := 'itemListExtendedSelection:clientData:callData:'.
            recoveredPC := 1588.
        ].
        recoveredStep = 1588 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1589.
        ].
        recoveredStep = 1589 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1593.
        ].
        recoveredStep = 1593 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1596.
        ].
        recoveredStep = 1596 ifTrue: [
            recoveredStack2 := XmNexposeCallback.
            recoveredPC := 1600.
        ].
        recoveredStep = 1600 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1601.
        ].
        recoveredStep = 1601 ifTrue: [
            recoveredStack4 := 'exposePreview:clientData:callData:'.
            recoveredPC := 1604.
        ].
        recoveredStep = 1604 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1605.
        ].
        recoveredStep = 1605 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1609.
        ].
        recoveredStep = 1609 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1612.
        ].
        recoveredStep = 1612 ifTrue: [
            recoveredStack2 := widgetDictionary.
            recoveredPC := 1614.
        ].
        recoveredStep = 1614 ifTrue: [
            recoveredStack3 := recoveredLocal19.
            recoveredPC := 1617.
        ].
        recoveredStep = 1617 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1621.
        ].
        recoveredStep = 1621 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

