"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000468; bytecode file offset 0x8ffcfc"
!EtasDatabaseWidget methodsFor: 'recovered'!
initializeSelection
    ^self
! !

"ASDBase.ic method 0x20008360; bytecode file offset 0x908be4"
!EtasDatabaseWidget methodsFor: 'recovered'!
checkImportAllowed
    | recoveredValue0 |
    recoveredValue0 := (self) validDatabaseExists.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20028aa4; bytecode file offset 0x934580"
!EtasDatabaseWidget methodsFor: 'recovered'!
folderSelection
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbWidgetOptions.
    recoveredValue1 := (recoveredValue0) folderSelection.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20028d34; bytecode file offset 0x934580"
!EtasDatabaseWidget methodsFor: 'recovered'!
checkExportAllowed
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetController.
    recoveredValue1 := (recoveredValue0) checkExportAllowed.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200296a4; bytecode file offset 0x934580"
!EtasDatabaseWidget methodsFor: 'recovered'!
cancelEdit
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) classList.
    recoveredValue1 := (recoveredValue0) cancelEdit.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002bbc4; bytecode file offset 0x934580"
!EtasDatabaseWidget methodsFor: 'recovered'!
locationString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetController.
    recoveredValue1 := (recoveredValue0) locationString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002da14; bytecode file offset 0x934580"
!EtasDatabaseWidget methodsFor: 'recovered'!
addHoverSupport
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) classList.
    recoveredValue1 := (recoveredValue0) addHoverSupport.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f494; bytecode file offset 0x934580"
!EtasDatabaseWidget methodsFor: 'recovered'!
filterListIsPossible
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) classList.
    recoveredValue1 := (recoveredValue0) hasFocus.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002fc44; bytecode file offset 0x934580"
!EtasDatabaseWidget methodsFor: 'recovered'!
isEditingInProgress
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) classList.
    recoveredValue1 := (recoveredValue0) isEditingInProgress.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030ce4; bytecode file offset 0x934580"
!EtasDatabaseWidget methodsFor: 'recovered'!
librarySelection
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbWidgetOptions.
    recoveredValue1 := (recoveredValue0) librarySelection.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030d34; bytecode file offset 0x934580"
!EtasDatabaseWidget methodsFor: 'recovered'!
storeSortedItems
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbWidgetOptions.
    recoveredValue1 := (recoveredValue0) storeSortedItems.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031714; bytecode file offset 0x934580"
!EtasDatabaseWidget methodsFor: 'recovered'!
findReplaceQueryIsPossible
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetController.
    recoveredValue1 := (recoveredValue0) findReplaceQueryIsPossible.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035634; bytecode file offset 0x934580"
!EtasDatabaseWidget methodsFor: 'recovered'!
validDatabaseExists
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetController.
    recoveredValue1 := (recoveredValue0) validDatabaseExists.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003c678; bytecode file offset 0x938f2c"
!EtasDatabaseWidget methodsFor: 'recovered'!
setNoUpdateByFocus
    lastSelectedLibrary := self.
    ^self
! !

"ASDBase.ic method 0x20042490; bytecode file offset 0x93ed44"
!EtasDatabaseWidget methodsFor: 'recovered'!
isNoUpdateByFocus
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := lastSelectedLibrary.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20042834; bytecode file offset 0x93f170"
!EtasDatabaseWidget methodsFor: 'recovered'!
globalIdForRootItem
    | recoveredValue0 |
    recoveredValue0 := (#(255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255)) asByteArray.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004380c; bytecode file offset 0x9451f8"
!EtasDatabaseWidget methodsFor: 'recovered'!
itemListLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('classLabel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043cfc; bytecode file offset 0x9451f8"
!EtasDatabaseWidget methodsFor: 'recovered'!
buttonItemList
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('buttonItemList').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20045dcc; bytecode file offset 0x9451f8"
!EtasDatabaseWidget methodsFor: 'recovered'!
classList
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('classList').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20045e5c; bytecode file offset 0x9451f8"
!EtasDatabaseWidget methodsFor: 'recovered'!
itemList
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('classList').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004622c; bytecode file offset 0x9451f8"
!EtasDatabaseWidget methodsFor: 'recovered'!
outerCommentForm
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('outerCommentForm').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200464ec; bytecode file offset 0x9451f8"
!EtasDatabaseWidget methodsFor: 'recovered'!
outerItemForm
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('outerItemForm').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200468bc; bytecode file offset 0x9451f8"
!EtasDatabaseWidget methodsFor: 'recovered'!
scrolledItemComment
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('scrolledItemCommentText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004692c; bytecode file offset 0x9451f8"
!EtasDatabaseWidget methodsFor: 'recovered'!
scrolledItemList
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('scrolledClassList').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004739c; bytecode file offset 0x9451f8"
!EtasDatabaseWidget methodsFor: 'recovered'!
horSplit
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('horSplit').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200477ac; bytecode file offset 0x9451f8"
!EtasDatabaseWidget methodsFor: 'recovered'!
buttonItemComment
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('buttonItemComment').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200478cc; bytecode file offset 0x9451f8"
!EtasDatabaseWidget methodsFor: 'recovered'!
itemCommentLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('itemCommentLabel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200479ac; bytecode file offset 0x9451f8"
!EtasDatabaseWidget methodsFor: 'recovered'!
itemCommentText
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('itemCommentText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20049144; bytecode file offset 0x9459f8"
!EtasDatabaseWidget methodsFor: 'recovered'!
clearNoUpdateByFocus
    lastSelectedLibrary := nil.
    ^self
! !

"ASDBase.ic method 0x2004f788; bytecode file offset 0x94d048"
!EtasDatabaseWidget methodsFor: 'recovered'!
initLabels
    (self) updateFonts.
    ^self
! !

"ASDBase.ic method 0x20050ca0; bytecode file offset 0x94d57c"
!EtasDatabaseWidget methodsFor: 'recovered'!
menuEditSelectAllFocus
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) classList.
    recoveredValue1 := (recoveredValue0) selectAllItemsNotify: (true).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20064ab4; bytecode file offset 0x961970"
!EtasDatabaseWidget methodsFor: 'recovered'!
setFocusItemComment
    | recoveredValue0 |
    recoveredValue0 := (self) itemCommentText.
    (recoveredValue0) setInputFocus.
    ^self
! !

"ASDBase.ic method 0x2006f0e0; bytecode file offset 0x96bc1c"
!EtasDatabaseWidget methodsFor: 'recovered'!
listSettings
    | recoveredValue0 |
    recoveredValue0 := listSettings.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f8d8; bytecode file offset 0x96c1f4"
!EtasDatabaseWidget methodsFor: 'recovered'!
dbWidgetOptions
    | recoveredValue0 |
    recoveredValue0 := dbWidgetOptions.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007513c; bytecode file offset 0x9757c8"
!EtasDatabaseWidget methodsFor: 'recovered'!
isSelectAllPossible
    ^true
! !

"ASDBase.ic method 0x20075734; bytecode file offset 0x9757c8"
!EtasDatabaseWidget methodsFor: 'recovered'!
isDatabaseWidget
    ^true
! !

"ASDBase.ic method 0x2007583c; bytecode file offset 0x9757c8"
!EtasDatabaseWidget methodsFor: 'recovered'!
promptExportOption
    ^true
! !

"ASDBase.ic method 0x20084588; bytecode file offset 0x981ca4"
!EtasDatabaseWidget methodsFor: 'recovered'!
selectClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) selectedItem: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2009fc48; bytecode file offset 0x99c9e0"
!EtasDatabaseWidget methodsFor: 'recovered'!
switchVisibilityItemComment
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) scrolledItemComment.
    recoveredValue1 := (recoveredValue0) isManaged.
    (self) visibilityItemComment: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009ffcc; bytecode file offset 0x99c9e0"
!EtasDatabaseWidget methodsFor: 'recovered'!
switchVisibilityItemList
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) scrolledItemList.
    recoveredValue1 := (recoveredValue0) isManaged.
    (self) visibilityItemList: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bcc98; bytecode file offset 0x9b970c"
!EtasDatabaseWidget methodsFor: 'recovered'!
bufferedItems: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) getPasteBufferDictionary.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) pasteBufferItemString.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c5874; bytecode file offset 0x9c22c8"
!EtasDatabaseWidget methodsFor: 'recovered'!
listSettings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    listSettings := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5d80; bytecode file offset 0x9c2804"
!EtasDatabaseWidget methodsFor: 'recovered'!
dbWidgetOptions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dbWidgetOptions := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6548; bytecode file offset 0x9c3164"
!EtasDatabaseWidget methodsFor: 'recovered'!
deleteItemCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    deleteItemCallback := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6ac4; bytecode file offset 0x9c3470"
!EtasDatabaseWidget methodsFor: 'recovered'!
importItemCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    importItemCallback := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6c20; bytecode file offset 0x9c36ec"
!EtasDatabaseWidget methodsFor: 'recovered'!
selectItemCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectItemCallback := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6fe4; bytecode file offset 0x9c38d8"
!EtasDatabaseWidget methodsFor: 'recovered'!
widgetVisibilityCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    widgetVisibilityCallback := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c9e58; bytecode file offset 0x9c671c"
!EtasDatabaseWidget methodsFor: 'recovered'!
buttonVisibilityActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) value.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200cc6cc; bytecode file offset 0x9c8f90"
!EtasDatabaseWidget methodsFor: 'recovered'!
focusWidgets
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) itemList.
    recoveredValue2 := (self) itemCommentText.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d0794; bytecode file offset 0x9cd3a0"
!EtasDatabaseWidget methodsFor: 'recovered'!
isRenamePossible
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kk') == ('Call_54173').
    recoveredValue1 := (self) widgetController.
    recoveredValue2 := (recoveredValue1) isRenamePossible.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d4520; bytecode file offset 0x9d0e74"
!EtasDatabaseWidget methodsFor: 'recovered'!
bufferedItems
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) getPasteBufferDictionary.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) pasteBufferItemString.
    recoveredValue3 := [].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d4d58; bytecode file offset 0x9d1654"
!EtasDatabaseWidget methodsFor: 'recovered'!
unmanageCloseButtons
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) buttonItemList.
    (recoveredValue0) unmanageChild.
    recoveredValue1 := (self) buttonItemComment.
    (recoveredValue1) unmanageChild.
    ^self
! !

"ASDBase.ic method 0x200f2234; bytecode file offset 0x9eeb00"
!EtasDatabaseWidget methodsFor: 'recovered'!
menuUpdateASAP2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := [].
    recoveredValue1 := (self) widgetController.
    recoveredValue2 := (recoveredValue1) mainController.
    recoveredValue3 := (recoveredValue2) class.
    recoveredValue4 := (recoveredValue3) asap2Type.
    recoveredValue5 := (self) menuUpdateASAP2DependentWidget: (recoveredValue0) fileType: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200f97f4; bytecode file offset 0x9f60b4"
!EtasDatabaseWidget methodsFor: 'recovered'!
pasteIsEnabled
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
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
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) pasteIsPossible.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20102be0; bytecode file offset 0x9ff4b4"
!EtasDatabaseWidget methodsFor: 'recovered'!
initFocusWrapper
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBFocusBorderController.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) borderWidth: (3).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20106830; bytecode file offset 0xa030ec"
!EtasDatabaseWidget methodsFor: 'recovered'!
selectedItem
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectedItemKey.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c62acArg1 | 
    nil
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObjectIfUndefined: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20107e1c; bytecode file offset 0xa046f0"
!EtasDatabaseWidget methodsFor: 'recovered'!
expandCollapseListIsPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) classList.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasFocus.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) validDatabaseExists.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2010e754; bytecode file offset 0xa0b010"
!EtasDatabaseWidget methodsFor: 'recovered'!
updateForObserver: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isComponentOrFolder.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) updateItem: (recoveredStack2) keepSelection: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201181c4; bytecode file offset 0xa14cb0"
!EtasDatabaseWidget methodsFor: 'recovered'!
isBecomeAnotherItemPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) classList.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasFocus.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBecomeAnotherItemPossible.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201181dc; bytecode file offset 0xa14cb0"
!EtasDatabaseWidget methodsFor: 'recovered'!
editLayoutAllowed
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) classList.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasFocus.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) editLayoutAllowed.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201181f4; bytecode file offset 0xa14cb0"
!EtasDatabaseWidget methodsFor: 'recovered'!
disallowImportAllowed
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) classList.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasFocus.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) disallowImportAllowed.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20118224; bytecode file offset 0xa14cb0"
!EtasDatabaseWidget methodsFor: 'recovered'!
convertToNewIntegerTypesAllowed
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) classList.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasFocus.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) convertToNewIntegerTypesAllowed.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20118254; bytecode file offset 0xa14cb0"
!EtasDatabaseWidget methodsFor: 'recovered'!
copyIsPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) classList.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasFocus.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyIsPossible.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011826c; bytecode file offset 0xa14cb0"
!EtasDatabaseWidget methodsFor: 'recovered'!
replaceReferencesPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) classList.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasFocus.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) replaceReferencesPossible.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011829c; bytecode file offset 0xa14cb0"
!EtasDatabaseWidget methodsFor: 'recovered'!
reproduceAsPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) classList.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasFocus.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) reproduceAsPossible.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201182b4; bytecode file offset 0xa14cb0"
!EtasDatabaseWidget methodsFor: 'recovered'!
addFolderAllowed
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) classList.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasFocus.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) addFolderAllowed.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201182cc; bytecode file offset 0xa14cb0"
!EtasDatabaseWidget methodsFor: 'recovered'!
isDiffComparePossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) classList.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasFocus.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDiffComparePossible.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201182e4; bytecode file offset 0xa14cb0"
!EtasDatabaseWidget methodsFor: 'recovered'!
isConvertToNewIntegerTypesFlatPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) classList.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasFocus.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isConvertToNewIntegerTypesFlatPossible.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201182fc; bytecode file offset 0xa14cb0"
!EtasDatabaseWidget methodsFor: 'recovered'!
changeFlexibleClassLayoutAllowed
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) classList.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasFocus.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) changeFlexibleClassLayoutAllowed.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011832c; bytecode file offset 0xa14cb0"
!EtasDatabaseWidget methodsFor: 'recovered'!
isConvertToNewIntegerTypesRecursivPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) classList.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasFocus.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isConvertToNewIntegerTypesRecursivPossible.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20118344; bytecode file offset 0xa14cb0"
!EtasDatabaseWidget methodsFor: 'recovered'!
changeAccessRightsAllowed
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) classList.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasFocus.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) changeAccessRightsAllowed.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011835c; bytecode file offset 0xa14cb0"
!EtasDatabaseWidget methodsFor: 'recovered'!
makeActiveProjectAllowed
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) classList.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasFocus.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeActiveProjectAllowed.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20118374; bytecode file offset 0xa14cb0"
!EtasDatabaseWidget methodsFor: 'recovered'!
experimentPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) classList.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasFocus.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) experimentPossible.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011838c; bytecode file offset 0xa14cb0"
!EtasDatabaseWidget methodsFor: 'recovered'!
editPasswordAllowed
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) classList.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasFocus.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) editPasswordAllowed.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201183a4; bytecode file offset 0xa14cb0"
!EtasDatabaseWidget methodsFor: 'recovered'!
showReferencesPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) classList.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasFocus.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) showReferencesPossible.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201183bc; bytecode file offset 0xa14cb0"
!EtasDatabaseWidget methodsFor: 'recovered'!
selectedFolders
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) classList.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasFocus.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedFolders.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201183d4; bytecode file offset 0xa14cb0"
!EtasDatabaseWidget methodsFor: 'recovered'!
isEditPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) classList.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasFocus.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEditPossible.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201183ec; bytecode file offset 0xa14cb0"
!EtasDatabaseWidget methodsFor: 'recovered'!
cutIsPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) classList.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasFocus.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) cutIsPossible.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011b198; bytecode file offset 0xa17a8c"
!EtasDatabaseWidget methodsFor: 'recovered'!
additionalTabGroup
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) classList.
    (recoveredValue0) addTabGroup.
    recoveredValue1 := (self) horSplit.
    (recoveredValue1) addTabGroup.
    recoveredValue2 := (self) itemCommentText.
    (recoveredValue2) addTabGroup.
    ^self
! !

"ASDBase.ic method 0x2011c2e0; bytecode file offset 0xa18ba0"
!EtasDatabaseWidget methodsFor: 'recovered'!
getPasteBufferDictionary
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) pasteBuffer.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) initializePasteBufferDictionary.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) pasteBuffer.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012e33c; bytecode file offset 0xa2ac10"
!EtasDatabaseWidget methodsFor: 'recovered'!
menuImportFromDirectory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mainController.
    recoveredValue1 := [
    | recoveredBlock5Value0 |
    recoveredBlock5Value0 := (self) performImportFromDirectory.
    recoveredBlock5Value0
].
    (recoveredValue0) suppressIdleTimerWhile: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2012e350; bytecode file offset 0xa2ac10"
!EtasDatabaseWidget methodsFor: 'recovered'!
menuItemImport
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mainController.
    recoveredValue1 := [
    | recoveredBlock5Value0 |
    recoveredBlock5Value0 := (self) performItemImport.
    recoveredBlock5Value0
].
    (recoveredValue0) suppressIdleTimerWhile: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2012eed8; bytecode file offset 0xa2b798"
!EtasDatabaseWidget methodsFor: 'recovered'!
menuCursorRight
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) horSplit.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFocus.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) horSplit.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 5.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) movePosition: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012ef00; bytecode file offset 0xa2b7c0"
!EtasDatabaseWidget methodsFor: 'recovered'!
menuCursorLeft
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) horSplit.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFocus.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) horSplit.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := -5.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) movePosition: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013c480; bytecode file offset 0xa38d5c"
!EtasDatabaseWidget methodsFor: 'recovered'!
menuReadAsap2Item
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280cb82cArg1 | 
    | block280cb82cValue0 block280cb82cValue1 block280cb82cValue2 |
    block280cb82cValue0 := block280cb82cArg1.
    block280cb82cValue1 := (block280cb82cValue0) isMeasurementCatalog.
    block280cb82cValue2 := (block280cb82cValue1) not.
    block280cb82cValue2
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := EtDoesNotContainAsap2File.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) menuReadAsap2ItemCheckModParBlock: (recoveredStack1) checkModParMessageBlock: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013c498; bytecode file offset 0xa38d5c"
!EtasDatabaseWidget methodsFor: 'recovered'!
menuAddAsap2Item
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280cb850Arg1 | 
    | block280cb850Value0 block280cb850Value1 block280cb850Value2 |
    block280cb850Value0 := block280cb850Arg1.
    block280cb850Value1 := (block280cb850Value0) isMeasurementCatalog.
    block280cb850Value2 := (block280cb850Value1) not.
    block280cb850Value2
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := EtDoesNotContainAsap2File.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) menuReadAsap2ItemCheckModParBlock: (recoveredStack1) checkModParMessageBlock: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013c790; bytecode file offset 0xa3905c"
!EtasDatabaseWidget methodsFor: 'recovered'!
initializePasteBufferDictionary
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Kk') == ('Call_81435').
    recoveredValue1 := (self) class.
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    (recoveredValue1) pasteBuffer: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2014a68c; bytecode file offset 0xa46f54"
!EtasDatabaseWidget methodsFor: 'recovered'!
runImportItemCallback: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EtasDatabaseWidgetItemCallbackData.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) items: (recoveredValue3).
    recoveredValue4 := EtasImportItemCallback.
    recoveredValue5 := recoveredLocal1.
    (self) callCallbacks: (recoveredValue4) callData: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x201517a4; bytecode file offset 0xa4e088"
!EtasDatabaseWidget methodsFor: 'recovered'!
startObserving
    | recoveredValue0 recoveredValue1 |
    super startObserving.
    recoveredValue0 := EtasDatamodelObserver.
    (recoveredValue0) addDependent: (self).
    recoveredValue1 := SGDatabaseAccess.
    (recoveredValue1) addDependent: (self).
    ^self
! !

"ASDBase.ic method 0x201517c0; bytecode file offset 0xa4e088"
!EtasDatabaseWidget methodsFor: 'recovered'!
stopObserving
    | recoveredValue0 recoveredValue1 |
    super stopObserving.
    recoveredValue0 := EtasDatamodelObserver.
    (recoveredValue0) removeDependent: (self).
    recoveredValue1 := SGDatabaseAccess.
    (recoveredValue1) removeDependent: (self).
    ^self
! !

"ASDBase.ic method 0x20151c10; bytecode file offset 0xa4e4d8"
!EtasDatabaseWidget methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    observedItems := recoveredValue1.
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    localChildrenDict := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2015acb0; bytecode file offset 0xa57578"
!EtasDatabaseWidget methodsFor: 'recovered'!
hasMaskedChildren: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbWidgetOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) maskClassForLibs.
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
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFolderChildren.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasChildrenForHierarchicalViewMaskLibs: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015dca4; bytecode file offset 0xa5a564"
!EtasDatabaseWidget methodsFor: 'recovered'!
deleteItemCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := deleteItemCallback.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) deleteItemCallback: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := deleteItemCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015dd54; bytecode file offset 0xa5a63c"
!EtasDatabaseWidget methodsFor: 'recovered'!
importItemCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := importItemCallback.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) importItemCallback: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := importItemCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015de04; bytecode file offset 0xa5a6c4"
!EtasDatabaseWidget methodsFor: 'recovered'!
selectItemCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectItemCallback.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) selectItemCallback: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := selectItemCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015de44; bytecode file offset 0xa5a718"
!EtasDatabaseWidget methodsFor: 'recovered'!
widgetVisibilityCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widgetVisibilityCallback.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) widgetVisibilityCallback: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := widgetVisibilityCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20160d5c; bytecode file offset 0xa5d628"
!EtasDatabaseWidget methodsFor: 'recovered'!
setFocusItemList
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) classList.
    (recoveredValue0) setInputFocus.
    recoveredValue1 := ('Rnz') == ('EHI_80195').
    (self) broadcast: ('setValidWidget:') with: (self).
    ^self
! !

"ASDBase.ic method 0x20164af8; bytecode file offset 0xa613c8"
!EtasDatabaseWidget methodsFor: 'recovered'!
makeVisibleItem: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ('ASCETLINKS') = ('PROD105089').
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := RBDummyProgressReporter.
    recoveredValue5 := (recoveredValue4) new.
    recoveredValue6 := (self) makeVisibleItems: (recoveredValue3) progressDialog: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2017027c; bytecode file offset 0xa6cb44"
!EtasDatabaseWidget methodsFor: 'recovered'!
doDefaultSelection
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('hw') == ('call85510').
    recoveredValue1 := (self) classList.
    (recoveredValue1) setInputFocus.
    recoveredValue2 := (self) classList.
    (recoveredValue2) selectPos: (1) notify: (true).
    ^self
! !

"ASDBase.ic method 0x2017e3d4; bytecode file offset 0xa7ac94"
!EtasDatabaseWidget methodsFor: 'recovered'!
hasChildrenForHierarchicalViewMaskLibs: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) storeSortedItems.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasChildrenForHierarchicalViewMaskLibs: (recoveredStack1).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) updateLocalChildrenForHierarchicalViewMaskLibs: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018776c; bytecode file offset 0xa8402c"
!EtasDatabaseWidget methodsFor: 'recovered'!
pasteItems: recoveredArg1 parent: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) moveObjects: (recoveredStack1) toParent: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) updateFolderList.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018877c; bytecode file offset 0xa8503c"
!EtasDatabaseWidget methodsFor: 'recovered'!
receivedEvent: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) itemCommentText.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            super receivedEvent: (recoveredStack1) clientData: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018d300; bytecode file offset 0xa89bd0"
!EtasDatabaseWidget methodsFor: 'recovered'!
initFonts
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGUserInterfaceSettings.
    recoveredValue1 := (self) primaryWidget.
    (recoveredValue0) updateLabelsForForm: (recoveredValue1).
    recoveredValue2 := SGUserInterfaceSettings.
    recoveredValue3 := (self) classList.
    (recoveredValue2) updateFont: (recoveredValue3).
    recoveredValue4 := SGUserInterfaceSettings.
    recoveredValue5 := (self) itemCommentText.
    (recoveredValue4) updateLabelFont: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2018edfc; bytecode file offset 0xa8b6c4"
!EtasDatabaseWidget methodsFor: 'recovered'!
addChildrenAllowed
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) classList.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasFocus.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) classList.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEditingInProgress.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) addChildrenAllowed.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20198238; bytecode file offset 0xa94b00"
!EtasDatabaseWidget methodsFor: 'recovered'!
destroy: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) horSplit.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) relPosition.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) horSplit.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) relPosition.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 100.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) rounded.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) splitBarPosition: (recoveredStack1).
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

"ASDBase.ic method 0x20199ae0; bytecode file offset 0xa963bc"
!EtasDatabaseWidget methodsFor: 'recovered'!
isClassListEditPossible
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRenamePossible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedObjects.
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
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a0d30; bytecode file offset 0xa9d5fc"
!EtasDatabaseWidget methodsFor: 'recovered'!
editNotesPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_1001819'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) classList.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasFocus.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) editNotesPossible.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a8e28; bytecode file offset 0xaa56e0"
!EtasDatabaseWidget methodsFor: 'recovered'!
scrolledClassListExpose: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := firstExpose.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            firstExpose := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := firstExpose.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            firstExpose := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) initializeSelection.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201afadc; bytecode file offset 0xaac3ac"
!EtasDatabaseWidget methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 |
    (self) initLabels.
    (self) initFonts.
    recoveredValue0 := (self) classList.
    (recoveredValue0) itemHeight: (nil).
    (self) initFocusWrapper.
    (self) updateItemNameWidgetsFor: (nil).
    (self) additionalTabGroup.
    ^self
! !

"ASDBase.ic method 0x201b0ab8; bytecode file offset 0xaad384"
!EtasDatabaseWidget methodsFor: 'recovered'!
keyESCPressed
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) bufferedItems.
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
            recoveredStack0 := (recoveredStack0) bufferedItems.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) keyESCPressed.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'updateToolbar'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) broadcast: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) refresh.
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

"ASDBase.ic method 0x201b129c; bytecode file offset 0xaadb60"
!EtasDatabaseWidget methodsFor: 'recovered'!
menuItemExport
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isToSaveGlobal.
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
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock14Value0 |
    recoveredBlock14Value0 := (self) performItemExport.
    recoveredBlock14Value0
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) suppressIdleTimerWhile: (recoveredStack1).
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

"ASDBase.ic method 0x201b7178; bytecode file offset 0xab3a3c"
!EtasDatabaseWidget methodsFor: 'recovered'!
itemListChildren: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) folderSelection.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 'sortedFolderKeys'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) childrenCallData: (recoveredStack1) childrenSelector: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'sortedChildrenKeys'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) childrenCallData: (recoveredStack1) childrenSelector: (recoveredStack2).
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

"ASDBase.ic method 0x201be088; bytecode file offset 0xaba94c"
!EtasDatabaseWidget methodsFor: 'recovered'!
putLocalChildrenData: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRootItem.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalIdForRootItem.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalId.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := localChildrenDict.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201c9f74; bytecode file offset 0xac6848"
!EtasDatabaseWidget methodsFor: 'recovered'!
holdCurrentClassListState
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) listSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) listSettings: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) listSettings.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'dbWidget'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) classList.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) returnCurrentListState.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ce18c; bytecode file offset 0xacaa50"
!EtasDatabaseWidget methodsFor: 'recovered'!
renamedItem: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) classList.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) refreshItem: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock14Arg1 | 
    ^nil
].
    recoveredValue4 := (recoveredValue2) getObjectIfUndefined: (recoveredValue3).
    (self) updateItemNameWidgetsFor: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201d1cc8; bytecode file offset 0xace590"
!EtasDatabaseWidget methodsFor: 'recovered'!
getLocalChildrenData: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRootItem.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalIdForRootItem.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalId.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := localChildrenDict.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201d8348; bytecode file offset 0xad4c10"
!EtasDatabaseWidget methodsFor: 'recovered'!
menuClassRename
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) classList.
    (recoveredValue0) setInputFocus.
    recoveredValue1 := (self) classList.
    recoveredValue2 := (self) classList.
    recoveredValue3 := (recoveredValue2) getSelectedPos.
    recoveredValue4 := [
    ^nil
].
    recoveredValue5 := (recoveredValue3) at: (1) ifAbsent: (recoveredValue4).
    (recoveredValue1) editItemAt: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201da9f0; bytecode file offset 0xad72b4"
!EtasDatabaseWidget methodsFor: 'recovered'!
selectedItem: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItem.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) removeDependent: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            selectedItemKey := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) asRBDBReference.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            selectedItemKey := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) addDependent: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201efeb4; bytecode file offset 0xaec774"
!EtasDatabaseWidget methodsFor: 'recovered'!
hasChildrenForHierarchicalViewMaskLibs: recoveredArg1 for: recoveredArg2 withProcessDialog: recoveredArg3 fractionComplete: recoveredArg4 fractionPart: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) storeSortedItems.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasChildrenForHierarchicalViewMaskLibs: (recoveredStack1).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := recoveredArg5.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) updateLocalChildrenForHierarchicalViewMaskLibs: (recoveredStack1) for: (recoveredStack2) withProcessDialog: (recoveredStack3) fractionComplete: (recoveredStack4) fractionPart: (recoveredStack5).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f3690; bytecode file offset 0xaeff54"
!EtasDatabaseWidget methodsFor: 'recovered'!
hasFocus
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) focusWidgets.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) hasFocus.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 21].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := true.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := super hasFocus.
    ^recoveredValue2
! !

"ASDBase.ic method 0x202010a0; bytecode file offset 0xafd974"
!EtasDatabaseWidget methodsFor: 'recovered'!
getLabelForItem: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_64856'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := MainController.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) isActiveProject: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := ' <active>'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2020fae8; bytecode file offset 0xb0c3b4"
!EtasDatabaseWidget methodsFor: 'recovered'!
pasteItems: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) widgetController.
    recoveredValue1 := (recoveredValue0) selectedFolder.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := recoveredArg1.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack3 := [:block280da7a8Arg1 | 
    nil
].
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) getObjectIfUndefined: (recoveredBlock6Stack3).
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) pasteItems: (recoveredBlock6Stack1) parent: (recoveredBlock6Stack2).
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack0.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20210478; bytecode file offset 0xb0cd44"
!EtasDatabaseWidget methodsFor: 'recovered'!
selectLib: recoveredArg1 item: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedLibrary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedLibrary.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) selectItem: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) makeVisibleItem: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021e3bc; bytecode file offset 0xb1ac8c"
!EtasDatabaseWidget methodsFor: 'recovered'!
inputEvent: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) keysym.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := XKShiftL.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) keysym.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := XKShiftR.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) keysym.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := XKCapsLock.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            super inputEvent: (recoveredStack2) clientData: (recoveredStack3) callData: (recoveredStack4).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022a4e8; bytecode file offset 0xb26db8"
!EtasDatabaseWidget methodsFor: 'recovered'!
itemListExpandCollapseCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack2 := XmCRCOLLAPSE.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) triggerSelectionCallback.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) refresh.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'ASCET_SCM'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemPosition.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            itemToBeExpandedPosition := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20242dfc; bytecode file offset 0xb3f6d0"
!EtasDatabaseWidget methodsFor: 'recovered'!
updateTopFolders
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) classList.
    recoveredValue1 := (recoveredValue0) selectedItems.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) classList.
    recoveredValue3 := Array.
    recoveredValue4 := (recoveredValue3) new: (0).
    (recoveredValue2) selectedItems: (recoveredValue4).
    (self) updateFolderList.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 |
    recoveredBlock20Value0 := (self) classList.
    recoveredBlock20Value1 := recoveredBlock20Arg1.
    recoveredBlock20Value2 := (recoveredBlock20Value0) selectItem: (recoveredBlock20Value1) notify: (true).
    recoveredBlock20Value2
].
    (recoveredValue5) do: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2024f060; bytecode file offset 0xb4b928"
!EtasDatabaseWidget methodsFor: 'recovered'!
updateCurrentClassListState
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) listSettings.
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
            recoveredStack0 := (recoveredStack0) listSettings.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'dbWidget'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) updateFromListState: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024ffcc; bytecode file offset 0xb4c898"
!EtasDatabaseWidget methodsFor: 'recovered'!
menuItemEditLayoutForView: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedModifiableClass.
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasGraphicRepresentation.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
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
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) editItemLayout: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'updateGraphicRepresentation'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) broadcast: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20253040; bytecode file offset 0xb4f910"
!EtasDatabaseWidget methodsFor: 'recovered'!
expandAndSelectTopItem
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'shikhar'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EHI2007401472'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExpandedPos: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) collapseAll.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) expandPos: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) selectPos: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20254368; bytecode file offset 0xb50c44"
!EtasDatabaseWidget methodsFor: 'recovered'!
updateFolderList
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) databaseAccess.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280df1c4Arg1 | 
    | block280df1c4Value0 block280df1c4Value1 |
    block280df1c4Value0 := block280df1c4Arg1.
    block280df1c4Value1 := (block280df1c4Value0) resetChildrenCache.
    block280df1c4Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortedLibraryKeys.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [:block280df1e8Arg1 | 
    | block280df1e8Value0 block280df1e8Value1 |
    block280df1e8Value0 := block280df1e8Arg1.
    block280df1e8Value1 := (block280df1e8Value0) asRBDBReference.
    block280df1e8Value1
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) updateList: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025a4ec; bytecode file offset 0xb56db4"
!EtasDatabaseWidget methodsFor: 'recovered'!
expandClassList
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock17Value0 recoveredBlock17Value1 |
    recoveredBlock17Value0 := recoveredLocal1.
    recoveredBlock17Value1 := (recoveredBlock17Value0) expandAll.
    recoveredBlock17Value1
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) deferRedraw: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 'updateToolbar'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) broadcast: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025d75c; bytecode file offset 0xb5a030"
!EtasDatabaseWidget methodsFor: 'recovered'!
visualCallDataComponent: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280df6d4Arg1 | 
    nil
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObjectIfUndefined: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) hasChildren: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) asUndefString.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) label: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) showLoadedItem: (recoveredStack1) callData: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20263fc0; bytecode file offset 0xb60890"
!EtasDatabaseWidget methodsFor: 'recovered'!
menuClassAddFolder
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) doDBMaximumSizeCheckWithConfirmation.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedFolder.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'Folder'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFolderNamed: (recoveredStack1) parent: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) menuClassRename.
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

"ASDBase.ic method 0x2026599c; bytecode file offset 0xb62268"
!EtasDatabaseWidget methodsFor: 'recovered'!
updateListFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeVisibleItem: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) expandPos: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := nil.
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20273f14; bytecode file offset 0xb707e8"
!EtasDatabaseWidget methodsFor: 'recovered'!
updateSpecialMask: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbWidgetOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) maskClassForLibs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            recoveredStack0 := (recoveredStack0) dbWidgetOptions.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) maskClassForLibs: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) updateKeyboardControlNumber: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 38].
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20285b90; bytecode file offset 0xb82468"
!EtasDatabaseWidget methodsFor: 'recovered'!
updateFolder: recoveredArg1 selectItem: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) gc.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) classList.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) refreshItem: (recoveredStack1) inList: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) endEdit.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) selectedItems: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) selectItem: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20299be0; bytecode file offset 0xb964b8"
!EtasDatabaseWidget methodsFor: 'recovered'!
keyDown: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := ControlMask.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := ControlMask.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := Character.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) keysym.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := $s.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) mainController.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) mainController.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) menuFileSave.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a3fc8; bytecode file offset 0xba08a0"
!EtasDatabaseWidget methodsFor: 'recovered'!
isDeletePossible
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_54172'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFocus.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDeletePossible.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) bufferedItems.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedObjects.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) deleteIsPossibleFor: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202accd8; bytecode file offset 0xba95b4"
!EtasDatabaseWidget methodsFor: 'recovered'!
performItemExport
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkExportAllowed.
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
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedObjects.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
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
            recoveredStack0 := 'Kli'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'Call_00000'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) getUserInterface.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) promptExportOption.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) exportItems: (recoveredStack1) userInterface: (recoveredStack2) promptOption: (recoveredStack3).
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

"ASDBase.ic method 0x202c9930; bytecode file offset 0xbc6204"
!EtasDatabaseWidget methodsFor: 'recovered'!
selectClasses: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) selectClass: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) selectClass: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := EtasDatabaseWidgetItemCallbackData.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := EtasSelectItemCallback.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) callCallbacks: (recoveredStack1) callData: (recoveredStack2).
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

"ASDBase.ic method 0x202df8a4; bytecode file offset 0xbdc198"
!EtasDatabaseWidget methodsFor: 'recovered'!
expandRecursive: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExpandedPos: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) getItemAt: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) getHasChildrenFor: (recoveredStack1) position: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) expandPos: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) expandRecursive: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemCount.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f1e1c; bytecode file offset 0xbee6e8"
!EtasDatabaseWidget methodsFor: 'recovered'!
refreshItem: recoveredArg1 inList: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRootItem.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) refreshHierarchyPos: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) expandPos: (recoveredStack2) notify: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) updateFolderList.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20302388; bytecode file offset 0xbfec5c"
!EtasDatabaseWidget methodsFor: 'recovered'!
updateAfterRenamedItem: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280e9844Arg1 | 
    nil
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) parentIfUndefined: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) updateFolderList.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) classList.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbObject.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) classList.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) refreshHierarchyPos: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) classList.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) expandPos: (recoveredStack2) notify: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20317024; bytecode file offset 0xc13904"
!EtasDatabaseWidget methodsFor: 'recovered'!
checkAttachmentDatabaseWidget
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) scrolledItemList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isManaged.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) scrolledItemComment.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isManaged.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) horSplit.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) horSplit.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := EtasDatabaseWidgetVisibilityCallbackData.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) scrolledItemList.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) isManaged.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) scrolledItemComment.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) isManaged.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) widgetsHidden: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := EtasWidgetVisibilityCallback.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) callCallbacks: (recoveredStack1) callData: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203470f4; bytecode file offset 0xc439d0"
!EtasDatabaseWidget methodsFor: 'recovered'!
getFoldersNotRequired: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) allNotFolderChildren.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) allFolderChildrenRecursive.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 recoveredBlock35Value4 |
    recoveredBlock35Value0 := recoveredLocal1.
    recoveredBlock35Value1 := recoveredBlock35Arg1.
    recoveredBlock35Value2 := (self) getFoldersNotRequired: (recoveredBlock35Value1).
    recoveredBlock35Value3 := (recoveredBlock35Value0) , (recoveredBlock35Value2).
    recoveredBlock35Value4 := recoveredBlock35Value3.
    recoveredLocal1 := recoveredBlock35Value4.
    recoveredBlock35Value3
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2034cc74; bytecode file offset 0xc49550"
!EtasDatabaseWidget methodsFor: 'recovered'!
selectedItems
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItem.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
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
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Local1 recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20Stack3 recoveredBlock20Stack4 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
    recoveredBlock20Stack0 := self.
    recoveredBlock20PC := 26.
    recoveredBlock20Done := false.
    [recoveredBlock20Done not] whileTrue: [
        recoveredBlock20Step := recoveredBlock20PC.
        recoveredBlock20Step = 26 ifTrue: [
            recoveredBlock20Stack1 := nil.
            recoveredBlock20PC := 27.
        ].
        recoveredBlock20Step = 27 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 28.
        ].
        recoveredBlock20Step = 28 ifTrue: [
            recoveredBlock20Stack3 := [:block280eeb60Arg1 | 
    nil
].
            recoveredBlock20PC := 30.
        ].
        recoveredBlock20Step = 30 ifTrue: [
            recoveredBlock20PC := 36.
        ].
        recoveredBlock20Step = 36 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) getObjectIfUndefined: (recoveredBlock20Stack3).
            recoveredBlock20PC := 38.
        ].
        recoveredBlock20Step = 38 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Stack2.
            recoveredBlock20PC := 39.
        ].
        recoveredBlock20Step = 39 ifTrue: [
            recoveredBlock20Local1 := recoveredBlock20Stack3.
            recoveredBlock20PC := 40.
        ].
        recoveredBlock20Step = 40 ifTrue: [
            (recoveredBlock20Stack2 == nil) ifTrue: [recoveredBlock20PC := 57] ifFalse: [recoveredBlock20PC := 44].
        ].
        recoveredBlock20Step = 44 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Local1.
            recoveredBlock20PC := 45.
        ].
        recoveredBlock20Step = 45 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) isFolder.
            recoveredBlock20PC := 47.
        ].
        recoveredBlock20Step = 47 ifTrue: [
            (recoveredBlock20Stack2) ifTrue: [recoveredBlock20PC := 57] ifFalse: [recoveredBlock20PC := 50].
        ].
        recoveredBlock20Step = 50 ifTrue: [
            recoveredBlock20PC := 51.
        ].
        recoveredBlock20Step = 51 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal1.
            recoveredBlock20PC := 54.
        ].
        recoveredBlock20Step = 54 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Local1.
            recoveredBlock20PC := 55.
        ].
        recoveredBlock20Step = 55 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) add: (recoveredBlock20Stack2).
            recoveredBlock20PC := 57.
        ].
        recoveredBlock20Step = 57 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack1.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036c194; bytecode file offset 0xc68a78"
!EtasDatabaseWidget methodsFor: 'recovered'!
menuAddItemToLibraryForView: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) widgetController.
    recoveredValue3 := (recoveredValue2) selectedObjects.
    recoveredValue4 := [:recoveredBlock12Arg1 | 
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
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) isFolder.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 24] ifFalse: [recoveredBlock12PC := 46].
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) allClassChildren.
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            recoveredBlock12Stack2 := [:recoveredBlock12Block27Arg1 | 
    | recoveredBlock12Block27Value0 recoveredBlock12Block27Value1 recoveredBlock12Block27Value2 |
    recoveredBlock12Block27Value0 := recoveredLocal1.
    recoveredBlock12Block27Value1 := recoveredBlock12Block27Arg1.
    recoveredBlock12Block27Value2 := (recoveredBlock12Block27Value0) add: (recoveredBlock12Block27Value1).
    recoveredBlock12Block27Value2
].
            recoveredBlock12PC := 41.
        ].
        recoveredBlock12Step = 41 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) do: (recoveredBlock12Stack2).
            recoveredBlock12PC := 43.
        ].
        recoveredBlock12Step = 43 ifTrue: [
            recoveredBlock12PC := 52.
        ].
        recoveredBlock12Step = 46 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 49.
        ].
        recoveredBlock12Step = 49 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 50.
        ].
        recoveredBlock12Step = 50 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) add: (recoveredBlock12Stack2).
            recoveredBlock12PC := 52.
        ].
        recoveredBlock12Step = 52 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := ASDItemLibrary.
    recoveredValue6 := (recoveredValue5) instance.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) asOrderedCollection.
    (recoveredValue6) addItems: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x20372024; bytecode file offset 0xc6e900"
!EtasDatabaseWidget methodsFor: 'recovered'!
addListEntry
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProductActivationMD.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifyDBAllowed.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) focusWidget.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) focusWidget.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictName.
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
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) focusWidget.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetDictName.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAtom.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 67] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) classList.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) menuClassAddFolder.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20372300; bytecode file offset 0xc6ebd8"
!EtasDatabaseWidget methodsFor: 'recovered'!
collapseClassList
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 27.
        ].
        recoveredBlock17Step = 27 ifTrue: [
            (recoveredBlock17Stack1) collapseAll.
            recoveredBlock17PC := 29.
        ].
        recoveredBlock17Step = 29 ifTrue: [
            recoveredBlock17Stack1 := nil.
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            recoveredBlock17Stack2 := recoveredLocal1.
            recoveredBlock17PC := 33.
        ].
        recoveredBlock17Step = 33 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) items.
            recoveredBlock17PC := 34.
        ].
        recoveredBlock17Step = 34 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) size.
            recoveredBlock17PC := 35.
        ].
        recoveredBlock17Step = 35 ifTrue: [
            recoveredBlock17Stack3 := 0.
            recoveredBlock17PC := 37.
        ].
        recoveredBlock17Step = 37 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) > (recoveredBlock17Stack3).
            recoveredBlock17PC := 38.
        ].
        recoveredBlock17Step = 38 ifTrue: [
            (recoveredBlock17Stack2) ifTrue: [recoveredBlock17PC := 42] ifFalse: [recoveredBlock17PC := 59].
        ].
        recoveredBlock17Step = 42 ifTrue: [
            recoveredBlock17PC := 43.
        ].
        recoveredBlock17Step = 43 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 46.
        ].
        recoveredBlock17Step = 46 ifTrue: [
            recoveredBlock17Stack2 := 1.
            recoveredBlock17PC := 48.
        ].
        recoveredBlock17Step = 48 ifTrue: [
            recoveredBlock17Stack3 := true.
            recoveredBlock17PC := 49.
        ].
        recoveredBlock17Step = 49 ifTrue: [
            (recoveredBlock17Stack1) expandPos: (recoveredBlock17Stack2) notify: (recoveredBlock17Stack3).
            recoveredBlock17PC := 51.
        ].
        recoveredBlock17Step = 51 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 54.
        ].
        recoveredBlock17Step = 54 ifTrue: [
            recoveredBlock17Stack2 := 1.
            recoveredBlock17PC := 56.
        ].
        recoveredBlock17Step = 56 ifTrue: [
            recoveredBlock17Stack3 := true.
            recoveredBlock17PC := 57.
        ].
        recoveredBlock17Step = 57 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) selectPos: (recoveredBlock17Stack2) notify: (recoveredBlock17Stack3).
            recoveredBlock17PC := 59.
        ].
        recoveredBlock17Step = 59 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) deferRedraw: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 'updateToolbar'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) broadcast: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20379b14; bytecode file offset 0xc763ec"
!EtasDatabaseWidget methodsFor: 'recovered'!
classListVisual: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) visualCallDataComponent: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := 'Rnz'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'ASCET_SCM'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := itemToBeExpandedPosition.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := itemToBeExpandedPosition.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemPosition.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := itemToBeExpandedPosition.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            itemToBeExpandedPosition := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemCount.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) refreshAndRedrawWithParentsAt: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) visualCallDataComponent: (recoveredStack1).
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

"ASDBase.ic method 0x2037b4d0; bytecode file offset 0xc77db4"
!EtasDatabaseWidget methodsFor: 'recovered'!
etasWidgetFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) focusWidget.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isTobWidget.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) setInputFocus.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 'Call_54172'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) itemCommentText.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := 'setValidWidget:'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) broadcast: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := super etasWidgetFocus: (recoveredStack1) clientData: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038dfc4; bytecode file offset 0xc8a8e8"
!EtasDatabaseWidget methodsFor: 'recovered'!
classListbeginEditCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isClassListEditPossible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) doit: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:block280f36e4Arg1 | 
    nil
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) readKeyIfUndefined: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) doit: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := EwTextEditPolicy.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) selection: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) editPolicy: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) doit: (recoveredStack1).
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

"ASDBase.ic method 0x20398048; bytecode file offset 0xc94938"
!EtasDatabaseWidget methodsFor: 'recovered'!
performItemImport
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkImportAllowed.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) lowDiskSpaceWarning.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkAllViewsExcept: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
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
            (recoveredStack0) holdCurrentClassListState.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUserInterface.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) importUserInterface: (recoveredStack1) fileName: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) updateFolderList.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := 'Call_86906'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) runImportItemCallback: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a2bc8; bytecode file offset 0xc9f4a8"
!EtasDatabaseWidget methodsFor: 'recovered'!
removeSelectedListEntry
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInDialog.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
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
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProductActivationMD.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifyDBAllowed.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) focusWidget.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) focusWidget.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictName.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) focusWidget.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetDictName.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAtom.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) classList.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 75].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) menuClassDelete.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a7180; bytecode file offset 0xca3a5c"
!EtasDatabaseWidget methodsFor: 'recovered'!
menuItemEditForView: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Time.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) now.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSeconds.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedReadableClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFolder.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) openEditorFor: (recoveredStack1) view: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := Time.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) now.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSeconds.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock52Value0 recoveredBlock52Value1 recoveredBlock52Value2 recoveredBlock52Value3 |
    recoveredBlock52Value0 := recoveredLocal1.
    recoveredBlock52Value1 := recoveredLocal2.
    recoveredBlock52Value2 := (recoveredBlock52Value0) - (recoveredBlock52Value1).
    recoveredBlock52Value3 := (recoveredBlock52Value2) < (30000).
    recoveredBlock52Value3
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 'editor taskes more than 30 sec to open'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1) additionalInfo: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a9940; bytecode file offset 0xca620c"
!EtasDatabaseWidget methodsFor: 'recovered'!
removeExistingFolders: recoveredArg1 ExistingFoldersPath: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Local1 recoveredBlock7Local2 recoveredBlock7Local3 recoveredBlock7Local4 recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg1.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) size.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Local2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Stack1 := true.
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Local3 := recoveredBlock7Stack1.
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack1 := 1.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack1.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7PC := 51.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg1.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Local1.
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) at: (recoveredBlock7Stack2).
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) pathName.
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Local4 := recoveredBlock7Stack1.
            recoveredBlock7PC := 35.
        ].
        recoveredBlock7Step = 35 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local4.
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) = (recoveredBlock7Stack2).
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 42] ifFalse: [recoveredBlock7PC := 48].
        ].
        recoveredBlock7Step = 42 ifTrue: [
            recoveredBlock7Stack1 := false.
            recoveredBlock7PC := 43.
        ].
        recoveredBlock7Step = 43 ifTrue: [
            recoveredBlock7Local3 := recoveredBlock7Stack1.
            recoveredBlock7PC := 44.
        ].
        recoveredBlock7Step = 44 ifTrue: [
            recoveredBlock7PC := 51.
        ].
        recoveredBlock7Step = 48 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local1.
            recoveredBlock7PC := 49.
        ].
        recoveredBlock7Step = 49 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) + (1).
            recoveredBlock7PC := 50.
        ].
        recoveredBlock7Step = 50 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack1.
            recoveredBlock7PC := 51.
        ].
        recoveredBlock7Step = 51 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local3.
            recoveredBlock7PC := 52.
        ].
        recoveredBlock7Step = 52 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Local1.
            recoveredBlock7PC := 53.
        ].
        recoveredBlock7Step = 53 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Local2.
            recoveredBlock7PC := 54.
        ].
        recoveredBlock7Step = 54 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) + (1).
            recoveredBlock7PC := 55.
        ].
        recoveredBlock7Step = 55 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) < (recoveredBlock7Stack3).
            recoveredBlock7PC := 56.
        ].
        recoveredBlock7Step = 56 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) & (recoveredBlock7Stack2).
            recoveredBlock7PC := 57.
        ].
        recoveredBlock7Step = 57 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 28] ifFalse: [recoveredBlock7PC := 59].
        ].
        recoveredBlock7Step = 59 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 60.
        ].
        recoveredBlock7Step = 60 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Local3.
            recoveredBlock7PC := 61.
        ].
        recoveredBlock7Step = 61 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 71] ifFalse: [recoveredBlock7PC := 64].
        ].
        recoveredBlock7Step = 64 ifTrue: [
            recoveredBlock7PC := 65.
        ].
        recoveredBlock7Step = 65 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg1.
            recoveredBlock7PC := 68.
        ].
        recoveredBlock7Step = 68 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Local1.
            recoveredBlock7PC := 69.
        ].
        recoveredBlock7Step = 69 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) removeAtIndex: (recoveredBlock7Stack2).
            recoveredBlock7PC := 71.
        ].
        recoveredBlock7Step = 71 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x203c9bc0; bytecode file offset 0xcc64a4"
!EtasDatabaseWidget methodsFor: 'recovered'!
menuUpdateASAP2DependentWidget: recoveredArg1 fileType: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) asap2UpdatePossible.
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
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) lowDiskSpaceWarning.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
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
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptForA2lFileWithParent: (recoveredStack1) fileType: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileExtension.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetController.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) selectedClass.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := (recoveredStack4) getUserInterface.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) updateASAP2ToMCSEditor: (recoveredStack1) a2lFile: (recoveredStack2) updatedItem: (recoveredStack3) parentWindow: (recoveredStack4).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) makeVisibleItem: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203cdfb0; bytecode file offset 0xcca88c"
!EtasDatabaseWidget methodsFor: 'recovered'!
copyItems: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedFolder.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 |
    recoveredBlock19Value0 := (self) getUserInterface.
    recoveredBlock19Value1 := [:recoveredBlock19Block27Arg1 | 
    | recoveredBlock19Block27Value0 recoveredBlock19Block27Value1 recoveredBlock19Block27Value2 recoveredBlock19Block27Value3 recoveredBlock19Block27Value4 recoveredBlock19Block27Value5 |
    recoveredBlock19Block27Value0 := (self) widgetController.
    recoveredBlock19Block27Value1 := recoveredArg1.
    recoveredBlock19Block27Value2 := recoveredLocal1.
    recoveredBlock19Block27Value3 := recoveredBlock19Block27Arg1.
    recoveredBlock19Block27Value4 := (recoveredBlock19Block27Value0) copyItems: (recoveredBlock19Block27Value1) folder: (recoveredBlock19Block27Value2) progressWindow: (recoveredBlock19Block27Value3).
    recoveredLocal2 := recoveredBlock19Block27Value4.
    recoveredBlock19Block27Value5 := (self) setNoUpdateByFocus.
    recoveredBlock19Block27Value5
].
    recoveredBlock19Value2 := EtCopyingItems.
    recoveredBlock19Value3 := SCEtas.
    recoveredBlock19Value4 := (recoveredBlock19Value0) execWithProgressDialog: (recoveredBlock19Value1) message: (recoveredBlock19Value2) showProgress: (true) title: (recoveredBlock19Value3).
    recoveredBlock19Value4
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) suspendObserving: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d0374; bytecode file offset 0xcccc64"
!EtasDatabaseWidget methodsFor: 'recovered'!
visibilityItemComment: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) horSplit.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) setInputFocus.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) outerItemForm.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := XmATTACHFORM.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) bottomAttachment: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) bottomOffset: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) outerCommentForm.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) unmanageChild.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemCommentLabel.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) unmanageChild.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) scrolledItemComment.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) unmanageChild.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) buttonItemComment.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) unmanageChild.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) outerItemForm.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := XmATTACHWIDGET.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack2) bottomAttachment: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) horSplit.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack2) bottomWidget: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemCommentLabel.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) manageChild.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) outerCommentForm.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) manageChild.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) scrolledItemComment.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) manageChild.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) buttonItemComment.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) manageChild.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) checkAttachmentDatabaseWidget.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e5da4; bytecode file offset 0xce267c"
!EtasDatabaseWidget methodsFor: 'recovered'!
updateItemCommentSensitivity
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItem.
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemCommentText.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'Call_45519'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemCommentText.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemCommentText.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 'Call_45519'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRootItem.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemCommentText.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 'Call_45519'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 87.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFolder.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemCommentText.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 87.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemCommentText.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) modifiable.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := 'Call_45519'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ede14; bytecode file offset 0xcea700"
!EtasDatabaseWidget methodsFor: 'recovered'!
menuReadAsap2ItemCheckModParBlock: recoveredArg1 checkModParMessageBlock: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) asap2ReadPossible.
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
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) lowDiskSpaceWarning.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
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
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'asap2'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptForA2lFileWithParent: (recoveredStack1) fileType: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileExtension.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetController.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) selectedFolder.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := (recoveredStack4) getUserInterface.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) readASAP2ToMCSEditor: (recoveredStack1) a2lFile: (recoveredStack2) parentFolder: (recoveredStack3) parentWindow: (recoveredStack4) checkModParBlock: (recoveredStack5) checkModParMessageBlock: (recoveredStack6).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) updateFolderList.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) makeVisibleItem: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f1020; bytecode file offset 0xced910"
!EtasDatabaseWidget methodsFor: 'recovered'!
updateAfterCopyItem: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) buildUniqueName.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:block280f93b4Arg1 | 
    nil
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) parentIfUndefined: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) updateFolderList.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) classList.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbObject.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) classList.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) refreshHierarchyPos: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) classList.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) expandPos: (recoveredStack2) notify: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) endEdit.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) selectedItems: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) gc.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 89] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) selectItem: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f1884; bytecode file offset 0xcee184"
!EtasDatabaseWidget methodsFor: 'recovered'!
performImportFromDirectory
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_54122'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkImportAllowed.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
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
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) lowDiskSpaceWarning.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkAllViewsExcept: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) holdCurrentClassListState.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUserInterface.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) importDirectoryUserInterface: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) updateFolderList.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) updateCurrentClassListState.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := EtasDatabaseWidgetItemCallbackData.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := EtasImportItemCallback.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) callCallbacks: (recoveredStack1) callData: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f87c0; bytecode file offset 0xcf50bc"
!EtasDatabaseWidget methodsFor: 'recovered'!
visibilityItemList: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemList.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) selectedItems: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) horSplit.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) setInputFocus.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) outerCommentForm.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := XmATTACHFORM.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) topAttachment: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) outerItemForm.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) unmanageChild.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemListLabel.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) unmanageChild.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) scrolledItemList.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) unmanageChild.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) buttonItemList.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) unmanageChild.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) outerCommentForm.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := XmATTACHWIDGET.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack2) topAttachment: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack2) topOffset: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) horSplit.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack2) topWidget: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemListLabel.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) manageChild.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) outerItemForm.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) manageChild.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) scrolledItemList.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) manageChild.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) buttonItemList.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) manageChild.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) checkAttachmentDatabaseWidget.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20400584; bytecode file offset 0xcfce84"
!EtasDatabaseWidget methodsFor: 'recovered'!
menuItemImportFolder
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkImportAllowed.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) lowDiskSpaceWarning.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkAllViewsExcept: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
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
            (recoveredStack0) holdCurrentClassListState.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUserInterface.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) importUserInterface: (recoveredStack1) fileName: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) overwriteImportInfo.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) menuItemFolderKeepConstant: (recoveredStack1) overwriteData: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) overwriteImportInfo: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) updateFolderList.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) updateCurrentClassListState.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) runImportItemCallback: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20403064; bytecode file offset 0xcff950"
!EtasDatabaseWidget methodsFor: 'recovered'!
updateItemNameWidgetsFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBDBUndefinedObject.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemCommentText.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemCommentText.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemCommentText.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) cursorPosition.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) updateItemCommentSensitivity.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRootItem.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDBInfoDict.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemCommentText.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemCommentText.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) getDBInfoDict.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := 'comment'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := [
    ''
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 87.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemCommentText.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) comment.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemCommentText.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) cursorPosition: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041a9e4; bytecode file offset 0xd172e0"
!EtasDatabaseWidget methodsFor: 'recovered'!
updateList: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ASCET_SCM'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 'Call_73064'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            itemToBeExpandedPosition := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) topItemPosition.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:block280fbd54Arg1 | 
    | block280fbd54Stack0 block280fbd54Stack1 block280fbd54Stack2 block280fbd54Stack3 block280fbd54PC block280fbd54Step block280fbd54Done block280fbd54Result |
    block280fbd54Stack0 := self.
    block280fbd54PC := 4.
    block280fbd54Done := false.
    [block280fbd54Done not] whileTrue: [
        block280fbd54Step := block280fbd54PC.
        block280fbd54Step = 4 ifTrue: [
            block280fbd54Stack1 := block280fbd54Arg1.
            block280fbd54PC := 5.
        ].
        block280fbd54Step = 5 ifTrue: [
            block280fbd54Stack2 := [:block280fbd78Arg1 | 
    nil
].
            block280fbd54PC := 7.
        ].
        block280fbd54Step = 7 ifTrue: [
            block280fbd54PC := 12.
        ].
        block280fbd54Step = 12 ifTrue: [
            block280fbd54Stack1 := (block280fbd54Stack1) readKeyIfUndefined: (block280fbd54Stack2).
            block280fbd54PC := 14.
        ].
        block280fbd54Step = 14 ifTrue: [
            block280fbd54Result := block280fbd54Stack1.
            block280fbd54Done := true.
        ].
    ].
    block280fbd54Result
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := [:block280fbd9cArg1 | 
    | block280fbd9cStack0 block280fbd9cStack1 block280fbd9cStack2 block280fbd9cStack3 block280fbd9cPC block280fbd9cStep block280fbd9cDone block280fbd9cResult |
    block280fbd9cStack0 := self.
    block280fbd9cPC := 4.
    block280fbd9cDone := false.
    [block280fbd9cDone not] whileTrue: [
        block280fbd9cStep := block280fbd9cPC.
        block280fbd9cStep = 4 ifTrue: [
            block280fbd9cStack1 := false.
            block280fbd9cPC := 5.
        ].
        block280fbd9cStep = 5 ifTrue: [
            block280fbd9cStack2 := block280fbd9cArg1.
            block280fbd9cPC := 6.
        ].
        block280fbd9cStep = 6 ifTrue: [
            (block280fbd9cStack2 == nil) ifTrue: [block280fbd9cPC := 15] ifFalse: [block280fbd9cPC := 10].
        ].
        block280fbd9cStep = 10 ifTrue: [
            block280fbd9cPC := 11.
        ].
        block280fbd9cStep = 11 ifTrue: [
            block280fbd9cStack1 := block280fbd9cArg1.
            block280fbd9cPC := 12.
        ].
        block280fbd9cStep = 12 ifTrue: [
            block280fbd9cStack1 := (block280fbd9cStack1) isMarkAsDeleted.
            block280fbd9cPC := 14.
        ].
        block280fbd9cStep = 14 ifTrue: [
            block280fbd9cStack1 := (block280fbd9cStack1) not.
            block280fbd9cPC := 15.
        ].
        block280fbd9cStep = 15 ifTrue: [
            block280fbd9cResult := block280fbd9cStack1.
            block280fbd9cDone := true.
        ].
    ].
    block280fbd9cResult
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock68Value0 recoveredBlock68Value1 recoveredBlock68Value2 recoveredBlock68Value3 recoveredBlock68Value4 |
    recoveredBlock68Value0 := (self) classList.
    recoveredBlock68Value1 := recoveredLocal2.
    (recoveredBlock68Value0) items: (recoveredBlock68Value1).
    (self) selectedItem: (nil).
    (self) updateItemNameWidgetsFor: (nil).
    recoveredBlock68Value2 := (self) classList.
    recoveredBlock68Value3 := recoveredLocal1.
    recoveredBlock68Value4 := (recoveredBlock68Value2) topItemPosition: (recoveredBlock68Value3).
    recoveredBlock68Value4
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) deferRedraw: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204275bc; bytecode file offset 0xd23eb4"
!EtasDatabaseWidget methodsFor: 'recovered'!
classlistendEditCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_85223'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedModifiableObject.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) newValue.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isASD.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkAnsiCNameCallData: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkValidComponentNameCallData: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedModifiableObject.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) finishEdit.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) newValue.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) renameSelectedClassTo: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) refresh.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) renamedItem: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204299f8; bytecode file offset 0xd26320"
!EtasDatabaseWidget methodsFor: 'recovered'!
buttonVisibilityExpose: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := GCForeground.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := GCBackground.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) | (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := CgGCValues.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack5 := CgIndexedPalette.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := (recoveredStack5) default.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack6 := CgRGBColor.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack6 := (recoveredStack6) white.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := (recoveredStack5) nearestPixelValue: (recoveredStack6).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack4) foreground: (recoveredStack5).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := CgIndexedPalette.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := (recoveredStack4) default.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack5 := CgRGBColor.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack5 := (recoveredStack5) white.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := (recoveredStack4) nearestPixelValue: (recoveredStack5).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) background: (recoveredStack4).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) createGC: (recoveredStack2) values: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) resourceManager.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := CgRGBColor.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := OS.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := (recoveredStack3) shell.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) hasFocus.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := ColorCaptiontext.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := ColorInactivecaptiontext.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) getSysColor: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromOSRGB: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 'GeneralClose'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnColoredIcon: (recoveredStack1) withName: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) scaledTo: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) drawIcon: (recoveredStack1) x: (recoveredStack2) y: (recoveredStack3) icon: (recoveredStack4).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) freeGC.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) free.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2043731c; bytecode file offset 0xd33c0c"
!EtasDatabaseWidget methodsFor: 'recovered'!
keyIsMasked: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBFolder.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) className.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'SmartFolders'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'RBSmartFolder'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) className.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbWidgetOptions.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) maskClassForLibs.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := SGLibrary.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) className.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := SGLibrary.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbWidgetOptions.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) maskClassForLibs.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := [:recoveredBlock75Arg1 | 
    | recoveredBlock75Value0 recoveredBlock75Value1 recoveredBlock75Value2 recoveredBlock75Value3 |
    recoveredBlock75Value0 := recoveredLocal1.
    recoveredBlock75Value1 := recoveredBlock75Arg1.
    recoveredBlock75Value2 := (recoveredBlock75Value1) itemTypeLabels.
    recoveredBlock75Value3 := (recoveredBlock75Value0) addAll: (recoveredBlock75Value2).
    recoveredBlock75Value3
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) className.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20437858; bytecode file offset 0xd34148"
!EtasDatabaseWidget methodsFor: 'recovered'!
createFolderNamed: recoveredArg1 parent: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getUserInterface.
    recoveredValue1 := [
    | recoveredBlock5Local1 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg1.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg2.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) createFolderOnlyNamed: (recoveredBlock5Stack1) parent: (recoveredBlock5Stack2).
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Stack0.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredLocal1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            (recoveredBlock5Stack0 ~~ nil) ifTrue: [recoveredBlock5PC := 30] ifFalse: [recoveredBlock5PC := 28].
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack0 := nil.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            ^recoveredBlock5Stack0
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Stack0 := nil.
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) classList.
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) gc.
            recoveredBlock5PC := 34.
        ].
        recoveredBlock5Step = 34 ifTrue: [
            (recoveredBlock5Stack1 == nil) ifTrue: [recoveredBlock5PC := 100] ifFalse: [recoveredBlock5PC := 38].
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5PC := 39.
        ].
        recoveredBlock5Step = 39 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 40.
        ].
        recoveredBlock5Step = 40 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg2.
            recoveredBlock5PC := 43.
        ].
        recoveredBlock5Step = 43 ifTrue: [
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 44.
        ].
        recoveredBlock5Step = 44 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) classList.
            recoveredBlock5PC := 45.
        ].
        recoveredBlock5Step = 45 ifTrue: [
            (recoveredBlock5Stack0) refreshItem: (recoveredBlock5Stack1) inList: (recoveredBlock5Stack2).
            recoveredBlock5PC := 47.
        ].
        recoveredBlock5Step = 47 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 48.
        ].
        recoveredBlock5Step = 48 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) classList.
            recoveredBlock5PC := 49.
        ].
        recoveredBlock5Step = 49 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg2.
            recoveredBlock5PC := 52.
        ].
        recoveredBlock5Step = 52 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) indexOf: (recoveredBlock5Stack1).
            recoveredBlock5PC := 54.
        ].
        recoveredBlock5Step = 54 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack0.
            recoveredBlock5PC := 55.
        ].
        recoveredBlock5Step = 55 ifTrue: [
            recoveredBlock5Stack0 := recoveredBlock5Local1.
            recoveredBlock5PC := 56.
        ].
        recoveredBlock5Step = 56 ifTrue: [
            recoveredBlock5Stack1 := 0.
            recoveredBlock5PC := 58.
        ].
        recoveredBlock5Step = 58 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) > (recoveredBlock5Stack1).
            recoveredBlock5PC := 59.
        ].
        recoveredBlock5Step = 59 ifTrue: [
            (recoveredBlock5Stack0) ifTrue: [recoveredBlock5PC := 62] ifFalse: [recoveredBlock5PC := 76].
        ].
        recoveredBlock5Step = 62 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 63.
        ].
        recoveredBlock5Step = 63 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) classList.
            recoveredBlock5PC := 64.
        ].
        recoveredBlock5Step = 64 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Local1.
            recoveredBlock5PC := 65.
        ].
        recoveredBlock5Step = 65 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) isExpandedPos: (recoveredBlock5Stack1).
            recoveredBlock5PC := 67.
        ].
        recoveredBlock5Step = 67 ifTrue: [
            (recoveredBlock5Stack0) ifTrue: [recoveredBlock5PC := 76] ifFalse: [recoveredBlock5PC := 70].
        ].
        recoveredBlock5Step = 70 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 71.
        ].
        recoveredBlock5Step = 71 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) classList.
            recoveredBlock5PC := 72.
        ].
        recoveredBlock5Step = 72 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Local1.
            recoveredBlock5PC := 73.
        ].
        recoveredBlock5Step = 73 ifTrue: [
            recoveredBlock5Stack2 := true.
            recoveredBlock5PC := 74.
        ].
        recoveredBlock5Step = 74 ifTrue: [
            (recoveredBlock5Stack0) expandPos: (recoveredBlock5Stack1) notify: (recoveredBlock5Stack2).
            recoveredBlock5PC := 76.
        ].
        recoveredBlock5Step = 76 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 77.
        ].
        recoveredBlock5Step = 77 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) classList.
            recoveredBlock5PC := 78.
        ].
        recoveredBlock5Step = 78 ifTrue: [
            (recoveredBlock5Stack0) endEdit.
            recoveredBlock5PC := 80.
        ].
        recoveredBlock5Step = 80 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 81.
        ].
        recoveredBlock5Step = 81 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) classList.
            recoveredBlock5PC := 82.
        ].
        recoveredBlock5Step = 82 ifTrue: [
            recoveredBlock5Stack1 := Array.
            recoveredBlock5PC := 84.
        ].
        recoveredBlock5Step = 84 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) new.
            recoveredBlock5PC := 86.
        ].
        recoveredBlock5Step = 86 ifTrue: [
            (recoveredBlock5Stack0) selectedItems: (recoveredBlock5Stack1).
            recoveredBlock5PC := 88.
        ].
        recoveredBlock5Step = 88 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 89.
        ].
        recoveredBlock5Step = 89 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) classList.
            recoveredBlock5PC := 90.
        ].
        recoveredBlock5Step = 90 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal1.
            recoveredBlock5PC := 93.
        ].
        recoveredBlock5Step = 93 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) dbObject.
            recoveredBlock5PC := 95.
        ].
        recoveredBlock5Step = 95 ifTrue: [
            recoveredBlock5Stack2 := true.
            recoveredBlock5PC := 96.
        ].
        recoveredBlock5Step = 96 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) selectItem: (recoveredBlock5Stack1) notify: (recoveredBlock5Stack2).
            recoveredBlock5PC := 98.
        ].
        recoveredBlock5Step = 98 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 99.
        ].
        recoveredBlock5Step = 99 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 100.
        ].
        recoveredBlock5Step = 100 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack0.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) execShortOperation: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2043c1c4; bytecode file offset 0xd38ac4"
!EtasDatabaseWidget methodsFor: 'recovered'!
cutSelection
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_54172'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) cutIsPossible.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedObjects.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:block280fe188Arg1 | 
    | block280fe188Value0 block280fe188Value1 block280fe188Value2 |
    block280fe188Value0 := block280fe188Arg1.
    block280fe188Value1 := (block280fe188Value0) isLibrary.
    block280fe188Value2 := (block280fe188Value1) not.
    block280fe188Value2
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Local1 recoveredBlock41Stack0 recoveredBlock41Stack1 recoveredBlock41Stack2 recoveredBlock41Stack3 recoveredBlock41PC recoveredBlock41Step recoveredBlock41Done recoveredBlock41Result |
    recoveredBlock41Stack0 := self.
    recoveredBlock41PC := 48.
    recoveredBlock41Done := false.
    [recoveredBlock41Done not] whileTrue: [
        recoveredBlock41Step := recoveredBlock41PC.
        recoveredBlock41Step = 48 ifTrue: [
            recoveredBlock41Stack1 := recoveredBlock41Arg1.
            recoveredBlock41PC := 49.
        ].
        recoveredBlock41Step = 49 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) getLibrary.
            recoveredBlock41PC := 51.
        ].
        recoveredBlock41Step = 51 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Stack1.
            recoveredBlock41PC := 52.
        ].
        recoveredBlock41Step = 52 ifTrue: [
            recoveredBlock41Local1 := recoveredBlock41Stack2.
            recoveredBlock41PC := 53.
        ].
        recoveredBlock41Step = 53 ifTrue: [
            (recoveredBlock41Stack1 ~~ nil) ifTrue: [recoveredBlock41PC := 58] ifFalse: [recoveredBlock41PC := 56].
        ].
        recoveredBlock41Step = 56 ifTrue: [
            recoveredBlock41Stack1 := nil.
            recoveredBlock41PC := 57.
        ].
        recoveredBlock41Step = 57 ifTrue: [
            ^recoveredBlock41Stack1
        ].
        recoveredBlock41Step = 58 ifTrue: [
            recoveredBlock41Stack1 := nil.
            recoveredBlock41PC := 59.
        ].
        recoveredBlock41Step = 59 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Local1.
            recoveredBlock41PC := 60.
        ].
        recoveredBlock41Step = 60 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) checkAccessRightsPassword.
            recoveredBlock41PC := 62.
        ].
        recoveredBlock41Step = 62 ifTrue: [
            (recoveredBlock41Stack2) ifTrue: [recoveredBlock41PC := 69] ifFalse: [recoveredBlock41PC := 66].
        ].
        recoveredBlock41Step = 66 ifTrue: [
            recoveredBlock41PC := 67.
        ].
        recoveredBlock41Step = 67 ifTrue: [
            recoveredBlock41Stack1 := nil.
            recoveredBlock41PC := 68.
        ].
        recoveredBlock41Step = 68 ifTrue: [
            ^recoveredBlock41Stack1
        ].
        recoveredBlock41Step = 69 ifTrue: [
            recoveredBlock41Result := recoveredBlock41Stack1.
            recoveredBlock41Done := true.
        ].
    ].
    recoveredBlock41Result
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := EtasCutBuffer.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) bufferedItems: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := 'updateToolbar'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) broadcast: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) refresh.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20440edc; bytecode file offset 0xd3d7d0"
!EtasDatabaseWidget methodsFor: 'recovered'!
createFolderOnlyNamed: recoveredArg1 parent: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRootItem.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'Root'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetController.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortedLibraryKeys.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := [:block280fe650Arg1 | 
    | block280fe650Value0 block280fe650Value1 |
    block280fe650Value0 := block280fe650Arg1.
    block280fe650Value1 := (block280fe650Value0) label.
    block280fe650Value1
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) uniqueStringFor: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 'Folder'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) children.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := [:block280fe674Arg1 | 
    | block280fe674Value0 block280fe674Value1 |
    block280fe674Value0 := block280fe674Arg1.
    block280fe674Value1 := (block280fe674Value0) label.
    block280fe674Value1
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) uniqueStringFor: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) addLibraryNamed: (recoveredStack2) topFolderName: (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 78 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) addFolderNamed: (recoveredStack2) parent: (recoveredStack3).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := ASDAscetController.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSCMActive.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 107].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) scmCalculateOverlayIconPriority.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20441b4c; bytecode file offset 0xd3e448"
!EtasDatabaseWidget methodsFor: 'recovered'!
pasteIsPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProductActivationMD.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifyDBAllowed.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) validDatabaseExists.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 'Call_54967'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) bufferedItems.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) pasteIsPossible.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedFolder.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRootItem.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) bufferedItems.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := [:block280fe704Arg1 | 
    | block280fe704Stack0 block280fe704Stack1 block280fe704Stack2 block280fe704Stack3 block280fe704PC block280fe704Step block280fe704Done block280fe704Result |
    block280fe704Stack0 := self.
    block280fe704PC := 4.
    block280fe704Done := false.
    [block280fe704Done not] whileTrue: [
        block280fe704Step := block280fe704PC.
        block280fe704Step = 4 ifTrue: [
            block280fe704Stack1 := 'Kk'.
            block280fe704PC := 6.
        ].
        block280fe704Step = 6 ifTrue: [
            block280fe704Stack2 := 'Call_57993'.
            block280fe704PC := 8.
        ].
        block280fe704Step = 8 ifTrue: [
            block280fe704Stack1 := (block280fe704Stack1) == (block280fe704Stack2).
            block280fe704PC := 9.
        ].
        block280fe704Step = 9 ifTrue: [
            block280fe704PC := 10.
        ].
        block280fe704Step = 10 ifTrue: [
            block280fe704Stack1 := false.
            block280fe704PC := 11.
        ].
        block280fe704Step = 11 ifTrue: [
            block280fe704Stack2 := block280fe704Arg1.
            block280fe704PC := 12.
        ].
        block280fe704Step = 12 ifTrue: [
            block280fe704Stack2 := (block280fe704Stack2) item.
            block280fe704PC := 14.
        ].
        block280fe704Step = 14 ifTrue: [
            (block280fe704Stack2 == nil) ifTrue: [block280fe704PC := 24] ifFalse: [block280fe704PC := 18].
        ].
        block280fe704Step = 18 ifTrue: [
            block280fe704PC := 19.
        ].
        block280fe704Step = 19 ifTrue: [
            block280fe704Stack1 := block280fe704Arg1.
            block280fe704PC := 20.
        ].
        block280fe704Step = 20 ifTrue: [
            block280fe704Stack1 := (block280fe704Stack1) item.
            block280fe704PC := 22.
        ].
        block280fe704Step = 22 ifTrue: [
            block280fe704Stack1 := (block280fe704Stack1) isLibrary.
            block280fe704PC := 24.
        ].
        block280fe704Step = 24 ifTrue: [
            block280fe704Result := block280fe704Stack1.
            block280fe704Done := true.
        ].
    ].
    block280fe704Result
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) conform: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := 'Call_56336'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) bufferedItems.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) pasteIsPossible.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20455bf0; bytecode file offset 0xd524f4"
!EtasDatabaseWidget methodsFor: 'recovered'!
itemCommentValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Bugfix'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItem.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBDBUndefinedObject.
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRootItem.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDBInfoDict.
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDBInfoDict.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 'comment'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDBInfoDict.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := 'comment'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDataBaseInfo.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) setModifyBit.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) comment.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) comment.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) setComment: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) modifiedWithoutTimeStamp.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20459028; bytecode file offset 0xd5592c"
!EtasDatabaseWidget methodsFor: 'recovered'!
classListextendedSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) selectedItems.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack2 := [:block28100054Arg1 | 
    | block28100054Value0 block28100054Value1 |
    block28100054Value0 := block28100054Arg1.
    block28100054Value1 := (block28100054Value0) getObjectOrUndefined.
    block28100054Value1
].
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) collect: (recoveredBlock4Stack2).
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) selectClasses: (recoveredBlock4Stack1).
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedItems.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := [:block28100078Arg1 | 
    | block28100078Value0 block28100078Value1 block28100078Value2 |
    block28100078Value0 := block28100078Arg1.
    block28100078Value1 := (block28100078Value0) existsCached.
    block28100078Value2 := (block28100078Value1) not.
    block28100078Value2
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock52Value0 recoveredBlock52Value1 |
    recoveredBlock52Value0 := recoveredLocal1.
    recoveredBlock52Value1 := (recoveredBlock52Value0) value.
    recoveredBlock52Value1
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) showBusyCursorWhile: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) value.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedItem.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) updateItemNameWidgetsFor: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := 'Rnz'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := 'ASCET_SCM'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) gc.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectedPos.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := [:recoveredBlock99Arg1 | 
    | recoveredBlock99Value0 recoveredBlock99Value1 recoveredBlock99Value2 |
    recoveredBlock99Value0 := (self) classList.
    recoveredBlock99Value1 := recoveredBlock99Arg1.
    recoveredBlock99Value2 := (recoveredBlock99Value0) refreshAndRedrawAt: (recoveredBlock99Value1).
    recoveredBlock99Value2
].
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20467dac; bytecode file offset 0xd646ac"
!EtasDatabaseWidget methodsFor: 'recovered'!
updateItem: recoveredArg1 keepSelection: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_85223'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEditingInProgress.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) endEdit.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) classList.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) refreshItem: (recoveredStack1) inList: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) selectedItems: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Local1 recoveredBlock49Stack0 recoveredBlock49Stack1 recoveredBlock49Stack2 recoveredBlock49Stack3 recoveredBlock49PC recoveredBlock49Step recoveredBlock49Done recoveredBlock49Result |
    recoveredBlock49Stack0 := self.
    recoveredBlock49PC := 56.
    recoveredBlock49Done := false.
    [recoveredBlock49Done not] whileTrue: [
        recoveredBlock49Step := recoveredBlock49PC.
        recoveredBlock49Step = 56 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Arg1.
            recoveredBlock49PC := 57.
        ].
        recoveredBlock49Step = 57 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) isRootItem.
            recoveredBlock49PC := 59.
        ].
        recoveredBlock49Step = 59 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 62] ifFalse: [recoveredBlock49PC := 66].
        ].
        recoveredBlock49Step = 62 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Arg1.
            recoveredBlock49PC := 63.
        ].
        recoveredBlock49Step = 63 ifTrue: [
            recoveredBlock49PC := 69.
        ].
        recoveredBlock49Step = 66 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Arg1.
            recoveredBlock49PC := 67.
        ].
        recoveredBlock49Step = 67 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) dbObject.
            recoveredBlock49PC := 69.
        ].
        recoveredBlock49Step = 69 ifTrue: [
            recoveredBlock49Local1 := recoveredBlock49Stack1.
            recoveredBlock49PC := 70.
        ].
        recoveredBlock49Step = 70 ifTrue: [
            recoveredBlock49Stack0 := (recoveredBlock49Stack0) classList.
            recoveredBlock49PC := 71.
        ].
        recoveredBlock49Step = 71 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Local1.
            recoveredBlock49PC := 72.
        ].
        recoveredBlock49Step = 72 ifTrue: [
            recoveredBlock49Stack2 := false.
            recoveredBlock49PC := 73.
        ].
        recoveredBlock49Step = 73 ifTrue: [
            recoveredBlock49Stack0 := (recoveredBlock49Stack0) selectItem: (recoveredBlock49Stack1) notify: (recoveredBlock49Stack2).
            recoveredBlock49PC := 75.
        ].
        recoveredBlock49Step = 75 ifTrue: [
            recoveredBlock49Result := recoveredBlock49Stack0.
            recoveredBlock49Done := true.
        ].
    ].
    recoveredBlock49Result
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := [:block28100df8Arg1 | 
    nil
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObjectIfUndefined: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) updateItemNameWidgetsFor: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204756bc; bytecode file offset 0xd71f9c"
!EtasDatabaseWidget methodsFor: 'recovered'!
selectFirstFolder
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := SGDatabaseAccess.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := '*'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := RBDummyProgressReporter.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := Collection.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := (recoveredStack4) new.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := Collection.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack5 := (recoveredStack5) new.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack6 := [:recoveredBlock43Arg1 :recoveredBlock43Arg2 :recoveredBlock43Arg3 | 
    | recoveredBlock43Stack0 recoveredBlock43Stack1 recoveredBlock43Stack2 recoveredBlock43Stack3 recoveredBlock43Stack4 recoveredBlock43PC recoveredBlock43Step recoveredBlock43Done recoveredBlock43Result |
    recoveredBlock43Stack0 := self.
    recoveredBlock43PC := 50.
    recoveredBlock43Done := false.
    [recoveredBlock43Done not] whileTrue: [
        recoveredBlock43Step := recoveredBlock43PC.
        recoveredBlock43Step = 50 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal3.
            recoveredBlock43PC := 53.
        ].
        recoveredBlock43Step = 53 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) + (1).
            recoveredBlock43PC := 54.
        ].
        recoveredBlock43Step = 54 ifTrue: [
            recoveredLocal3 := recoveredBlock43Stack1.
            recoveredBlock43PC := 57.
        ].
        recoveredBlock43Step = 57 ifTrue: [
            recoveredBlock43Stack1 := nil.
            recoveredBlock43PC := 58.
        ].
        recoveredBlock43Step = 58 ifTrue: [
            recoveredBlock43Stack2 := recoveredLocal3.
            recoveredBlock43PC := 61.
        ].
        recoveredBlock43Step = 61 ifTrue: [
            recoveredBlock43Stack3 := 10.
            recoveredBlock43PC := 63.
        ].
        recoveredBlock43Step = 63 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) > (recoveredBlock43Stack3).
            recoveredBlock43PC := 64.
        ].
        recoveredBlock43Step = 64 ifTrue: [
            (recoveredBlock43Stack2) ifTrue: [recoveredBlock43PC := 68] ifFalse: [recoveredBlock43PC := 91].
        ].
        recoveredBlock43Step = 68 ifTrue: [
            recoveredBlock43PC := 69.
        ].
        recoveredBlock43Step = 69 ifTrue: [
            recoveredBlock43Stack1 := false.
            recoveredBlock43PC := 70.
        ].
        recoveredBlock43Step = 70 ifTrue: [
            recoveredLocal2 := recoveredBlock43Stack1.
            recoveredBlock43PC := 73.
        ].
        recoveredBlock43Step = 73 ifTrue: [
            recoveredBlock43Stack1 := self.
            recoveredBlock43PC := 74.
        ].
        recoveredBlock43Step = 74 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) classList.
            recoveredBlock43PC := 76.
        ].
        recoveredBlock43Step = 76 ifTrue: [
            recoveredBlock43Stack2 := 1.
            recoveredBlock43PC := 78.
        ].
        recoveredBlock43Step = 78 ifTrue: [
            recoveredBlock43Stack3 := true.
            recoveredBlock43PC := 79.
        ].
        recoveredBlock43Step = 79 ifTrue: [
            (recoveredBlock43Stack1) expandPos: (recoveredBlock43Stack2) notify: (recoveredBlock43Stack3).
            recoveredBlock43PC := 81.
        ].
        recoveredBlock43Step = 81 ifTrue: [
            recoveredBlock43Stack1 := self.
            recoveredBlock43PC := 82.
        ].
        recoveredBlock43Step = 82 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) classList.
            recoveredBlock43PC := 84.
        ].
        recoveredBlock43Step = 84 ifTrue: [
            recoveredBlock43Stack2 := 2.
            recoveredBlock43PC := 86.
        ].
        recoveredBlock43Step = 86 ifTrue: [
            recoveredBlock43Stack3 := true.
            recoveredBlock43PC := 87.
        ].
        recoveredBlock43Step = 87 ifTrue: [
            (recoveredBlock43Stack1) selectPos: (recoveredBlock43Stack2) notify: (recoveredBlock43Stack3).
            recoveredBlock43PC := 89.
        ].
        recoveredBlock43Step = 89 ifTrue: [
            recoveredBlock43Stack1 := self.
            recoveredBlock43PC := 90.
        ].
        recoveredBlock43Step = 90 ifTrue: [
            ^recoveredBlock43Stack1
        ].
        recoveredBlock43Step = 91 ifTrue: [
            recoveredBlock43Result := recoveredBlock43Stack1.
            recoveredBlock43Done := true.
        ].
    ].
    recoveredBlock43Result
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) searchAllChildren: (recoveredStack2) progress: (recoveredStack3) exact: (recoveredStack4) wild: (recoveredStack5) itemBlock: (recoveredStack6).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 107].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) classList.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) expandAll.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) expandPos: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) selectPos: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204897a4; bytecode file offset 0xd860b4"
!EtasDatabaseWidget methodsFor: 'recovered'!
openEditorFor: recoveredArg1 view: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isProject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) createContext.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'call_85065'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkTargetIsValid.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) navigationManager.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) addNavigationTarget: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) mainController.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) openProjectEditorFor: (recoveredStack2) context: (recoveredStack3) parentWindow: (recoveredStack4).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGClass.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 125].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) createContext.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultProjectForItem.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) navigationManager.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) addNavigationTarget: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGenericComponent.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := OS.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := VkShift.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) getKeyState: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) editGenericComponentParentView: (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) mainController.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack5 := Array.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack5 := (recoveredStack5) new.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack7 := recoveredArg2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) openDiagramEditorFor: (recoveredStack2) spec: (recoveredStack3) makeConfig: (recoveredStack4) makeConfigStack: (recoveredStack5) context: (recoveredStack6) parentWindow: (recoveredStack7).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) editItem: (recoveredStack1).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20491dd8; bytecode file offset 0xd8e6e4"
!EtasDatabaseWidget methodsFor: 'recovered'!
menuClassDelete
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDeletePossible.
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
            recoveredStack0 := 'Kk'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'Call_54172'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDialogShell.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) setNoUpdateByFocus.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := widgetController.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedObjectOrUndefined.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRuntime.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRootItem.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 97.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := widgetController.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedObjects.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := [:block28103708Arg1 | 
    | block28103708Value0 block28103708Value1 |
    block28103708Value0 := block28103708Arg1.
    block28103708Value1 := (block28103708Value0) isRootItem.
    block28103708Value1
].
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := EtasDatamodelObserver.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock117Value0 recoveredBlock117Value1 |
    recoveredBlock117Value0 := recoveredLocal2.
    recoveredBlock117Value1 := (self) deleteItems: (recoveredBlock117Value0).
    recoveredBlock117Value1
].
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) deferObservingWhile: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2049e34c; bytecode file offset 0xd9ac64"
!EtasDatabaseWidget methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) dbWidgetOptions.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) showTimeStamp.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) dbWidgetOptions.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Stack1 := false.
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            (recoveredBlock4Stack0) showTimeStamp: (recoveredBlock4Stack1).
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) horSplit.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) position.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Local2 := recoveredBlock4Stack0.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) horSplit.
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Stack1 := [:block281044acArg1 | 
    | block281044acValue0 block281044acValue1 block281044acValue2 |
    block281044acValue0 := block281044acArg1.
    block281044acValue1 := XmATTACHNONE.
    block281044acValue2 := (block281044acValue0) topAttachment: (block281044acValue1).
    block281044acValue2
].
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4PC := 36.
        ].
        recoveredBlock4Step = 36 ifTrue: [
            (recoveredBlock4Stack0) setValuesBlock: (recoveredBlock4Stack1).
            recoveredBlock4PC := 38.
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) horSplit.
            recoveredBlock4PC := 40.
        ].
        recoveredBlock4Step = 40 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local2.
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            (recoveredBlock4Stack0) setPosition: (recoveredBlock4Stack1).
            recoveredBlock4PC := 43.
        ].
        recoveredBlock4Step = 43 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 44.
        ].
        recoveredBlock4Step = 44 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 45.
        ].
        recoveredBlock4Step = 45 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) dbWidgetOptions.
            recoveredBlock4PC := 46.
        ].
        recoveredBlock4Step = 46 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) maskClassForLibs.
            recoveredBlock4PC := 48.
        ].
        recoveredBlock4Step = 48 ifTrue: [
            (recoveredBlock4Stack0) updateSpecialMask: (recoveredBlock4Stack1).
            recoveredBlock4PC := 50.
        ].
        recoveredBlock4Step = 50 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 51.
        ].
        recoveredBlock4Step = 51 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) dbWidgetOptions.
            recoveredBlock4PC := 52.
        ].
        recoveredBlock4Step = 52 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) lastSelectedItem.
            recoveredBlock4PC := 54.
        ].
        recoveredBlock4Step = 54 ifTrue: [
            (recoveredBlock4Stack0 == nil) ifTrue: [recoveredBlock4PC := 68] ifFalse: [recoveredBlock4PC := 58].
        ].
        recoveredBlock4Step = 58 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 59.
        ].
        recoveredBlock4Step = 59 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 60.
        ].
        recoveredBlock4Step = 60 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) dbWidgetOptions.
            recoveredBlock4PC := 61.
        ].
        recoveredBlock4Step = 61 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) lastSelectedItem.
            recoveredBlock4PC := 63.
        ].
        recoveredBlock4Step = 63 ifTrue: [
            (recoveredBlock4Stack0) updateListFor: (recoveredBlock4Stack1).
            recoveredBlock4PC := 65.
        ].
        recoveredBlock4Step = 65 ifTrue: [
            recoveredBlock4PC := 71.
        ].
        recoveredBlock4Step = 68 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 69.
        ].
        recoveredBlock4Step = 69 ifTrue: [
            (recoveredBlock4Stack0) updateCurrentClassListState.
            recoveredBlock4PC := 71.
        ].
        recoveredBlock4Step = 71 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 72.
        ].
        recoveredBlock4Step = 72 ifTrue: [
            (recoveredBlock4Stack0) updateItemCommentSensitivity.
            recoveredBlock4PC := 74.
        ].
        recoveredBlock4Step = 74 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local1.
            recoveredBlock4PC := 75.
        ].
        recoveredBlock4Step = 75 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 76.
        ].
        recoveredBlock4Step = 76 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) dbWidgetOptions.
            recoveredBlock4PC := 77.
        ].
        recoveredBlock4Step = 77 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) showTimeStamp.
            recoveredBlock4PC := 78.
        ].
        recoveredBlock4Step = 78 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) ~= (recoveredBlock4Stack1).
            recoveredBlock4PC := 79.
        ].
        recoveredBlock4Step = 79 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 82] ifFalse: [recoveredBlock4PC := 92].
        ].
        recoveredBlock4Step = 82 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 83.
        ].
        recoveredBlock4Step = 83 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) dbWidgetOptions.
            recoveredBlock4PC := 84.
        ].
        recoveredBlock4Step = 84 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local1.
            recoveredBlock4PC := 85.
        ].
        recoveredBlock4Step = 85 ifTrue: [
            (recoveredBlock4Stack0) showTimeStamp: (recoveredBlock4Stack1).
            recoveredBlock4PC := 87.
        ].
        recoveredBlock4Step = 87 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 88.
        ].
        recoveredBlock4Step = 88 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) classList.
            recoveredBlock4PC := 90.
        ].
        recoveredBlock4Step = 90 ifTrue: [
            (recoveredBlock4Stack0) refresh.
            recoveredBlock4PC := 92.
        ].
        recoveredBlock4Step = 92 ifTrue: [
            recoveredBlock4Stack0 := nil.
            recoveredBlock4PC := 93.
        ].
        recoveredBlock4Step = 93 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 94.
        ].
        recoveredBlock4Step = 94 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) classList.
            recoveredBlock4PC := 96.
        ].
        recoveredBlock4Step = 96 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) selectedItems.
            recoveredBlock4PC := 98.
        ].
        recoveredBlock4Step = 98 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) isEmpty.
            recoveredBlock4PC := 100.
        ].
        recoveredBlock4Step = 100 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 104] ifFalse: [recoveredBlock4PC := 127].
        ].
        recoveredBlock4Step = 104 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 105.
        ].
        recoveredBlock4Step = 105 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) classList.
            recoveredBlock4PC := 107.
        ].
        recoveredBlock4Step = 107 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) items.
            recoveredBlock4PC := 109.
        ].
        recoveredBlock4Step = 109 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) size.
            recoveredBlock4PC := 111.
        ].
        recoveredBlock4Step = 111 ifTrue: [
            recoveredBlock4Stack2 := 1.
            recoveredBlock4PC := 113.
        ].
        recoveredBlock4Step = 113 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) >= (recoveredBlock4Stack2).
            recoveredBlock4PC := 114.
        ].
        recoveredBlock4Step = 114 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 118] ifFalse: [recoveredBlock4PC := 127].
        ].
        recoveredBlock4Step = 118 ifTrue: [
            recoveredBlock4PC := 119.
        ].
        recoveredBlock4Step = 119 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 120.
        ].
        recoveredBlock4Step = 120 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) classList.
            recoveredBlock4PC := 122.
        ].
        recoveredBlock4Step = 122 ifTrue: [
            recoveredBlock4Stack1 := 1.
            recoveredBlock4PC := 124.
        ].
        recoveredBlock4Step = 124 ifTrue: [
            recoveredBlock4Stack2 := true.
            recoveredBlock4PC := 125.
        ].
        recoveredBlock4Step = 125 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) selectPos: (recoveredBlock4Stack1) notify: (recoveredBlock4Stack2).
            recoveredBlock4PC := 127.
        ].
        recoveredBlock4Step = 127 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (self) deferRedraw: (recoveredValue0).
    recoveredValue1 := (self) classList.
    (recoveredValue1) addHoverSupport.
    ^self
! !

"ASDBase.ic method 0x204b8cc0; bytecode file offset 0xdb55cc"
!EtasDatabaseWidget methodsFor: 'recovered'!
selectKeySequence
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) focusWidget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
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
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictName.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetDictName.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAtom.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetDictName.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAtom.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := detectedKeyInputTime.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := Time.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) millisecondClockValue.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := detectedKeyInputTime.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := Time.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeAheadResetTime.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) detectedKeyInputString.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUserInterface.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) detectedKeyInputString.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) detectedKeyInputString: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := Time.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) millisecondClockValue.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            detectedKeyInputTime := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) classList.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) selectedItems: (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUserInterface.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) detectedKeyInputString.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := 'lowerCaseLabel'.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectItem: (recoveredStack1) equalMethod: (recoveredStack2) notify: (recoveredStack3).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) selectedItems: (recoveredStack1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204cd3d4; bytecode file offset 0xdc9ce8"
!EtasDatabaseWidget methodsFor: 'recovered'!
updateKeyboardControlNumber: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := '&'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := ' '.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) library.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) interfaceName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbWidgetOptions.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) maskClassForLibs.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := SGLibrary.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := ' (Filter: '.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := [:recoveredBlock50Arg1 | 
    | recoveredBlock50Value0 recoveredBlock50Value1 recoveredBlock50Value2 recoveredBlock50Value3 recoveredBlock50Value4 recoveredBlock50Value5 |
    recoveredBlock50Value0 := [
    | recoveredBlock50Block56Value0 recoveredBlock50Block56Value1 recoveredBlock50Block56Value2 recoveredBlock50Block56Value3 recoveredBlock50Block56Value4 |
    recoveredBlock50Block56Value0 := recoveredLocal2.
    recoveredBlock50Block56Value1 := recoveredBlock50Arg1.
    recoveredBlock50Block56Value2 := (recoveredBlock50Block56Value1) defaultItemLabel.
    recoveredBlock50Block56Value3 := (recoveredBlock50Block56Value0) includesSubstring: (recoveredBlock50Block56Value2).
    recoveredBlock50Block56Value4 := (recoveredBlock50Block56Value3) not.
    recoveredBlock50Block56Value4
].
    (self) runtimeAssert: (recoveredBlock50Value0) additionalInfo: ('duplicate item strings in filter label').
    recoveredBlock50Value1 := recoveredLocal2.
    recoveredBlock50Value2 := recoveredBlock50Arg1.
    recoveredBlock50Value3 := (recoveredBlock50Value2) defaultItemLabel.
    recoveredBlock50Value4 := (recoveredBlock50Value1) , (recoveredBlock50Value3).
    recoveredBlock50Value5 := recoveredBlock50Value4.
    recoveredLocal2 := recoveredBlock50Value5.
    recoveredBlock50Value4
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock92Value0 recoveredBlock92Value1 recoveredBlock92Value2 |
    recoveredBlock92Value0 := recoveredLocal2.
    recoveredBlock92Value1 := (recoveredBlock92Value0) , (', ').
    recoveredBlock92Value2 := recoveredBlock92Value1.
    recoveredLocal2 := recoveredBlock92Value2.
    recoveredBlock92Value1
].
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) do: (recoveredStack1) andBetweenDo: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := ')'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            super updateKeyboardControlNumber: (recoveredStack1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemListLabel.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemCommentLabel.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := '&'.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := ' Comment'.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d23b4; bytecode file offset 0xdcecd0"
!EtasDatabaseWidget methodsFor: 'recovered'!
copySelection
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_54172'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyIsPossible.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) lowDiskSpaceWarning.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedObjects.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := [:recoveredBlock47Arg1 | 
    | recoveredBlock47Local1 recoveredBlock47Stack0 recoveredBlock47Stack1 recoveredBlock47Stack2 recoveredBlock47Stack3 recoveredBlock47PC recoveredBlock47Step recoveredBlock47Done recoveredBlock47Result |
    recoveredBlock47Stack0 := self.
    recoveredBlock47PC := 54.
    recoveredBlock47Done := false.
    [recoveredBlock47Done not] whileTrue: [
        recoveredBlock47Step := recoveredBlock47PC.
        recoveredBlock47Step = 54 ifTrue: [
            recoveredBlock47Stack1 := recoveredBlock47Arg1.
            recoveredBlock47PC := 55.
        ].
        recoveredBlock47Step = 55 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) getLibrary.
            recoveredBlock47PC := 57.
        ].
        recoveredBlock47Step = 57 ifTrue: [
            recoveredBlock47Stack2 := recoveredBlock47Stack1.
            recoveredBlock47PC := 58.
        ].
        recoveredBlock47Step = 58 ifTrue: [
            recoveredBlock47Local1 := recoveredBlock47Stack2.
            recoveredBlock47PC := 59.
        ].
        recoveredBlock47Step = 59 ifTrue: [
            (recoveredBlock47Stack1 ~~ nil) ifTrue: [recoveredBlock47PC := 64] ifFalse: [recoveredBlock47PC := 62].
        ].
        recoveredBlock47Step = 62 ifTrue: [
            recoveredBlock47Stack1 := nil.
            recoveredBlock47PC := 63.
        ].
        recoveredBlock47Step = 63 ifTrue: [
            ^recoveredBlock47Stack1
        ].
        recoveredBlock47Step = 64 ifTrue: [
            recoveredBlock47Stack1 := nil.
            recoveredBlock47PC := 65.
        ].
        recoveredBlock47Step = 65 ifTrue: [
            recoveredBlock47Stack2 := recoveredBlock47Local1.
            recoveredBlock47PC := 66.
        ].
        recoveredBlock47Step = 66 ifTrue: [
            recoveredBlock47Stack2 := (recoveredBlock47Stack2) checkAccessRightsPassword.
            recoveredBlock47PC := 68.
        ].
        recoveredBlock47Step = 68 ifTrue: [
            (recoveredBlock47Stack2) ifTrue: [recoveredBlock47PC := 75] ifFalse: [recoveredBlock47PC := 72].
        ].
        recoveredBlock47Step = 72 ifTrue: [
            recoveredBlock47PC := 73.
        ].
        recoveredBlock47Step = 73 ifTrue: [
            recoveredBlock47Stack1 := nil.
            recoveredBlock47PC := 74.
        ].
        recoveredBlock47Step = 74 ifTrue: [
            ^recoveredBlock47Stack1
        ].
        recoveredBlock47Step = 75 ifTrue: [
            recoveredBlock47Result := recoveredBlock47Stack1.
            recoveredBlock47Done := true.
        ].
    ].
    recoveredBlock47Result
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := [:recoveredBlock81Arg1 | 
    | recoveredBlock81Local1 recoveredBlock81Value0 recoveredBlock81Value1 recoveredBlock81Value2 recoveredBlock81Value3 recoveredBlock81Value4 recoveredBlock81Value5 recoveredBlock81Value6 recoveredBlock81Value7 recoveredBlock81Value8 recoveredBlock81Value9 |
    recoveredBlock81Value0 := recoveredBlock81Arg1.
    recoveredBlock81Value1 := (recoveredBlock81Value0) containerClass.
    recoveredBlock81Value2 := recoveredBlock81Arg1.
    recoveredBlock81Value3 := (recoveredBlock81Value2) getLibrary.
    recoveredBlock81Value4 := (self) widgetController.
    recoveredBlock81Value5 := (recoveredBlock81Value4) mainController.
    recoveredBlock81Value6 := (recoveredBlock81Value1) createFor: (recoveredBlock81Value3) mainCtrl: (recoveredBlock81Value5).
    recoveredBlock81Local1 := recoveredBlock81Value6.
    recoveredBlock81Value7 := recoveredBlock81Local1.
    recoveredBlock81Value8 := recoveredBlock81Arg1.
    recoveredBlock81Value9 := (recoveredBlock81Value7) updateForItem: (recoveredBlock81Value8).
    recoveredBlock81Value9
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := EtasCopyBuffer.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := 'EngineeringHooks'.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) executePreCopyHook: (recoveredStack1).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) bufferedItems: (recoveredStack1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := 'updateToolbar'.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) broadcast: (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20525c30; bytecode file offset 0xe22578"
!EtasDatabaseWidget methodsFor: 'recovered'!
installActionKeysStarting: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetKeyActions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := [
    | block2810c990Value0 block2810c990Value1 |
    block2810c990Value0 := Dictionary.
    block2810c990Value1 := (block2810c990Value0) new.
    block2810c990Value1
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'Alt-'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := DirectedMessageWithText.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := 'setFocusItemList'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack5 := #().
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack7 := SCSelect.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack8 := EtItemsLabel.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack7 := (recoveredStack7) bindWith: (recoveredStack8).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) selector: (recoveredStack4) arguments: (recoveredStack5) receiver: (recoveredStack6) text: (recoveredStack7).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 'Alt-'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := DirectedMessageWithText.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := 'setFocusItemComment'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack5 := #().
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack7 := SCSelect.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack8 := EtasItemCommentLabel.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack7 := (recoveredStack7) bindWith: (recoveredStack8).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) selector: (recoveredStack4) arguments: (recoveredStack5) receiver: (recoveredStack6) text: (recoveredStack7).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := [
    | block2810c9b4Value0 block2810c9b4Value1 |
    block2810c9b4Value0 := Dictionary.
    block2810c9b4Value1 := (block2810c9b4Value0) new.
    block2810c9b4Value1
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := 'Ctrl-x'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := DirectedMessageWithText.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack4 := 'cutSelection'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack5 := #().
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack7 := SCCut.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := (recoveredStack3) selector: (recoveredStack4) arguments: (recoveredStack5) receiver: (recoveredStack6) text: (recoveredStack7).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := 'Ctrl-c'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := DirectedMessageWithText.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack4 := 'copySelection'.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack5 := #().
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack7 := VUICopy.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := (recoveredStack3) selector: (recoveredStack4) arguments: (recoveredStack5) receiver: (recoveredStack6) text: (recoveredStack7).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := 'Ctrl-v'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := DirectedMessageWithText.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack4 := 'pasteSelection'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack5 := #().
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack7 := SCPaste.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := (recoveredStack3) selector: (recoveredStack4) arguments: (recoveredStack5) receiver: (recoveredStack6) text: (recoveredStack7).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := XKInsert.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := DirectedMessageWithText.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack4 := 'addListEntry'.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack5 := #().
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack7 := ''.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := (recoveredStack3) selector: (recoveredStack4) arguments: (recoveredStack5) receiver: (recoveredStack6) text: (recoveredStack7).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := XKDelete.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack3 := DirectedMessageWithText.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack4 := 'removeSelectedListEntry'.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack5 := #().
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack7 := ''.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := (recoveredStack3) selector: (recoveredStack4) arguments: (recoveredStack5) receiver: (recoveredStack6) text: (recoveredStack7).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack0) setActionDict: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := (recoveredStack2) primaryWidget.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack0) setActionDict: (recoveredStack1) forWidget: (recoveredStack2).
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

"ASDBase.ic method 0x20527a4c; bytecode file offset 0xe24368"
!EtasDatabaseWidget methodsFor: 'recovered'!
childrenCallData: recoveredArg1 childrenSelector: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) storeSortedItems.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLocalChildrenData: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) children: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObjectOrUndefined.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBDBUndefinedObject.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 57].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) children: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) perform: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := ASDGeneralOptions.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionShowDefaultProjects.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := [:block2810cad4Arg1 | 
    | block2810cad4Stack0 block2810cad4Stack1 block2810cad4Stack2 block2810cad4Stack3 block2810cad4Stack4 block2810cad4PC block2810cad4Step block2810cad4Done block2810cad4Result |
    block2810cad4Stack0 := self.
    block2810cad4PC := 4.
    block2810cad4Done := false.
    [block2810cad4Done not] whileTrue: [
        block2810cad4Step := block2810cad4PC.
        block2810cad4Step = 4 ifTrue: [
            block2810cad4Stack1 := false.
            block2810cad4PC := 5.
        ].
        block2810cad4Step = 5 ifTrue: [
            block2810cad4Stack2 := block2810cad4Arg1.
            block2810cad4PC := 6.
        ].
        block2810cad4Step = 6 ifTrue: [
            block2810cad4Stack2 := (block2810cad4Stack2) className.
            block2810cad4PC := 8.
        ].
        block2810cad4Step = 8 ifTrue: [
            block2810cad4Stack3 := 'SGProject'.
            block2810cad4PC := 10.
        ].
        block2810cad4Step = 10 ifTrue: [
            block2810cad4Stack2 := (block2810cad4Stack2) = (block2810cad4Stack3).
            block2810cad4PC := 11.
        ].
        block2810cad4Step = 11 ifTrue: [
            (block2810cad4Stack2) ifTrue: [block2810cad4PC := 14] ifFalse: [block2810cad4PC := 20].
        ].
        block2810cad4Step = 14 ifTrue: [
            block2810cad4PC := 15.
        ].
        block2810cad4Step = 15 ifTrue: [
            block2810cad4Stack1 := block2810cad4Arg1.
            block2810cad4PC := 16.
        ].
        block2810cad4Step = 16 ifTrue: [
            block2810cad4Stack1 := (block2810cad4Stack1) object.
            block2810cad4PC := 18.
        ].
        block2810cad4Step = 18 ifTrue: [
            block2810cad4Stack1 := (block2810cad4Stack1) isDefaultProject.
            block2810cad4PC := 20.
        ].
        block2810cad4Step = 20 ifTrue: [
            block2810cad4Result := block2810cad4Stack1.
            block2810cad4Done := true.
        ].
    ].
    block2810cad4Result
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbWidgetOptions.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) maskClassForLibs.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := SGLibrary.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := [:recoveredBlock127Arg1 | 
    | recoveredBlock127Stack0 recoveredBlock127Stack1 recoveredBlock127Stack2 recoveredBlock127Stack3 recoveredBlock127Stack4 recoveredBlock127PC recoveredBlock127Step recoveredBlock127Done recoveredBlock127Result |
    recoveredBlock127Stack0 := self.
    recoveredBlock127PC := 134.
    recoveredBlock127Done := false.
    [recoveredBlock127Done not] whileTrue: [
        recoveredBlock127Step := recoveredBlock127PC.
        recoveredBlock127Step = 134 ifTrue: [
            recoveredBlock127Stack1 := true.
            recoveredBlock127PC := 135.
        ].
        recoveredBlock127Step = 135 ifTrue: [
            recoveredBlock127Stack2 := recoveredBlock127Arg1.
            recoveredBlock127PC := 136.
        ].
        recoveredBlock127Step = 136 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) isFolder.
            recoveredBlock127PC := 138.
        ].
        recoveredBlock127Step = 138 ifTrue: [
            (recoveredBlock127Stack2) ifTrue: [recoveredBlock127PC := 150] ifFalse: [recoveredBlock127PC := 142].
        ].
        recoveredBlock127Step = 142 ifTrue: [
            recoveredBlock127Stack2 := self.
            recoveredBlock127PC := 143.
        ].
        recoveredBlock127Step = 143 ifTrue: [
            recoveredBlock127Stack3 := recoveredBlock127Arg1.
            recoveredBlock127PC := 144.
        ].
        recoveredBlock127Step = 144 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) keyIsMasked: (recoveredBlock127Stack3).
            recoveredBlock127PC := 146.
        ].
        recoveredBlock127Step = 146 ifTrue: [
            (recoveredBlock127Stack2) ifTrue: [recoveredBlock127PC := 166] ifFalse: [recoveredBlock127PC := 150].
        ].
        recoveredBlock127Step = 150 ifTrue: [
            recoveredBlock127PC := 151.
        ].
        recoveredBlock127Step = 151 ifTrue: [
            recoveredBlock127Stack1 := false.
            recoveredBlock127PC := 152.
        ].
        recoveredBlock127Step = 152 ifTrue: [
            recoveredBlock127Stack2 := recoveredBlock127Arg1.
            recoveredBlock127PC := 153.
        ].
        recoveredBlock127Step = 153 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) object.
            recoveredBlock127PC := 155.
        ].
        recoveredBlock127Step = 155 ifTrue: [
            (recoveredBlock127Stack2 == nil) ifTrue: [recoveredBlock127PC := 166] ifFalse: [recoveredBlock127PC := 158].
        ].
        recoveredBlock127Step = 158 ifTrue: [
            recoveredBlock127PC := 159.
        ].
        recoveredBlock127Step = 159 ifTrue: [
            recoveredBlock127Stack1 := self.
            recoveredBlock127PC := 160.
        ].
        recoveredBlock127Step = 160 ifTrue: [
            recoveredBlock127Stack2 := recoveredLocal1.
            recoveredBlock127PC := 163.
        ].
        recoveredBlock127Step = 163 ifTrue: [
            recoveredBlock127Stack3 := recoveredBlock127Arg1.
            recoveredBlock127PC := 164.
        ].
        recoveredBlock127Step = 164 ifTrue: [
            recoveredBlock127Stack1 := (recoveredBlock127Stack1) hasChildrenForHierarchicalViewMaskLibs: (recoveredBlock127Stack2) for: (recoveredBlock127Stack3).
            recoveredBlock127PC := 166.
        ].
        recoveredBlock127Step = 166 ifTrue: [
            recoveredBlock127Result := recoveredBlock127Stack1.
            recoveredBlock127Done := true.
        ].
    ].
    recoveredBlock127Result
].
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0) children: (recoveredStack1).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := (recoveredStack0) storeSortedItems.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 186] ifFalse: [recoveredPC := 196].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack0) putLocalChildrenData: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20535fa4; bytecode file offset 0xe32880"
!EtasDatabaseWidget methodsFor: 'recovered'!
createOverwritePathColl: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Local1 recoveredBlock13Local2 recoveredBlock13Local3 recoveredBlock13Local4 recoveredBlock13Local5 recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13Stack5 recoveredBlock13Stack6 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) pathName.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack2 := '/'.
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) asArrayOfSubstringsSeparatedBy: (recoveredBlock13Stack2).
            recoveredBlock13PC := 28.
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13Local4 := recoveredBlock13Stack1.
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13Stack1 := false.
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local4.
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            recoveredBlock13Stack2 := 1.
            recoveredBlock13PC := 40.
        ].
        recoveredBlock13Step = 40 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2).
            recoveredBlock13PC := 42.
        ].
        recoveredBlock13Step = 42 ifTrue: [
            recoveredBlock13Local3 := recoveredBlock13Stack1.
            recoveredBlock13PC := 45.
        ].
        recoveredBlock13Step = 45 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 48.
        ].
        recoveredBlock13Step = 48 ifTrue: [
            recoveredBlock13Stack2 := [:recoveredBlock13Block48Arg1 | 
    | recoveredBlock13Block48Stack0 recoveredBlock13Block48Stack1 recoveredBlock13Block48Stack2 recoveredBlock13Block48Stack3 recoveredBlock13Block48Stack4 recoveredBlock13Block48PC recoveredBlock13Block48Step recoveredBlock13Block48Done recoveredBlock13Block48Result |
    recoveredBlock13Block48Stack0 := nil.
    recoveredBlock13Block48PC := 54.
    recoveredBlock13Block48Done := false.
    [recoveredBlock13Block48Done not] whileTrue: [
        recoveredBlock13Block48Step := recoveredBlock13Block48PC.
        recoveredBlock13Block48Step = 54 ifTrue: [
            recoveredBlock13Block48Stack1 := nil.
            recoveredBlock13Block48PC := 55.
        ].
        recoveredBlock13Block48Step = 55 ifTrue: [
            recoveredBlock13Block48Stack2 := recoveredBlock13Block48Arg1.
            recoveredBlock13Block48PC := 56.
        ].
        recoveredBlock13Block48Step = 56 ifTrue: [
            recoveredBlock13Block48Stack3 := recoveredBlock13Local3.
            recoveredBlock13Block48PC := 59.
        ].
        recoveredBlock13Block48Step = 59 ifTrue: [
            recoveredBlock13Block48Stack2 := (recoveredBlock13Block48Stack2) = (recoveredBlock13Block48Stack3).
            recoveredBlock13Block48PC := 60.
        ].
        recoveredBlock13Block48Step = 60 ifTrue: [
            (recoveredBlock13Block48Stack2) ifTrue: [recoveredBlock13Block48PC := 64] ifFalse: [recoveredBlock13Block48PC := 70].
        ].
        recoveredBlock13Block48Step = 64 ifTrue: [
            recoveredBlock13Block48PC := 65.
        ].
        recoveredBlock13Block48Step = 65 ifTrue: [
            recoveredBlock13Block48Stack1 := true.
            recoveredBlock13Block48PC := 66.
        ].
        recoveredBlock13Block48Step = 66 ifTrue: [
            recoveredBlock13Block48Stack2 := recoveredBlock13Block48Stack1.
            recoveredBlock13Block48PC := 67.
        ].
        recoveredBlock13Block48Step = 67 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Block48Stack2.
            recoveredBlock13Block48PC := 70.
        ].
        recoveredBlock13Block48Step = 70 ifTrue: [
            recoveredBlock13Block48Result := recoveredBlock13Block48Stack1.
            recoveredBlock13Block48Done := true.
        ].
    ].
    recoveredBlock13Block48Result
].
            recoveredBlock13PC := 71.
        ].
        recoveredBlock13Step = 71 ifTrue: [
            (recoveredBlock13Stack1) do: (recoveredBlock13Stack2).
            recoveredBlock13PC := 73.
        ].
        recoveredBlock13Step = 73 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local2.
            recoveredBlock13PC := 76.
        ].
        recoveredBlock13Step = 76 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 88] ifFalse: [recoveredBlock13PC := 80].
        ].
        recoveredBlock13Step = 80 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 83.
        ].
        recoveredBlock13Step = 83 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local3.
            recoveredBlock13PC := 86.
        ].
        recoveredBlock13Step = 86 ifTrue: [
            (recoveredBlock13Stack1) add: (recoveredBlock13Stack2).
            recoveredBlock13PC := 88.
        ].
        recoveredBlock13Step = 88 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local4.
            recoveredBlock13PC := 91.
        ].
        recoveredBlock13Step = 91 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) size.
            recoveredBlock13PC := 93.
        ].
        recoveredBlock13Step = 93 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) + (-1).
            recoveredBlock13PC := 94.
        ].
        recoveredBlock13Step = 94 ifTrue: [
            recoveredBlock13Stack2 := 1.
            recoveredBlock13PC := 96.
        ].
        recoveredBlock13Step = 96 ifTrue: [
            recoveredBlock13PC := 170.
        ].
        recoveredBlock13Step = 100 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack3.
            recoveredBlock13PC := 103.
        ].
        recoveredBlock13Step = 103 ifTrue: [
            recoveredBlock13Stack3 := false.
            recoveredBlock13PC := 104.
        ].
        recoveredBlock13Step = 104 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack3.
            recoveredBlock13PC := 107.
        ].
        recoveredBlock13Step = 107 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Local3.
            recoveredBlock13PC := 110.
        ].
        recoveredBlock13Step = 110 ifTrue: [
            recoveredBlock13Stack4 := '/'.
            recoveredBlock13PC := 112.
        ].
        recoveredBlock13Step = 112 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) , (recoveredBlock13Stack4).
            recoveredBlock13PC := 114.
        ].
        recoveredBlock13Step = 114 ifTrue: [
            recoveredBlock13Stack4 := recoveredBlock13Local4.
            recoveredBlock13PC := 117.
        ].
        recoveredBlock13Step = 117 ifTrue: [
            recoveredBlock13Stack5 := recoveredBlock13Local1.
            recoveredBlock13PC := 120.
        ].
        recoveredBlock13Step = 120 ifTrue: [
            recoveredBlock13Stack4 := (recoveredBlock13Stack4) at: (recoveredBlock13Stack5).
            recoveredBlock13PC := 122.
        ].
        recoveredBlock13Step = 122 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) , (recoveredBlock13Stack4).
            recoveredBlock13PC := 124.
        ].
        recoveredBlock13Step = 124 ifTrue: [
            recoveredBlock13Local3 := recoveredBlock13Stack3.
            recoveredBlock13PC := 127.
        ].
        recoveredBlock13Step = 127 ifTrue: [
            recoveredBlock13Stack3 := recoveredLocal1.
            recoveredBlock13PC := 130.
        ].
        recoveredBlock13Step = 130 ifTrue: [
            recoveredBlock13Stack4 := [:recoveredBlock13Block130Arg1 | 
    | recoveredBlock13Block130Stack0 recoveredBlock13Block130Stack1 recoveredBlock13Block130Stack2 recoveredBlock13Block130Stack3 recoveredBlock13Block130Stack4 recoveredBlock13Block130PC recoveredBlock13Block130Step recoveredBlock13Block130Done recoveredBlock13Block130Result |
    recoveredBlock13Block130Stack0 := nil.
    recoveredBlock13Block130PC := 136.
    recoveredBlock13Block130Done := false.
    [recoveredBlock13Block130Done not] whileTrue: [
        recoveredBlock13Block130Step := recoveredBlock13Block130PC.
        recoveredBlock13Block130Step = 136 ifTrue: [
            recoveredBlock13Block130Stack1 := nil.
            recoveredBlock13Block130PC := 137.
        ].
        recoveredBlock13Block130Step = 137 ifTrue: [
            recoveredBlock13Block130Stack2 := recoveredBlock13Block130Arg1.
            recoveredBlock13Block130PC := 138.
        ].
        recoveredBlock13Block130Step = 138 ifTrue: [
            recoveredBlock13Block130Stack3 := recoveredBlock13Local3.
            recoveredBlock13Block130PC := 141.
        ].
        recoveredBlock13Block130Step = 141 ifTrue: [
            recoveredBlock13Block130Stack2 := (recoveredBlock13Block130Stack2) = (recoveredBlock13Block130Stack3).
            recoveredBlock13Block130PC := 142.
        ].
        recoveredBlock13Block130Step = 142 ifTrue: [
            (recoveredBlock13Block130Stack2) ifTrue: [recoveredBlock13Block130PC := 146] ifFalse: [recoveredBlock13Block130PC := 152].
        ].
        recoveredBlock13Block130Step = 146 ifTrue: [
            recoveredBlock13Block130PC := 147.
        ].
        recoveredBlock13Block130Step = 147 ifTrue: [
            recoveredBlock13Block130Stack1 := true.
            recoveredBlock13Block130PC := 148.
        ].
        recoveredBlock13Block130Step = 148 ifTrue: [
            recoveredBlock13Block130Stack2 := recoveredBlock13Block130Stack1.
            recoveredBlock13Block130PC := 149.
        ].
        recoveredBlock13Block130Step = 149 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Block130Stack2.
            recoveredBlock13Block130PC := 152.
        ].
        recoveredBlock13Block130Step = 152 ifTrue: [
            recoveredBlock13Block130Result := recoveredBlock13Block130Stack1.
            recoveredBlock13Block130Done := true.
        ].
    ].
    recoveredBlock13Block130Result
].
            recoveredBlock13PC := 153.
        ].
        recoveredBlock13Step = 153 ifTrue: [
            (recoveredBlock13Stack3) do: (recoveredBlock13Stack4).
            recoveredBlock13PC := 155.
        ].
        recoveredBlock13Step = 155 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Local2.
            recoveredBlock13PC := 158.
        ].
        recoveredBlock13Step = 158 ifTrue: [
            (recoveredBlock13Stack3) ifTrue: [recoveredBlock13PC := 170] ifFalse: [recoveredBlock13PC := 162].
        ].
        recoveredBlock13Step = 162 ifTrue: [
            recoveredBlock13Stack3 := recoveredLocal1.
            recoveredBlock13PC := 165.
        ].
        recoveredBlock13Step = 165 ifTrue: [
            recoveredBlock13Stack4 := recoveredBlock13Local3.
            recoveredBlock13PC := 168.
        ].
        recoveredBlock13Step = 168 ifTrue: [
            (recoveredBlock13Stack3) add: (recoveredBlock13Stack4).
            recoveredBlock13PC := 170.
        ].
        recoveredBlock13Step = 170 ifTrue: [
            (recoveredBlock13Stack1 isInteger and: [recoveredBlock13Stack2 isInteger]) ifTrue: [(recoveredBlock13Stack2 + 1 <= recoveredBlock13Stack1) ifTrue: [recoveredBlock13Stack2 := recoveredBlock13Stack2 + 1. recoveredBlock13Stack3 := recoveredBlock13Stack2. recoveredBlock13PC := 100] ifFalse: [recoveredBlock13PC := 199]] ifFalse: [recoveredBlock13PC := 173].
        ].
        recoveredBlock13Step = 173 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack2.
            recoveredBlock13PC := 176.
        ].
        recoveredBlock13Step = 176 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 177.
        ].
        recoveredBlock13Step = 177 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Local1.
            recoveredBlock13PC := 180.
        ].
        recoveredBlock13Step = 180 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) + (1).
            recoveredBlock13PC := 181.
        ].
        recoveredBlock13Step = 181 ifTrue: [
            recoveredBlock13Stack4 := recoveredBlock13Stack3.
            recoveredBlock13PC := 182.
        ].
        recoveredBlock13Step = 182 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack4.
            recoveredBlock13PC := 185.
        ].
        recoveredBlock13Step = 185 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) < (recoveredBlock13Stack3).
            recoveredBlock13PC := 186.
        ].
        recoveredBlock13Step = 186 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 195] ifFalse: [recoveredBlock13PC := 190].
        ].
        recoveredBlock13Step = 190 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local1.
            recoveredBlock13PC := 193.
        ].
        recoveredBlock13Step = 193 ifTrue: [
            recoveredBlock13PC := 103.
        ].
        recoveredBlock13Step = 195 ifTrue: [
            recoveredBlock13Stack2 := nil.
            recoveredBlock13PC := 196.
        ].
        recoveredBlock13Step = 196 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack2.
            recoveredBlock13PC := 199.
        ].
        recoveredBlock13Step = 199 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2053eaa0; bytecode file offset 0xe3b3bc"
!EtasDatabaseWidget methodsFor: 'recovered'!
initializeLocalChildrenData: recoveredArg1 withProcessDialog: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) storeSortedItems.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLocalChildrenData: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) folderSelection.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := 'sortedFolderKeys'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := 'sortedChildrenKeys'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) perform: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := ASDGeneralOptions.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionShowDefaultProjects.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := [:block2810e2bcArg1 | 
    | block2810e2bcStack0 block2810e2bcStack1 block2810e2bcStack2 block2810e2bcStack3 block2810e2bcStack4 block2810e2bcPC block2810e2bcStep block2810e2bcDone block2810e2bcResult |
    block2810e2bcStack0 := self.
    block2810e2bcPC := 4.
    block2810e2bcDone := false.
    [block2810e2bcDone not] whileTrue: [
        block2810e2bcStep := block2810e2bcPC.
        block2810e2bcStep = 4 ifTrue: [
            block2810e2bcStack1 := false.
            block2810e2bcPC := 5.
        ].
        block2810e2bcStep = 5 ifTrue: [
            block2810e2bcStack2 := block2810e2bcArg1.
            block2810e2bcPC := 6.
        ].
        block2810e2bcStep = 6 ifTrue: [
            block2810e2bcStack2 := (block2810e2bcStack2) className.
            block2810e2bcPC := 8.
        ].
        block2810e2bcStep = 8 ifTrue: [
            block2810e2bcStack3 := 'SGProject'.
            block2810e2bcPC := 10.
        ].
        block2810e2bcStep = 10 ifTrue: [
            block2810e2bcStack2 := (block2810e2bcStack2) = (block2810e2bcStack3).
            block2810e2bcPC := 11.
        ].
        block2810e2bcStep = 11 ifTrue: [
            (block2810e2bcStack2) ifTrue: [block2810e2bcPC := 14] ifFalse: [block2810e2bcPC := 20].
        ].
        block2810e2bcStep = 14 ifTrue: [
            block2810e2bcPC := 15.
        ].
        block2810e2bcStep = 15 ifTrue: [
            block2810e2bcStack1 := block2810e2bcArg1.
            block2810e2bcPC := 16.
        ].
        block2810e2bcStep = 16 ifTrue: [
            block2810e2bcStack1 := (block2810e2bcStack1) object.
            block2810e2bcPC := 18.
        ].
        block2810e2bcStep = 18 ifTrue: [
            block2810e2bcStack1 := (block2810e2bcStack1) isDefaultProject.
            block2810e2bcPC := 20.
        ].
        block2810e2bcStep = 20 ifTrue: [
            block2810e2bcResult := block2810e2bcStack1.
            block2810e2bcDone := true.
        ].
    ].
    block2810e2bcResult
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := -1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbWidgetOptions.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) maskClassForLibs.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := SGLibrary.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 195] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := [:recoveredBlock125Arg1 | 
    | recoveredBlock125Stack0 recoveredBlock125Stack1 recoveredBlock125Stack2 recoveredBlock125Stack3 recoveredBlock125Stack4 recoveredBlock125Stack5 recoveredBlock125Stack6 recoveredBlock125Stack7 recoveredBlock125Stack8 recoveredBlock125PC recoveredBlock125Step recoveredBlock125Done recoveredBlock125Result |
    recoveredBlock125Stack0 := self.
    recoveredBlock125PC := 132.
    recoveredBlock125Done := false.
    [recoveredBlock125Done not] whileTrue: [
        recoveredBlock125Step := recoveredBlock125PC.
        recoveredBlock125Step = 132 ifTrue: [
            recoveredBlock125Stack1 := recoveredLocal1.
            recoveredBlock125PC := 135.
        ].
        recoveredBlock125Step = 135 ifTrue: [
            recoveredBlock125Stack1 := (recoveredBlock125Stack1) + (1).
            recoveredBlock125PC := 136.
        ].
        recoveredBlock125Step = 136 ifTrue: [
            recoveredLocal1 := recoveredBlock125Stack1.
            recoveredBlock125PC := 139.
        ].
        recoveredBlock125Step = 139 ifTrue: [
            recoveredBlock125Stack1 := true.
            recoveredBlock125PC := 140.
        ].
        recoveredBlock125Step = 140 ifTrue: [
            recoveredBlock125Stack2 := recoveredBlock125Arg1.
            recoveredBlock125PC := 141.
        ].
        recoveredBlock125Step = 141 ifTrue: [
            recoveredBlock125Stack2 := (recoveredBlock125Stack2) isFolder.
            recoveredBlock125PC := 143.
        ].
        recoveredBlock125Step = 143 ifTrue: [
            (recoveredBlock125Stack2) ifTrue: [recoveredBlock125PC := 154] ifFalse: [recoveredBlock125PC := 146].
        ].
        recoveredBlock125Step = 146 ifTrue: [
            recoveredBlock125Stack2 := self.
            recoveredBlock125PC := 147.
        ].
        recoveredBlock125Step = 147 ifTrue: [
            recoveredBlock125Stack3 := recoveredBlock125Arg1.
            recoveredBlock125PC := 148.
        ].
        recoveredBlock125Step = 148 ifTrue: [
            recoveredBlock125Stack2 := (recoveredBlock125Stack2) keyIsMasked: (recoveredBlock125Stack3).
            recoveredBlock125PC := 150.
        ].
        recoveredBlock125Step = 150 ifTrue: [
            (recoveredBlock125Stack2) ifTrue: [recoveredBlock125PC := 189] ifFalse: [recoveredBlock125PC := 154].
        ].
        recoveredBlock125Step = 154 ifTrue: [
            recoveredBlock125PC := 155.
        ].
        recoveredBlock125Step = 155 ifTrue: [
            recoveredBlock125Stack1 := false.
            recoveredBlock125PC := 156.
        ].
        recoveredBlock125Step = 156 ifTrue: [
            recoveredBlock125Stack2 := recoveredBlock125Arg1.
            recoveredBlock125PC := 157.
        ].
        recoveredBlock125Step = 157 ifTrue: [
            recoveredBlock125Stack2 := (recoveredBlock125Stack2) object.
            recoveredBlock125PC := 159.
        ].
        recoveredBlock125Step = 159 ifTrue: [
            (recoveredBlock125Stack2 == nil) ifTrue: [recoveredBlock125PC := 189] ifFalse: [recoveredBlock125PC := 162].
        ].
        recoveredBlock125Step = 162 ifTrue: [
            recoveredBlock125PC := 163.
        ].
        recoveredBlock125Step = 163 ifTrue: [
            recoveredBlock125Stack1 := self.
            recoveredBlock125PC := 164.
        ].
        recoveredBlock125Step = 164 ifTrue: [
            recoveredBlock125Stack2 := recoveredLocal4.
            recoveredBlock125PC := 167.
        ].
        recoveredBlock125Step = 167 ifTrue: [
            recoveredBlock125Stack3 := recoveredBlock125Arg1.
            recoveredBlock125PC := 168.
        ].
        recoveredBlock125Step = 168 ifTrue: [
            recoveredBlock125Stack4 := recoveredArg2.
            recoveredBlock125PC := 171.
        ].
        recoveredBlock125Step = 171 ifTrue: [
            recoveredBlock125Stack5 := recoveredLocal1.
            recoveredBlock125PC := 174.
        ].
        recoveredBlock125Step = 174 ifTrue: [
            recoveredBlock125Stack6 := recoveredLocal2.
            recoveredBlock125PC := 177.
        ].
        recoveredBlock125Step = 177 ifTrue: [
            recoveredBlock125Stack5 := (recoveredBlock125Stack5) / (recoveredBlock125Stack6).
            recoveredBlock125PC := 179.
        ].
        recoveredBlock125Step = 179 ifTrue: [
            recoveredBlock125Stack6 := 1.
            recoveredBlock125PC := 181.
        ].
        recoveredBlock125Step = 181 ifTrue: [
            recoveredBlock125Stack7 := recoveredLocal2.
            recoveredBlock125PC := 184.
        ].
        recoveredBlock125Step = 184 ifTrue: [
            recoveredBlock125Stack6 := (recoveredBlock125Stack6) / (recoveredBlock125Stack7).
            recoveredBlock125PC := 186.
        ].
        recoveredBlock125Step = 186 ifTrue: [
            recoveredBlock125Stack1 := (recoveredBlock125Stack1) hasChildrenForHierarchicalViewMaskLibs: (recoveredBlock125Stack2) for: (recoveredBlock125Stack3) withProcessDialog: (recoveredBlock125Stack4) fractionComplete: (recoveredBlock125Stack5) fractionPart: (recoveredBlock125Stack6).
            recoveredBlock125PC := 189.
        ].
        recoveredBlock125Step = 189 ifTrue: [
            recoveredBlock125Result := recoveredBlock125Stack1.
            recoveredBlock125Done := true.
        ].
    ].
    recoveredBlock125Result
].
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := (recoveredStack0) storeSortedItems.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 200] ifFalse: [recoveredPC := 209].
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack0) putLocalChildrenData: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205465a4; bytecode file offset 0xe42ebc"
!EtasDatabaseWidget methodsFor: 'recovered'!
updateLocalChildrenForHierarchicalViewMaskLibs: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) notFolderChildrenKeys.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) folderChildrenKeys.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := SGLibrary.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 160.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := [:recoveredBlock54Arg1 | 
    | recoveredBlock54Value0 recoveredBlock54Value1 recoveredBlock54Value2 recoveredBlock54Value3 |
    recoveredBlock54Value0 := recoveredLocal7.
    recoveredBlock54Value1 := recoveredBlock54Arg1.
    recoveredBlock54Value2 := (recoveredBlock54Value1) itemTypeLabels.
    recoveredBlock54Value3 := (recoveredBlock54Value0) addAll: (recoveredBlock54Value2).
    recoveredBlock54Value3
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := [:recoveredBlock74Arg1 | 
    | recoveredBlock74Value0 recoveredBlock74Value1 recoveredBlock74Value2 recoveredBlock74Value3 |
    recoveredBlock74Value0 := recoveredLocal7.
    recoveredBlock74Value1 := recoveredBlock74Arg1.
    recoveredBlock74Value2 := (recoveredBlock74Value1) className.
    recoveredBlock74Value3 := (recoveredBlock74Value0) includes: (recoveredBlock74Value2).
    recoveredBlock74Value3
].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 139].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := SGLibraryProject.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 139].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := [:block2810e8a4Arg1 | 
    | block2810e8a4Stack0 block2810e8a4Stack1 block2810e8a4Stack2 block2810e8a4Stack3 block2810e8a4PC block2810e8a4Step block2810e8a4Done block2810e8a4Result |
    block2810e8a4Stack0 := self.
    block2810e8a4PC := 4.
    block2810e8a4Done := false.
    [block2810e8a4Done not] whileTrue: [
        block2810e8a4Step := block2810e8a4PC.
        block2810e8a4Step = 4 ifTrue: [
            block2810e8a4Stack1 := false.
            block2810e8a4PC := 5.
        ].
        block2810e8a4Step = 5 ifTrue: [
            block2810e8a4Stack2 := block2810e8a4Arg1.
            block2810e8a4PC := 6.
        ].
        block2810e8a4Step = 6 ifTrue: [
            block2810e8a4Stack2 := (block2810e8a4Stack2) isProject.
            block2810e8a4PC := 8.
        ].
        block2810e8a4Step = 8 ifTrue: [
            (block2810e8a4Stack2) ifTrue: [block2810e8a4PC := 12] ifFalse: [block2810e8a4PC := 17].
        ].
        block2810e8a4Step = 12 ifTrue: [
            block2810e8a4PC := 13.
        ].
        block2810e8a4Step = 13 ifTrue: [
            block2810e8a4Stack1 := block2810e8a4Arg1.
            block2810e8a4PC := 14.
        ].
        block2810e8a4Step = 14 ifTrue: [
            block2810e8a4Stack1 := (block2810e8a4Stack1) isDefaultProject.
            block2810e8a4PC := 16.
        ].
        block2810e8a4Step = 16 ifTrue: [
            block2810e8a4Stack1 := (block2810e8a4Stack1) not.
            block2810e8a4PC := 17.
        ].
        block2810e8a4Step = 17 ifTrue: [
            block2810e8a4Result := block2810e8a4Stack1.
            block2810e8a4Done := true.
        ].
    ].
    block2810e8a4Result
].
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := [:recoveredBlock142Arg1 | 
    | recoveredBlock142Value0 recoveredBlock142Value1 recoveredBlock142Value2 |
    recoveredBlock142Value0 := recoveredArg1.
    recoveredBlock142Value1 := recoveredBlock142Arg1.
    recoveredBlock142Value2 := (self) hasChildrenForHierarchicalViewMaskLibs: (recoveredBlock142Value0) for: (recoveredBlock142Value1).
    recoveredBlock142Value2
].
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := RBTopFolder.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortBlock.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := RBTopFolder.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortBlock.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := (recoveredStack2) asArray.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := (recoveredStack2) asRBDBReference.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack0) putLocalChildrenData: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20547d1c; bytecode file offset 0xe44660"
!EtasDatabaseWidget methodsFor: 'recovered'!
getCompleteLabelForItem: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLabelForItem: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'DET65708'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDisallowOverwriteSet.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := ' '.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := EtDisallowImportLabel.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) versionStringExtended.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 'Call_38552'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := ' <'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := '>'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbWidgetOptions.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) showTimeStamp.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := ' ('.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) modifiedTimeStampString.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := ')'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbWidgetOptions.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) showPath.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := ' ('.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) libraryPath.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := ')'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbWidgetOptions.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) showExtendedInfo.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFolder.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := ' ('.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) accessString.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := ')'.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := EtasXMLDefinedOptions.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := 'ShowModificationInComponentManager'.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 214].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRootItem.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 214] ifFalse: [recoveredPC := 184].
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) allDependentProxiesWithUnloaded: (recoveredStack1).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := [:block2810ec70Arg1 | 
    | block2810ec70Value0 block2810ec70Value1 block2810ec70Value2 |
    block2810ec70Value0 := block2810ec70Arg1.
    block2810ec70Value1 := (block2810ec70Value0) dbObject.
    block2810ec70Value2 := (block2810ec70Value1) isModified.
    block2810ec70Value2
].
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 206] ifFalse: [recoveredPC := 214].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := '*'.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20582920; bytecode file offset 0xe7f22c"
!EtasDatabaseWidget methodsFor: 'recovered'!
topShellFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) activeCaptionColor.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'outerItemForm'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack2) backgroundColor: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) redrawWidget.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'classLabel'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) backgroundColor: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := CgRGBColor.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := OS.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack5 := ColorCaptiontext.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := (recoveredStack4) getSysColor: (recoveredStack5).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) fromOSRGB: (recoveredStack4).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) foregroundColor: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) redrawWidget.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 'buttonItemList'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack2) backgroundColor: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) redrawWidget.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 'outerCommentForm'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack2) backgroundColor: (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) redrawWidget.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 'itemCommentLabel'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack2) backgroundColor: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := CgRGBColor.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := OS.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack5 := ColorCaptiontext.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack4 := (recoveredStack4) getSysColor: (recoveredStack5).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := (recoveredStack3) fromOSRGB: (recoveredStack4).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack2) foregroundColor: (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) redrawWidget.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := 'buttonItemComment'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack2) backgroundColor: (recoveredStack3).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) redrawWidget.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) reason.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := XmCRLOSINGFOCUS.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 262].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := 'outerItemForm'.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := CgRGBColor.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack4 := OS.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack5 := ColorInactivecaption.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack4 := (recoveredStack4) getSysColor: (recoveredStack5).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := (recoveredStack3) fromOSRGB: (recoveredStack4).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack2) backgroundColor: (recoveredStack3).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) redrawWidget.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := 'classLabel'.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := CgRGBColor.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack4 := OS.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack5 := ColorInactivecaption.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack4 := (recoveredStack4) getSysColor: (recoveredStack5).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := (recoveredStack3) fromOSRGB: (recoveredStack4).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack2) backgroundColor: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := CgRGBColor.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack4 := OS.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack5 := ColorInactivecaptiontext.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack4 := (recoveredStack4) getSysColor: (recoveredStack5).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := (recoveredStack3) fromOSRGB: (recoveredStack4).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack2) foregroundColor: (recoveredStack3).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack1) redrawWidget.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := 'buttonItemList'.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := CgRGBColor.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack4 := OS.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack5 := ColorInactivecaption.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack4 := (recoveredStack4) getSysColor: (recoveredStack5).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := (recoveredStack3) fromOSRGB: (recoveredStack4).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack2) backgroundColor: (recoveredStack3).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack1) redrawWidget.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := 'outerCommentForm'.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := CgRGBColor.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack4 := OS.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack5 := ColorInactivecaption.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack4 := (recoveredStack4) getSysColor: (recoveredStack5).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack3 := (recoveredStack3) fromOSRGB: (recoveredStack4).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            (recoveredStack2) backgroundColor: (recoveredStack3).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack1) redrawWidget.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack2 := 'itemCommentLabel'.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack3 := CgRGBColor.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack4 := OS.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack5 := ColorInactivecaption.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack4 := (recoveredStack4) getSysColor: (recoveredStack5).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack3 := (recoveredStack3) fromOSRGB: (recoveredStack4).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack2) backgroundColor: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack3 := CgRGBColor.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack4 := OS.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack5 := ColorInactivecaptiontext.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack4 := (recoveredStack4) getSysColor: (recoveredStack5).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack3 := (recoveredStack3) fromOSRGB: (recoveredStack4).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack2) foregroundColor: (recoveredStack3).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            (recoveredStack1) redrawWidget.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := 'buttonItemComment'.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAt: (recoveredStack2).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack3 := CgRGBColor.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack4 := OS.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack5 := ColorInactivecaption.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack4 := (recoveredStack4) getSysColor: (recoveredStack5).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack3 := (recoveredStack3) fromOSRGB: (recoveredStack4).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            (recoveredStack2) backgroundColor: (recoveredStack3).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack1) redrawWidget.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2059c6e0; bytecode file offset 0xe99050"
!EtasDatabaseWidget methodsFor: 'recovered'!
pasteSelection
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) pasteIsPossible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 286].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'Muzaffar'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Call_41291'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItem.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 286] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLibrary.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 286] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasAccessRightsPassword.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := RBUserQuestion.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 'Do you really want to move component into protected folder?'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirm: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) yesNo.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) refresh.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := 'call_2011403137'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) bufferedItems.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := [:recoveredBlock74Arg1 | 
    | recoveredBlock74Local1 recoveredBlock74Stack0 recoveredBlock74Stack1 recoveredBlock74Stack2 recoveredBlock74Stack3 recoveredBlock74Stack4 recoveredBlock74Stack5 recoveredBlock74PC recoveredBlock74Step recoveredBlock74Done recoveredBlock74Result |
    recoveredBlock74Stack0 := self.
    recoveredBlock74PC := 80.
    recoveredBlock74Done := false.
    [recoveredBlock74Done not] whileTrue: [
        recoveredBlock74Step := recoveredBlock74PC.
        recoveredBlock74Step = 80 ifTrue: [
            recoveredBlock74Stack1 := nil.
            recoveredBlock74PC := 81.
        ].
        recoveredBlock74Step = 81 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Arg1.
            recoveredBlock74PC := 84.
        ].
        recoveredBlock74Step = 84 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) contents.
            recoveredBlock74PC := 86.
        ].
        recoveredBlock74Step = 86 ifTrue: [
            recoveredBlock74Stack3 := [:block28115264Arg1 | 
    | block28115264Value0 block28115264Value1 block28115264Value2 |
    block28115264Value0 := block28115264Arg1.
    block28115264Value1 := (block28115264Value0) item.
    block28115264Value2 := (block28115264Value1) hasDuplicateOIdsInReferencedItems.
    block28115264Value2
].
            recoveredBlock74PC := 88.
        ].
        recoveredBlock74Step = 88 ifTrue: [
            recoveredBlock74PC := 98.
        ].
        recoveredBlock74Step = 98 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) anySatisfy: (recoveredBlock74Stack3).
            recoveredBlock74PC := 100.
        ].
        recoveredBlock74Step = 100 ifTrue: [
            (recoveredBlock74Stack2) ifTrue: [recoveredBlock74PC := 104] ifFalse: [recoveredBlock74PC := 230].
        ].
        recoveredBlock74Step = 104 ifTrue: [
            recoveredBlock74PC := 105.
        ].
        recoveredBlock74Step = 105 ifTrue: [
            recoveredBlock74Stack1 := ReadWriteStream.
            recoveredBlock74PC := 107.
        ].
        recoveredBlock74Step = 107 ifTrue: [
            recoveredBlock74Stack2 := ''.
            recoveredBlock74PC := 109.
        ].
        recoveredBlock74Step = 109 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) on: (recoveredBlock74Stack2).
            recoveredBlock74PC := 111.
        ].
        recoveredBlock74Step = 111 ifTrue: [
            recoveredBlock74Local1 := recoveredBlock74Stack1.
            recoveredBlock74PC := 114.
        ].
        recoveredBlock74Step = 114 ifTrue: [
            recoveredBlock74Stack1 := recoveredBlock74Arg1.
            recoveredBlock74PC := 117.
        ].
        recoveredBlock74Step = 117 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) contents.
            recoveredBlock74PC := 119.
        ].
        recoveredBlock74Step = 119 ifTrue: [
            recoveredBlock74Stack2 := [:recoveredBlock74Block119Arg1 | 
    | recoveredBlock74Block119Value0 recoveredBlock74Block119Value1 recoveredBlock74Block119Value2 recoveredBlock74Block119Value3 recoveredBlock74Block119Value4 |
    recoveredBlock74Block119Value0 := recoveredBlock74Block119Arg1.
    recoveredBlock74Block119Value1 := (recoveredBlock74Block119Value0) item.
    recoveredBlock74Block119Value2 := (recoveredBlock74Block119Value1) getDuplicateOIdsInReferencedItemsStringVerbose: (false).
    recoveredBlock74Block119Value3 := [:recoveredBlock74Block119Block132Arg1 :recoveredBlock74Block119Block132Arg2 | 
    | recoveredBlock74Block119Block132Stack0 recoveredBlock74Block119Block132Stack1 recoveredBlock74Block119Block132Stack2 recoveredBlock74Block119Block132Stack3 recoveredBlock74Block119Block132Stack4 recoveredBlock74Block119Block132PC recoveredBlock74Block119Block132Step recoveredBlock74Block119Block132Done recoveredBlock74Block119Block132Result |
    recoveredBlock74Block119Block132Stack0 := nil.
    recoveredBlock74Block119Block132PC := 138.
    recoveredBlock74Block119Block132Done := false.
    [recoveredBlock74Block119Block132Done not] whileTrue: [
        recoveredBlock74Block119Block132Step := recoveredBlock74Block119Block132PC.
        recoveredBlock74Block119Block132Step = 138 ifTrue: [
            recoveredBlock74Block119Block132Stack1 := recoveredBlock74Block119Block132Arg2.
            recoveredBlock74Block119Block132PC := 139.
        ].
        recoveredBlock74Block119Block132Step = 139 ifTrue: [
            recoveredBlock74Block119Block132Stack2 := 20.
            recoveredBlock74Block119Block132PC := 141.
        ].
        recoveredBlock74Block119Block132Step = 141 ifTrue: [
            recoveredBlock74Block119Block132Stack1 := (recoveredBlock74Block119Block132Stack1) <= (recoveredBlock74Block119Block132Stack2).
            recoveredBlock74Block119Block132PC := 142.
        ].
        recoveredBlock74Block119Block132Step = 142 ifTrue: [
            (recoveredBlock74Block119Block132Stack1) ifTrue: [recoveredBlock74Block119Block132PC := 146] ifFalse: [recoveredBlock74Block119Block132PC := 152].
        ].
        recoveredBlock74Block119Block132Step = 146 ifTrue: [
            recoveredBlock74Block119Block132Stack1 := recoveredBlock74Local1.
            recoveredBlock74Block119Block132PC := 149.
        ].
        recoveredBlock74Block119Block132Step = 149 ifTrue: [
            recoveredBlock74Block119Block132Stack2 := recoveredBlock74Block119Block132Arg1.
            recoveredBlock74Block119Block132PC := 150.
        ].
        recoveredBlock74Block119Block132Step = 150 ifTrue: [
            (recoveredBlock74Block119Block132Stack1) nextPutAll: (recoveredBlock74Block119Block132Stack2).
            recoveredBlock74Block119Block132PC := 152.
        ].
        recoveredBlock74Block119Block132Step = 152 ifTrue: [
            recoveredBlock74Block119Block132Stack1 := nil.
            recoveredBlock74Block119Block132PC := 153.
        ].
        recoveredBlock74Block119Block132Step = 153 ifTrue: [
            recoveredBlock74Block119Block132Stack2 := recoveredBlock74Block119Block132Arg2.
            recoveredBlock74Block119Block132PC := 154.
        ].
        recoveredBlock74Block119Block132Step = 154 ifTrue: [
            recoveredBlock74Block119Block132Stack3 := 20.
            recoveredBlock74Block119Block132PC := 156.
        ].
        recoveredBlock74Block119Block132Step = 156 ifTrue: [
            recoveredBlock74Block119Block132Stack2 := (recoveredBlock74Block119Block132Stack2) = (recoveredBlock74Block119Block132Stack3).
            recoveredBlock74Block119Block132PC := 157.
        ].
        recoveredBlock74Block119Block132Step = 157 ifTrue: [
            (recoveredBlock74Block119Block132Stack2) ifTrue: [recoveredBlock74Block119Block132PC := 160] ifFalse: [recoveredBlock74Block119Block132PC := 168].
        ].
        recoveredBlock74Block119Block132Step = 160 ifTrue: [
            recoveredBlock74Block119Block132PC := 161.
        ].
        recoveredBlock74Block119Block132Step = 161 ifTrue: [
            recoveredBlock74Block119Block132Stack1 := recoveredBlock74Local1.
            recoveredBlock74Block119Block132PC := 164.
        ].
        recoveredBlock74Block119Block132Step = 164 ifTrue: [
            recoveredBlock74Block119Block132Stack2 := '...'.
            recoveredBlock74Block119Block132PC := 166.
        ].
        recoveredBlock74Block119Block132Step = 166 ifTrue: [
            recoveredBlock74Block119Block132Stack1 := (recoveredBlock74Block119Block132Stack1) nextPutAll: (recoveredBlock74Block119Block132Stack2).
            recoveredBlock74Block119Block132PC := 168.
        ].
        recoveredBlock74Block119Block132Step = 168 ifTrue: [
            recoveredBlock74Block119Block132Result := recoveredBlock74Block119Block132Stack1.
            recoveredBlock74Block119Block132Done := true.
        ].
    ].
    recoveredBlock74Block119Block132Result
].
    recoveredBlock74Block119Value4 := (recoveredBlock74Block119Value2) doWithIndex: (recoveredBlock74Block119Value3).
    recoveredBlock74Block119Value4
].
            recoveredBlock74PC := 172.
        ].
        recoveredBlock74Step = 172 ifTrue: [
            (recoveredBlock74Stack1) do: (recoveredBlock74Stack2).
            recoveredBlock74PC := 174.
        ].
        recoveredBlock74Step = 174 ifTrue: [
            recoveredBlock74Stack1 := recoveredBlock74Local1.
            recoveredBlock74PC := 177.
        ].
        recoveredBlock74Step = 177 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Stack1.
            recoveredBlock74PC := 178.
        ].
        recoveredBlock74Step = 178 ifTrue: [
            (recoveredBlock74Stack2) cr.
            recoveredBlock74PC := 180.
        ].
        recoveredBlock74Step = 180 ifTrue: [
            recoveredBlock74Stack2 := 'You find more detailed information in monitor window'.
            recoveredBlock74PC := 182.
        ].
        recoveredBlock74Step = 182 ifTrue: [
            (recoveredBlock74Stack1) nextPutAll: (recoveredBlock74Stack2).
            recoveredBlock74PC := 184.
        ].
        recoveredBlock74Step = 184 ifTrue: [
            recoveredBlock74Stack1 := self.
            recoveredBlock74PC := 185.
        ].
        recoveredBlock74Step = 185 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) mainController.
            recoveredBlock74PC := 187.
        ].
        recoveredBlock74Step = 187 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Arg1.
            recoveredBlock74PC := 190.
        ].
        recoveredBlock74Step = 190 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) contents.
            recoveredBlock74PC := 192.
        ].
        recoveredBlock74Step = 192 ifTrue: [
            (recoveredBlock74Stack1) printInvalidOidItemsToMonitor: (recoveredBlock74Stack2).
            recoveredBlock74PC := 194.
        ].
        recoveredBlock74Step = 194 ifTrue: [
            recoveredBlock74Stack1 := nil.
            recoveredBlock74PC := 195.
        ].
        recoveredBlock74Step = 195 ifTrue: [
            recoveredBlock74Stack2 := RBUserQuestion.
            recoveredBlock74PC := 197.
        ].
        recoveredBlock74Step = 197 ifTrue: [
            recoveredBlock74Stack3 := 'ASCET found mutually inconsistent ids during copy operation. This could be caused by having copied objects in previous versions of ASCET,\where the copy mechanism contained an error. The root cause has already been fixed.\ \%1 \ \Do you want to proceed? Proceeding may cause datamodel inconsistencies, e.g. missing connection lines.'.
            recoveredBlock74PC := 199.
        ].
        recoveredBlock74Step = 199 ifTrue: [
            recoveredBlock74Stack3 := (recoveredBlock74Stack3) withCrs.
            recoveredBlock74PC := 201.
        ].
        recoveredBlock74Step = 201 ifTrue: [
            recoveredBlock74Stack4 := recoveredBlock74Local1.
            recoveredBlock74PC := 204.
        ].
        recoveredBlock74Step = 204 ifTrue: [
            recoveredBlock74Stack4 := (recoveredBlock74Stack4) contents.
            recoveredBlock74PC := 206.
        ].
        recoveredBlock74Step = 206 ifTrue: [
            recoveredBlock74Stack3 := (recoveredBlock74Stack3) bindWith: (recoveredBlock74Stack4).
            recoveredBlock74PC := 208.
        ].
        recoveredBlock74Step = 208 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) confirm: (recoveredBlock74Stack3).
            recoveredBlock74PC := 210.
        ].
        recoveredBlock74Step = 210 ifTrue: [
            recoveredBlock74Stack3 := recoveredBlock74Stack2.
            recoveredBlock74PC := 211.
        ].
        recoveredBlock74Step = 211 ifTrue: [
            (recoveredBlock74Stack3) yesNo.
            recoveredBlock74PC := 213.
        ].
        recoveredBlock74Step = 213 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) prompt.
            recoveredBlock74PC := 215.
        ].
        recoveredBlock74Step = 215 ifTrue: [
            (recoveredBlock74Stack2) ifTrue: [recoveredBlock74PC := 226] ifFalse: [recoveredBlock74PC := 218].
        ].
        recoveredBlock74Step = 218 ifTrue: [
            recoveredBlock74PC := 219.
        ].
        recoveredBlock74Step = 219 ifTrue: [
            recoveredBlock74Stack1 := self.
            recoveredBlock74PC := 220.
        ].
        recoveredBlock74Step = 220 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) classList.
            recoveredBlock74PC := 222.
        ].
        recoveredBlock74Step = 222 ifTrue: [
            (recoveredBlock74Stack1) refresh.
            recoveredBlock74PC := 224.
        ].
        recoveredBlock74Step = 224 ifTrue: [
            recoveredBlock74Stack1 := nil.
            recoveredBlock74PC := 225.
        ].
        recoveredBlock74Step = 225 ifTrue: [
            ^recoveredBlock74Stack1
        ].
        recoveredBlock74Step = 226 ifTrue: [
            recoveredBlock74Stack2 := nil.
            recoveredBlock74PC := 227.
        ].
        recoveredBlock74Step = 227 ifTrue: [
            recoveredBlock74Local1 := recoveredBlock74Stack2.
            recoveredBlock74PC := 230.
        ].
        recoveredBlock74Step = 230 ifTrue: [
            recoveredBlock74Result := recoveredBlock74Stack1.
            recoveredBlock74Done := true.
        ].
    ].
    recoveredBlock74Result
].
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := EtasDatamodelObserver.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock235Value0 recoveredBlock235Value1 recoveredBlock235Value2 recoveredBlock235Value3 recoveredBlock235Value4 recoveredBlock235Value5 |
    recoveredBlock235Value0 := recoveredLocal3.
    recoveredBlock235Value1 := [
    | recoveredBlock235Block245Value0 recoveredBlock235Block245Value1 |
    recoveredBlock235Block245Value0 := (self) bufferedItems.
    recoveredBlock235Block245Value1 := (recoveredBlock235Block245Value0) pasteSelectionToWidget: (self).
    recoveredBlock235Block245Value1
].
    (recoveredBlock235Value0) suspendObserving: (recoveredBlock235Value1) notify: (true).
    recoveredBlock235Value2 := ('Kli') == ('EngineeringHooks').
    recoveredBlock235Value3 := MainController.
    recoveredBlock235Value4 := (self) bufferedItems.
    (recoveredBlock235Value3) executePostPasteHook: (recoveredBlock235Value4).
    recoveredBlock235Value5 := (self) broadcast: ('updateToolbar').
    recoveredBlock235Value5
].
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack0) deferObservingWhile: (recoveredStack1).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            (recoveredStack0) refresh.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2059fc8c; bytecode file offset 0xe9c5e0"
!EtasDatabaseWidget methodsFor: 'recovered'!
showLoadedItem: recoveredArg1 callData: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDbObject.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasMaskedChildren: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) hasChildren: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) children.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) notEmpty.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) hasChildren: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) isFolder.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 196].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRootItem.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) library.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) iconName.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) classList.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) itemPosition.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) isExpandedPos: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := 'GeneralFolderOpened'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := 'GeneralFolderClosed'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := 'DET65708'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDisallowOverwriteSet.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 129].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 129] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := 'GeneralOverlayForbidden'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLibrary.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock138Value0 recoveredBlock138Value1 |
    recoveredBlock138Value0 := recoveredLocal1.
    recoveredBlock138Value1 := (recoveredBlock138Value0) notNil.
    recoveredBlock138Value1
].
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack1) runtimeAssert: (recoveredStack2).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 181] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasAccessRightsPassword.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 166] ifFalse: [recoveredPC := 181].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 181] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := 'GeneralOverlayKey'.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := ASDAscetController.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSCMActive.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 196].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack1) scmAddOverlaysTo: (recoveredStack2).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := (recoveredStack1) isFolder.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 204] ifFalse: [recoveredPC := 222].
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) resourceManager.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIcon16: (recoveredStack2) overlayedWithIconArray: (recoveredStack3).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredPC := 233.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := (recoveredStack2) resourceManager.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := (recoveredStack1) getIcon: (recoveredStack2).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 271] ifFalse: [recoveredPC := 240].
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := (recoveredStack1) bufferedItems.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 271] ifFalse: [recoveredPC := 246].
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := (recoveredStack1) bufferedItems.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := (recoveredStack1) containsItem: (recoveredStack2).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 258] ifFalse: [recoveredPC := 271].
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := (recoveredStack1) resourceManager.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnGrayedIconWithName: (recoveredStack2).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            (recoveredStack1) icon: (recoveredStack2).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack2 := (recoveredStack2) getCompleteLabelForItem: (recoveredStack3).
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            (recoveredStack1) label: (recoveredStack2).
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205c18a0; bytecode file offset 0xebe1dc"
!EtasDatabaseWidget methodsFor: 'recovered'!
updateLocalChildrenForHierarchicalViewMaskLibs: recoveredArg1 for: recoveredArg2 withProcessDialog: recoveredArg3 fractionComplete: recoveredArg4 fractionPart: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) notFolderChildrenKeys.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) folderChildrenKeys.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := SGLibrary.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 272.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := [:recoveredBlock54Arg1 | 
    | recoveredBlock54Value0 recoveredBlock54Value1 recoveredBlock54Value2 recoveredBlock54Value3 |
    recoveredBlock54Value0 := recoveredLocal9.
    recoveredBlock54Value1 := recoveredBlock54Arg1.
    recoveredBlock54Value2 := (recoveredBlock54Value1) itemTypeLabels.
    recoveredBlock54Value3 := (recoveredBlock54Value0) addAll: (recoveredBlock54Value2).
    recoveredBlock54Value3
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := [:recoveredBlock74Arg1 | 
    | recoveredBlock74Value0 recoveredBlock74Value1 recoveredBlock74Value2 recoveredBlock74Value3 |
    recoveredBlock74Value0 := recoveredLocal9.
    recoveredBlock74Value1 := recoveredBlock74Arg1.
    recoveredBlock74Value2 := (recoveredBlock74Value1) className.
    recoveredBlock74Value3 := (recoveredBlock74Value0) includes: (recoveredBlock74Value2).
    recoveredBlock74Value3
].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 139].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := SGLibraryProject.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 139].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := [:block28117d48Arg1 | 
    | block28117d48Stack0 block28117d48Stack1 block28117d48Stack2 block28117d48Stack3 block28117d48PC block28117d48Step block28117d48Done block28117d48Result |
    block28117d48Stack0 := self.
    block28117d48PC := 4.
    block28117d48Done := false.
    [block28117d48Done not] whileTrue: [
        block28117d48Step := block28117d48PC.
        block28117d48Step = 4 ifTrue: [
            block28117d48Stack1 := false.
            block28117d48PC := 5.
        ].
        block28117d48Step = 5 ifTrue: [
            block28117d48Stack2 := block28117d48Arg1.
            block28117d48PC := 6.
        ].
        block28117d48Step = 6 ifTrue: [
            block28117d48Stack2 := (block28117d48Stack2) isProject.
            block28117d48PC := 8.
        ].
        block28117d48Step = 8 ifTrue: [
            (block28117d48Stack2) ifTrue: [block28117d48PC := 12] ifFalse: [block28117d48PC := 17].
        ].
        block28117d48Step = 12 ifTrue: [
            block28117d48PC := 13.
        ].
        block28117d48Step = 13 ifTrue: [
            block28117d48Stack1 := block28117d48Arg1.
            block28117d48PC := 14.
        ].
        block28117d48Step = 14 ifTrue: [
            block28117d48Stack1 := (block28117d48Stack1) isDefaultProject.
            block28117d48PC := 16.
        ].
        block28117d48Step = 16 ifTrue: [
            block28117d48Stack1 := (block28117d48Stack1) not.
            block28117d48PC := 17.
        ].
        block28117d48Step = 17 ifTrue: [
            block28117d48Result := block28117d48Stack1.
            block28117d48Done := true.
        ].
    ].
    block28117d48Result
].
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := [:recoveredBlock155Arg1 | 
    | recoveredBlock155Local1 recoveredBlock155Stack0 recoveredBlock155Stack1 recoveredBlock155Stack2 recoveredBlock155Stack3 recoveredBlock155Stack4 recoveredBlock155Stack5 recoveredBlock155Stack6 recoveredBlock155Stack7 recoveredBlock155PC recoveredBlock155Step recoveredBlock155Done recoveredBlock155Result |
    recoveredBlock155Stack0 := self.
    recoveredBlock155PC := 162.
    recoveredBlock155Done := false.
    [recoveredBlock155Done not] whileTrue: [
        recoveredBlock155Step := recoveredBlock155PC.
        recoveredBlock155Step = 162 ifTrue: [
            recoveredBlock155Stack1 := recoveredLocal1.
            recoveredBlock155PC := 165.
        ].
        recoveredBlock155Step = 165 ifTrue: [
            recoveredBlock155Stack1 := (recoveredBlock155Stack1) + (1).
            recoveredBlock155PC := 166.
        ].
        recoveredBlock155Step = 166 ifTrue: [
            recoveredLocal1 := recoveredBlock155Stack1.
            recoveredBlock155PC := 169.
        ].
        recoveredBlock155Step = 169 ifTrue: [
            recoveredBlock155Stack1 := recoveredArg1.
            recoveredBlock155PC := 172.
        ].
        recoveredBlock155Step = 172 ifTrue: [
            recoveredBlock155Stack2 := recoveredBlock155Arg1.
            recoveredBlock155PC := 173.
        ].
        recoveredBlock155Step = 173 ifTrue: [
            recoveredBlock155Stack3 := recoveredArg3.
            recoveredBlock155PC := 176.
        ].
        recoveredBlock155Step = 176 ifTrue: [
            recoveredBlock155Stack4 := recoveredLocal1.
            recoveredBlock155PC := 179.
        ].
        recoveredBlock155Step = 179 ifTrue: [
            recoveredBlock155Stack4 := (recoveredBlock155Stack4) + (-1).
            recoveredBlock155PC := 180.
        ].
        recoveredBlock155Step = 180 ifTrue: [
            recoveredBlock155Stack5 := recoveredLocal2.
            recoveredBlock155PC := 183.
        ].
        recoveredBlock155Step = 183 ifTrue: [
            recoveredBlock155Stack4 := (recoveredBlock155Stack4) / (recoveredBlock155Stack5).
            recoveredBlock155PC := 185.
        ].
        recoveredBlock155Step = 185 ifTrue: [
            recoveredBlock155Stack5 := recoveredArg5.
            recoveredBlock155PC := 188.
        ].
        recoveredBlock155Step = 188 ifTrue: [
            recoveredBlock155Stack4 := (recoveredBlock155Stack4) * (recoveredBlock155Stack5).
            recoveredBlock155PC := 189.
        ].
        recoveredBlock155Step = 189 ifTrue: [
            recoveredBlock155Stack5 := recoveredArg4.
            recoveredBlock155PC := 192.
        ].
        recoveredBlock155Step = 192 ifTrue: [
            recoveredBlock155Stack4 := (recoveredBlock155Stack4) + (recoveredBlock155Stack5).
            recoveredBlock155PC := 193.
        ].
        recoveredBlock155Step = 193 ifTrue: [
            recoveredBlock155Stack5 := recoveredArg5.
            recoveredBlock155PC := 196.
        ].
        recoveredBlock155Step = 196 ifTrue: [
            recoveredBlock155Stack6 := 1.
            recoveredBlock155PC := 198.
        ].
        recoveredBlock155Step = 198 ifTrue: [
            recoveredBlock155Stack5 := (recoveredBlock155Stack5) * (recoveredBlock155Stack6).
            recoveredBlock155PC := 199.
        ].
        recoveredBlock155Step = 199 ifTrue: [
            recoveredBlock155Stack6 := recoveredLocal2.
            recoveredBlock155PC := 202.
        ].
        recoveredBlock155Step = 202 ifTrue: [
            recoveredBlock155Stack5 := (recoveredBlock155Stack5) / (recoveredBlock155Stack6).
            recoveredBlock155PC := 204.
        ].
        recoveredBlock155Step = 204 ifTrue: [
            recoveredBlock155Stack0 := (recoveredBlock155Stack0) hasChildrenForHierarchicalViewMaskLibs: (recoveredBlock155Stack1) for: (recoveredBlock155Stack2) withProcessDialog: (recoveredBlock155Stack3) fractionComplete: (recoveredBlock155Stack4) fractionPart: (recoveredBlock155Stack5).
            recoveredBlock155PC := 207.
        ].
        recoveredBlock155Step = 207 ifTrue: [
            recoveredBlock155Local1 := recoveredBlock155Stack0.
            recoveredBlock155PC := 208.
        ].
        recoveredBlock155Step = 208 ifTrue: [
            recoveredBlock155Stack0 := recoveredLocal1.
            recoveredBlock155PC := 211.
        ].
        recoveredBlock155Step = 211 ifTrue: [
            recoveredBlock155Stack1 := recoveredLocal2.
            recoveredBlock155PC := 214.
        ].
        recoveredBlock155Step = 214 ifTrue: [
            recoveredBlock155Stack0 := (recoveredBlock155Stack0) / (recoveredBlock155Stack1).
            recoveredBlock155PC := 216.
        ].
        recoveredBlock155Step = 216 ifTrue: [
            recoveredBlock155Stack1 := recoveredArg5.
            recoveredBlock155PC := 219.
        ].
        recoveredBlock155Step = 219 ifTrue: [
            recoveredBlock155Stack0 := (recoveredBlock155Stack0) * (recoveredBlock155Stack1).
            recoveredBlock155PC := 220.
        ].
        recoveredBlock155Step = 220 ifTrue: [
            recoveredBlock155Stack1 := recoveredArg4.
            recoveredBlock155PC := 223.
        ].
        recoveredBlock155Step = 223 ifTrue: [
            recoveredBlock155Stack0 := (recoveredBlock155Stack0) + (recoveredBlock155Stack1).
            recoveredBlock155PC := 224.
        ].
        recoveredBlock155Step = 224 ifTrue: [
            recoveredBlock155Stack1 := (Fraction) numerator: (1) denominator: (100).
            recoveredBlock155PC := 226.
        ].
        recoveredBlock155Step = 226 ifTrue: [
            recoveredBlock155Stack0 := (recoveredBlock155Stack0) < (recoveredBlock155Stack1).
            recoveredBlock155PC := 227.
        ].
        recoveredBlock155Step = 227 ifTrue: [
            (recoveredBlock155Stack0) ifTrue: [recoveredBlock155PC := 265] ifFalse: [recoveredBlock155PC := 230].
        ].
        recoveredBlock155Step = 230 ifTrue: [
            recoveredBlock155Stack0 := recoveredArg3.
            recoveredBlock155PC := 233.
        ].
        recoveredBlock155Step = 233 ifTrue: [
            recoveredBlock155Stack1 := recoveredLocal1.
            recoveredBlock155PC := 236.
        ].
        recoveredBlock155Step = 236 ifTrue: [
            recoveredBlock155Stack2 := recoveredLocal2.
            recoveredBlock155PC := 239.
        ].
        recoveredBlock155Step = 239 ifTrue: [
            recoveredBlock155Stack1 := (recoveredBlock155Stack1) / (recoveredBlock155Stack2).
            recoveredBlock155PC := 241.
        ].
        recoveredBlock155Step = 241 ifTrue: [
            recoveredBlock155Stack2 := recoveredArg5.
            recoveredBlock155PC := 244.
        ].
        recoveredBlock155Step = 244 ifTrue: [
            recoveredBlock155Stack1 := (recoveredBlock155Stack1) * (recoveredBlock155Stack2).
            recoveredBlock155PC := 245.
        ].
        recoveredBlock155Step = 245 ifTrue: [
            recoveredBlock155Stack2 := recoveredArg4.
            recoveredBlock155PC := 248.
        ].
        recoveredBlock155Step = 248 ifTrue: [
            recoveredBlock155Stack1 := (recoveredBlock155Stack1) + (recoveredBlock155Stack2).
            recoveredBlock155PC := 249.
        ].
        recoveredBlock155Step = 249 ifTrue: [
            (recoveredBlock155Stack0) fractionComplete: (recoveredBlock155Stack1).
            recoveredBlock155PC := 251.
        ].
        recoveredBlock155Step = 251 ifTrue: [
            recoveredBlock155Stack0 := [
    | block28117d6cValue0 block28117d6cValue1 block28117d6cValue2 |
    block28117d6cValue0 := CwAppContext.
    block28117d6cValue1 := (block28117d6cValue0) default.
    block28117d6cValue2 := (block28117d6cValue1) readAndDispatch.
    block28117d6cValue2
].
            recoveredBlock155PC := 253.
        ].
        recoveredBlock155Step = 253 ifTrue: [
            recoveredBlock155PC := 263.
        ].
        recoveredBlock155Step = 263 ifTrue: [
            (recoveredBlock155Stack0) whileTrue.
            recoveredBlock155PC := 265.
        ].
        recoveredBlock155Step = 265 ifTrue: [
            recoveredBlock155Stack0 := recoveredBlock155Local1.
            recoveredBlock155PC := 266.
        ].
        recoveredBlock155Step = 266 ifTrue: [
            recoveredBlock155Result := recoveredBlock155Stack0.
            recoveredBlock155Done := true.
        ].
    ].
    recoveredBlock155Result
].
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack2 := RBTopFolder.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortBlock.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack2 := RBTopFolder.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortBlock.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack2 := (recoveredStack2) asArray.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack2 := (recoveredStack2) asRBDBReference.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            (recoveredStack0) putLocalChildrenData: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205c6e38; bytecode file offset 0xec3790"
!EtasDatabaseWidget methodsFor: 'recovered'!
menuItemFolderKeepConstant: recoveredArg1 overwriteData: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedFolder.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOverwritePathColl: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 recoveredBlock40Value3 |
    recoveredBlock40Value0 := recoveredLocal3.
    recoveredBlock40Value1 := recoveredBlock40Arg1.
    recoveredBlock40Value2 := (recoveredBlock40Value1) getLibrary.
    recoveredBlock40Value3 := (recoveredBlock40Value0) add: (recoveredBlock40Value2).
    recoveredBlock40Value3
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock58Stack0 recoveredBlock58Stack1 recoveredBlock58Stack2 recoveredBlock58Stack3 recoveredBlock58Stack4 recoveredBlock58Stack5 recoveredBlock58Stack6 recoveredBlock58Stack7 recoveredBlock58Stack8 recoveredBlock58PC recoveredBlock58Step recoveredBlock58Done recoveredBlock58Result |
    recoveredBlock58Stack0 := self.
    recoveredBlock58PC := 64.
    recoveredBlock58Done := false.
    [recoveredBlock58Done not] whileTrue: [
        recoveredBlock58Step := recoveredBlock58PC.
        recoveredBlock58Step = 64 ifTrue: [
            recoveredBlock58Stack1 := recoveredArg1.
            recoveredBlock58PC := 67.
        ].
        recoveredBlock58Step = 67 ifTrue: [
            recoveredBlock58Stack2 := [:recoveredBlock58Block67Arg1 | 
    | recoveredBlock58Block67Local1 recoveredBlock58Block67Local2 recoveredBlock58Block67Local3 recoveredBlock58Block67Stack0 recoveredBlock58Block67Stack1 recoveredBlock58Block67Stack2 recoveredBlock58Block67Stack3 recoveredBlock58Block67Stack4 recoveredBlock58Block67Stack5 recoveredBlock58Block67PC recoveredBlock58Block67Step recoveredBlock58Block67Done recoveredBlock58Block67Result |
    recoveredBlock58Block67Stack0 := self.
    recoveredBlock58Block67PC := 74.
    recoveredBlock58Block67Done := false.
    [recoveredBlock58Block67Done not] whileTrue: [
        recoveredBlock58Block67Step := recoveredBlock58Block67PC.
        recoveredBlock58Block67Step = 74 ifTrue: [
            recoveredBlock58Block67Stack1 := recoveredLocal7.
            recoveredBlock58Block67PC := 77.
        ].
        recoveredBlock58Block67Step = 77 ifTrue: [
            recoveredBlock58Block67Stack2 := recoveredBlock58Block67Arg1.
            recoveredBlock58Block67PC := 78.
        ].
        recoveredBlock58Block67Step = 78 ifTrue: [
            recoveredBlock58Block67Stack2 := (recoveredBlock58Block67Stack2) item.
            recoveredBlock58Block67PC := 80.
        ].
        recoveredBlock58Block67Step = 80 ifTrue: [
            recoveredBlock58Block67Stack2 := (recoveredBlock58Block67Stack2) getLibrary.
            recoveredBlock58Block67PC := 82.
        ].
        recoveredBlock58Block67Step = 82 ifTrue: [
            (recoveredBlock58Block67Stack1) add: (recoveredBlock58Block67Stack2).
            recoveredBlock58Block67PC := 84.
        ].
        recoveredBlock58Block67Step = 84 ifTrue: [
            recoveredBlock58Block67Stack1 := recoveredBlock58Block67Arg1.
            recoveredBlock58Block67PC := 85.
        ].
        recoveredBlock58Block67Step = 85 ifTrue: [
            recoveredBlock58Block67Stack1 := (recoveredBlock58Block67Stack1) item.
            recoveredBlock58Block67PC := 87.
        ].
        recoveredBlock58Block67Step = 87 ifTrue: [
            recoveredBlock58Block67Stack1 := (recoveredBlock58Block67Stack1) pathName.
            recoveredBlock58Block67PC := 89.
        ].
        recoveredBlock58Block67Step = 89 ifTrue: [
            recoveredBlock58Block67Stack2 := '/'.
            recoveredBlock58Block67PC := 91.
        ].
        recoveredBlock58Block67Step = 91 ifTrue: [
            recoveredBlock58Block67Stack1 := (recoveredBlock58Block67Stack1) asArrayOfSubstringsSeparatedBy: (recoveredBlock58Block67Stack2).
            recoveredBlock58Block67PC := 93.
        ].
        recoveredBlock58Block67Step = 93 ifTrue: [
            recoveredBlock58Block67Local2 := recoveredBlock58Block67Stack1.
            recoveredBlock58Block67PC := 94.
        ].
        recoveredBlock58Block67Step = 94 ifTrue: [
            recoveredBlock58Block67Stack1 := recoveredLocal6.
            recoveredBlock58Block67PC := 97.
        ].
        recoveredBlock58Block67Step = 97 ifTrue: [
            recoveredBlock58Block67Local3 := recoveredBlock58Block67Stack1.
            recoveredBlock58Block67PC := 98.
        ].
        recoveredBlock58Block67Step = 98 ifTrue: [
            recoveredBlock58Block67Stack1 := 0.
            recoveredBlock58Block67PC := 100.
        ].
        recoveredBlock58Block67Step = 100 ifTrue: [
            recoveredBlock58Block67Local1 := recoveredBlock58Block67Stack1.
            recoveredBlock58Block67PC := 101.
        ].
        recoveredBlock58Block67Step = 101 ifTrue: [
            recoveredBlock58Block67Stack1 := recoveredBlock58Block67Local2.
            recoveredBlock58Block67PC := 102.
        ].
        recoveredBlock58Block67Step = 102 ifTrue: [
            recoveredBlock58Block67Stack1 := (recoveredBlock58Block67Stack1) size.
            recoveredBlock58Block67PC := 104.
        ].
        recoveredBlock58Block67Step = 104 ifTrue: [
            recoveredBlock58Block67Stack1 := (recoveredBlock58Block67Stack1) + (-1).
            recoveredBlock58Block67PC := 105.
        ].
        recoveredBlock58Block67Step = 105 ifTrue: [
            recoveredBlock58Block67PC := 116.
        ].
        recoveredBlock58Block67Step = 108 ifTrue: [
            recoveredBlock58Block67Stack2 := recoveredBlock58Block67Local3.
            recoveredBlock58Block67PC := 109.
        ].
        recoveredBlock58Block67Step = 109 ifTrue: [
            recoveredBlock58Block67Stack3 := recoveredBlock58Block67Local2.
            recoveredBlock58Block67PC := 110.
        ].
        recoveredBlock58Block67Step = 110 ifTrue: [
            recoveredBlock58Block67Stack4 := recoveredBlock58Block67Local1.
            recoveredBlock58Block67PC := 111.
        ].
        recoveredBlock58Block67Step = 111 ifTrue: [
            recoveredBlock58Block67Stack3 := (recoveredBlock58Block67Stack3) at: (recoveredBlock58Block67Stack4).
            recoveredBlock58Block67PC := 113.
        ].
        recoveredBlock58Block67Step = 113 ifTrue: [
            recoveredBlock58Block67Stack2 := (recoveredBlock58Block67Stack2) getOrCreateFolderNamed: (recoveredBlock58Block67Stack3).
            recoveredBlock58Block67PC := 115.
        ].
        recoveredBlock58Block67Step = 115 ifTrue: [
            recoveredBlock58Block67Local3 := recoveredBlock58Block67Stack2.
            recoveredBlock58Block67PC := 116.
        ].
        recoveredBlock58Block67Step = 116 ifTrue: [
            (recoveredBlock58Block67Stack1 isInteger and: [recoveredBlock58Block67Local1 isInteger]) ifTrue: [(recoveredBlock58Block67Local1 + 1 <= recoveredBlock58Block67Stack1) ifTrue: [recoveredBlock58Block67Local1 := recoveredBlock58Block67Local1 + 1. recoveredBlock58Block67PC := 108] ifFalse: [recoveredBlock58Block67Local1 := nil. recoveredBlock58Block67PC := 130]] ifFalse: [recoveredBlock58Block67PC := 120].
        ].
        recoveredBlock58Block67Step = 120 ifTrue: [
            recoveredBlock58Block67Stack2 := recoveredBlock58Block67Stack1.
            recoveredBlock58Block67PC := 121.
        ].
        recoveredBlock58Block67Step = 121 ifTrue: [
            recoveredBlock58Block67Stack3 := recoveredBlock58Block67Local1.
            recoveredBlock58Block67PC := 122.
        ].
        recoveredBlock58Block67Step = 122 ifTrue: [
            recoveredBlock58Block67Stack3 := (recoveredBlock58Block67Stack3) + (1).
            recoveredBlock58Block67PC := 123.
        ].
        recoveredBlock58Block67Step = 123 ifTrue: [
            recoveredBlock58Block67Stack4 := recoveredBlock58Block67Stack3.
            recoveredBlock58Block67PC := 124.
        ].
        recoveredBlock58Block67Step = 124 ifTrue: [
            recoveredBlock58Block67Local1 := recoveredBlock58Block67Stack4.
            recoveredBlock58Block67PC := 125.
        ].
        recoveredBlock58Block67Step = 125 ifTrue: [
            recoveredBlock58Block67Stack2 := (recoveredBlock58Block67Stack2) < (recoveredBlock58Block67Stack3).
            recoveredBlock58Block67PC := 126.
        ].
        recoveredBlock58Block67Step = 126 ifTrue: [
            (recoveredBlock58Block67Stack2) ifTrue: [recoveredBlock58Block67PC := 128] ifFalse: [recoveredBlock58Block67PC := 108].
        ].
        recoveredBlock58Block67Step = 128 ifTrue: [
            recoveredBlock58Block67Stack2 := nil.
            recoveredBlock58Block67PC := 129.
        ].
        recoveredBlock58Block67Step = 129 ifTrue: [
            recoveredBlock58Block67Local1 := recoveredBlock58Block67Stack2.
            recoveredBlock58Block67PC := 130.
        ].
        recoveredBlock58Block67Step = 130 ifTrue: [
            recoveredBlock58Block67PC := 131.
        ].
        recoveredBlock58Block67Step = 131 ifTrue: [
            recoveredBlock58Block67Stack1 := EtasCutBuffer.
            recoveredBlock58Block67PC := 133.
        ].
        recoveredBlock58Block67Step = 133 ifTrue: [
            recoveredBlock58Block67Stack1 := (recoveredBlock58Block67Stack1) create.
            recoveredBlock58Block67PC := 135.
        ].
        recoveredBlock58Block67Step = 135 ifTrue: [
            recoveredBlock58Block67Stack2 := Array.
            recoveredBlock58Block67PC := 137.
        ].
        recoveredBlock58Block67Step = 137 ifTrue: [
            recoveredBlock58Block67Stack3 := recoveredBlock58Block67Arg1.
            recoveredBlock58Block67PC := 138.
        ].
        recoveredBlock58Block67Step = 138 ifTrue: [
            recoveredBlock58Block67Stack3 := (recoveredBlock58Block67Stack3) item.
            recoveredBlock58Block67PC := 140.
        ].
        recoveredBlock58Block67Step = 140 ifTrue: [
            recoveredBlock58Block67Stack2 := (recoveredBlock58Block67Stack2) with: (recoveredBlock58Block67Stack3).
            recoveredBlock58Block67PC := 142.
        ].
        recoveredBlock58Block67Step = 142 ifTrue: [
            recoveredBlock58Block67Stack1 := (recoveredBlock58Block67Stack1) contents: (recoveredBlock58Block67Stack2).
            recoveredBlock58Block67PC := 144.
        ].
        recoveredBlock58Block67Step = 144 ifTrue: [
            recoveredBlock58Block67Stack1 := (recoveredBlock58Block67Stack1) contents.
            recoveredBlock58Block67PC := 146.
        ].
        recoveredBlock58Block67Step = 146 ifTrue: [
            recoveredBlock58Block67Stack2 := recoveredBlock58Block67Local3.
            recoveredBlock58Block67PC := 147.
        ].
        recoveredBlock58Block67Step = 147 ifTrue: [
            recoveredBlock58Block67Stack0 := (recoveredBlock58Block67Stack0) pasteItems: (recoveredBlock58Block67Stack1) parent: (recoveredBlock58Block67Stack2).
            recoveredBlock58Block67PC := 149.
        ].
        recoveredBlock58Block67Step = 149 ifTrue: [
            recoveredBlock58Block67Result := recoveredBlock58Block67Stack0.
            recoveredBlock58Block67Done := true.
        ].
    ].
    recoveredBlock58Block67Result
].
            recoveredBlock58PC := 150.
        ].
        recoveredBlock58Step = 150 ifTrue: [
            (recoveredBlock58Stack1) do: (recoveredBlock58Stack2).
            recoveredBlock58PC := 152.
        ].
        recoveredBlock58Step = 152 ifTrue: [
            recoveredBlock58Stack1 := Set.
            recoveredBlock58PC := 154.
        ].
        recoveredBlock58Step = 154 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) new.
            recoveredBlock58PC := 155.
        ].
        recoveredBlock58Step = 155 ifTrue: [
            recoveredLocal5 := recoveredBlock58Stack1.
            recoveredBlock58PC := 158.
        ].
        recoveredBlock58Step = 158 ifTrue: [
            recoveredBlock58Stack1 := Set.
            recoveredBlock58PC := 160.
        ].
        recoveredBlock58Step = 160 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) new.
            recoveredBlock58PC := 161.
        ].
        recoveredBlock58Step = 161 ifTrue: [
            recoveredLocal2 := recoveredBlock58Stack1.
            recoveredBlock58PC := 164.
        ].
        recoveredBlock58Step = 164 ifTrue: [
            recoveredBlock58Stack1 := recoveredLocal7.
            recoveredBlock58PC := 167.
        ].
        recoveredBlock58Step = 167 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) asArray.
            recoveredBlock58PC := 169.
        ].
        recoveredBlock58Step = 169 ifTrue: [
            recoveredBlock58Stack2 := [:recoveredBlock58Block169Arg1 | 
    | recoveredBlock58Block169Value0 recoveredBlock58Block169Value1 recoveredBlock58Block169Value2 recoveredBlock58Block169Value3 |
    recoveredBlock58Block169Value0 := recoveredLocal5.
    recoveredBlock58Block169Value1 := recoveredBlock58Block169Arg1.
    recoveredBlock58Block169Value2 := (self) getFoldersNotRequired: (recoveredBlock58Block169Value1).
    recoveredBlock58Block169Value3 := (recoveredBlock58Block169Value0) addAll: (recoveredBlock58Block169Value2).
    recoveredBlock58Block169Value3
].
            recoveredBlock58PC := 186.
        ].
        recoveredBlock58Step = 186 ifTrue: [
            (recoveredBlock58Stack1) do: (recoveredBlock58Stack2).
            recoveredBlock58PC := 188.
        ].
        recoveredBlock58Step = 188 ifTrue: [
            recoveredBlock58Stack1 := recoveredLocal3.
            recoveredBlock58PC := 191.
        ].
        recoveredBlock58Step = 191 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) asArray.
            recoveredBlock58PC := 193.
        ].
        recoveredBlock58Step = 193 ifTrue: [
            recoveredBlock58Stack2 := [:recoveredBlock58Block193Arg1 | 
    | recoveredBlock58Block193Value0 recoveredBlock58Block193Value1 recoveredBlock58Block193Value2 recoveredBlock58Block193Value3 |
    recoveredBlock58Block193Value0 := recoveredLocal2.
    recoveredBlock58Block193Value1 := recoveredBlock58Block193Arg1.
    recoveredBlock58Block193Value2 := (self) getFoldersNotRequired: (recoveredBlock58Block193Value1).
    recoveredBlock58Block193Value3 := (recoveredBlock58Block193Value0) addAll: (recoveredBlock58Block193Value2).
    recoveredBlock58Block193Value3
].
            recoveredBlock58PC := 210.
        ].
        recoveredBlock58Step = 210 ifTrue: [
            (recoveredBlock58Stack1) do: (recoveredBlock58Stack2).
            recoveredBlock58PC := 212.
        ].
        recoveredBlock58Step = 212 ifTrue: [
            recoveredBlock58Stack1 := recoveredLocal5.
            recoveredBlock58PC := 215.
        ].
        recoveredBlock58Step = 215 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) asOrderedCollection.
            recoveredBlock58PC := 217.
        ].
        recoveredBlock58Step = 217 ifTrue: [
            recoveredBlock58Stack2 := recoveredLocal4.
            recoveredBlock58PC := 220.
        ].
        recoveredBlock58Step = 220 ifTrue: [
            recoveredBlock58Stack0 := (recoveredBlock58Stack0) removeExistingFolders: (recoveredBlock58Stack1) ExistingFoldersPath: (recoveredBlock58Stack2).
            recoveredBlock58PC := 222.
        ].
        recoveredBlock58Step = 222 ifTrue: [
            recoveredLocal5 := recoveredBlock58Stack0.
            recoveredBlock58PC := 225.
        ].
        recoveredBlock58Step = 225 ifTrue: [
            recoveredBlock58Stack0 := recoveredLocal5.
            recoveredBlock58PC := 228.
        ].
        recoveredBlock58Step = 228 ifTrue: [
            recoveredBlock58Stack1 := recoveredLocal2.
            recoveredBlock58PC := 231.
        ].
        recoveredBlock58Step = 231 ifTrue: [
            (recoveredBlock58Stack0) addAll: (recoveredBlock58Stack1).
            recoveredBlock58PC := 233.
        ].
        recoveredBlock58Step = 233 ifTrue: [
            recoveredBlock58Stack0 := OrderedCollection.
            recoveredBlock58PC := 235.
        ].
        recoveredBlock58Step = 235 ifTrue: [
            recoveredBlock58Stack0 := (recoveredBlock58Stack0) new.
            recoveredBlock58PC := 236.
        ].
        recoveredBlock58Step = 236 ifTrue: [
            recoveredLocal1 := recoveredBlock58Stack0.
            recoveredBlock58PC := 239.
        ].
        recoveredBlock58Step = 239 ifTrue: [
            recoveredBlock58Stack0 := recoveredLocal5.
            recoveredBlock58PC := 242.
        ].
        recoveredBlock58Step = 242 ifTrue: [
            recoveredBlock58Stack0 := (recoveredBlock58Stack0) notEmpty.
            recoveredBlock58PC := 244.
        ].
        recoveredBlock58Step = 244 ifTrue: [
            (recoveredBlock58Stack0) ifTrue: [recoveredBlock58PC := 248] ifFalse: [recoveredBlock58PC := 296].
        ].
        recoveredBlock58Step = 248 ifTrue: [
            recoveredBlock58Stack0 := GlobalInfoController.
            recoveredBlock58PC := 250.
        ].
        recoveredBlock58Step = 250 ifTrue: [
            recoveredBlock58Stack0 := (recoveredBlock58Stack0) instance.
            recoveredBlock58PC := 252.
        ].
        recoveredBlock58Step = 252 ifTrue: [
            recoveredBlock58Stack1 := recoveredLocal5.
            recoveredBlock58PC := 255.
        ].
        recoveredBlock58Step = 255 ifTrue: [
            recoveredBlock58Stack2 := recoveredLocal5.
            recoveredBlock58PC := 258.
        ].
        recoveredBlock58Step = 258 ifTrue: [
            recoveredBlock58Stack3 := 'Information Required'.
            recoveredBlock58PC := 260.
        ].
        recoveredBlock58Step = 260 ifTrue: [
            recoveredBlock58Stack4 := 'The following folders reamin empty after the import.\Select the folders you want to delete'.
            recoveredBlock58PC := 262.
        ].
        recoveredBlock58Step = 262 ifTrue: [
            recoveredBlock58Stack4 := (recoveredBlock58Stack4) withCrs.
            recoveredBlock58PC := 264.
        ].
        recoveredBlock58Step = 264 ifTrue: [
            recoveredBlock58Stack5 := [:block281188d0Arg1 | 
    | block281188d0Value0 block281188d0Value1 |
    block281188d0Value0 := block281188d0Arg1.
    block281188d0Value1 := (block281188d0Value0) pathName.
    block281188d0Value1
].
            recoveredBlock58PC := 266.
        ].
        recoveredBlock58Step = 266 ifTrue: [
            recoveredBlock58PC := 274.
        ].
        recoveredBlock58Step = 274 ifTrue: [
            recoveredBlock58Stack6 := true.
            recoveredBlock58PC := 275.
        ].
        recoveredBlock58Step = 275 ifTrue: [
            recoveredBlock58Stack7 := MainController.
            recoveredBlock58PC := 277.
        ].
        recoveredBlock58Step = 277 ifTrue: [
            recoveredBlock58Stack7 := (recoveredBlock58Stack7) userInterface.
            recoveredBlock58PC := 279.
        ].
        recoveredBlock58Step = 279 ifTrue: [
            recoveredBlock58Stack7 := (recoveredBlock58Stack7) shell.
            recoveredBlock58PC := 281.
        ].
        recoveredBlock58Step = 281 ifTrue: [
            recoveredBlock58Stack0 := (recoveredBlock58Stack0) promptListItems: (recoveredBlock58Stack1) selectedItems: (recoveredBlock58Stack2) title: (recoveredBlock58Stack3) messageString: (recoveredBlock58Stack4) printBlock: (recoveredBlock58Stack5) multiSelection: (recoveredBlock58Stack6) withParent: (recoveredBlock58Stack7).
            recoveredBlock58PC := 284.
        ].
        recoveredBlock58Step = 284 ifTrue: [
            recoveredBlock58Stack1 := recoveredBlock58Stack0.
            recoveredBlock58PC := 285.
        ].
        recoveredBlock58Step = 285 ifTrue: [
            recoveredLocal1 := recoveredBlock58Stack1.
            recoveredBlock58PC := 288.
        ].
        recoveredBlock58Step = 288 ifTrue: [
            (recoveredBlock58Stack0 ~~ nil) ifTrue: [recoveredBlock58PC := 292] ifFalse: [recoveredBlock58PC := 292].
        ].
        recoveredBlock58Step = 292 ifTrue: [
            recoveredBlock58PC := 302.
        ].
        recoveredBlock58Step = 296 ifTrue: [
            recoveredBlock58Stack0 := recoveredLocal5.
            recoveredBlock58PC := 299.
        ].
        recoveredBlock58Step = 299 ifTrue: [
            recoveredLocal1 := recoveredBlock58Stack0.
            recoveredBlock58PC := 302.
        ].
        recoveredBlock58Step = 302 ifTrue: [
            recoveredBlock58Stack0 := nil.
            recoveredBlock58PC := 303.
        ].
        recoveredBlock58Step = 303 ifTrue: [
            recoveredBlock58Stack1 := recoveredLocal1.
            recoveredBlock58PC := 306.
        ].
        recoveredBlock58Step = 306 ifTrue: [
            recoveredBlock58Stack2 := nil.
            recoveredBlock58PC := 307.
        ].
        recoveredBlock58Step = 307 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) = (recoveredBlock58Stack2).
            recoveredBlock58PC := 308.
        ].
        recoveredBlock58Step = 308 ifTrue: [
            (recoveredBlock58Stack1) ifTrue: [recoveredBlock58PC := 331] ifFalse: [recoveredBlock58PC := 312].
        ].
        recoveredBlock58Step = 312 ifTrue: [
            recoveredBlock58PC := 313.
        ].
        recoveredBlock58Step = 313 ifTrue: [
            recoveredBlock58Stack0 := nil.
            recoveredBlock58PC := 314.
        ].
        recoveredBlock58Step = 314 ifTrue: [
            recoveredBlock58Stack1 := recoveredLocal1.
            recoveredBlock58PC := 317.
        ].
        recoveredBlock58Step = 317 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) notEmpty.
            recoveredBlock58PC := 319.
        ].
        recoveredBlock58Step = 319 ifTrue: [
            (recoveredBlock58Stack1) ifTrue: [recoveredBlock58PC := 322] ifFalse: [recoveredBlock58PC := 331].
        ].
        recoveredBlock58Step = 322 ifTrue: [
            recoveredBlock58PC := 323.
        ].
        recoveredBlock58Step = 323 ifTrue: [
            recoveredBlock58Stack0 := self.
            recoveredBlock58PC := 324.
        ].
        recoveredBlock58Step = 324 ifTrue: [
            recoveredBlock58Stack1 := recoveredLocal1.
            recoveredBlock58PC := 327.
        ].
        recoveredBlock58Step = 327 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) asArray.
            recoveredBlock58PC := 329.
        ].
        recoveredBlock58Step = 329 ifTrue: [
            recoveredBlock58Stack0 := (recoveredBlock58Stack0) deleteItems: (recoveredBlock58Stack1).
            recoveredBlock58PC := 331.
        ].
        recoveredBlock58Step = 331 ifTrue: [
            recoveredBlock58Result := recoveredBlock58Stack0.
            recoveredBlock58Done := true.
        ].
    ].
    recoveredBlock58Result
].
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            (recoveredStack0) deferRedraw: (recoveredStack1).
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205cb928; bytecode file offset 0xec8258"
!EtasDatabaseWidget methodsFor: 'recovered'!
makeVisibleItems: recoveredArg1 progressDialog: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block28118e94Arg1 | 
    | block28118e94Stack0 block28118e94Stack1 block28118e94Stack2 block28118e94Stack3 block28118e94PC block28118e94Step block28118e94Done block28118e94Result |
    block28118e94Stack0 := self.
    block28118e94PC := 4.
    block28118e94Done := false.
    [block28118e94Done not] whileTrue: [
        block28118e94Step := block28118e94PC.
        block28118e94Step = 4 ifTrue: [
            block28118e94Stack1 := block28118e94Arg1.
            block28118e94PC := 5.
        ].
        block28118e94Step = 5 ifTrue: [
            block28118e94Stack2 := [:block28118eb8Arg1 | 
    nil
].
            block28118e94PC := 7.
        ].
        block28118e94Step = 7 ifTrue: [
            block28118e94PC := 12.
        ].
        block28118e94Step = 12 ifTrue: [
            block28118e94Stack1 := (block28118e94Stack1) getObjectIfUndefined: (block28118e94Stack2).
            block28118e94PC := 13.
        ].
        block28118e94Step = 13 ifTrue: [
            block28118e94Result := block28118e94Stack1.
            block28118e94Done := true.
        ].
    ].
    block28118e94Result
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [:block28118edcArg1 | 
    | block28118edcValue0 block28118edcValue1 |
    block28118edcValue0 := block28118edcArg1.
    block28118edcValue1 := (block28118edcValue0) isNil.
    block28118edcValue1
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := [:block28118f00Arg1 | 
    | block28118f00Local1 block28118f00Local2 block28118f00Stack0 block28118f00Stack1 block28118f00Stack2 block28118f00Stack3 block28118f00PC block28118f00Step block28118f00Done block28118f00Result |
    block28118f00Stack0 := self.
    block28118f00PC := 4.
    block28118f00Done := false.
    [block28118f00Done not] whileTrue: [
        block28118f00Step := block28118f00PC.
        block28118f00Step = 4 ifTrue: [
            block28118f00Stack1 := block28118f00Arg1.
            block28118f00PC := 5.
        ].
        block28118f00Step = 5 ifTrue: [
            block28118f00Local1 := block28118f00Stack1.
            block28118f00PC := 6.
        ].
        block28118f00Step = 6 ifTrue: [
            block28118f00Stack1 := Array.
            block28118f00PC := 8.
        ].
        block28118f00Step = 8 ifTrue: [
            block28118f00Stack2 := block28118f00Arg1.
            block28118f00PC := 9.
        ].
        block28118f00Step = 9 ifTrue: [
            block28118f00Stack1 := (block28118f00Stack1) with: (block28118f00Stack2).
            block28118f00PC := 11.
        ].
        block28118f00Step = 11 ifTrue: [
            block28118f00Local2 := block28118f00Stack1.
            block28118f00PC := 12.
        ].
        block28118f00Step = 12 ifTrue: [
            block28118f00PC := 25.
        ].
        block28118f00Step = 16 ifTrue: [
            block28118f00Stack1 := Array.
            block28118f00PC := 18.
        ].
        block28118f00Step = 18 ifTrue: [
            block28118f00Stack2 := block28118f00Local1.
            block28118f00PC := 19.
        ].
        block28118f00Step = 19 ifTrue: [
            block28118f00Stack1 := (block28118f00Stack1) with: (block28118f00Stack2).
            block28118f00PC := 21.
        ].
        block28118f00Step = 21 ifTrue: [
            block28118f00Stack2 := block28118f00Local2.
            block28118f00PC := 22.
        ].
        block28118f00Step = 22 ifTrue: [
            block28118f00Stack1 := (block28118f00Stack1) , (block28118f00Stack2).
            block28118f00PC := 24.
        ].
        block28118f00Step = 24 ifTrue: [
            block28118f00Local2 := block28118f00Stack1.
            block28118f00PC := 25.
        ].
        block28118f00Step = 25 ifTrue: [
            block28118f00Stack1 := block28118f00Local1.
            block28118f00PC := 26.
        ].
        block28118f00Step = 26 ifTrue: [
            block28118f00Stack2 := [:block28118f24Arg1 | 
    nil
].
            block28118f00PC := 28.
        ].
        block28118f00Step = 28 ifTrue: [
            block28118f00PC := 34.
        ].
        block28118f00Step = 34 ifTrue: [
            block28118f00Stack1 := (block28118f00Stack1) parentIfUndefined: (block28118f00Stack2).
            block28118f00PC := 36.
        ].
        block28118f00Step = 36 ifTrue: [
            block28118f00Stack2 := block28118f00Stack1.
            block28118f00PC := 37.
        ].
        block28118f00Step = 37 ifTrue: [
            block28118f00Local1 := block28118f00Stack2.
            block28118f00PC := 38.
        ].
        block28118f00Step = 38 ifTrue: [
            (block28118f00Stack1 == nil) ifTrue: [block28118f00PC := 47] ifFalse: [block28118f00PC := 42].
        ].
        block28118f00Step = 42 ifTrue: [
            block28118f00Stack1 := block28118f00Local1.
            block28118f00PC := 43.
        ].
        block28118f00Step = 43 ifTrue: [
            block28118f00Stack1 := (block28118f00Stack1) isFolder.
            block28118f00PC := 45.
        ].
        block28118f00Step = 45 ifTrue: [
            (block28118f00Stack1) ifTrue: [block28118f00PC := 16] ifFalse: [block28118f00PC := 47].
        ].
        block28118f00Step = 47 ifTrue: [
            block28118f00Stack1 := block28118f00Local2.
            block28118f00PC := 48.
        ].
        block28118f00Step = 48 ifTrue: [
            block28118f00Result := block28118f00Stack1.
            block28118f00Done := true.
        ].
    ].
    block28118f00Result
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) hierarchy.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 129].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) refreshPos: (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) expandPos: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := 'Expanding... %1/'.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := [:recoveredBlock146Arg1 :recoveredBlock146Arg2 | 
    | recoveredBlock146Value0 recoveredBlock146Value1 recoveredBlock146Value2 |
    recoveredBlock146Value0 := recoveredBlock146Arg1.
    recoveredBlock146Value1 := [:recoveredBlock146Block155Arg1 :recoveredBlock146Block155Arg2 | 
    | recoveredBlock146Block155Stack0 recoveredBlock146Block155Stack1 recoveredBlock146Block155Stack2 recoveredBlock146Block155Stack3 recoveredBlock146Block155Stack4 recoveredBlock146Block155PC recoveredBlock146Block155Step recoveredBlock146Block155Done recoveredBlock146Block155Result |
    recoveredBlock146Block155Stack0 := self.
    recoveredBlock146Block155PC := 162.
    recoveredBlock146Block155Done := false.
    [recoveredBlock146Block155Done not] whileTrue: [
        recoveredBlock146Block155Step := recoveredBlock146Block155PC.
        recoveredBlock146Block155Step = 162 ifTrue: [
            recoveredBlock146Block155Stack1 := recoveredBlock146Arg2.
            recoveredBlock146Block155PC := 165.
        ].
        recoveredBlock146Block155Step = 165 ifTrue: [
            recoveredBlock146Block155Stack2 := 10.
            recoveredBlock146Block155PC := 167.
        ].
        recoveredBlock146Block155Step = 167 ifTrue: [
            recoveredBlock146Block155Stack1 := (recoveredBlock146Block155Stack1) \\ (recoveredBlock146Block155Stack2).
            recoveredBlock146Block155PC := 168.
        ].
        recoveredBlock146Block155Step = 168 ifTrue: [
            recoveredBlock146Block155Stack2 := 0.
            recoveredBlock146Block155PC := 170.
        ].
        recoveredBlock146Block155Step = 170 ifTrue: [
            recoveredBlock146Block155Stack1 := (recoveredBlock146Block155Stack1) equals: (recoveredBlock146Block155Stack2).
            recoveredBlock146Block155PC := 172.
        ].
        recoveredBlock146Block155Step = 172 ifTrue: [
            (recoveredBlock146Block155Stack1) ifTrue: [recoveredBlock146Block155PC := 176] ifFalse: [recoveredBlock146Block155PC := 201].
        ].
        recoveredBlock146Block155Step = 176 ifTrue: [
            recoveredBlock146Block155Stack1 := recoveredArg2.
            recoveredBlock146Block155PC := 179.
        ].
        recoveredBlock146Block155Step = 179 ifTrue: [
            recoveredBlock146Block155Stack1 := (recoveredBlock146Block155Stack1) cancelled.
            recoveredBlock146Block155PC := 181.
        ].
        recoveredBlock146Block155Step = 181 ifTrue: [
            (recoveredBlock146Block155Stack1) ifTrue: [recoveredBlock146Block155PC := 184] ifFalse: [recoveredBlock146Block155PC := 186].
        ].
        recoveredBlock146Block155Step = 184 ifTrue: [
            recoveredBlock146Block155Stack1 := nil.
            recoveredBlock146Block155PC := 185.
        ].
        recoveredBlock146Block155Step = 185 ifTrue: [
            ^recoveredBlock146Block155Stack1
        ].
        recoveredBlock146Block155Step = 186 ifTrue: [
            recoveredBlock146Block155Stack1 := recoveredArg2.
            recoveredBlock146Block155PC := 189.
        ].
        recoveredBlock146Block155Step = 189 ifTrue: [
            recoveredBlock146Block155Stack2 := recoveredLocal2.
            recoveredBlock146Block155PC := 192.
        ].
        recoveredBlock146Block155Step = 192 ifTrue: [
            recoveredBlock146Block155Stack3 := recoveredBlock146Arg2.
            recoveredBlock146Block155PC := 195.
        ].
        recoveredBlock146Block155Step = 195 ifTrue: [
            recoveredBlock146Block155Stack3 := (recoveredBlock146Block155Stack3) printString.
            recoveredBlock146Block155PC := 197.
        ].
        recoveredBlock146Block155Step = 197 ifTrue: [
            recoveredBlock146Block155Stack2 := (recoveredBlock146Block155Stack2) bindWith: (recoveredBlock146Block155Stack3).
            recoveredBlock146Block155PC := 199.
        ].
        recoveredBlock146Block155Step = 199 ifTrue: [
            (recoveredBlock146Block155Stack1) messageString: (recoveredBlock146Block155Stack2).
            recoveredBlock146Block155PC := 201.
        ].
        recoveredBlock146Block155Step = 201 ifTrue: [
            recoveredBlock146Block155Stack0 := (recoveredBlock146Block155Stack0) classList.
            recoveredBlock146Block155PC := 203.
        ].
        recoveredBlock146Block155Step = 203 ifTrue: [
            recoveredBlock146Block155Stack1 := recoveredBlock146Block155Arg1.
            recoveredBlock146Block155PC := 204.
        ].
        recoveredBlock146Block155Step = 204 ifTrue: [
            recoveredBlock146Block155Stack1 := (recoveredBlock146Block155Stack1) dbObject.
            recoveredBlock146Block155PC := 206.
        ].
        recoveredBlock146Block155Step = 206 ifTrue: [
            recoveredBlock146Block155Stack0 := (recoveredBlock146Block155Stack0) indexOfItem: (recoveredBlock146Block155Stack1).
            recoveredBlock146Block155PC := 208.
        ].
        recoveredBlock146Block155Step = 208 ifTrue: [
            recoveredBlock146Block155Stack1 := recoveredBlock146Block155Stack0.
            recoveredBlock146Block155PC := 209.
        ].
        recoveredBlock146Block155Step = 209 ifTrue: [
            recoveredLocal3 := recoveredBlock146Block155Stack1.
            recoveredBlock146Block155PC := 212.
        ].
        recoveredBlock146Block155Step = 212 ifTrue: [
            recoveredBlock146Block155Stack1 := 0.
            recoveredBlock146Block155PC := 214.
        ].
        recoveredBlock146Block155Step = 214 ifTrue: [
            recoveredBlock146Block155Stack0 := (recoveredBlock146Block155Stack0) = (recoveredBlock146Block155Stack1).
            recoveredBlock146Block155PC := 215.
        ].
        recoveredBlock146Block155Step = 215 ifTrue: [
            (recoveredBlock146Block155Stack0) ifTrue: [recoveredBlock146Block155PC := 218] ifFalse: [recoveredBlock146Block155PC := 220].
        ].
        recoveredBlock146Block155Step = 218 ifTrue: [
            recoveredBlock146Block155Stack0 := nil.
            recoveredBlock146Block155PC := 219.
        ].
        recoveredBlock146Block155Step = 219 ifTrue: [
            ^recoveredBlock146Block155Stack0
        ].
        recoveredBlock146Block155Step = 220 ifTrue: [
            recoveredBlock146Block155Stack0 := self.
            recoveredBlock146Block155PC := 221.
        ].
        recoveredBlock146Block155Step = 221 ifTrue: [
            recoveredBlock146Block155Stack0 := (recoveredBlock146Block155Stack0) classList.
            recoveredBlock146Block155PC := 223.
        ].
        recoveredBlock146Block155Step = 223 ifTrue: [
            recoveredBlock146Block155Stack1 := recoveredLocal3.
            recoveredBlock146Block155PC := 226.
        ].
        recoveredBlock146Block155Step = 226 ifTrue: [
            (recoveredBlock146Block155Stack0) refreshPos: (recoveredBlock146Block155Stack1).
            recoveredBlock146Block155PC := 228.
        ].
        recoveredBlock146Block155Step = 228 ifTrue: [
            recoveredBlock146Block155Stack0 := nil.
            recoveredBlock146Block155PC := 229.
        ].
        recoveredBlock146Block155Step = 229 ifTrue: [
            recoveredBlock146Block155Stack1 := recoveredBlock146Block155Arg2.
            recoveredBlock146Block155PC := 230.
        ].
        recoveredBlock146Block155Step = 230 ifTrue: [
            recoveredBlock146Block155Stack2 := recoveredBlock146Arg1.
            recoveredBlock146Block155PC := 233.
        ].
        recoveredBlock146Block155Step = 233 ifTrue: [
            recoveredBlock146Block155Stack2 := (recoveredBlock146Block155Stack2) size.
            recoveredBlock146Block155PC := 235.
        ].
        recoveredBlock146Block155Step = 235 ifTrue: [
            recoveredBlock146Block155Stack1 := (recoveredBlock146Block155Stack1) ~= (recoveredBlock146Block155Stack2).
            recoveredBlock146Block155PC := 236.
        ].
        recoveredBlock146Block155Step = 236 ifTrue: [
            (recoveredBlock146Block155Stack1) ifTrue: [recoveredBlock146Block155PC := 240] ifFalse: [recoveredBlock146Block155PC := 250].
        ].
        recoveredBlock146Block155Step = 240 ifTrue: [
            recoveredBlock146Block155PC := 241.
        ].
        recoveredBlock146Block155Step = 241 ifTrue: [
            recoveredBlock146Block155Stack0 := self.
            recoveredBlock146Block155PC := 242.
        ].
        recoveredBlock146Block155Step = 242 ifTrue: [
            recoveredBlock146Block155Stack0 := (recoveredBlock146Block155Stack0) classList.
            recoveredBlock146Block155PC := 244.
        ].
        recoveredBlock146Block155Step = 244 ifTrue: [
            recoveredBlock146Block155Stack1 := recoveredLocal3.
            recoveredBlock146Block155PC := 247.
        ].
        recoveredBlock146Block155Step = 247 ifTrue: [
            recoveredBlock146Block155Stack2 := false.
            recoveredBlock146Block155PC := 248.
        ].
        recoveredBlock146Block155Step = 248 ifTrue: [
            recoveredBlock146Block155Stack0 := (recoveredBlock146Block155Stack0) expandPos: (recoveredBlock146Block155Stack1) notify: (recoveredBlock146Block155Stack2).
            recoveredBlock146Block155PC := 250.
        ].
        recoveredBlock146Block155Step = 250 ifTrue: [
            recoveredBlock146Block155Result := recoveredBlock146Block155Stack0.
            recoveredBlock146Block155Done := true.
        ].
    ].
    recoveredBlock146Block155Result
].
    recoveredBlock146Value2 := (recoveredBlock146Value0) doWithIndex: (recoveredBlock146Value1).
    recoveredBlock146Value2
].
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            (recoveredStack0) endEdit.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack0) deselectAllItems.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := 'Selecting... %1/'.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := [:recoveredBlock283Arg1 :recoveredBlock283Arg2 | 
    | recoveredBlock283Stack0 recoveredBlock283Stack1 recoveredBlock283Stack2 recoveredBlock283Stack3 recoveredBlock283Stack4 recoveredBlock283PC recoveredBlock283Step recoveredBlock283Done recoveredBlock283Result |
    recoveredBlock283Stack0 := self.
    recoveredBlock283PC := 290.
    recoveredBlock283Done := false.
    [recoveredBlock283Done not] whileTrue: [
        recoveredBlock283Step := recoveredBlock283PC.
        recoveredBlock283Step = 290 ifTrue: [
            recoveredBlock283Stack1 := recoveredBlock283Arg2.
            recoveredBlock283PC := 291.
        ].
        recoveredBlock283Step = 291 ifTrue: [
            recoveredBlock283Stack2 := 10.
            recoveredBlock283PC := 293.
        ].
        recoveredBlock283Step = 293 ifTrue: [
            recoveredBlock283Stack1 := (recoveredBlock283Stack1) \\ (recoveredBlock283Stack2).
            recoveredBlock283PC := 294.
        ].
        recoveredBlock283Step = 294 ifTrue: [
            recoveredBlock283Stack2 := 0.
            recoveredBlock283PC := 296.
        ].
        recoveredBlock283Step = 296 ifTrue: [
            recoveredBlock283Stack1 := (recoveredBlock283Stack1) equals: (recoveredBlock283Stack2).
            recoveredBlock283PC := 298.
        ].
        recoveredBlock283Step = 298 ifTrue: [
            (recoveredBlock283Stack1) ifTrue: [recoveredBlock283PC := 302] ifFalse: [recoveredBlock283PC := 325].
        ].
        recoveredBlock283Step = 302 ifTrue: [
            recoveredBlock283Stack1 := recoveredArg2.
            recoveredBlock283PC := 305.
        ].
        recoveredBlock283Step = 305 ifTrue: [
            recoveredBlock283Stack1 := (recoveredBlock283Stack1) cancelled.
            recoveredBlock283PC := 307.
        ].
        recoveredBlock283Step = 307 ifTrue: [
            (recoveredBlock283Stack1) ifTrue: [recoveredBlock283PC := 310] ifFalse: [recoveredBlock283PC := 312].
        ].
        recoveredBlock283Step = 310 ifTrue: [
            recoveredBlock283Stack1 := nil.
            recoveredBlock283PC := 311.
        ].
        recoveredBlock283Step = 311 ifTrue: [
            ^recoveredBlock283Stack1
        ].
        recoveredBlock283Step = 312 ifTrue: [
            recoveredBlock283Stack1 := recoveredArg2.
            recoveredBlock283PC := 315.
        ].
        recoveredBlock283Step = 315 ifTrue: [
            recoveredBlock283Stack2 := recoveredLocal2.
            recoveredBlock283PC := 318.
        ].
        recoveredBlock283Step = 318 ifTrue: [
            recoveredBlock283Stack3 := recoveredBlock283Arg2.
            recoveredBlock283PC := 319.
        ].
        recoveredBlock283Step = 319 ifTrue: [
            recoveredBlock283Stack3 := (recoveredBlock283Stack3) printString.
            recoveredBlock283PC := 321.
        ].
        recoveredBlock283Step = 321 ifTrue: [
            recoveredBlock283Stack2 := (recoveredBlock283Stack2) bindWith: (recoveredBlock283Stack3).
            recoveredBlock283PC := 323.
        ].
        recoveredBlock283Step = 323 ifTrue: [
            (recoveredBlock283Stack1) messageString: (recoveredBlock283Stack2).
            recoveredBlock283PC := 325.
        ].
        recoveredBlock283Step = 325 ifTrue: [
            recoveredBlock283Stack0 := (recoveredBlock283Stack0) classList.
            recoveredBlock283PC := 327.
        ].
        recoveredBlock283Step = 327 ifTrue: [
            recoveredBlock283Stack1 := recoveredBlock283Arg1.
            recoveredBlock283PC := 328.
        ].
        recoveredBlock283Step = 328 ifTrue: [
            recoveredBlock283Stack1 := (recoveredBlock283Stack1) dbObject.
            recoveredBlock283PC := 330.
        ].
        recoveredBlock283Step = 330 ifTrue: [
            recoveredBlock283Stack2 := recoveredBlock283Arg2.
            recoveredBlock283PC := 331.
        ].
        recoveredBlock283Step = 331 ifTrue: [
            recoveredBlock283Stack3 := recoveredLocal1.
            recoveredBlock283PC := 334.
        ].
        recoveredBlock283Step = 334 ifTrue: [
            recoveredBlock283Stack3 := (recoveredBlock283Stack3) size.
            recoveredBlock283PC := 336.
        ].
        recoveredBlock283Step = 336 ifTrue: [
            recoveredBlock283Stack2 := (recoveredBlock283Stack2) equals: (recoveredBlock283Stack3).
            recoveredBlock283PC := 338.
        ].
        recoveredBlock283Step = 338 ifTrue: [
            recoveredBlock283Stack0 := (recoveredBlock283Stack0) selectItem: (recoveredBlock283Stack1) notify: (recoveredBlock283Stack2).
            recoveredBlock283PC := 340.
        ].
        recoveredBlock283Step = 340 ifTrue: [
            recoveredBlock283Result := recoveredBlock283Stack0.
            recoveredBlock283Done := true.
        ].
    ].
    recoveredBlock283Result
].
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205fb364; bytecode file offset 0xef7d1c"
!EtasDatabaseWidget methodsFor: 'recovered'!
deleteItems: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDialogShell.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) setNoUpdateByFocus.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) setNoUpdateByFocus.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) getUserInterface.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptDeleteMessageForItems: (recoveredStack1) userInterface: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := SGDatabaseAccess.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := [:recoveredBlock50Arg1 | 
    | recoveredBlock50Value0 recoveredBlock50Value1 recoveredBlock50Value2 |
    recoveredBlock50Value0 := recoveredArg1.
    recoveredBlock50Value1 := recoveredBlock50Arg1.
    recoveredBlock50Value2 := (recoveredBlock50Value0) includes: (recoveredBlock50Value1).
    recoveredBlock50Value2
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSatisfy: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkReferencesForDelete: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := ASDAscetController.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSCMActive.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) scmIsDeletionPossible: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := EtasDatabaseWidgetItemCallbackData.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := EtasDeleteItemCallback.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) callCallbacks: (recoveredStack1) callData: (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOfItem: (recoveredStack1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := [:recoveredBlock142Arg1 | 
    | recoveredBlock142Stack0 recoveredBlock142Stack1 recoveredBlock142Stack2 recoveredBlock142Stack3 recoveredBlock142PC recoveredBlock142Step recoveredBlock142Done recoveredBlock142Result |
    recoveredBlock142Stack0 := self.
    recoveredBlock142PC := 148.
    recoveredBlock142Done := false.
    [recoveredBlock142Done not] whileTrue: [
        recoveredBlock142Step := recoveredBlock142PC.
        recoveredBlock142Step = 148 ifTrue: [
            recoveredBlock142Stack1 := 'hw'.
            recoveredBlock142PC := 150.
        ].
        recoveredBlock142Step = 150 ifTrue: [
            recoveredBlock142Stack2 := 'call_86934'.
            recoveredBlock142PC := 152.
        ].
        recoveredBlock142Step = 152 ifTrue: [
            recoveredBlock142Stack1 := (recoveredBlock142Stack1) == (recoveredBlock142Stack2).
            recoveredBlock142PC := 153.
        ].
        recoveredBlock142Step = 153 ifTrue: [
            recoveredBlock142PC := 154.
        ].
        recoveredBlock142Step = 154 ifTrue: [
            recoveredBlock142Stack1 := recoveredArg1.
            recoveredBlock142PC := 157.
        ].
        recoveredBlock142Step = 157 ifTrue: [
            recoveredBlock142Stack2 := [:block2811c134Arg1 :block2811c134Arg2 | 
    | block2811c134Local1 block2811c134Stack0 block2811c134Stack1 block2811c134Stack2 block2811c134Stack3 block2811c134Stack4 block2811c134PC block2811c134Step block2811c134Done block2811c134Result |
    block2811c134Stack0 := self.
    block2811c134PC := 4.
    block2811c134Done := false.
    [block2811c134Done not] whileTrue: [
        block2811c134Step := block2811c134PC.
        block2811c134Step = 4 ifTrue: [
            block2811c134Stack1 := false.
            block2811c134PC := 5.
        ].
        block2811c134Step = 5 ifTrue: [
            block2811c134Stack2 := block2811c134Arg1.
            block2811c134PC := 6.
        ].
        block2811c134Step = 6 ifTrue: [
            block2811c134Stack3 := [:block2811c158Arg1 | 
    nil
].
            block2811c134PC := 8.
        ].
        block2811c134Step = 8 ifTrue: [
            block2811c134PC := 14.
        ].
        block2811c134Step = 14 ifTrue: [
            block2811c134Stack2 := (block2811c134Stack2) parentIfUndefined: (block2811c134Stack3).
            block2811c134PC := 16.
        ].
        block2811c134Step = 16 ifTrue: [
            block2811c134Stack3 := block2811c134Stack2.
            block2811c134PC := 17.
        ].
        block2811c134Step = 17 ifTrue: [
            block2811c134Local1 := block2811c134Stack3.
            block2811c134PC := 18.
        ].
        block2811c134Step = 18 ifTrue: [
            (block2811c134Stack2 == nil) ifTrue: [block2811c134PC := 27] ifFalse: [block2811c134PC := 22].
        ].
        block2811c134Step = 22 ifTrue: [
            block2811c134PC := 23.
        ].
        block2811c134Step = 23 ifTrue: [
            block2811c134Stack1 := block2811c134Local1.
            block2811c134PC := 24.
        ].
        block2811c134Step = 24 ifTrue: [
            block2811c134Stack2 := block2811c134Arg2.
            block2811c134PC := 25.
        ].
        block2811c134Step = 25 ifTrue: [
            block2811c134Stack1 := (block2811c134Stack1) equals: (block2811c134Stack2).
            block2811c134PC := 27.
        ].
        block2811c134Step = 27 ifTrue: [
            block2811c134Result := block2811c134Stack1.
            block2811c134Done := true.
        ].
    ].
    block2811c134Result
].
            recoveredBlock142PC := 159.
        ].
        recoveredBlock142Step = 159 ifTrue: [
            recoveredBlock142PC := 186.
        ].
        recoveredBlock142Step = 186 ifTrue: [
            recoveredBlock142Stack1 := (recoveredBlock142Stack1) asSortedCollection: (recoveredBlock142Stack2).
            recoveredBlock142PC := 188.
        ].
        recoveredBlock142Step = 188 ifTrue: [
            recoveredBlock142Stack2 := [:recoveredBlock142Block188Arg1 :recoveredBlock142Block188Arg2 | 
    | recoveredBlock142Block188Local1 recoveredBlock142Block188Stack0 recoveredBlock142Block188Stack1 recoveredBlock142Block188Stack2 recoveredBlock142Block188Stack3 recoveredBlock142Block188Stack4 recoveredBlock142Block188Stack5 recoveredBlock142Block188Stack6 recoveredBlock142Block188PC recoveredBlock142Block188Step recoveredBlock142Block188Done recoveredBlock142Block188Result |
    recoveredBlock142Block188Stack0 := self.
    recoveredBlock142Block188PC := 194.
    recoveredBlock142Block188Done := false.
    [recoveredBlock142Block188Done not] whileTrue: [
        recoveredBlock142Block188Step := recoveredBlock142Block188PC.
        recoveredBlock142Block188Step = 194 ifTrue: [
            recoveredBlock142Block188Stack1 := recoveredBlock142Block188Arg1.
            recoveredBlock142Block188PC := 195.
        ].
        recoveredBlock142Block188Step = 195 ifTrue: [
            recoveredBlock142Block188Stack1 := (recoveredBlock142Block188Stack1) isRBDBUndefinedObject.
            recoveredBlock142Block188PC := 197.
        ].
        recoveredBlock142Block188Step = 197 ifTrue: [
            (recoveredBlock142Block188Stack1) ifTrue: [recoveredBlock142Block188PC := 200] ifFalse: [recoveredBlock142Block188PC := 306].
        ].
        recoveredBlock142Block188Step = 200 ifTrue: [
            recoveredBlock142Block188Stack1 := recoveredBlock142Block188Arg1.
            recoveredBlock142Block188PC := 201.
        ].
        recoveredBlock142Block188Step = 201 ifTrue: [
            recoveredBlock142Block188Stack1 := (recoveredBlock142Block188Stack1) isCTError.
            recoveredBlock142Block188PC := 203.
        ].
        recoveredBlock142Block188Step = 203 ifTrue: [
            (recoveredBlock142Block188Stack1) ifTrue: [recoveredBlock142Block188PC := 206] ifFalse: [recoveredBlock142Block188PC := 220].
        ].
        recoveredBlock142Block188Step = 206 ifTrue: [
            recoveredBlock142Block188Stack1 := self.
            recoveredBlock142Block188PC := 207.
        ].
        recoveredBlock142Block188Step = 207 ifTrue: [
            recoveredBlock142Block188Stack1 := (recoveredBlock142Block188Stack1) classList.
            recoveredBlock142Block188PC := 209.
        ].
        recoveredBlock142Block188Step = 209 ifTrue: [
            recoveredBlock142Block188Stack2 := recoveredBlock142Block188Arg1.
            recoveredBlock142Block188PC := 210.
        ].
        recoveredBlock142Block188Step = 210 ifTrue: [
            recoveredBlock142Block188Stack2 := (recoveredBlock142Block188Stack2) dbObject.
            recoveredBlock142Block188PC := 212.
        ].
        recoveredBlock142Block188Step = 212 ifTrue: [
            recoveredBlock142Block188Stack1 := (recoveredBlock142Block188Stack1) parentOfItem: (recoveredBlock142Block188Stack2).
            recoveredBlock142Block188PC := 214.
        ].
        recoveredBlock142Block188Step = 214 ifTrue: [
            recoveredLocal5 := recoveredBlock142Block188Stack1.
            recoveredBlock142Block188PC := 217.
        ].
        recoveredBlock142Block188Step = 217 ifTrue: [
            recoveredBlock142Block188PC := 236.
        ].
        recoveredBlock142Block188Step = 220 ifTrue: [
            recoveredBlock142Block188Stack1 := self.
            recoveredBlock142Block188PC := 221.
        ].
        recoveredBlock142Block188Step = 221 ifTrue: [
            recoveredBlock142Block188Stack1 := (recoveredBlock142Block188Stack1) classList.
            recoveredBlock142Block188PC := 223.
        ].
        recoveredBlock142Block188Step = 223 ifTrue: [
            recoveredBlock142Block188Stack2 := recoveredBlock142Block188Arg1.
            recoveredBlock142Block188PC := 224.
        ].
        recoveredBlock142Block188Step = 224 ifTrue: [
            recoveredBlock142Block188Stack2 := (recoveredBlock142Block188Stack2) errorObject.
            recoveredBlock142Block188PC := 226.
        ].
        recoveredBlock142Block188Step = 226 ifTrue: [
            recoveredBlock142Block188Stack1 := (recoveredBlock142Block188Stack1) parentOfItem: (recoveredBlock142Block188Stack2).
            recoveredBlock142Block188PC := 228.
        ].
        recoveredBlock142Block188Step = 228 ifTrue: [
            recoveredLocal5 := recoveredBlock142Block188Stack1.
            recoveredBlock142Block188PC := 231.
        ].
        recoveredBlock142Block188Step = 231 ifTrue: [
            recoveredBlock142Block188Stack1 := recoveredBlock142Block188Arg1.
            recoveredBlock142Block188PC := 232.
        ].
        recoveredBlock142Block188Step = 232 ifTrue: [
            recoveredBlock142Block188Stack1 := (recoveredBlock142Block188Stack1) errorObject.
            recoveredBlock142Block188PC := 234.
        ].
        recoveredBlock142Block188Step = 234 ifTrue: [
            (recoveredBlock142Block188Stack1) delete.
            recoveredBlock142Block188PC := 236.
        ].
        recoveredBlock142Block188Step = 236 ifTrue: [
            recoveredBlock142Block188Stack1 := recoveredLocal5.
            recoveredBlock142Block188PC := 239.
        ].
        recoveredBlock142Block188Step = 239 ifTrue: [
            (recoveredBlock142Block188Stack1 == nil) ifTrue: [recoveredBlock142Block188PC := 282] ifFalse: [recoveredBlock142Block188PC := 242].
        ].
        recoveredBlock142Block188Step = 242 ifTrue: [
            recoveredBlock142Block188Stack1 := recoveredLocal5.
            recoveredBlock142Block188PC := 245.
        ].
        recoveredBlock142Block188Step = 245 ifTrue: [
            recoveredBlock142Block188Stack2 := false.
            recoveredBlock142Block188PC := 246.
        ].
        recoveredBlock142Block188Step = 246 ifTrue: [
            (recoveredBlock142Block188Stack1 == recoveredBlock142Block188Stack2) ifTrue: [recoveredBlock142Block188PC := 279] ifFalse: [recoveredBlock142Block188PC := 250].
        ].
        recoveredBlock142Block188Step = 250 ifTrue: [
            recoveredBlock142Block188Stack1 := recoveredLocal5.
            recoveredBlock142Block188PC := 253.
        ].
        recoveredBlock142Block188Step = 253 ifTrue: [
            recoveredBlock142Block188Stack2 := [:block2811c17cArg1 | 
    nil
].
            recoveredBlock142Block188PC := 255.
        ].
        recoveredBlock142Block188Step = 255 ifTrue: [
            recoveredBlock142Block188PC := 260.
        ].
        recoveredBlock142Block188Step = 260 ifTrue: [
            recoveredBlock142Block188Stack1 := (recoveredBlock142Block188Stack1) getObjectIfUndefined: (recoveredBlock142Block188Stack2).
            recoveredBlock142Block188PC := 262.
        ].
        recoveredBlock142Block188Step = 262 ifTrue: [
            recoveredBlock142Block188Stack2 := recoveredBlock142Block188Stack1.
            recoveredBlock142Block188PC := 263.
        ].
        recoveredBlock142Block188Step = 263 ifTrue: [
            recoveredLocal5 := recoveredBlock142Block188Stack2.
            recoveredBlock142Block188PC := 266.
        ].
        recoveredBlock142Block188Step = 266 ifTrue: [
            (recoveredBlock142Block188Stack1 == nil) ifTrue: [recoveredBlock142Block188PC := 279] ifFalse: [recoveredBlock142Block188PC := 270].
        ].
        recoveredBlock142Block188Step = 270 ifTrue: [
            recoveredBlock142Block188Stack1 := recoveredLocal5.
            recoveredBlock142Block188PC := 273.
        ].
        recoveredBlock142Block188Step = 273 ifTrue: [
            recoveredBlock142Block188Stack2 := recoveredBlock142Block188Arg1.
            recoveredBlock142Block188PC := 274.
        ].
        recoveredBlock142Block188Step = 274 ifTrue: [
            (recoveredBlock142Block188Stack1) removeChild: (recoveredBlock142Block188Stack2).
            recoveredBlock142Block188PC := 276.
        ].
        recoveredBlock142Block188Step = 276 ifTrue: [
            recoveredBlock142Block188Stack1 := self.
            recoveredBlock142Block188PC := 277.
        ].
        recoveredBlock142Block188Step = 277 ifTrue: [
            (recoveredBlock142Block188Stack1) updateFolderList.
            recoveredBlock142Block188PC := 279.
        ].
        recoveredBlock142Block188Step = 279 ifTrue: [
            recoveredBlock142Block188PC := 303.
        ].
        recoveredBlock142Block188Step = 282 ifTrue: [
            recoveredBlock142Block188Stack1 := self.
            recoveredBlock142Block188PC := 283.
        ].
        recoveredBlock142Block188Step = 283 ifTrue: [
            recoveredBlock142Block188Stack1 := (recoveredBlock142Block188Stack1) widgetController.
            recoveredBlock142Block188PC := 285.
        ].
        recoveredBlock142Block188Step = 285 ifTrue: [
            recoveredBlock142Block188Stack1 := (recoveredBlock142Block188Stack1) selectedLibrary.
            recoveredBlock142Block188PC := 287.
        ].
        recoveredBlock142Block188Step = 287 ifTrue: [
            recoveredBlock142Block188Stack2 := recoveredBlock142Block188Stack1.
            recoveredBlock142Block188PC := 288.
        ].
        recoveredBlock142Block188Step = 288 ifTrue: [
            recoveredLocal4 := recoveredBlock142Block188Stack2.
            recoveredBlock142Block188PC := 291.
        ].
        recoveredBlock142Block188Step = 291 ifTrue: [
            (recoveredBlock142Block188Stack1 == nil) ifTrue: [recoveredBlock142Block188PC := 303] ifFalse: [recoveredBlock142Block188PC := 294].
        ].
        recoveredBlock142Block188Step = 294 ifTrue: [
            recoveredBlock142Block188Stack1 := recoveredLocal4.
            recoveredBlock142Block188PC := 297.
        ].
        recoveredBlock142Block188Step = 297 ifTrue: [
            recoveredBlock142Block188Stack2 := recoveredBlock142Block188Arg1.
            recoveredBlock142Block188PC := 298.
        ].
        recoveredBlock142Block188Step = 298 ifTrue: [
            (recoveredBlock142Block188Stack1) removeChild: (recoveredBlock142Block188Stack2).
            recoveredBlock142Block188PC := 300.
        ].
        recoveredBlock142Block188Step = 300 ifTrue: [
            recoveredBlock142Block188Stack1 := self.
            recoveredBlock142Block188PC := 301.
        ].
        recoveredBlock142Block188Step = 301 ifTrue: [
            (recoveredBlock142Block188Stack1) updateFolderList.
            recoveredBlock142Block188PC := 303.
        ].
        recoveredBlock142Block188Step = 303 ifTrue: [
            recoveredBlock142Block188PC := 329.
        ].
        recoveredBlock142Block188Step = 306 ifTrue: [
            recoveredBlock142Block188Stack1 := recoveredBlock142Block188Arg1.
            recoveredBlock142Block188PC := 307.
        ].
        recoveredBlock142Block188Step = 307 ifTrue: [
            recoveredBlock142Block188Stack2 := recoveredBlock142Block188Stack1.
            recoveredBlock142Block188PC := 308.
        ].
        recoveredBlock142Block188Step = 308 ifTrue: [
            recoveredBlock142Block188Local1 := recoveredBlock142Block188Stack2.
            recoveredBlock142Block188PC := 309.
        ].
        recoveredBlock142Block188Step = 309 ifTrue: [
            (recoveredBlock142Block188Stack1 == nil) ifTrue: [recoveredBlock142Block188PC := 327] ifFalse: [recoveredBlock142Block188PC := 312].
        ].
        recoveredBlock142Block188Step = 312 ifTrue: [
            recoveredBlock142Block188Stack1 := self.
            recoveredBlock142Block188PC := 313.
        ].
        recoveredBlock142Block188Step = 313 ifTrue: [
            recoveredBlock142Block188Stack1 := (recoveredBlock142Block188Stack1) widgetController.
            recoveredBlock142Block188PC := 315.
        ].
        recoveredBlock142Block188Step = 315 ifTrue: [
            recoveredBlock142Block188Stack2 := recoveredBlock142Block188Local1.
            recoveredBlock142Block188PC := 316.
        ].
        recoveredBlock142Block188Step = 316 ifTrue: [
            recoveredBlock142Block188Stack3 := RBProxyProgressReporter.
            recoveredBlock142Block188PC := 318.
        ].
        recoveredBlock142Block188Step = 318 ifTrue: [
            recoveredBlock142Block188Stack4 := recoveredBlock142Arg1.
            recoveredBlock142Block188PC := 321.
        ].
        recoveredBlock142Block188Step = 321 ifTrue: [
            recoveredBlock142Block188Stack5 := 'Deleting '.
            recoveredBlock142Block188PC := 323.
        ].
        recoveredBlock142Block188Step = 323 ifTrue: [
            recoveredBlock142Block188Stack3 := (recoveredBlock142Block188Stack3) new: (recoveredBlock142Block188Stack4) prefix: (recoveredBlock142Block188Stack5).
            recoveredBlock142Block188PC := 325.
        ].
        recoveredBlock142Block188Step = 325 ifTrue: [
            (recoveredBlock142Block188Stack1) deleteItem: (recoveredBlock142Block188Stack2) progressDialog: (recoveredBlock142Block188Stack3).
            recoveredBlock142Block188PC := 327.
        ].
        recoveredBlock142Block188Step = 327 ifTrue: [
            recoveredBlock142Block188Stack1 := nil.
            recoveredBlock142Block188PC := 328.
        ].
        recoveredBlock142Block188Step = 328 ifTrue: [
            recoveredBlock142Block188Local1 := recoveredBlock142Block188Stack1.
            recoveredBlock142Block188PC := 329.
        ].
        recoveredBlock142Block188Step = 329 ifTrue: [
            recoveredBlock142Block188Stack1 := recoveredBlock142Arg1.
            recoveredBlock142Block188PC := 332.
        ].
        recoveredBlock142Block188Step = 332 ifTrue: [
            recoveredBlock142Block188Stack2 := recoveredBlock142Block188Stack1.
            recoveredBlock142Block188PC := 333.
        ].
        recoveredBlock142Block188Step = 333 ifTrue: [
            recoveredBlock142Block188Stack3 := recoveredBlock142Block188Arg2.
            recoveredBlock142Block188PC := 334.
        ].
        recoveredBlock142Block188Step = 334 ifTrue: [
            recoveredBlock142Block188Stack4 := recoveredArg1.
            recoveredBlock142Block188PC := 337.
        ].
        recoveredBlock142Block188Step = 337 ifTrue: [
            recoveredBlock142Block188Stack4 := (recoveredBlock142Block188Stack4) size.
            recoveredBlock142Block188PC := 339.
        ].
        recoveredBlock142Block188Step = 339 ifTrue: [
            recoveredBlock142Block188Stack3 := (recoveredBlock142Block188Stack3) / (recoveredBlock142Block188Stack4).
            recoveredBlock142Block188PC := 341.
        ].
        recoveredBlock142Block188Step = 341 ifTrue: [
            (recoveredBlock142Block188Stack2) fractionComplete: (recoveredBlock142Block188Stack3).
            recoveredBlock142Block188PC := 343.
        ].
        recoveredBlock142Block188Step = 343 ifTrue: [
            recoveredBlock142Block188Stack2 := 'Deleting '.
            recoveredBlock142Block188PC := 345.
        ].
        recoveredBlock142Block188Step = 345 ifTrue: [
            recoveredBlock142Block188Stack3 := recoveredBlock142Block188Arg1.
            recoveredBlock142Block188PC := 346.
        ].
        recoveredBlock142Block188Step = 346 ifTrue: [
            recoveredBlock142Block188Stack3 := (recoveredBlock142Block188Stack3) label.
            recoveredBlock142Block188PC := 348.
        ].
        recoveredBlock142Block188Step = 348 ifTrue: [
            recoveredBlock142Block188Stack2 := (recoveredBlock142Block188Stack2) , (recoveredBlock142Block188Stack3).
            recoveredBlock142Block188PC := 350.
        ].
        recoveredBlock142Block188Step = 350 ifTrue: [
            (recoveredBlock142Block188Stack1) messageString: (recoveredBlock142Block188Stack2).
            recoveredBlock142Block188PC := 352.
        ].
        recoveredBlock142Block188Step = 352 ifTrue: [
            recoveredBlock142Block188Stack0 := (recoveredBlock142Block188Stack0) setNoUpdateByFocus.
            recoveredBlock142Block188PC := 353.
        ].
        recoveredBlock142Block188Step = 353 ifTrue: [
            recoveredBlock142Block188Result := recoveredBlock142Block188Stack0.
            recoveredBlock142Block188Done := true.
        ].
    ].
    recoveredBlock142Block188Result
].
            recoveredBlock142PC := 354.
        ].
        recoveredBlock142Step = 354 ifTrue: [
            (recoveredBlock142Stack1) doWithIndex: (recoveredBlock142Stack2).
            recoveredBlock142PC := 356.
        ].
        recoveredBlock142Step = 356 ifTrue: [
            recoveredBlock142Stack0 := (recoveredBlock142Stack0) library.
            recoveredBlock142PC := 358.
        ].
        recoveredBlock142Step = 358 ifTrue: [
            (recoveredBlock142Stack0) commit.
            recoveredBlock142PC := 360.
        ].
        recoveredBlock142Step = 360 ifTrue: [
            recoveredBlock142Stack0 := self.
            recoveredBlock142PC := 361.
        ].
        recoveredBlock142Step = 361 ifTrue: [
            (recoveredBlock142Stack0) updateFolderList.
            recoveredBlock142PC := 363.
        ].
        recoveredBlock142Step = 363 ifTrue: [
            recoveredBlock142Stack0 := self.
            recoveredBlock142PC := 364.
        ].
        recoveredBlock142Step = 364 ifTrue: [
            recoveredBlock142Stack0 := (recoveredBlock142Stack0) widgetController.
            recoveredBlock142PC := 366.
        ].
        recoveredBlock142Step = 366 ifTrue: [
            recoveredBlock142Stack1 := recoveredBlock142Stack0.
            recoveredBlock142PC := 367.
        ].
        recoveredBlock142Step = 367 ifTrue: [
            recoveredBlock142Stack2 := nil.
            recoveredBlock142PC := 368.
        ].
        recoveredBlock142Step = 368 ifTrue: [
            (recoveredBlock142Stack1) selectedObject: (recoveredBlock142Stack2).
            recoveredBlock142PC := 370.
        ].
        recoveredBlock142Step = 370 ifTrue: [
            recoveredBlock142Stack1 := nil.
            recoveredBlock142PC := 371.
        ].
        recoveredBlock142Step = 371 ifTrue: [
            recoveredBlock142Stack0 := (recoveredBlock142Stack0) selectedLibrary: (recoveredBlock142Stack1).
            recoveredBlock142PC := 375.
        ].
        recoveredBlock142Step = 375 ifTrue: [
            recoveredBlock142Result := recoveredBlock142Stack0.
            recoveredBlock142Done := true.
        ].
    ].
    recoveredBlock142Result
].
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack2 := 'Deleting components                                         '.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack4 := 'Deleting components'.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            (recoveredStack0) execWithProgressDialog: (recoveredStack1) message: (recoveredStack2) showProgress: (recoveredStack3) title: (recoveredStack4).
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 398] ifFalse: [recoveredPC := 429].
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack1 := (recoveredStack1) classList.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack2 := (recoveredStack2) classList.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack2 := (recoveredStack2) itemCount.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack2 := (recoveredStack2) min: (recoveredStack3).
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemAt: (recoveredStack2).
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            (recoveredStack0) selectItem: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206851cc; bytecode file offset 0xf81c68"
!EtasDatabaseWidget methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'outerItemForm'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:block28129c04Arg1 | 
    | block28129c04Value0 block28129c04Value1 block28129c04Value2 block28129c04Value3 block28129c04Value4 block28129c04Value5 block28129c04Value6 |
    block28129c04Value0 := block28129c04Arg1.
    block28129c04Value1 := CgRGBColor.
    block28129c04Value2 := OS.
    block28129c04Value3 := ColorActivecaption.
    block28129c04Value4 := (block28129c04Value2) getSysColor: (block28129c04Value3).
    block28129c04Value5 := (block28129c04Value1) fromOSRGB: (block28129c04Value4).
    block28129c04Value6 := (block28129c04Value0) backgroundColor: (block28129c04Value5).
    block28129c04Value6
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 'outerItemForm'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := 'classLabel'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := [:block28129c28Arg1 | 
    | block28129c28Value0 block28129c28Value1 block28129c28Value2 block28129c28Value3 block28129c28Value4 block28129c28Value5 block28129c28Value6 block28129c28Value7 block28129c28Value8 block28129c28Value9 block28129c28Value10 block28129c28Value11 block28129c28Value12 block28129c28Value13 block28129c28Value14 block28129c28Value15 block28129c28Value16 |
    block28129c28Value0 := block28129c28Arg1.
    block28129c28Value1 := block28129c28Value0.
    block28129c28Value2 := XmALIGNMENTBEGINNING.
    (block28129c28Value1) alignment: (block28129c28Value2).
    block28129c28Value3 := block28129c28Value0.
    block28129c28Value4 := EtItemsLabel.
    (block28129c28Value3) labelString: (block28129c28Value4).
    block28129c28Value5 := block28129c28Value0.
    block28129c28Value6 := CgRGBColor.
    block28129c28Value7 := OS.
    block28129c28Value8 := ColorCaptiontext.
    block28129c28Value9 := (block28129c28Value7) getSysColor: (block28129c28Value8).
    block28129c28Value10 := (block28129c28Value6) fromOSRGB: (block28129c28Value9).
    (block28129c28Value5) foregroundColor: (block28129c28Value10).
    block28129c28Value11 := block28129c28Value0.
    block28129c28Value12 := CgRGBColor.
    block28129c28Value13 := OS.
    block28129c28Value14 := ColorActivecaption.
    block28129c28Value15 := (block28129c28Value13) getSysColor: (block28129c28Value14).
    block28129c28Value16 := (block28129c28Value12) fromOSRGB: (block28129c28Value15).
    (block28129c28Value11) backgroundColor: (block28129c28Value16).
    block28129c28Value0
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := 'classLabel'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := 'classList'.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := [:recoveredBlock126Arg1 | 
    | recoveredBlock126Value0 recoveredBlock126Value1 recoveredBlock126Value2 recoveredBlock126Value3 recoveredBlock126Value4 recoveredBlock126Value5 recoveredBlock126Value6 recoveredBlock126Value7 |
    recoveredBlock126Value0 := recoveredBlock126Arg1.
    recoveredBlock126Value1 := recoveredBlock126Value0.
    recoveredBlock126Value2 := (self) iconHierarchyPolicy.
    (recoveredBlock126Value1) hierarchyPolicy: (recoveredBlock126Value2).
    recoveredBlock126Value3 := recoveredBlock126Value0.
    recoveredBlock126Value4 := XmEXTENDEDSELECT.
    (recoveredBlock126Value3) selectionPolicy: (recoveredBlock126Value4).
    recoveredBlock126Value5 := recoveredBlock126Value0.
    recoveredBlock126Value6 := XmTOGETHER.
    (recoveredBlock126Value5) emphasisPolicy: (recoveredBlock126Value6).
    recoveredBlock126Value7 := (recoveredBlock126Value0) itemHeight: (0).
    recoveredBlock126Value7
].
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasScrolledIconTree: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := 'scrolledClassList'.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := 'classList'.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := 'buttonItemList'.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := [:block28129c4cArg1 | 
    | block28129c4cValue0 block28129c4cValue1 block28129c4cValue2 block28129c4cValue3 block28129c4cValue4 block28129c4cValue5 block28129c4cValue6 block28129c4cValue7 block28129c4cValue8 block28129c4cValue9 |
    block28129c4cValue0 := block28129c4cArg1.
    block28129c4cValue1 := block28129c4cValue0.
    (block28129c4cValue1) height: (12).
    block28129c4cValue2 := block28129c4cValue0.
    (block28129c4cValue2) width: (12).
    block28129c4cValue3 := block28129c4cValue0.
    block28129c4cValue4 := CgRGBColor.
    block28129c4cValue5 := OS.
    block28129c4cValue6 := ColorActivecaption.
    block28129c4cValue7 := (block28129c4cValue5) getSysColor: (block28129c4cValue6).
    block28129c4cValue8 := (block28129c4cValue4) fromOSRGB: (block28129c4cValue7).
    (block28129c4cValue3) backgroundColor: (block28129c4cValue8).
    block28129c4cValue9 := block28129c4cValue0.
    (block28129c4cValue9) labelString: ('X').
    block28129c4cValue0
].
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDrawnButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := 'buttonItemList'.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := 'horSplit'.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack2 := [:block28129c70Arg1 | 
    | block28129c70Value0 block28129c70Value1 block28129c70Value2 block28129c70Value3 block28129c70Value4 block28129c70Value5 block28129c70Value6 |
    block28129c70Value0 := block28129c70Arg1.
    block28129c70Value1 := block28129c70Value0.
    (block28129c70Value1) thickness: (3).
    block28129c70Value2 := block28129c70Value0.
    block28129c70Value3 := XmTABGROUP.
    (block28129c70Value2) navigationType: (block28129c70Value3).
    block28129c70Value4 := block28129c70Value0.
    (block28129c70Value4) minPosition: (100).
    block28129c70Value5 := block28129c70Value0.
    (block28129c70Value5) minRightOrBottomOffset: (100).
    block28129c70Value6 := block28129c70Value0.
    (block28129c70Value6) adjustRelPosAtResize: (true).
    block28129c70Value0
].
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack0 := (recoveredStack0) createRBSplitBar: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredLocal14 := recoveredStack0.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := CgRGBColor.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := (recoveredStack1) windowBackground.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            (recoveredStack0) foregroundColor: (recoveredStack1).
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack1 := 'horSplit'.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := 'outerCommentForm'.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack2 := [:block28129c94Arg1 | 
    | block28129c94Value0 block28129c94Value1 block28129c94Value2 block28129c94Value3 block28129c94Value4 block28129c94Value5 block28129c94Value6 |
    block28129c94Value0 := block28129c94Arg1.
    block28129c94Value1 := CgRGBColor.
    block28129c94Value2 := OS.
    block28129c94Value3 := ColorActivecaption.
    block28129c94Value4 := (block28129c94Value2) getSysColor: (block28129c94Value3).
    block28129c94Value5 := (block28129c94Value1) fromOSRGB: (block28129c94Value4).
    block28129c94Value6 := (block28129c94Value0) backgroundColor: (block28129c94Value5).
    block28129c94Value6
].
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := 'outerCommentForm'.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := 'itemCommentLabel'.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack2 := [:block28129cb8Arg1 | 
    | block28129cb8Value0 block28129cb8Value1 block28129cb8Value2 block28129cb8Value3 block28129cb8Value4 block28129cb8Value5 block28129cb8Value6 block28129cb8Value7 block28129cb8Value8 block28129cb8Value9 block28129cb8Value10 block28129cb8Value11 block28129cb8Value12 block28129cb8Value13 block28129cb8Value14 block28129cb8Value15 |
    block28129cb8Value0 := block28129cb8Arg1.
    block28129cb8Value1 := block28129cb8Value0.
    block28129cb8Value2 := XmALIGNMENTBEGINNING.
    (block28129cb8Value1) alignment: (block28129cb8Value2).
    block28129cb8Value3 := block28129cb8Value0.
    (block28129cb8Value3) labelString: ('Comment').
    block28129cb8Value4 := block28129cb8Value0.
    block28129cb8Value5 := CgRGBColor.
    block28129cb8Value6 := OS.
    block28129cb8Value7 := ColorCaptiontext.
    block28129cb8Value8 := (block28129cb8Value6) getSysColor: (block28129cb8Value7).
    block28129cb8Value9 := (block28129cb8Value5) fromOSRGB: (block28129cb8Value8).
    (block28129cb8Value4) foregroundColor: (block28129cb8Value9).
    block28129cb8Value10 := block28129cb8Value0.
    block28129cb8Value11 := CgRGBColor.
    block28129cb8Value12 := OS.
    block28129cb8Value13 := ColorActivecaption.
    block28129cb8Value14 := (block28129cb8Value12) getSysColor: (block28129cb8Value13).
    block28129cb8Value15 := (block28129cb8Value11) fromOSRGB: (block28129cb8Value14).
    (block28129cb8Value10) backgroundColor: (block28129cb8Value15).
    block28129cb8Value0
].
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredLocal13 := recoveredStack0.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack1 := 'itemCommentLabel'.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack1 := 'itemCommentText'.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack2 := [:block28129cdcArg1 | 
    | block28129cdcValue0 block28129cdcValue1 block28129cdcValue2 block28129cdcValue3 |
    block28129cdcValue0 := block28129cdcArg1.
    block28129cdcValue1 := block28129cdcValue0.
    block28129cdcValue2 := XmMULTILINEEDIT.
    (block28129cdcValue1) editMode: (block28129cdcValue2).
    block28129cdcValue3 := (block28129cdcValue0) editable: (true).
    block28129cdcValue3
].
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack1 := 'scrolledItemCommentText'.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack2 := (recoveredStack2) parent.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack1 := 'itemCommentText'.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack1 := 'buttonItemComment'.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack2 := [:block28129d00Arg1 | 
    | block28129d00Value0 block28129d00Value1 block28129d00Value2 block28129d00Value3 block28129d00Value4 block28129d00Value5 block28129d00Value6 block28129d00Value7 block28129d00Value8 block28129d00Value9 |
    block28129d00Value0 := block28129d00Arg1.
    block28129d00Value1 := block28129d00Value0.
    (block28129d00Value1) height: (12).
    block28129d00Value2 := block28129d00Value0.
    (block28129d00Value2) width: (12).
    block28129d00Value3 := block28129d00Value0.
    block28129d00Value4 := CgRGBColor.
    block28129d00Value5 := OS.
    block28129d00Value6 := ColorActivecaption.
    block28129d00Value7 := (block28129d00Value5) getSysColor: (block28129d00Value6).
    block28129d00Value8 := (block28129d00Value4) fromOSRGB: (block28129d00Value7).
    (block28129d00Value3) backgroundColor: (block28129d00Value8).
    block28129d00Value9 := block28129d00Value0.
    (block28129d00Value9) labelString: ('X').
    block28129d00Value0
].
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDrawnButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack1 := 'buttonItemComment'.
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack1 := [:recoveredBlock564Arg1 | 
    | recoveredBlock564Value0 recoveredBlock564Value1 recoveredBlock564Value2 recoveredBlock564Value3 recoveredBlock564Value4 recoveredBlock564Value5 recoveredBlock564Value6 recoveredBlock564Value7 recoveredBlock564Value8 recoveredBlock564Value9 recoveredBlock564Value10 recoveredBlock564Value11 recoveredBlock564Value12 |
    recoveredBlock564Value0 := recoveredBlock564Arg1.
    recoveredBlock564Value1 := recoveredBlock564Value0.
    recoveredBlock564Value2 := XmATTACHFORM.
    (recoveredBlock564Value1) topAttachment: (recoveredBlock564Value2).
    recoveredBlock564Value3 := recoveredBlock564Value0.
    (recoveredBlock564Value3) topOffset: (1).
    recoveredBlock564Value4 := recoveredBlock564Value0.
    recoveredBlock564Value5 := XmATTACHFORM.
    (recoveredBlock564Value4) leftAttachment: (recoveredBlock564Value5).
    recoveredBlock564Value6 := recoveredBlock564Value0.
    recoveredBlock564Value7 := XmATTACHFORM.
    (recoveredBlock564Value6) rightAttachment: (recoveredBlock564Value7).
    recoveredBlock564Value8 := recoveredBlock564Value0.
    recoveredBlock564Value9 := XmATTACHWIDGET.
    (recoveredBlock564Value8) bottomAttachment: (recoveredBlock564Value9).
    recoveredBlock564Value10 := recoveredBlock564Value0.
    recoveredBlock564Value11 := recoveredLocal14.
    (recoveredBlock564Value10) bottomWidget: (recoveredBlock564Value11).
    recoveredBlock564Value12 := (recoveredBlock564Value0) bottomOffset: (0).
    recoveredBlock564Value12
].
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            recoveredStack1 := [:recoveredBlock634Arg1 | 
    | recoveredBlock634Value0 recoveredBlock634Value1 recoveredBlock634Value2 recoveredBlock634Value3 recoveredBlock634Value4 recoveredBlock634Value5 recoveredBlock634Value6 recoveredBlock634Value7 recoveredBlock634Value8 recoveredBlock634Value9 recoveredBlock634Value10 recoveredBlock634Value11 |
    recoveredBlock634Value0 := recoveredBlock634Arg1.
    recoveredBlock634Value1 := recoveredBlock634Value0.
    recoveredBlock634Value2 := XmATTACHFORM.
    (recoveredBlock634Value1) bottomAttachment: (recoveredBlock634Value2).
    recoveredBlock634Value3 := recoveredBlock634Value0.
    recoveredBlock634Value4 := XmATTACHFORM.
    (recoveredBlock634Value3) leftAttachment: (recoveredBlock634Value4).
    recoveredBlock634Value5 := recoveredBlock634Value0.
    recoveredBlock634Value6 := XmATTACHFORM.
    (recoveredBlock634Value5) rightAttachment: (recoveredBlock634Value6).
    recoveredBlock634Value7 := recoveredBlock634Value0.
    recoveredBlock634Value8 := XmATTACHWIDGET.
    (recoveredBlock634Value7) topAttachment: (recoveredBlock634Value8).
    recoveredBlock634Value9 := recoveredBlock634Value0.
    recoveredBlock634Value10 := recoveredLocal14.
    (recoveredBlock634Value9) topWidget: (recoveredBlock634Value10).
    recoveredBlock634Value11 := (recoveredBlock634Value0) topOffset: (0).
    recoveredBlock634Value11
].
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack1 := [:block28129d24Arg1 | 
    | block28129d24Value0 block28129d24Value1 block28129d24Value2 block28129d24Value3 block28129d24Value4 block28129d24Value5 block28129d24Value6 |
    block28129d24Value0 := block28129d24Arg1.
    block28129d24Value1 := block28129d24Value0.
    block28129d24Value2 := XmATTACHFORM.
    (block28129d24Value1) topAttachment: (block28129d24Value2).
    block28129d24Value3 := block28129d24Value0.
    block28129d24Value4 := XmATTACHFORM.
    (block28129d24Value3) leftAttachment: (block28129d24Value4).
    block28129d24Value5 := XmATTACHNONE.
    block28129d24Value6 := (block28129d24Value0) rightAttachment: (block28129d24Value5).
    block28129d24Value6
].
            recoveredPC := 702.
        ].
        recoveredStep = 702 ifTrue: [
            recoveredPC := 734.
        ].
        recoveredStep = 734 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 739.
        ].
        recoveredStep = 739 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 742.
        ].
        recoveredStep = 742 ifTrue: [
            recoveredStack1 := [:recoveredBlock742Arg1 | 
    | recoveredBlock742Value0 recoveredBlock742Value1 recoveredBlock742Value2 recoveredBlock742Value3 recoveredBlock742Value4 recoveredBlock742Value5 recoveredBlock742Value6 recoveredBlock742Value7 recoveredBlock742Value8 |
    recoveredBlock742Value0 := recoveredBlock742Arg1.
    recoveredBlock742Value1 := recoveredBlock742Value0.
    recoveredBlock742Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock742Value1) topAttachment: (recoveredBlock742Value2).
    recoveredBlock742Value3 := recoveredBlock742Value0.
    recoveredBlock742Value4 := recoveredLocal9.
    (recoveredBlock742Value3) topWidget: (recoveredBlock742Value4).
    recoveredBlock742Value5 := recoveredBlock742Value0.
    (recoveredBlock742Value5) topOffset: (4).
    recoveredBlock742Value6 := recoveredBlock742Value0.
    recoveredBlock742Value7 := XmATTACHFORM.
    (recoveredBlock742Value6) rightAttachment: (recoveredBlock742Value7).
    recoveredBlock742Value8 := (recoveredBlock742Value0) rightOffset: (2).
    recoveredBlock742Value8
].
            recoveredPC := 788.
        ].
        recoveredStep = 788 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 793.
        ].
        recoveredStep = 793 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 796.
        ].
        recoveredStep = 796 ifTrue: [
            recoveredStack1 := [:recoveredBlock796Arg1 | 
    | recoveredBlock796Value0 recoveredBlock796Value1 recoveredBlock796Value2 recoveredBlock796Value3 recoveredBlock796Value4 recoveredBlock796Value5 recoveredBlock796Value6 recoveredBlock796Value7 recoveredBlock796Value8 recoveredBlock796Value9 recoveredBlock796Value10 |
    recoveredBlock796Value0 := recoveredBlock796Arg1.
    recoveredBlock796Value1 := recoveredBlock796Value0.
    recoveredBlock796Value2 := XmATTACHFORM.
    (recoveredBlock796Value1) bottomAttachment: (recoveredBlock796Value2).
    recoveredBlock796Value3 := recoveredBlock796Value0.
    recoveredBlock796Value4 := XmATTACHWIDGET.
    (recoveredBlock796Value3) topAttachment: (recoveredBlock796Value4).
    recoveredBlock796Value5 := recoveredBlock796Value0.
    recoveredBlock796Value6 := recoveredLocal9.
    (recoveredBlock796Value5) topWidget: (recoveredBlock796Value6).
    recoveredBlock796Value7 := recoveredBlock796Value0.
    recoveredBlock796Value8 := XmATTACHFORM.
    (recoveredBlock796Value7) leftAttachment: (recoveredBlock796Value8).
    recoveredBlock796Value9 := XmATTACHFORM.
    recoveredBlock796Value10 := (recoveredBlock796Value0) rightAttachment: (recoveredBlock796Value9).
    recoveredBlock796Value10
].
            recoveredPC := 846.
        ].
        recoveredStep = 846 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 851.
        ].
        recoveredStep = 851 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 854.
        ].
        recoveredStep = 854 ifTrue: [
            recoveredStack1 := [:recoveredBlock854Arg1 | 
    | recoveredBlock854Value0 recoveredBlock854Value1 recoveredBlock854Value2 recoveredBlock854Value3 recoveredBlock854Value4 recoveredBlock854Value5 recoveredBlock854Value6 recoveredBlock854Value7 recoveredBlock854Value8 recoveredBlock854Value9 |
    recoveredBlock854Value0 := recoveredBlock854Arg1.
    recoveredBlock854Value1 := recoveredBlock854Value0.
    recoveredBlock854Value2 := XmATTACHPOSITION.
    (recoveredBlock854Value1) topAttachment: (recoveredBlock854Value2).
    recoveredBlock854Value3 := recoveredBlock854Value0.
    recoveredBlock854Value4 := (self) class.
    recoveredBlock854Value5 := (recoveredBlock854Value4) splitBarPosition.
    (recoveredBlock854Value3) topPosition: (recoveredBlock854Value5).
    recoveredBlock854Value6 := recoveredBlock854Value0.
    recoveredBlock854Value7 := XmATTACHFORM.
    (recoveredBlock854Value6) leftAttachment: (recoveredBlock854Value7).
    recoveredBlock854Value8 := XmATTACHFORM.
    recoveredBlock854Value9 := (recoveredBlock854Value0) rightAttachment: (recoveredBlock854Value8).
    recoveredBlock854Value9
].
            recoveredPC := 902.
        ].
        recoveredStep = 902 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 907.
        ].
        recoveredStep = 907 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 910.
        ].
        recoveredStep = 910 ifTrue: [
            recoveredStack1 := [:block28129d48Arg1 | 
    | block28129d48Value0 block28129d48Value1 block28129d48Value2 block28129d48Value3 block28129d48Value4 block28129d48Value5 block28129d48Value6 |
    block28129d48Value0 := block28129d48Arg1.
    block28129d48Value1 := block28129d48Value0.
    block28129d48Value2 := XmATTACHFORM.
    (block28129d48Value1) topAttachment: (block28129d48Value2).
    block28129d48Value3 := block28129d48Value0.
    block28129d48Value4 := XmATTACHFORM.
    (block28129d48Value3) leftAttachment: (block28129d48Value4).
    block28129d48Value5 := XmATTACHNONE.
    block28129d48Value6 := (block28129d48Value0) rightAttachment: (block28129d48Value5).
    block28129d48Value6
].
            recoveredPC := 914.
        ].
        recoveredStep = 914 ifTrue: [
            recoveredPC := 946.
        ].
        recoveredStep = 946 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 951.
        ].
        recoveredStep = 951 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 954.
        ].
        recoveredStep = 954 ifTrue: [
            recoveredStack1 := [:recoveredBlock954Arg1 | 
    | recoveredBlock954Value0 recoveredBlock954Value1 recoveredBlock954Value2 recoveredBlock954Value3 recoveredBlock954Value4 recoveredBlock954Value5 recoveredBlock954Value6 recoveredBlock954Value7 recoveredBlock954Value8 |
    recoveredBlock954Value0 := recoveredBlock954Arg1.
    recoveredBlock954Value1 := recoveredBlock954Value0.
    recoveredBlock954Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock954Value1) topAttachment: (recoveredBlock954Value2).
    recoveredBlock954Value3 := recoveredBlock954Value0.
    recoveredBlock954Value4 := recoveredLocal13.
    (recoveredBlock954Value3) topWidget: (recoveredBlock954Value4).
    recoveredBlock954Value5 := recoveredBlock954Value0.
    (recoveredBlock954Value5) topOffset: (4).
    recoveredBlock954Value6 := recoveredBlock954Value0.
    recoveredBlock954Value7 := XmATTACHFORM.
    (recoveredBlock954Value6) rightAttachment: (recoveredBlock954Value7).
    recoveredBlock954Value8 := (recoveredBlock954Value0) rightOffset: (2).
    recoveredBlock954Value8
].
            recoveredPC := 1000.
        ].
        recoveredStep = 1000 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1005.
        ].
        recoveredStep = 1005 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 1008.
        ].
        recoveredStep = 1008 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 1010.
        ].
        recoveredStep = 1010 ifTrue: [
            recoveredStack1 := [:recoveredBlock1010Arg1 | 
    | recoveredBlock1010Value0 recoveredBlock1010Value1 recoveredBlock1010Value2 recoveredBlock1010Value3 recoveredBlock1010Value4 recoveredBlock1010Value5 recoveredBlock1010Value6 recoveredBlock1010Value7 recoveredBlock1010Value8 recoveredBlock1010Value9 recoveredBlock1010Value10 |
    recoveredBlock1010Value0 := recoveredBlock1010Arg1.
    recoveredBlock1010Value1 := recoveredBlock1010Value0.
    recoveredBlock1010Value2 := XmATTACHWIDGET.
    (recoveredBlock1010Value1) topAttachment: (recoveredBlock1010Value2).
    recoveredBlock1010Value3 := recoveredBlock1010Value0.
    recoveredBlock1010Value4 := recoveredLocal13.
    (recoveredBlock1010Value3) topWidget: (recoveredBlock1010Value4).
    recoveredBlock1010Value5 := recoveredBlock1010Value0.
    recoveredBlock1010Value6 := XmATTACHFORM.
    (recoveredBlock1010Value5) bottomAttachment: (recoveredBlock1010Value6).
    recoveredBlock1010Value7 := recoveredBlock1010Value0.
    recoveredBlock1010Value8 := XmATTACHFORM.
    (recoveredBlock1010Value7) leftAttachment: (recoveredBlock1010Value8).
    recoveredBlock1010Value9 := XmATTACHFORM.
    recoveredBlock1010Value10 := (recoveredBlock1010Value0) rightAttachment: (recoveredBlock1010Value9).
    recoveredBlock1010Value10
].
            recoveredPC := 1060.
        ].
        recoveredStep = 1060 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1065.
        ].
        recoveredStep = 1065 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 1068.
        ].
        recoveredStep = 1068 ifTrue: [
            recoveredStack1 := XmNexposeCallback.
            recoveredPC := 1072.
        ].
        recoveredStep = 1072 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1073.
        ].
        recoveredStep = 1073 ifTrue: [
            recoveredStack3 := 'scrolledClassListExpose:clientData:callData:'.
            recoveredPC := 1076.
        ].
        recoveredStep = 1076 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1077.
        ].
        recoveredStep = 1077 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1081.
        ].
        recoveredStep = 1081 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 1084.
        ].
        recoveredStep = 1084 ifTrue: [
            recoveredStack1 := XmNfocusCallback.
            recoveredPC := 1088.
        ].
        recoveredStep = 1088 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1089.
        ].
        recoveredStep = 1089 ifTrue: [
            recoveredStack3 := 'etasWidgetFocus:clientData:callData:'.
            recoveredPC := 1092.
        ].
        recoveredStep = 1092 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 1093.
        ].
        recoveredStep = 1093 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1097.
        ].
        recoveredStep = 1097 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 1100.
        ].
        recoveredStep = 1100 ifTrue: [
            recoveredStack1 := XmNlosingFocusCallback.
            recoveredPC := 1104.
        ].
        recoveredStep = 1104 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1105.
        ].
        recoveredStep = 1105 ifTrue: [
            recoveredStack3 := 'etasWidgetFocus:clientData:callData:'.
            recoveredPC := 1108.
        ].
        recoveredStep = 1108 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 1109.
        ].
        recoveredStep = 1109 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1113.
        ].
        recoveredStep = 1113 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 1116.
        ].
        recoveredStep = 1116 ifTrue: [
            recoveredStack1 := XmNvisualInfoCallback.
            recoveredPC := 1120.
        ].
        recoveredStep = 1120 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1121.
        ].
        recoveredStep = 1121 ifTrue: [
            recoveredStack3 := 'classListVisual:clientData:callData:'.
            recoveredPC := 1124.
        ].
        recoveredStep = 1124 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1125.
        ].
        recoveredStep = 1125 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1129.
        ].
        recoveredStep = 1129 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 1132.
        ].
        recoveredStep = 1132 ifTrue: [
            recoveredStack1 := XmNchildrenCallback.
            recoveredPC := 1136.
        ].
        recoveredStep = 1136 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1137.
        ].
        recoveredStep = 1137 ifTrue: [
            recoveredStack3 := 'itemListChildren:clientData:callData:'.
            recoveredPC := 1140.
        ].
        recoveredStep = 1140 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1141.
        ].
        recoveredStep = 1141 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1145.
        ].
        recoveredStep = 1145 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 1148.
        ].
        recoveredStep = 1148 ifTrue: [
            recoveredStack1 := XmNextendedSelectionCallback.
            recoveredPC := 1152.
        ].
        recoveredStep = 1152 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1153.
        ].
        recoveredStep = 1153 ifTrue: [
            recoveredStack3 := 'classListextendedSelectionCallback:clientData:callData:'.
            recoveredPC := 1156.
        ].
        recoveredStep = 1156 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1157.
        ].
        recoveredStep = 1157 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1161.
        ].
        recoveredStep = 1161 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 1164.
        ].
        recoveredStep = 1164 ifTrue: [
            recoveredStack1 := XmNbrowseSelectionCallback.
            recoveredPC := 1168.
        ].
        recoveredStep = 1168 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1169.
        ].
        recoveredStep = 1169 ifTrue: [
            recoveredStack3 := 'classListextendedSelectionCallback:clientData:callData:'.
            recoveredPC := 1172.
        ].
        recoveredStep = 1172 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1173.
        ].
        recoveredStep = 1173 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1177.
        ].
        recoveredStep = 1177 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 1180.
        ].
        recoveredStep = 1180 ifTrue: [
            recoveredStack1 := XmNexpandCollapseCallback.
            recoveredPC := 1184.
        ].
        recoveredStep = 1184 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1185.
        ].
        recoveredStep = 1185 ifTrue: [
            recoveredStack3 := 'itemListExpandCollapseCallback:clientData:callData:'.
            recoveredPC := 1188.
        ].
        recoveredStep = 1188 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1189.
        ].
        recoveredStep = 1189 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1193.
        ].
        recoveredStep = 1193 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 1196.
        ].
        recoveredStep = 1196 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 1200.
        ].
        recoveredStep = 1200 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1201.
        ].
        recoveredStep = 1201 ifTrue: [
            recoveredStack3 := 'itemCommentValue:clientData:callData:'.
            recoveredPC := 1204.
        ].
        recoveredStep = 1204 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1205.
        ].
        recoveredStep = 1205 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1209.
        ].
        recoveredStep = 1209 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 1212.
        ].
        recoveredStep = 1212 ifTrue: [
            recoveredStack1 := KeyPressMask.
            recoveredPC := 1216.
        ].
        recoveredStep = 1216 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1217.
        ].
        recoveredStep = 1217 ifTrue: [
            recoveredStack3 := 'keyDown:clientData:callData:'.
            recoveredPC := 1220.
        ].
        recoveredStep = 1220 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1221.
        ].
        recoveredStep = 1221 ifTrue: [
            (recoveredStack0) addEventHandler: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1225.
        ].
        recoveredStep = 1225 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 1228.
        ].
        recoveredStep = 1228 ifTrue: [
            recoveredStack1 := 'Call_54172'.
            recoveredPC := 1232.
        ].
        recoveredStep = 1232 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 1233.
        ].
        recoveredStep = 1233 ifTrue: [
            recoveredPC := 1234.
        ].
        recoveredStep = 1234 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 1237.
        ].
        recoveredStep = 1237 ifTrue: [
            recoveredStack1 := XmNfocusCallback.
            recoveredPC := 1240.
        ].
        recoveredStep = 1240 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1241.
        ].
        recoveredStep = 1241 ifTrue: [
            recoveredStack3 := 'etasWidgetFocus:clientData:callData:'.
            recoveredPC := 1244.
        ].
        recoveredStep = 1244 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 1245.
        ].
        recoveredStep = 1245 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1249.
        ].
        recoveredStep = 1249 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 1252.
        ].
        recoveredStep = 1252 ifTrue: [
            recoveredStack1 := 'Call_54172'.
            recoveredPC := 1256.
        ].
        recoveredStep = 1256 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 1257.
        ].
        recoveredStep = 1257 ifTrue: [
            recoveredPC := 1258.
        ].
        recoveredStep = 1258 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 1261.
        ].
        recoveredStep = 1261 ifTrue: [
            recoveredStack1 := XmNlosingFocusCallback.
            recoveredPC := 1264.
        ].
        recoveredStep = 1264 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1265.
        ].
        recoveredStep = 1265 ifTrue: [
            recoveredStack3 := 'etasWidgetFocus:clientData:callData:'.
            recoveredPC := 1268.
        ].
        recoveredStep = 1268 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 1269.
        ].
        recoveredStep = 1269 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1273.
        ].
        recoveredStep = 1273 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1274.
        ].
        recoveredStep = 1274 ifTrue: [
            recoveredStack1 := XmNdestroyCallback.
            recoveredPC := 1278.
        ].
        recoveredStep = 1278 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1279.
        ].
        recoveredStep = 1279 ifTrue: [
            recoveredStack3 := 'destroy:clientData:callData:'.
            recoveredPC := 1282.
        ].
        recoveredStep = 1282 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1283.
        ].
        recoveredStep = 1283 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1287.
        ].
        recoveredStep = 1287 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 1290.
        ].
        recoveredStep = 1290 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 1294.
        ].
        recoveredStep = 1294 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1295.
        ].
        recoveredStep = 1295 ifTrue: [
            recoveredStack3 := 'buttonVisibilityActivate:clientData:callData:'.
            recoveredPC := 1298.
        ].
        recoveredStep = 1298 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock1298Value0 |
    recoveredBlock1298Value0 := (self) switchVisibilityItemList.
    recoveredBlock1298Value0
].
            recoveredPC := 1310.
        ].
        recoveredStep = 1310 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1315.
        ].
        recoveredStep = 1315 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 1318.
        ].
        recoveredStep = 1318 ifTrue: [
            recoveredStack1 := XmNexposeCallback.
            recoveredPC := 1322.
        ].
        recoveredStep = 1322 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1323.
        ].
        recoveredStep = 1323 ifTrue: [
            recoveredStack3 := 'buttonVisibilityExpose:clientData:callData:'.
            recoveredPC := 1326.
        ].
        recoveredStep = 1326 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1327.
        ].
        recoveredStep = 1327 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1331.
        ].
        recoveredStep = 1331 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 1334.
        ].
        recoveredStep = 1334 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 1338.
        ].
        recoveredStep = 1338 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1339.
        ].
        recoveredStep = 1339 ifTrue: [
            recoveredStack3 := 'buttonVisibilityActivate:clientData:callData:'.
            recoveredPC := 1342.
        ].
        recoveredStep = 1342 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock1342Value0 |
    recoveredBlock1342Value0 := (self) switchVisibilityItemComment.
    recoveredBlock1342Value0
].
            recoveredPC := 1354.
        ].
        recoveredStep = 1354 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1359.
        ].
        recoveredStep = 1359 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 1362.
        ].
        recoveredStep = 1362 ifTrue: [
            recoveredStack1 := XmNexposeCallback.
            recoveredPC := 1366.
        ].
        recoveredStep = 1366 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1367.
        ].
        recoveredStep = 1367 ifTrue: [
            recoveredStack3 := 'buttonVisibilityExpose:clientData:callData:'.
            recoveredPC := 1370.
        ].
        recoveredStep = 1370 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1371.
        ].
        recoveredStep = 1371 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1375.
        ].
        recoveredStep = 1375 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 1378.
        ].
        recoveredStep = 1378 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

