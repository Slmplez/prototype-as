"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200036a8; bytecode file offset 0x90206c"
!EtasNotebookElementWidget methodsFor: 'recovered'!
addSubmenusFor: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200067c4; bytecode file offset 0x908be4"
!EtasNotebookElementWidget methodsFor: 'recovered'!
isCreateAscetLinkPossible
    | recoveredValue0 |
    recoveredValue0 := (self) isActionSelectPossible.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200094c4; bytecode file offset 0x908be4"
!EtasNotebookElementWidget methodsFor: 'recovered'!
updateContentsPage
    | recoveredValue0 |
    recoveredValue0 := (self) updateCurrentPage.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002c764; bytecode file offset 0x934580"
!EtasNotebookElementWidget methodsFor: 'recovered'!
isAddPossible
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) item.
    recoveredValue1 := (recoveredValue0) isGenericComponent.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002cc74; bytecode file offset 0x934580"
!EtasNotebookElementWidget methodsFor: 'recovered'!
sortBlockForName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) elementSortManager.
    recoveredValue1 := (recoveredValue0) sortBlockForName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031c94; bytecode file offset 0x934580"
!EtasNotebookElementWidget methodsFor: 'recovered'!
compatibelEditElementsSelected
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetController.
    recoveredValue1 := (recoveredValue0) compatibelEditElementsSelected.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031da4; bytecode file offset 0x934580"
!EtasNotebookElementWidget methodsFor: 'recovered'!
menuElementCopyEnable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetController.
    recoveredValue1 := (recoveredValue0) copyElementsAllowed.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003855c; bytecode file offset 0x935c54"
!EtasNotebookElementWidget methodsFor: 'recovered'!
getRealElementCallData: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) item.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003924c; bytecode file offset 0x935c54"
!EtasNotebookElementWidget methodsFor: 'recovered'!
getName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) notebookWidgetLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004387c; bytecode file offset 0x9451f8"
!EtasNotebookElementWidget methodsFor: 'recovered'!
rmiWidget
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('rmiWidget').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043ccc; bytecode file offset 0x9451f8"
!EtasNotebookElementWidget methodsFor: 'recovered'!
customerWidget
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('customerWidget').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20045cdc; bytecode file offset 0x9451f8"
!EtasNotebookElementWidget methodsFor: 'recovered'!
tableWidgetContents
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('tableWidgetContents').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20045e0c; bytecode file offset 0x9451f8"
!EtasNotebookElementWidget methodsFor: 'recovered'!
pageCustomer
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('customerPage').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004664c; bytecode file offset 0x9451f8"
!EtasNotebookElementWidget methodsFor: 'recovered'!
pageContents
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('pageContents').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004678c; bytecode file offset 0x9451f8"
!EtasNotebookElementWidget methodsFor: 'recovered'!
pageRMI
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('rmiPage').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200498bc; bytecode file offset 0x947128"
!EtasNotebookElementWidget methodsFor: 'recovered'!
sortBlockForTableContents
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) tableWidgetContents.
    recoveredValue1 := (self) sortBlockForTable: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004f9d4; bytecode file offset 0x94d048"
!EtasNotebookElementWidget methodsFor: 'recovered'!
contentsSelectNone
    (self) updateElementsForPageContents.
    ^self
! !

"ASDBase.ic method 0x200506b8; bytecode file offset 0x94d048"
!EtasNotebookElementWidget methodsFor: 'recovered'!
initPages
    (self) initPageContents.
    ^self
! !

"ASDBase.ic method 0x20062898; bytecode file offset 0x95f8b0"
!EtasNotebookElementWidget methodsFor: 'recovered'!
dtOrSmSelected
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) dtSelected.
    recoveredValue1 := (self) smSelected.
    recoveredValue2 := (recoveredValue0) | (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20062e38; bytecode file offset 0x95f8b0"
!EtasNotebookElementWidget methodsFor: 'recovered'!
sortedElementsForPageContents
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) elementsForPageContents.
    recoveredValue1 := (self) sortBlockForTableContents.
    recoveredValue2 := (recoveredValue0) asSortedCollection: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20079e44; bytecode file offset 0x97c330"
!EtasNotebookElementWidget methodsFor: 'recovered'!
isActionSelectPossible
    ^false
! !

"ASDBase.ic method 0x2007b1fc; bytecode file offset 0x97c330"
!EtasNotebookElementWidget methodsFor: 'recovered'!
isSearchResultsWidget
    ^false
! !

"ASDBase.ic method 0x2007d184; bytecode file offset 0x97c330"
!EtasNotebookElementWidget methodsFor: 'recovered'!
isPotentiallyUsedPossible
    ^false
! !

"ASDBase.ic method 0x2007f434; bytecode file offset 0x97c330"
!EtasNotebookElementWidget methodsFor: 'recovered'!
isProjectGlobalScope
    ^false
! !

"ASDBase.ic method 0x2008d174; bytecode file offset 0x989db0"
!EtasNotebookElementWidget methodsFor: 'recovered'!
updateCurrentPage
    | recoveredValue0 |
    recoveredValue0 := (self) currentPage.
    (self) updateForNewPage: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008faa8; bytecode file offset 0x98c374"
!EtasNotebookElementWidget methodsFor: 'recovered'!
contentsSelectAll
    | recoveredValue0 |
    recoveredValue0 := (self) tableWidgetContents.
    (recoveredValue0) selectAllItemsNotify: (true).
    ^self
! !

"ASDBase.ic method 0x200a2134; bytecode file offset 0x99ea1c"
!EtasNotebookElementWidget methodsFor: 'recovered'!
oneSelected
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widgetController.
    recoveredValue1 := (recoveredValue0) selectedElements.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue2) == (1).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a2718; bytecode file offset 0x99f064"
!EtasNotebookElementWidget methodsFor: 'recovered'!
callElementsEditedCallback: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := XmNelementsEditedCallback.
    recoveredValue1 := recoveredArg1.
    (self) callCallbacks: (recoveredValue0) callData: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a2758; bytecode file offset 0x99f064"
!EtasNotebookElementWidget methodsFor: 'recovered'!
callElementRenamedCallback: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := XmNelementRenamedCallback.
    recoveredValue1 := recoveredArg1.
    (self) callCallbacks: (recoveredValue0) callData: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a2778; bytecode file offset 0x99f064"
!EtasNotebookElementWidget methodsFor: 'recovered'!
callElementsDeletedCallback: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := XmNelementsDeletedCallback.
    recoveredValue1 := recoveredArg1.
    (self) callCallbacks: (recoveredValue0) callData: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c6a94; bytecode file offset 0x9c3470"
!EtasNotebookElementWidget methodsFor: 'recovered'!
elementRenamedCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmNelementRenamedCallback := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6c80; bytecode file offset 0x9c36ec"
!EtasNotebookElementWidget methodsFor: 'recovered'!
elementsDeletedCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmNelementsDeletedCallback := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6ed4; bytecode file offset 0x9c38d8"
!EtasNotebookElementWidget methodsFor: 'recovered'!
elementsEditedCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmNelementsEditedCallback := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cab78; bytecode file offset 0x9c7438"
!EtasNotebookElementWidget methodsFor: 'recovered'!
editSelectedElements
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) widgetController.
    recoveredValue1 := (recoveredValue0) selectedElements.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) widgetController.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue2) editElements: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d06d4; bytecode file offset 0x9cd3a0"
!EtasNotebookElementWidget methodsFor: 'recovered'!
selectedTopElement
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('hw') == ('call_80681').
    recoveredValue1 := (self) widgetController.
    recoveredValue2 := (recoveredValue1) selectedElement.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d4e40; bytecode file offset 0x9d174c"
!EtasNotebookElementWidget methodsFor: 'recovered'!
initPageContents
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) pageContents.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) contentsSelectNone.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e6ce0; bytecode file offset 0x9e35a4"
!EtasNotebookElementWidget methodsFor: 'recovered'!
getTypeWithIcon: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := RBRenderableBitmapString.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getTypeLabel: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) iconForModelElement.
    recoveredValue5 := (recoveredValue0) createOnString: (recoveredValue2) image: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200e8310; bytecode file offset 0x9e4c20"
!EtasNotebookElementWidget methodsFor: 'recovered'!
sortContentsTableByColumn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) tableWidgetContents.
    recoveredValue1 := recoveredArg1.
    (self) setSortBlockForWidget: (recoveredValue0) fromColumn: (recoveredValue1).
    (self) updateElementsForPageContents.
    ^self
! !

"ASDBase.ic method 0x200ecbb8; bytecode file offset 0x9e948c"
!EtasNotebookElementWidget methodsFor: 'recovered'!
nameCellValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) getNameWithIcon: (recoveredValue2) forTab: (recoveredValue3).
    (recoveredValue0) value: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x200ecbcc; bytecode file offset 0x9e948c"
!EtasNotebookElementWidget methodsFor: 'recovered'!
typeCellValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) getTypeWithIcon: (recoveredValue2) forTab: (recoveredValue3).
    (recoveredValue0) value: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20102398; bytecode file offset 0x9fec5c"
!EtasNotebookElementWidget methodsFor: 'recovered'!
contentsTableExtendedSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) widgetController.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) selectedItems.
    (recoveredValue0) selectedElements: (recoveredValue2).
    (self) callToolbarRelevantUpdateCallback: (nil).
    ^self
! !

"ASDBase.ic method 0x20107b04; bytecode file offset 0xa043c4"
!EtasNotebookElementWidget methodsFor: 'recovered'!
menuElementPasteEnable
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
            recoveredStack2 := (recoveredStack2) modifiable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementBuffer.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2010c504; bytecode file offset 0xa08dcc"
!EtasNotebookElementWidget methodsFor: 'recovered'!
getNameWithIcon: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := RBRenderableBitmapString.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getName: (recoveredValue1).
    recoveredValue3 := (self) widgetController.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) iconForElement: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) createOnString: (recoveredValue2) image: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20117ac8; bytecode file offset 0xa14388"
!EtasNotebookElementWidget methodsFor: 'recovered'!
isGetLockPossible
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
            recoveredStack2 := ASDAscetController.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isSCMActive.
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
            recoveredStack1 := (recoveredStack1) modifiable.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011a738; bytecode file offset 0xa17000"
!EtasNotebookElementWidget methodsFor: 'recovered'!
selectedElements
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) contentsTabSelected.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableWidgetContents.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20123934; bytecode file offset 0xa20240"
!EtasNotebookElementWidget methodsFor: 'recovered'!
contentsTableColumnHeadingSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) selectedColumns.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectedColumns.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) sortContentsTableByColumn: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012e700; bytecode file offset 0xa2b0c4"
!EtasNotebookElementWidget methodsFor: 'recovered'!
smSelected
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElements.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280caad0Arg1 | 
    | block280caad0Value0 block280caad0Value1 |
    block280caad0Value0 := block280caad0Arg1.
    block280caad0Value1 := (block280caad0Value0) isSmVariable.
    block280caad0Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201303b8; bytecode file offset 0xa2cc84"
!EtasNotebookElementWidget methodsFor: 'recovered'!
getClassTypeWithIcon: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := RBRenderableBitmapString.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getClassTypeLabel: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := RBUserInterface.
    recoveredValue5 := (recoveredValue4) resourceManager.
    recoveredValue6 := (recoveredValue3) getIcon: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) createOnString: (recoveredValue2) image: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2013cbc4; bytecode file offset 0xa394b0"
!EtasNotebookElementWidget methodsFor: 'recovered'!
contentsTabSelected
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) currentTableList.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) tableWidgetContents.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentTableList.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013ccac; bytecode file offset 0xa39574"
!EtasNotebookElementWidget methodsFor: 'recovered'!
isDeletePossible
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
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isGenericComponent.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
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
            recoveredStack1 := (recoveredStack1) selectedElements.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013fb98; bytecode file offset 0xa3c460"
!EtasNotebookElementWidget methodsFor: 'recovered'!
manySelected
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElements.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280cbfc4Arg1 | 
    | block280cbfc4Value0 block280cbfc4Value1 block280cbfc4Value2 |
    block280cbfc4Value0 := block280cbfc4Arg1.
    block280cbfc4Value1 := (block280cbfc4Value0) isAliasDummy.
    block280cbfc4Value2 := (block280cbfc4Value1) not.
    block280cbfc4Value2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201496f8; bytecode file offset 0xa45fbc"
!EtasNotebookElementWidget methodsFor: 'recovered'!
collectionOfTableWidgets
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
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableWidgetContents.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) tableWidgetContents.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20154180; bytecode file offset 0xa50a3c"
!EtasNotebookElementWidget methodsFor: 'recovered'!
updateTableList: recoveredArg1
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) tableWidgetContents.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) updateElementsForPageContents.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015dd68; bytecode file offset 0xa5a63c"
!EtasNotebookElementWidget methodsFor: 'recovered'!
elementRenamedCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNelementRenamedCallback.
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
            (recoveredStack1) elementRenamedCallback: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := xmNelementRenamedCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015ddf0; bytecode file offset 0xa5a6c4"
!EtasNotebookElementWidget methodsFor: 'recovered'!
elementsDeletedCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNelementsDeletedCallback.
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
            (recoveredStack1) elementsDeletedCallback: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := xmNelementsDeletedCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015de58; bytecode file offset 0xa5a718"
!EtasNotebookElementWidget methodsFor: 'recovered'!
elementsEditedCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNelementsEditedCallback.
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
            (recoveredStack1) elementsEditedCallback: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := xmNelementsEditedCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20161784; bytecode file offset 0xa5e050"
!EtasNotebookElementWidget methodsFor: 'recovered'!
methodElementSelected
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
            recoveredStack0 := (recoveredStack0) selectedElements.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280ce334Arg1 | 
    | block280ce334Value0 block280ce334Value1 |
    block280ce334Value0 := block280ce334Arg1.
    block280ce334Value1 := (block280ce334Value0) isMethodParameter.
    block280ce334Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) notNil.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017e934; bytecode file offset 0xa7b200"
!EtasNotebookElementWidget methodsFor: 'recovered'!
columnsContents
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) createTableColumnNameForTab: ('element').
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) createTableColumnTypeForTab: ('element').
    (recoveredValue4) add: (recoveredValue5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2018f1f8; bytecode file offset 0xa8bac4"
!EtasNotebookElementWidget methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) initPages.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) updateCurrentPage.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableWidgetContents.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280d18a4Arg1 | 
    | block280d18a4Value0 block280d18a4Value1 |
    block280d18a4Value0 := block280d18a4Arg1.
    block280d18a4Value1 := (block280d18a4Value0) addHoverSupport.
    block280d18a4Value1
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
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

"ASDBase.ic method 0x201ca1dc; bytecode file offset 0xac6aa8"
!EtasNotebookElementWidget methodsFor: 'recovered'!
dtSelected
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElements.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280d4ea4Arg1 | 
    | block280d4ea4Stack0 block280d4ea4Stack1 block280d4ea4Stack2 block280d4ea4Stack3 block280d4ea4PC block280d4ea4Step block280d4ea4Done block280d4ea4Result |
    block280d4ea4Stack0 := self.
    block280d4ea4PC := 4.
    block280d4ea4Done := false.
    [block280d4ea4Done not] whileTrue: [
        block280d4ea4Step := block280d4ea4PC.
        block280d4ea4Step = 4 ifTrue: [
            block280d4ea4Stack1 := false.
            block280d4ea4PC := 5.
        ].
        block280d4ea4Step = 5 ifTrue: [
            block280d4ea4Stack2 := block280d4ea4Arg1.
            block280d4ea4PC := 6.
        ].
        block280d4ea4Step = 6 ifTrue: [
            block280d4ea4Stack2 := (block280d4ea4Stack2) isDeltaT.
            block280d4ea4PC := 7.
        ].
        block280d4ea4Step = 7 ifTrue: [
            (block280d4ea4Stack2) ifTrue: [block280d4ea4PC := 10] ifFalse: [block280d4ea4PC := 15].
        ].
        block280d4ea4Step = 10 ifTrue: [
            block280d4ea4PC := 11.
        ].
        block280d4ea4Step = 11 ifTrue: [
            block280d4ea4Stack1 := block280d4ea4Arg1.
            block280d4ea4PC := 12.
        ].
        block280d4ea4Step = 12 ifTrue: [
            block280d4ea4Stack1 := (block280d4ea4Stack1) isImported.
            block280d4ea4PC := 14.
        ].
        block280d4ea4Step = 14 ifTrue: [
            block280d4ea4Stack1 := (block280d4ea4Stack1) not.
            block280d4ea4PC := 15.
        ].
        block280d4ea4Step = 15 ifTrue: [
            block280d4ea4Result := block280d4ea4Stack1.
            block280d4ea4Done := true.
        ].
    ].
    block280d4ea4Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201cb1e8; bytecode file offset 0xac7af4"
!EtasNotebookElementWidget methodsFor: 'recovered'!
menuEditEditFocus
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) tableWidgetContents.
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
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 22].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) contentsEdit.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201cb200; bytecode file offset 0xac7af4"
!EtasNotebookElementWidget methodsFor: 'recovered'!
menuEditCopyFocus
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) tableWidgetContents.
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
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 22].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) copyElements.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201cb218; bytecode file offset 0xac7af4"
!EtasNotebookElementWidget methodsFor: 'recovered'!
menuEditSelectAllFocus
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) tableWidgetContents.
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
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 22].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) contentsSelectAll.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201cb230; bytecode file offset 0xac7af4"
!EtasNotebookElementWidget methodsFor: 'recovered'!
menuEditRenameFocus
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) tableWidgetContents.
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
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 22].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) contentsRename.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201d0ec8; bytecode file offset 0xacd78c"
!EtasNotebookElementWidget methodsFor: 'recovered'!
selectedElement
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElements.
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
            recoveredStack0 := (recoveredStack0) isEmpty.
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
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
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ea344; bytecode file offset 0xae6c0c"
!EtasNotebookElementWidget methodsFor: 'recovered'!
appendWidgetHierarchy: recoveredArg1 parent: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasElements.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasDatas.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasImplementations.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) appendWidgetHierarchyPageContents: (recoveredStack1) parent: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f4bf8; bytecode file offset 0xaf14c8"
!EtasNotebookElementWidget methodsFor: 'recovered'!
getClassTypeLabel: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 'call_95703'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := SGReservedNames.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) missingName.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'Call_38552'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) labelWithVersion.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201fddac; bytecode file offset 0xafa670"
!EtasNotebookElementWidget methodsFor: 'recovered'!
menuDeleteEnable
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
            recoveredStack2 := (recoveredStack2) modifiable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) manySelected.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) dtSelected.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) allOwnerComponentsSelected.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201ff234; bytecode file offset 0xafbaf8"
!EtasNotebookElementWidget methodsFor: 'recovered'!
initMenus
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mainWidgetForPage.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) getPopupMenuFrom: (recoveredBlock5Stack1).
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack0.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack0 := nil.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Local1.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            (recoveredBlock5Stack1 == nil) ifTrue: [recoveredBlock5PC := 26] ifFalse: [recoveredBlock5PC := 20].
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack0 := recoveredBlock5Arg1.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Local1.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) menu: (recoveredBlock5Stack1) owner: (recoveredBlock5Stack2).
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack0.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2024d134; bytecode file offset 0xb49a94"
!EtasNotebookElementWidget methodsFor: 'recovered'!
contentsTableDefaultActionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := ASDUserActionObserver.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) name.
    recoveredValue4 := (recoveredValue3) , ('->').
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue5) item.
    recoveredValue7 := (recoveredValue6) printString.
    recoveredValue8 := (recoveredValue4) , (recoveredValue7).
    recoveredValue9 := (self) class.
    recoveredValue10 := (self) owner.
    recoveredValue11 := (recoveredValue10) title.
    (recoveredValue1) addUserAction: (recoveredValue8) type: ('DefaultAction') windowClass: (recoveredValue9) windowTitle: (recoveredValue11).
    (self) contentsEdit.
    ^self
! !

"ASDBase.ic method 0x20250798; bytecode file offset 0xb4d0a4"
!EtasNotebookElementWidget methodsFor: 'recovered'!
getClassTypeWithIcon: recoveredArg1 forTab: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getClassTypeWithIcon: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 'data'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementSortManager.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDataLabel: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := SGReservedNames.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) naString.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := CgRGBColor.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) darkGray.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) rgbColor: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202507c8; bytecode file offset 0xb4d0a4"
!EtasNotebookElementWidget methodsFor: 'recovered'!
getTypeWithIcon: recoveredArg1 forTab: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTypeWithIcon: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 'data'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementSortManager.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDataLabel: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := SGReservedNames.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) naString.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := CgRGBColor.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) darkGray.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) rgbColor: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026ad00; bytecode file offset 0xb675dc"
!EtasNotebookElementWidget methodsFor: 'recovered'!
contentsEdit
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) menuEditEnable.
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
            recoveredStack0 := (recoveredStack0) editSelectedElements.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := EwListSelectionCallbackData.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) reason: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) currentTableList.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) widget: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) callElementsEditedCallback: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'Call_51372'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
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

"ASDBase.ic method 0x20274280; bytecode file offset 0xb70b94"
!EtasNotebookElementWidget methodsFor: 'recovered'!
elementNameBeginEditCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    recoveredValue2 := (recoveredValue1) elementName.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := EwTextEditPolicy.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) on: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) size.
    recoveredValue10 := (0) @ (recoveredValue9).
    (recoveredValue7) selection: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    (recoveredValue6) value: (recoveredValue11).
    recoveredValue12 := recoveredArg3.
    recoveredValue13 := recoveredValue12.
    recoveredValue14 := recoveredLocal2.
    (recoveredValue13) editPolicy: (recoveredValue14).
    (recoveredValue12) doit: (true).
    (self) setEditModeOn.
    ^self
! !

"ASDBase.ic method 0x202968f8; bytecode file offset 0xb931cc"
!EtasNotebookElementWidget methodsFor: 'recovered'!
menuEditEnable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElements.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280e32bcArg1 | 
    | block280e32bcValue0 block280e32bcValue1 |
    block280e32bcValue0 := block280e32bcArg1.
    block280e32bcValue1 := (block280e32bcValue0) isMethodParameter.
    block280e32bcValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
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
            recoveredStack0 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) manySelected.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) compatibelEditElementsSelected.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) smSelected.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a3f70; bytecode file offset 0xba0844"
!EtasNotebookElementWidget methodsFor: 'recovered'!
elementsForPageContents
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280e3e68Arg1 | 
    | block280e3e68Local1 block280e3e68Stack0 block280e3e68Stack1 block280e3e68Stack2 block280e3e68Stack3 block280e3e68Stack4 block280e3e68PC block280e3e68Step block280e3e68Done block280e3e68Result |
    block280e3e68Stack0 := self.
    block280e3e68PC := 4.
    block280e3e68Done := false.
    [block280e3e68Done not] whileTrue: [
        block280e3e68Step := block280e3e68PC.
        block280e3e68Step = 4 ifTrue: [
            block280e3e68Stack1 := false.
            block280e3e68PC := 5.
        ].
        block280e3e68Step = 5 ifTrue: [
            block280e3e68Stack2 := block280e3e68Arg1.
            block280e3e68PC := 6.
        ].
        block280e3e68Step = 6 ifTrue: [
            block280e3e68Stack2 := (block280e3e68Stack2) sgClassKey.
            block280e3e68PC := 7.
        ].
        block280e3e68Step = 7 ifTrue: [
            block280e3e68Stack2 := (block280e3e68Stack2) isRBDBObject.
            block280e3e68PC := 8.
        ].
        block280e3e68Step = 8 ifTrue: [
            (block280e3e68Stack2) ifTrue: [block280e3e68PC := 12] ifFalse: [block280e3e68PC := 29].
        ].
        block280e3e68Step = 12 ifTrue: [
            block280e3e68PC := 13.
        ].
        block280e3e68Step = 13 ifTrue: [
            block280e3e68Stack1 := false.
            block280e3e68PC := 14.
        ].
        block280e3e68Step = 14 ifTrue: [
            block280e3e68Stack2 := block280e3e68Arg1.
            block280e3e68PC := 15.
        ].
        block280e3e68Step = 15 ifTrue: [
            block280e3e68Stack2 := (block280e3e68Stack2) sgClass.
            block280e3e68PC := 16.
        ].
        block280e3e68Step = 16 ifTrue: [
            block280e3e68Stack3 := block280e3e68Stack2.
            block280e3e68PC := 17.
        ].
        block280e3e68Step = 17 ifTrue: [
            block280e3e68Local1 := block280e3e68Stack3.
            block280e3e68PC := 18.
        ].
        block280e3e68Step = 18 ifTrue: [
            (block280e3e68Stack2 == nil) ifTrue: [block280e3e68PC := 27] ifFalse: [block280e3e68PC := 22].
        ].
        block280e3e68Step = 22 ifTrue: [
            block280e3e68PC := 23.
        ].
        block280e3e68Step = 23 ifTrue: [
            block280e3e68Stack1 := block280e3e68Local1.
            block280e3e68PC := 24.
        ].
        block280e3e68Step = 24 ifTrue: [
            block280e3e68Stack1 := (block280e3e68Stack1) isRead.
            block280e3e68PC := 26.
        ].
        block280e3e68Step = 26 ifTrue: [
            block280e3e68Stack1 := (block280e3e68Stack1) not.
            block280e3e68PC := 27.
        ].
        block280e3e68Step = 27 ifTrue: [
            block280e3e68Stack2 := nil.
            block280e3e68PC := 28.
        ].
        block280e3e68Step = 28 ifTrue: [
            block280e3e68Local1 := block280e3e68Stack2.
            block280e3e68PC := 29.
        ].
        block280e3e68Step = 29 ifTrue: [
            block280e3e68Result := block280e3e68Stack1.
            block280e3e68Done := true.
        ].
    ].
    block280e3e68Result
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) allUIElements.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ad910; bytecode file offset 0xbaa1d8"
!EtasNotebookElementWidget methodsFor: 'recovered'!
updateForNewPage: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) pageCustomer.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) customerWidget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) setItemData.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) pageRMI.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) rmiWidget.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) setItemData.
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c3a70; bytecode file offset 0xbc0350"
!EtasNotebookElementWidget methodsFor: 'recovered'!
etasStaticCodeAnalysisPerformedMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) add: ('elementRenamedCallback').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) add: ('elementRenamedCallback:').
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) add: ('elementsDeletedCallback').
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) add: ('elementsDeletedCallback:').
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) add: ('elementsEditedCallback').
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) add: ('elementsEditedCallback:').
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) add: ('callItemsDeletedCallback').
    recoveredValue9 := recoveredValue1.
    (recoveredValue9) add: ('callItemsDeletedCallback:').
    ^recoveredValue1
! !

"ASDBase.ic method 0x202ccbc8; bytecode file offset 0xbc949c"
!EtasNotebookElementWidget methodsFor: 'recovered'!
menuGoTo
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) userData.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedElement.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) selectAndExpandItem: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElement.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedElement.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) outlineTree.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) expandFirstLevel.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElement.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMethodDeclaration.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedElement.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) selectAndExpandMethod: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedElement.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) selectAndExpandItem: (recoveredStack1).
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

"ASDBase.ic method 0x202d3c14; bytecode file offset 0xbd0500"
!EtasNotebookElementWidget methodsFor: 'recovered'!
getNameWithIcon: recoveredArg1 forTab: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBRenderableBitmapString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) getName: (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetController.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) iconForElement: (recoveredStack4).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOnString: (recoveredStack2) image: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'data'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementSortManager.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDataLabel: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := SGReservedNames.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) naString.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := CgRGBColor.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) darkGray.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) rgbColor: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20300c58; bytecode file offset 0xbfd530"
!EtasNotebookElementWidget methodsFor: 'recovered'!
getTypeLabel: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) label.
    ^recoveredBlock7Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassIfUndefined: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 'call_95703'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := SGReservedNames.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) missingName.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 'Call_38552'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassLabelWithVersion.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20307fe4; bytecode file offset 0xc048d4"
!EtasNotebookElementWidget methodsFor: 'recovered'!
createTableColumnTypeForTab: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Type').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (false).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) verticalSeparatorThickness: (1).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) resizable: (true).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) width: (96).
    recoveredLocal1 := recoveredValue1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := XmNcellValueCallback.
    recoveredValue9 := recoveredArg1.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) selector: ('typeCellValueCallback:clientData:callData:') clientData: (recoveredValue9).
    recoveredValue10 := (self) tableColumnSortBlocks.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (self) elementSortManager.
    recoveredValue13 := (recoveredValue12) sortBlockForType.
    (recoveredValue10) at: (recoveredValue11) put: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    ^recoveredValue14
! !

"ASDBase.ic method 0x2032202c; bytecode file offset 0xc1e900"
!EtasNotebookElementWidget methodsFor: 'recovered'!
allOwnerComponentsSelected
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProject.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElements.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) dependentVariables.
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
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 |
    recoveredBlock41Value0 := recoveredLocal2.
    recoveredBlock41Value1 := recoveredBlock41Arg1.
    recoveredBlock41Value2 := (recoveredBlock41Value0) includes: (recoveredBlock41Value1).
    recoveredBlock41Value2
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) conform: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033d0c8; bytecode file offset 0xc3999c"
!EtasNotebookElementWidget methodsFor: 'recovered'!
menuEditDeleteFocus
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isGenericComponent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock10Value0 |
    recoveredBlock10Value0 := (self) menuEditDeleteGenComp.
    recoveredBlock10Value0
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock22Value0 |
    recoveredBlock22Value0 := (self) contentsDelete.
    recoveredBlock22Value0
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableWidgetContents.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Stack0 recoveredBlock36Stack1 recoveredBlock36Stack2 recoveredBlock36Stack3 recoveredBlock36PC recoveredBlock36Step recoveredBlock36Done recoveredBlock36Result |
    recoveredBlock36Stack0 := self.
    recoveredBlock36PC := 42.
    recoveredBlock36Done := false.
    [recoveredBlock36Done not] whileTrue: [
        recoveredBlock36Step := recoveredBlock36PC.
        recoveredBlock36Step = 42 ifTrue: [
            recoveredBlock36Stack1 := nil.
            recoveredBlock36PC := 43.
        ].
        recoveredBlock36Step = 43 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Arg1.
            recoveredBlock36PC := 44.
        ].
        recoveredBlock36Step = 44 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) hasFocus.
            recoveredBlock36PC := 46.
        ].
        recoveredBlock36Step = 46 ifTrue: [
            (recoveredBlock36Stack2) ifTrue: [recoveredBlock36PC := 50] ifFalse: [recoveredBlock36PC := 57].
        ].
        recoveredBlock36Step = 50 ifTrue: [
            recoveredBlock36PC := 51.
        ].
        recoveredBlock36Step = 51 ifTrue: [
            recoveredBlock36Stack1 := recoveredLocal1.
            recoveredBlock36PC := 54.
        ].
        recoveredBlock36Step = 54 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) value.
            recoveredBlock36PC := 56.
        ].
        recoveredBlock36Step = 56 ifTrue: [
            ^recoveredBlock36Stack1
        ].
        recoveredBlock36Step = 57 ifTrue: [
            recoveredBlock36Result := recoveredBlock36Stack1.
            recoveredBlock36Done := true.
        ].
    ].
    recoveredBlock36Result
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033f074; bytecode file offset 0xc3b958"
!EtasNotebookElementWidget methodsFor: 'recovered'!
contentsRename
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) menuRenameEnable.
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
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) elemSelectedVarNoParam.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElement.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDeltaT.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElement.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSmVariable.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
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
            recoveredStack0 := (recoveredStack0) currentTableList.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectedPos.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) editCellAt: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20375da4; bytecode file offset 0xc726a8"
!EtasNotebookElementWidget methodsFor: 'recovered'!
menuRenameEnable
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
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
            recoveredStack0 := (recoveredStack0) oneSelected.
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
            recoveredStack0 := (recoveredStack0) dtOrSmSelected.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
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
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElements.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) isArgument.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElements.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReturn.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedElements.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMethodLocal.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203762f4; bytecode file offset 0xc72be4"
!EtasNotebookElementWidget methodsFor: 'recovered'!
updateElementsForPageContents
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) tableWidgetContents.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := System.
    recoveredBlock5Value1 := [
    | recoveredBlock5Block14Value0 recoveredBlock5Block14Value1 recoveredBlock5Block14Value2 |
    recoveredBlock5Block14Value0 := recoveredBlock5Arg1.
    recoveredBlock5Block14Value1 := [:recoveredBlock5Block14Block23Arg1 | 
    | recoveredBlock5Block14Block23Local1 recoveredBlock5Block14Block23Value0 recoveredBlock5Block14Block23Value1 recoveredBlock5Block14Block23Value2 recoveredBlock5Block14Block23Value3 recoveredBlock5Block14Block23Value4 recoveredBlock5Block14Block23Value5 recoveredBlock5Block14Block23Value6 recoveredBlock5Block14Block23Value7 recoveredBlock5Block14Block23Value8 recoveredBlock5Block14Block23Value9 recoveredBlock5Block14Block23Value10 |
    recoveredBlock5Block14Block23Value0 := ('Kli') == ('Call_78990').
    recoveredBlock5Block14Block23Value1 := (self) widgetController.
    recoveredBlock5Block14Block23Value2 := (recoveredBlock5Block14Block23Value1) selectedElements.
    recoveredBlock5Block14Block23Local1 := recoveredBlock5Block14Block23Value2.
    recoveredBlock5Block14Block23Value3 := recoveredBlock5Block14Block23Arg1.
    recoveredBlock5Block14Block23Value4 := recoveredBlock5Block14Block23Value3.
    recoveredBlock5Block14Block23Value5 := (self) class.
    recoveredBlock5Block14Block23Value6 := (recoveredBlock5Block14Block23Value5) notebookTableItemHeight.
    (recoveredBlock5Block14Block23Value4) itemHeight: (recoveredBlock5Block14Block23Value6).
    recoveredBlock5Block14Block23Value7 := recoveredBlock5Block14Block23Value3.
    recoveredBlock5Block14Block23Value8 := (self) sortedElementsForPageContents.
    (recoveredBlock5Block14Block23Value7) items: (recoveredBlock5Block14Block23Value8).
    recoveredBlock5Block14Block23Value9 := recoveredBlock5Block14Block23Local1.
    recoveredBlock5Block14Block23Value10 := (recoveredBlock5Block14Block23Value3) selectedItems: (recoveredBlock5Block14Block23Value9).
    recoveredBlock5Block14Block23Value10
].
    recoveredBlock5Block14Value2 := (recoveredBlock5Block14Value0) setValuesBlock: (recoveredBlock5Block14Value1).
    recoveredBlock5Block14Value2
].
    recoveredBlock5Value2 := (recoveredBlock5Value0) showBusyCursorWhile: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2038ad10; bytecode file offset 0xc8760c"
!EtasNotebookElementWidget methodsFor: 'recovered'!
createTableColumnNameForTab: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Name').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (false).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) verticalSeparatorThickness: (1).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) resizable: (true).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) width: (128).
    recoveredLocal1 := recoveredValue1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := XmNcellValueCallback.
    recoveredValue9 := recoveredArg1.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) selector: ('nameCellValueCallback:clientData:callData:') clientData: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := XmNbeginEditCallback.
    (recoveredValue10) addCallback: (recoveredValue11) receiver: (self) selector: ('elementNameBeginEditCallback:clientData:callData:') clientData: (nil).
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := XmNendEditCallback.
    (recoveredValue12) addCallback: (recoveredValue13) receiver: (self) selector: ('elementNameEndEditCallback:clientData:callData:') clientData: (nil).
    recoveredValue14 := (self) tableColumnSortBlocks.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (self) sortBlockForName.
    (recoveredValue14) at: (recoveredValue15) put: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    ^recoveredValue17
! !

"ASDBase.ic method 0x2039acfc; bytecode file offset 0xc975ec"
!EtasNotebookElementWidget methodsFor: 'recovered'!
contentsDelete
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) menuDeleteEnable.
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
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetController.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedElements.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkElementsReferenced: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23Stack4 recoveredBlock23Stack5 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
    recoveredBlock23Stack0 := self.
    recoveredBlock23PC := 30.
    recoveredBlock23Done := false.
    [recoveredBlock23Done not] whileTrue: [
        recoveredBlock23Step := recoveredBlock23PC.
        recoveredBlock23Step = 30 ifTrue: [
            recoveredBlock23Stack1 := nil.
            recoveredBlock23PC := 31.
        ].
        recoveredBlock23Step = 31 ifTrue: [
            recoveredBlock23Stack2 := self.
            recoveredBlock23PC := 32.
        ].
        recoveredBlock23Step = 32 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) widgetController.
            recoveredBlock23PC := 33.
        ].
        recoveredBlock23Step = 33 ifTrue: [
            recoveredBlock23Stack3 := self.
            recoveredBlock23PC := 34.
        ].
        recoveredBlock23Step = 34 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) widgetController.
            recoveredBlock23PC := 35.
        ].
        recoveredBlock23Step = 35 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) selectedElements.
            recoveredBlock23PC := 36.
        ].
        recoveredBlock23Step = 36 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) deleteElementsWithQuery: (recoveredBlock23Stack3).
            recoveredBlock23PC := 38.
        ].
        recoveredBlock23Step = 38 ifTrue: [
            (recoveredBlock23Stack2 == nil) ifTrue: [recoveredBlock23PC := 66] ifFalse: [recoveredBlock23PC := 42].
        ].
        recoveredBlock23Step = 42 ifTrue: [
            recoveredBlock23PC := 43.
        ].
        recoveredBlock23Step = 43 ifTrue: [
            recoveredBlock23Stack1 := self.
            recoveredBlock23PC := 44.
        ].
        recoveredBlock23Step = 44 ifTrue: [
            recoveredBlock23Stack2 := EwListSelectionCallbackData.
            recoveredBlock23PC := 46.
        ].
        recoveredBlock23Step = 46 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) new.
            recoveredBlock23PC := 48.
        ].
        recoveredBlock23Step = 48 ifTrue: [
            recoveredBlock23Stack3 := recoveredBlock23Stack2.
            recoveredBlock23PC := 49.
        ].
        recoveredBlock23Step = 49 ifTrue: [
            recoveredBlock23Stack4 := nil.
            recoveredBlock23PC := 50.
        ].
        recoveredBlock23Step = 50 ifTrue: [
            (recoveredBlock23Stack3) reason: (recoveredBlock23Stack4).
            recoveredBlock23Stack3 := recoveredBlock23Stack2.
            recoveredBlock23PC := 53.
        ].
        recoveredBlock23Step = 53 ifTrue: [
            recoveredBlock23Stack4 := self.
            recoveredBlock23PC := 54.
        ].
        recoveredBlock23Step = 54 ifTrue: [
            recoveredBlock23Stack4 := (recoveredBlock23Stack4) item.
            recoveredBlock23PC := 56.
        ].
        recoveredBlock23Step = 56 ifTrue: [
            (recoveredBlock23Stack3) item: (recoveredBlock23Stack4).
            recoveredBlock23Stack3 := recoveredBlock23Stack2.
            recoveredBlock23PC := 59.
        ].
        recoveredBlock23Step = 59 ifTrue: [
            recoveredBlock23Stack4 := self.
            recoveredBlock23PC := 60.
        ].
        recoveredBlock23Step = 60 ifTrue: [
            recoveredBlock23Stack4 := (recoveredBlock23Stack4) currentTableList.
            recoveredBlock23PC := 62.
        ].
        recoveredBlock23Step = 62 ifTrue: [
            (recoveredBlock23Stack3) widget: (recoveredBlock23Stack4).
            recoveredBlock23PC := 64.
        ].
        recoveredBlock23Step = 64 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) callElementsDeletedCallback: (recoveredBlock23Stack2).
            recoveredBlock23PC := 66.
        ].
        recoveredBlock23Step = 66 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack1.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) suspendObserving: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) callToolbarRelevantUpdateCallback: (recoveredStack1).
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

"ASDBase.ic method 0x203a47b4; bytecode file offset 0xca10ac"
!EtasNotebookElementWidget methodsFor: 'recovered'!
elementNameEndEditCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentTableList.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            recoveredStack1 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) getRealElementCallData: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEditModeOn.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 75].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) setEditModeOff.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkAnsiCNameCallData: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
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
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) newValue.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) renameElement: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 48].
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
            recoveredStack1 := EwListCallbackData.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack2) reason: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack2) item: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack2) itemPosition: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) callElementRenamedCallback: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := 'Call_51372'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
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

"ASDBase.ic method 0x2047d644; bytecode file offset 0xd79f48"
!EtasNotebookElementWidget methodsFor: 'recovered'!
checkElementsReferenced: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRead.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25Stack4 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := nil.
            recoveredBlock25PC := 33.
        ].
        recoveredBlock25Step = 33 ifTrue: [
            recoveredBlock25Stack2 := self.
            recoveredBlock25PC := 34.
        ].
        recoveredBlock25Step = 34 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) item.
            recoveredBlock25PC := 35.
        ].
        recoveredBlock25Step = 35 ifTrue: [
            recoveredBlock25Stack3 := recoveredBlock25Arg1.
            recoveredBlock25PC := 36.
        ].
        recoveredBlock25Step = 36 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) collectReferencesForElement: (recoveredBlock25Stack3).
            recoveredBlock25PC := 37.
        ].
        recoveredBlock25Step = 37 ifTrue: [
            recoveredBlock25Stack3 := recoveredBlock25Stack2.
            recoveredBlock25PC := 38.
        ].
        recoveredBlock25Step = 38 ifTrue: [
            recoveredLocal3 := recoveredBlock25Stack3.
            recoveredBlock25PC := 41.
        ].
        recoveredBlock25Step = 41 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) isEmpty.
            recoveredBlock25PC := 42.
        ].
        recoveredBlock25Step = 42 ifTrue: [
            (recoveredBlock25Stack2) ifTrue: [recoveredBlock25PC := 121] ifFalse: [recoveredBlock25PC := 46].
        ].
        recoveredBlock25Step = 46 ifTrue: [
            recoveredBlock25PC := 47.
        ].
        recoveredBlock25Step = 47 ifTrue: [
            recoveredBlock25Stack1 := ReadWriteStream.
            recoveredBlock25PC := 49.
        ].
        recoveredBlock25Step = 49 ifTrue: [
            recoveredBlock25Stack2 := ''.
            recoveredBlock25PC := 51.
        ].
        recoveredBlock25Step = 51 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) on: (recoveredBlock25Stack2).
            recoveredBlock25PC := 53.
        ].
        recoveredBlock25Step = 53 ifTrue: [
            recoveredLocal2 := recoveredBlock25Stack1.
            recoveredBlock25PC := 56.
        ].
        recoveredBlock25Step = 56 ifTrue: [
            recoveredBlock25Stack1 := recoveredLocal2.
            recoveredBlock25PC := 59.
        ].
        recoveredBlock25Step = 59 ifTrue: [
            recoveredBlock25Stack2 := 'Element '.
            recoveredBlock25PC := 61.
        ].
        recoveredBlock25Step = 61 ifTrue: [
            recoveredBlock25Stack3 := recoveredBlock25Arg1.
            recoveredBlock25PC := 62.
        ].
        recoveredBlock25Step = 62 ifTrue: [
            recoveredBlock25Stack3 := (recoveredBlock25Stack3) label.
            recoveredBlock25PC := 64.
        ].
        recoveredBlock25Step = 64 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) , (recoveredBlock25Stack3).
            recoveredBlock25PC := 66.
        ].
        recoveredBlock25Step = 66 ifTrue: [
            recoveredBlock25Stack3 := ' has occurrences in '.
            recoveredBlock25PC := 68.
        ].
        recoveredBlock25Step = 68 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) , (recoveredBlock25Stack3).
            recoveredBlock25PC := 70.
        ].
        recoveredBlock25Step = 70 ifTrue: [
            (recoveredBlock25Stack1) nextPutAll: (recoveredBlock25Stack2).
            recoveredBlock25PC := 72.
        ].
        recoveredBlock25Step = 72 ifTrue: [
            recoveredBlock25Stack1 := recoveredLocal3.
            recoveredBlock25PC := 75.
        ].
        recoveredBlock25Step = 75 ifTrue: [
            recoveredBlock25Stack2 := [:recoveredBlock25Block75Arg1 | 
    | recoveredBlock25Block75Value0 recoveredBlock25Block75Value1 recoveredBlock25Block75Value2 recoveredBlock25Block75Value3 recoveredBlock25Block75Value4 recoveredBlock25Block75Value5 |
    recoveredBlock25Block75Value0 := recoveredLocal2.
    recoveredBlock25Block75Value1 := recoveredBlock25Block75Value0.
    (recoveredBlock25Block75Value1) cr.
    recoveredBlock25Block75Value2 := recoveredBlock25Block75Arg1.
    recoveredBlock25Block75Value3 := (self) item.
    recoveredBlock25Block75Value4 := (recoveredBlock25Block75Value2) visualCallBackString: (recoveredBlock25Block75Value3).
    recoveredBlock25Block75Value5 := (recoveredBlock25Block75Value0) nextPutAll: (recoveredBlock25Block75Value4).
    recoveredBlock25Block75Value5
].
            recoveredBlock25PC := 96.
        ].
        recoveredBlock25Step = 96 ifTrue: [
            (recoveredBlock25Stack1) do: (recoveredBlock25Stack2).
            recoveredBlock25PC := 98.
        ].
        recoveredBlock25Step = 98 ifTrue: [
            recoveredBlock25Stack1 := recoveredLocal2.
            recoveredBlock25PC := 101.
        ].
        recoveredBlock25Step = 101 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Stack1.
            recoveredBlock25PC := 102.
        ].
        recoveredBlock25Step = 102 ifTrue: [
            (recoveredBlock25Stack2) cr.
            recoveredBlock25PC := 104.
        ].
        recoveredBlock25Step = 104 ifTrue: [
            recoveredBlock25Stack2 := 'Delete not possible.'.
            recoveredBlock25PC := 106.
        ].
        recoveredBlock25Step = 106 ifTrue: [
            (recoveredBlock25Stack1) nextPutAll: (recoveredBlock25Stack2).
            recoveredBlock25PC := 108.
        ].
        recoveredBlock25Step = 108 ifTrue: [
            recoveredBlock25Stack1 := RBUserInfo.
            recoveredBlock25PC := 110.
        ].
        recoveredBlock25Step = 110 ifTrue: [
            recoveredBlock25Stack2 := recoveredLocal2.
            recoveredBlock25PC := 113.
        ].
        recoveredBlock25Step = 113 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) contents.
            recoveredBlock25PC := 115.
        ].
        recoveredBlock25Step = 115 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) message: (recoveredBlock25Stack2).
            recoveredBlock25PC := 117.
        ].
        recoveredBlock25Step = 117 ifTrue: [
            (recoveredBlock25Stack1) prompt.
            recoveredBlock25PC := 119.
        ].
        recoveredBlock25Step = 119 ifTrue: [
            recoveredBlock25Stack1 := nil.
            recoveredBlock25PC := 120.
        ].
        recoveredBlock25Step = 120 ifTrue: [
            ^recoveredBlock25Stack1
        ].
        recoveredBlock25Step = 121 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack1.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204bb4c4; bytecode file offset 0xdb7dc4"
!EtasNotebookElementWidget methodsFor: 'recovered'!
item: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) itemBasic: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 146.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUserInterface.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'Call_60975'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMainView.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) context.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeConfig.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 132.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) isProject.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := 'Call_64856'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) activeProject.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultProjectForItem.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) activeProject.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefaultContext.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredPC := 111.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := SGUIContext.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) activeProject.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefaultMakeConfig.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 130.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefaultMakeConfig.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) item: (recoveredStack2) context: (recoveredStack3) makeConfig: (recoveredStack4).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205843ac; bytecode file offset 0xe80d48"
!EtasNotebookElementWidget methodsFor: 'recovered'!
appendWidgetHierarchyPageContents: recoveredArg1 parent: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'pageContentsTabStrip'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block28113500Arg1 | 
    | block28113500Value0 block28113500Value1 block28113500Value2 block28113500Value3 block28113500Value4 block28113500Value5 |
    block28113500Value0 := block28113500Arg1.
    block28113500Value1 := block28113500Value0.
    (block28113500Value1) labelString: ('Elements').
    block28113500Value2 := RBUserInterface.
    block28113500Value3 := (block28113500Value2) resourceManager.
    block28113500Value4 := (block28113500Value3) returnIcon16WithName: ('GeneralElements').
    block28113500Value5 := (block28113500Value0) image: (block28113500Value4).
    block28113500Value5
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) createTab: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 'pageContents'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 'pageContents'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := [:block28113524Arg1 | 
    nil
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) userData: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 'tableWidgetContents'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := [:recoveredBlock64Arg1 | 
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 recoveredBlock64Value3 recoveredBlock64Value4 recoveredBlock64Value5 recoveredBlock64Value6 recoveredBlock64Value7 recoveredBlock64Value8 recoveredBlock64Value9 recoveredBlock64Value10 recoveredBlock64Value11 |
    recoveredBlock64Value0 := recoveredBlock64Arg1.
    recoveredBlock64Value1 := recoveredBlock64Value0.
    recoveredBlock64Value2 := (self) columnsContents.
    (recoveredBlock64Value1) columns: (recoveredBlock64Value2).
    recoveredBlock64Value3 := recoveredBlock64Value0.
    (recoveredBlock64Value3) editable: (false).
    recoveredBlock64Value4 := recoveredBlock64Value0.
    (recoveredBlock64Value4) selectableColumns: (true).
    recoveredBlock64Value5 := recoveredBlock64Value0.
    (recoveredBlock64Value5) lockedColumns: (1).
    recoveredBlock64Value6 := recoveredBlock64Value0.
    (recoveredBlock64Value6) headingSeparatorThickness: (0).
    recoveredBlock64Value7 := recoveredBlock64Value0.
    recoveredBlock64Value8 := XmEXTENDEDSELECT.
    (recoveredBlock64Value7) selectionPolicy: (recoveredBlock64Value8).
    recoveredBlock64Value9 := recoveredBlock64Value0.
    (recoveredBlock64Value9) applicationDrawnBackground: (true).
    recoveredBlock64Value10 := recoveredBlock64Value0.
    recoveredBlock64Value11 := XmETCHCELLS.
    (recoveredBlock64Value10) headingVisualStyle: (recoveredBlock64Value11).
    recoveredBlock64Value0
].
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledTableList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := 'scrolledTableWidgetContents'.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := 'tableWidgetContents'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack4 := 'etasWidgetFocus:clientData:callData:'.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack4 := 'etasWidgetFocus:clientData:callData:'.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack5 := false.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainWidgetForPage.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) popupMenuForWidget.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock163Value0 |
    recoveredBlock163Value0 := (self) createContentsPopUpMenu.
    recoveredBlock163Value0
].
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := XmNcolumnHeadingSelectionCallback.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := 'contentsTableColumnHeadingSelectionCallback:clientData:callData:'.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := XmNextendedSelectionCallback.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack3 := 'contentsTableExtendedSelectionCallback:clientData:callData:'.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := XmNdefaultActionCallback.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := 'contentsTableDefaultActionCallback:clientData:callData:'.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := [:block28113548Arg1 | 
    | block28113548Value0 block28113548Value1 block28113548Value2 block28113548Value3 block28113548Value4 block28113548Value5 block28113548Value6 block28113548Value7 block28113548Value8 block28113548Value9 block28113548Value10 block28113548Value11 block28113548Value12 |
    block28113548Value0 := block28113548Arg1.
    block28113548Value1 := block28113548Value0.
    block28113548Value2 := XmATTACHFORM.
    (block28113548Value1) bottomAttachment: (block28113548Value2).
    block28113548Value3 := block28113548Value0.
    (block28113548Value3) bottomOffset: (0).
    block28113548Value4 := block28113548Value0.
    block28113548Value5 := XmATTACHFORM.
    (block28113548Value4) topAttachment: (block28113548Value5).
    block28113548Value6 := block28113548Value0.
    (block28113548Value6) topOffset: (0).
    block28113548Value7 := block28113548Value0.
    block28113548Value8 := XmATTACHFORM.
    (block28113548Value7) leftAttachment: (block28113548Value8).
    block28113548Value9 := block28113548Value0.
    (block28113548Value9) leftOffset: (0).
    block28113548Value10 := block28113548Value0.
    block28113548Value11 := XmATTACHFORM.
    (block28113548Value10) rightAttachment: (block28113548Value11).
    block28113548Value12 := (block28113548Value0) rightOffset: (0).
    block28113548Value12
].
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206135c0; bytecode file offset 0xf0ff90"
!EtasNotebookElementWidget methodsFor: 'recovered'!
createContentsPopUpMenu
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 'Ele~ment'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'menuEditEditFocus'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := '~Edit'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 |
    recoveredBlock18Value0 := (self) contentsTabSelected.
    recoveredBlock18Value1 := (self) menuEditEnable.
    recoveredBlock18Value2 := (recoveredBlock18Value0) & (recoveredBlock18Value1).
    recoveredBlock18Value2
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack9 := 'Return'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) addSingleLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := 'menuEditAddGenComp'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := '~Add'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock54Value0 |
    recoveredBlock54Value0 := (self) isAddPossible.
    recoveredBlock54Value0
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock63Value0 recoveredBlock63Value1 |
    recoveredBlock63Value0 := (self) item.
    recoveredBlock63Value1 := (recoveredBlock63Value0) isGenericComponent.
    recoveredBlock63Value1
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := 'menuEditCopyFocus'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack4 := '~Copy'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock85Value0 recoveredBlock85Value1 recoveredBlock85Value2 |
    recoveredBlock85Value0 := (self) contentsTabSelected.
    recoveredBlock85Value1 := (self) menuElementCopyEnable.
    recoveredBlock85Value2 := (recoveredBlock85Value0) & (recoveredBlock85Value1).
    recoveredBlock85Value2
].
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock100Value0 recoveredBlock100Value1 recoveredBlock100Value2 |
    recoveredBlock100Value0 := (self) item.
    recoveredBlock100Value1 := (recoveredBlock100Value0) isGenericComponent.
    recoveredBlock100Value2 := (recoveredBlock100Value1) not.
    recoveredBlock100Value2
].
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack8 := CwAccelerator.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack9 := ControlMask.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack10 := XKC.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack8 := (recoveredStack8) mask: (recoveredStack9) keysym: (recoveredStack10).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack9 := 'Ctrl+C'.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := 'menuEditPasteFocus'.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack4 := '~Paste'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock130Value0 recoveredBlock130Value1 recoveredBlock130Value2 |
    recoveredBlock130Value0 := (self) contentsTabSelected.
    recoveredBlock130Value1 := (self) menuElementPasteEnable.
    recoveredBlock130Value2 := (recoveredBlock130Value0) & (recoveredBlock130Value1).
    recoveredBlock130Value2
].
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock144Value0 recoveredBlock144Value1 recoveredBlock144Value2 |
    recoveredBlock144Value0 := (self) item.
    recoveredBlock144Value1 := (recoveredBlock144Value0) isGenericComponent.
    recoveredBlock144Value2 := (recoveredBlock144Value1) not.
    recoveredBlock144Value2
].
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack8 := CwAccelerator.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack9 := ControlMask.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack10 := XKV.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack8 := (recoveredStack8) mask: (recoveredStack9) keysym: (recoveredStack10).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack9 := 'Ctrl+V'.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := 'menuEditDeleteFocus'.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack4 := '~Delete'.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock174Value0 recoveredBlock174Value1 recoveredBlock174Value2 |
    recoveredBlock174Value0 := (self) contentsTabSelected.
    recoveredBlock174Value1 := (self) menuDeleteEnable.
    recoveredBlock174Value2 := (recoveredBlock174Value0) & (recoveredBlock174Value1).
    recoveredBlock174Value2
].
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock188Value0 recoveredBlock188Value1 recoveredBlock188Value2 |
    recoveredBlock188Value0 := (self) item.
    recoveredBlock188Value1 := (recoveredBlock188Value0) isGenericComponent.
    recoveredBlock188Value2 := (recoveredBlock188Value1) not.
    recoveredBlock188Value2
].
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack8 := CwAccelerator.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack9 := 0.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack10 := XKDelete.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack8 := (recoveredStack8) mask: (recoveredStack9) keysym: (recoveredStack10).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack9 := 'Delete'.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack3 := 'menuEditDeleteGenComp'.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack4 := '~Delete'.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock218Value0 |
    recoveredBlock218Value0 := (self) isDeletePossible.
    recoveredBlock218Value0
].
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock227Value0 recoveredBlock227Value1 |
    recoveredBlock227Value0 := (self) item.
    recoveredBlock227Value1 := (recoveredBlock227Value0) isGenericComponent.
    recoveredBlock227Value1
].
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack2 := 'menuEditRenameFocus'.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack3 := '~Rename'.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock249Value0 |
    recoveredBlock249Value0 := (self) isRenamePossible.
    recoveredBlock249Value0
].
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack7 := CwAccelerator.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack8 := 0.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack9 := XKF2.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack7 := (recoveredStack7) mask: (recoveredStack8) keysym: (recoveredStack9).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack8 := 'F2'.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := (recoveredStack1) addWithID: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) visible: (recoveredStack5) for: (recoveredStack6) accelerator: (recoveredStack7) acceleratorText: (recoveredStack8).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSearchResultsWidget.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 286] ifFalse: [recoveredPC := 324].
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            (recoveredStack1) addSingleLine.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := 'menuGoTo'.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack2 := 'G~o To'.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack3 := [
    true
].
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack6 := CwAccelerator.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack7 := 0.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack8 := XKO.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack6 := (recoveredStack6) mask: (recoveredStack7) keysym: (recoveredStack8).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack7 := 'Ctrl+O'.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            (recoveredStack0) addWithID: (recoveredStack1) label: (recoveredStack2) enable: (recoveredStack3) visible: (recoveredStack4) for: (recoveredStack5) accelerator: (recoveredStack6) acceleratorText: (recoveredStack7).
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProjectGlobalScope.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 330] ifFalse: [recoveredPC := 375].
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            (recoveredStack1) addSingleLine.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack2 := 'menuGetLock'.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack3 := '~Get Lock'.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock339Value0 |
    recoveredBlock339Value0 := (self) isGetLockPossible.
    recoveredBlock339Value0
].
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack7 := CwAccelerator.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack8 := 0.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack9 := XKG.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack7 := (recoveredStack7) mask: (recoveredStack8) keysym: (recoveredStack9).
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack8 := 'Ctrl+G'.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            (recoveredStack1) addWithID: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) visible: (recoveredStack5) for: (recoveredStack6) accelerator: (recoveredStack7) acceleratorText: (recoveredStack8).
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            (recoveredStack0) addSingleLine.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            (recoveredStack1) addSingleLine.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack2 := 'menuCreateSelectActionForAscetLink'.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack3 := 'Create ASCET Link'.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock388Value0 |
    recoveredBlock388Value0 := (self) isCreateAscetLinkPossible.
    recoveredBlock388Value0
].
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            (recoveredStack1) addWithID: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) visible: (recoveredStack5) for: (recoveredStack6) accelerator: (recoveredStack7) acceleratorText: (recoveredStack8).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            (recoveredStack1) addSingleLine.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack2 := 'menuEditSelectAllFocus'.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack3 := 'Se~lect all'.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock426Value0 |
    recoveredBlock426Value0 := (self) contentsTabSelected.
    recoveredBlock426Value0
].
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack7 := CwAccelerator.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack8 := ControlMask.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack9 := XKA.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack7 := (recoveredStack7) mask: (recoveredStack8) keysym: (recoveredStack9).
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack8 := 'Ctrl+A'.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            (recoveredStack1) addWithID: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) visible: (recoveredStack5) for: (recoveredStack6) accelerator: (recoveredStack7) acceleratorText: (recoveredStack8).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack2 := 'menuShowPotentiallyUsed'.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack3 := 'Potentially ~Used'.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock468Value0 |
    recoveredBlock468Value0 := (self) isPotentiallyUsedPossible.
    recoveredBlock468Value0
].
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock480Value0 |
    recoveredBlock480Value0 := (self) isPotentiallyUsedPossible.
    recoveredBlock480Value0
].
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            (recoveredStack1) addWithID: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) visible: (recoveredStack5) for: (recoveredStack6) accelerator: (recoveredStack7) acceleratorText: (recoveredStack8).
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

