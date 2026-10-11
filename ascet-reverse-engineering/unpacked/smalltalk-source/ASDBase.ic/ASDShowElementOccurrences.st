"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20010770; bytecode file offset 0x90d208"
!ASDShowElementOccurrences methodsFor: 'recovered'!
closeActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) close.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004503c; bytecode file offset 0x9451f8"
!ASDShowElementOccurrences methodsFor: 'recovered'!
widgetSpecificationList
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('specificationList').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047b9c; bytecode file offset 0x9451f8"
!ASDShowElementOccurrences methodsFor: 'recovered'!
widgetGoList
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('goList').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004f0a4; bytecode file offset 0x94d048"
!ASDShowElementOccurrences methodsFor: 'recovered'!
cancel
    (self) close.
    ^self
! !

"ASDBase.ic method 0x200520c8; bytecode file offset 0x94f0e0"
!ASDShowElementOccurrences methodsFor: 'recovered'!
graphPaneController
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) parent.
    recoveredValue1 := (recoveredValue0) uiController.
    recoveredValue2 := (recoveredValue1) graphPaneController.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005a6f8; bytecode file offset 0x957a6c"
!ASDShowElementOccurrences methodsFor: 'recovered'!
topShellFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) update.
    ^self
! !

"ASDBase.ic method 0x2006fd50; bytecode file offset 0x96c6ac"
!ASDShowElementOccurrences methodsFor: 'recovered'!
element
    | recoveredValue0 |
    recoveredValue0 := element.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200aec44; bytecode file offset 0x9ab500"
!ASDShowElementOccurrences methodsFor: 'recovered'!
specificationListDefault: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    (self) startSpecification.
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) setInputFocus.
    ^self
! !

"ASDBase.ic method 0x200aed48; bytecode file offset 0x9ab6a8"
!ASDShowElementOccurrences methodsFor: 'recovered'!
specificationListVisual: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (recoveredValue2) label.
    (recoveredValue0) label: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200c6270; bytecode file offset 0x9c2bec"
!ASDShowElementOccurrences methodsFor: 'recovered'!
element: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    element := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c64d4; bytecode file offset 0x9c2dd0"
!ASDShowElementOccurrences methodsFor: 'recovered'!
graphicObjects: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    graphicObjects := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c66f0; bytecode file offset 0x9c3164"
!ASDShowElementOccurrences methodsFor: 'recovered'!
specifications: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    specifications := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200dda9c; bytecode file offset 0x9da364"
!ASDShowElementOccurrences methodsFor: 'recovered'!
goListVisual: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (recoveredValue2) getManager.
    recoveredValue4 := (recoveredValue3) owner.
    recoveredValue5 := (recoveredValue4) getPath.
    (recoveredValue0) label: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x200de5f0; bytecode file offset 0x9daeb0"
!ASDShowElementOccurrences methodsFor: 'recovered'!
goListSelection: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) selectedItems.
    (self) selectGoInEditor: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) setInputFocus.
    ^self
! !

"ASDBase.ic method 0x2012ac18; bytecode file offset 0xa274f4"
!ASDShowElementOccurrences methodsFor: 'recovered'!
graphicObjects
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := graphicObjects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            graphicObjects := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := graphicObjects.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012aca4; bytecode file offset 0xa275d0"
!ASDShowElementOccurrences methodsFor: 'recovered'!
specifications
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := specifications.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            specifications := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := specifications.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20190068; bytecode file offset 0xa8c938"
!ASDShowElementOccurrences methodsFor: 'recovered'!
setSelectedGoListItemsToSelectedGraphPaneItems
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetGoList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphPaneController.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedGOs.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:block280d1b08Arg1 | 
    | block280d1b08Value0 block280d1b08Value1 |
    block280d1b08Value0 := block280d1b08Arg1.
    block280d1b08Value1 := (block280d1b08Value0) graphObject.
    block280d1b08Value1
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
            (recoveredStack0) selectedItems: (recoveredStack1).
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

"ASDBase.ic method 0x201b8c0c; bytecode file offset 0xab54e0"
!ASDShowElementOccurrences methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    super installActionKeys.
    recoveredValue0 := (self) widgetKeyActions.
    recoveredValue1 := (self) shell.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := XKCancel.
    (recoveredValue4) at: (recoveredValue5) put: ('cancel').
    ^self
! !

"ASDBase.ic method 0x20242b18; bytecode file offset 0xb3f3e8"
!ASDShowElementOccurrences methodsFor: 'recovered'!
startSpecification
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetSpecificationList.
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) loadSpec: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) showOccurences.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026b0ec; bytecode file offset 0xb679bc"
!ASDShowElementOccurrences methodsFor: 'recovered'!
setSpecificationsForElement
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) element.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) specifications: (recoveredStack1).
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
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) element.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) collectReferencesForElement: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := (self) parent.
    recoveredBlock20Value2 := (recoveredBlock20Value1) uiController.
    recoveredBlock20Value3 := (recoveredBlock20Value2) specification.
    recoveredBlock20Value4 := (recoveredBlock20Value0) ~= (recoveredBlock20Value3).
    recoveredBlock20Value4
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) specifications: (recoveredStack1).
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

"ASDBase.ic method 0x202c5b50; bytecode file offset 0xbc2430"
!ASDShowElementOccurrences methodsFor: 'recovered'!
selectGoInEditor: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphPaneController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) setSelectStateWithGO: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphPaneController.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [:block280e5578Arg1 | 
    nil
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphPaneController.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) switchToHierarchyLevelFor: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) someElement.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) getPosition.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack2) checkWidgetSCrollingForPosition: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) setSelectStateWithGOs: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e1108; bytecode file offset 0xbdda00"
!ASDShowElementOccurrences methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    (self) installActionKeys.
    (self) iconSmall: ('EditorGraphics') large: ('EditorGraphics32').
    (self) updateFonts.
    recoveredValue0 := (self) widgetGoList.
    recoveredValue1 := (self) graphicObjects.
    (recoveredValue0) items: (recoveredValue1).
    (self) setSelectedGoListItemsToSelectedGraphPaneItems.
    recoveredValue2 := (self) widgetSpecificationList.
    recoveredValue3 := (self) specifications.
    (recoveredValue2) items: (recoveredValue3).
    recoveredValue4 := (self) shell.
    recoveredValue5 := (self) element.
    recoveredValue6 := (recoveredValue5) label.
    recoveredValue7 := ('Occurrences for: ') , (recoveredValue6).
    (recoveredValue4) title: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x202ff394; bytecode file offset 0xbfbc70"
!ASDShowElementOccurrences methodsFor: 'recovered'!
setGOsForElement
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) element.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObjects: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSmSpecification.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphPaneController.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) element.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) allGOsUsedElement: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphPaneController.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) element.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasName.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) allElementGOsAliasName: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) graphicObjects: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20386798; bytecode file offset 0xc8308c"
!ASDShowElementOccurrences methodsFor: 'recovered'!
update
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) setGOsForElement.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) setSpecificationsForElement.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphPaneController.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedGOs.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:block280f306cArg1 | 
    | block280f306cValue0 block280f306cValue1 |
    block280f306cValue0 := block280f306cArg1.
    block280f306cValue1 := (block280f306cValue0) graphObject.
    block280f306cValue1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetGoList.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) graphicObjects.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 |
    recoveredBlock35Value0 := (self) graphicObjects.
    recoveredBlock35Value1 := recoveredBlock35Arg1.
    recoveredBlock35Value2 := (recoveredBlock35Value0) includes: (recoveredBlock35Value1).
    recoveredBlock35Value2
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) selectedItems: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetSpecificationList.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetSpecificationList.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) specifications.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) selectedItems: (recoveredStack1).
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

"ASDBase.ic method 0x203e1f54; bytecode file offset 0xcde840"
!ASDShowElementOccurrences methodsFor: 'recovered'!
goListDefault: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
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
            recoveredStack0 := (recoveredStack0) graphPaneController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) focusOnWidget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) childWindows.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := [:recoveredBlock42Arg1 | 
    | recoveredBlock42Stack0 recoveredBlock42Stack1 recoveredBlock42Stack2 recoveredBlock42Stack3 recoveredBlock42Stack4 recoveredBlock42PC recoveredBlock42Step recoveredBlock42Done recoveredBlock42Result |
    recoveredBlock42Stack0 := self.
    recoveredBlock42PC := 48.
    recoveredBlock42Done := false.
    [recoveredBlock42Done not] whileTrue: [
        recoveredBlock42Step := recoveredBlock42PC.
        recoveredBlock42Step = 48 ifTrue: [
            recoveredBlock42Stack1 := nil.
            recoveredBlock42PC := 49.
        ].
        recoveredBlock42Step = 49 ifTrue: [
            recoveredBlock42Stack2 := recoveredBlock42Arg1.
            recoveredBlock42PC := 50.
        ].
        recoveredBlock42Step = 50 ifTrue: [
            recoveredBlock42Stack3 := ASDShowElementOccurrences.
            recoveredBlock42PC := 52.
        ].
        recoveredBlock42Step = 52 ifTrue: [
            recoveredBlock42Stack2 := (recoveredBlock42Stack2) isMemberOf: (recoveredBlock42Stack3).
            recoveredBlock42PC := 54.
        ].
        recoveredBlock42Step = 54 ifTrue: [
            (recoveredBlock42Stack2) ifTrue: [recoveredBlock42PC := 58] ifFalse: [recoveredBlock42PC := 83].
        ].
        recoveredBlock42Step = 58 ifTrue: [
            recoveredBlock42PC := 59.
        ].
        recoveredBlock42Step = 59 ifTrue: [
            recoveredBlock42Stack1 := nil.
            recoveredBlock42PC := 60.
        ].
        recoveredBlock42Step = 60 ifTrue: [
            recoveredBlock42Stack2 := recoveredBlock42Arg1.
            recoveredBlock42PC := 61.
        ].
        recoveredBlock42Step = 61 ifTrue: [
            recoveredBlock42Stack2 := (recoveredBlock42Stack2) element.
            recoveredBlock42PC := 63.
        ].
        recoveredBlock42Step = 63 ifTrue: [
            recoveredBlock42Stack2 := (recoveredBlock42Stack2) aliasName.
            recoveredBlock42PC := 65.
        ].
        recoveredBlock42Step = 65 ifTrue: [
            recoveredBlock42Stack3 := recoveredLocal1.
            recoveredBlock42PC := 68.
        ].
        recoveredBlock42Step = 68 ifTrue: [
            recoveredBlock42Stack3 := (recoveredBlock42Stack3) first.
            recoveredBlock42PC := 70.
        ].
        recoveredBlock42Step = 70 ifTrue: [
            recoveredBlock42Stack3 := (recoveredBlock42Stack3) aliasName.
            recoveredBlock42PC := 72.
        ].
        recoveredBlock42Step = 72 ifTrue: [
            recoveredBlock42Stack2 := (recoveredBlock42Stack2) = (recoveredBlock42Stack3).
            recoveredBlock42PC := 73.
        ].
        recoveredBlock42Step = 73 ifTrue: [
            (recoveredBlock42Stack2) ifTrue: [recoveredBlock42PC := 76] ifFalse: [recoveredBlock42PC := 83].
        ].
        recoveredBlock42Step = 76 ifTrue: [
            recoveredBlock42PC := 77.
        ].
        recoveredBlock42Step = 77 ifTrue: [
            recoveredBlock42Stack1 := recoveredBlock42Arg1.
            recoveredBlock42PC := 78.
        ].
        recoveredBlock42Step = 78 ifTrue: [
            recoveredBlock42Stack2 := recoveredBlock42Stack1.
            recoveredBlock42PC := 79.
        ].
        recoveredBlock42Step = 79 ifTrue: [
            (recoveredBlock42Stack2) bringToFront.
            recoveredBlock42PC := 81.
        ].
        recoveredBlock42Step = 81 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) restoreSize.
            recoveredBlock42PC := 83.
        ].
        recoveredBlock42Step = 83 ifTrue: [
            recoveredBlock42Result := recoveredBlock42Stack1.
            recoveredBlock42Done := true.
        ].
    ].
    recoveredBlock42Result
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206527e0; bytecode file offset 0xf4f1f0"
!ASDShowElementOccurrences methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CwTopLevelShell.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'topShell'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [:block28123514Arg1 | 
    | block28123514Value0 block28123514Value1 |
    block28123514Value0 := block28123514Arg1.
    block28123514Value1 := (block28123514Value0) title: ('Element Occurrences').
    block28123514Value1
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) createApplicationShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'topShell'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := [:block28123538Arg1 | 
    | block28123538Value0 block28123538Value1 block28123538Value2 |
    block28123538Value0 := block28123538Arg1.
    block28123538Value1 := block28123538Value0.
    (block28123538Value1) height: (400).
    block28123538Value2 := (block28123538Value0) width: (300).
    block28123538Value2
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal11.
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
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := 'goFrame'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := [:block2812355cArg1 | 
    | block2812355cValue0 block2812355cValue1 |
    block2812355cValue0 := block2812355cArg1.
    block2812355cValue1 := (block2812355cValue0) labelString: ('Occurrences in current diagram').
    block2812355cValue1
].
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := 'goFrame'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := 'goForm'.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := 'goForm'.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := 'specificationFrame'.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := [:block28123580Arg1 | 
    | block28123580Value0 block28123580Value1 |
    block28123580Value0 := block28123580Arg1.
    block28123580Value1 := (block28123580Value0) labelString: ('Occurrences in other diagrams').
    block28123580Value1
].
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := 'specificationFrame'.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := 'specificationForm'.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := 'specificationForm'.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := 'goList'.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := [:block281235a4Arg1 | 
    | block281235a4Value0 block281235a4Value1 block281235a4Value2 |
    block281235a4Value0 := block281235a4Arg1.
    block281235a4Value1 := XmEXTENDEDSELECT.
    block281235a4Value2 := (block281235a4Value0) selectionPolicy: (block281235a4Value1).
    block281235a4Value2
].
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasScrolledIconList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack3 := 'scrolledGoList'.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack2 := 'goList'.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := 'specificationList'.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack3 := [:block281235c8Arg1 | 
    | block281235c8Value0 block281235c8Value1 block281235c8Value2 |
    block281235c8Value0 := block281235c8Arg1.
    block281235c8Value1 := XmSINGLESELECT.
    block281235c8Value2 := (block281235c8Value0) selectionPolicy: (block281235c8Value1).
    block281235c8Value2
].
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasScrolledIconList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack3 := 'scrolledSpecificationList'.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack2 := 'specificationList'.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack2 := 'closeButton'.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack3 := [:block281235ecArg1 | 
    | block281235ecValue0 block281235ecValue1 block281235ecValue2 block281235ecValue3 |
    block281235ecValue0 := block281235ecArg1.
    block281235ecValue1 := block281235ecValue0.
    (block281235ecValue1) labelString: ('Close').
    block281235ecValue2 := block281235ecValue0.
    (block281235ecValue2) height: (25).
    block281235ecValue3 := (block281235ecValue0) width: (60).
    block281235ecValue3
].
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack2 := 'closeButton'.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack2 := [:block28123610Arg1 | 
    | block28123610Value0 block28123610Value1 block28123610Value2 block28123610Value3 block28123610Value4 block28123610Value5 block28123610Value6 block28123610Value7 block28123610Value8 block28123610Value9 block28123610Value10 block28123610Value11 block28123610Value12 block28123610Value13 |
    block28123610Value0 := block28123610Arg1.
    block28123610Value1 := block28123610Value0.
    block28123610Value2 := XmATTACHFORM.
    (block28123610Value1) topAttachment: (block28123610Value2).
    block28123610Value3 := block28123610Value0.
    (block28123610Value3) topOffset: (5).
    block28123610Value4 := block28123610Value0.
    block28123610Value5 := XmATTACHFORM.
    (block28123610Value4) leftAttachment: (block28123610Value5).
    block28123610Value6 := block28123610Value0.
    (block28123610Value6) leftOffset: (5).
    block28123610Value7 := block28123610Value0.
    block28123610Value8 := XmATTACHFORM.
    (block28123610Value7) rightAttachment: (block28123610Value8).
    block28123610Value9 := block28123610Value0.
    (block28123610Value9) rightOffset: (5).
    block28123610Value10 := block28123610Value0.
    block28123610Value11 := XmATTACHPOSITION.
    (block28123610Value10) bottomAttachment: (block28123610Value11).
    block28123610Value12 := block28123610Value0.
    (block28123610Value12) bottomPosition: (60).
    block28123610Value13 := (block28123610Value0) bottomOffset: (5).
    block28123610Value13
].
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack2 := [:recoveredBlock436Arg1 | 
    | recoveredBlock436Value0 recoveredBlock436Value1 recoveredBlock436Value2 recoveredBlock436Value3 recoveredBlock436Value4 recoveredBlock436Value5 recoveredBlock436Value6 recoveredBlock436Value7 recoveredBlock436Value8 recoveredBlock436Value9 recoveredBlock436Value10 recoveredBlock436Value11 recoveredBlock436Value12 recoveredBlock436Value13 recoveredBlock436Value14 recoveredBlock436Value15 recoveredBlock436Value16 |
    recoveredBlock436Value0 := recoveredBlock436Arg1.
    recoveredBlock436Value1 := recoveredBlock436Value0.
    recoveredBlock436Value2 := XmATTACHWIDGET.
    (recoveredBlock436Value1) topAttachment: (recoveredBlock436Value2).
    recoveredBlock436Value3 := recoveredBlock436Value0.
    recoveredBlock436Value4 := recoveredLocal9.
    (recoveredBlock436Value3) topWidget: (recoveredBlock436Value4).
    recoveredBlock436Value5 := recoveredBlock436Value0.
    (recoveredBlock436Value5) topOffset: (5).
    recoveredBlock436Value6 := recoveredBlock436Value0.
    recoveredBlock436Value7 := XmATTACHFORM.
    (recoveredBlock436Value6) leftAttachment: (recoveredBlock436Value7).
    recoveredBlock436Value8 := recoveredBlock436Value0.
    (recoveredBlock436Value8) leftOffset: (5).
    recoveredBlock436Value9 := recoveredBlock436Value0.
    recoveredBlock436Value10 := XmATTACHFORM.
    (recoveredBlock436Value9) rightAttachment: (recoveredBlock436Value10).
    recoveredBlock436Value11 := recoveredBlock436Value0.
    (recoveredBlock436Value11) rightOffset: (5).
    recoveredBlock436Value12 := recoveredBlock436Value0.
    recoveredBlock436Value13 := XmATTACHWIDGET.
    (recoveredBlock436Value12) bottomAttachment: (recoveredBlock436Value13).
    recoveredBlock436Value14 := recoveredBlock436Value0.
    recoveredBlock436Value15 := recoveredLocal1.
    (recoveredBlock436Value14) bottomWidget: (recoveredBlock436Value15).
    recoveredBlock436Value16 := (recoveredBlock436Value0) bottomOffset: (5).
    recoveredBlock436Value16
].
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack2 := [:block28123634Arg1 | 
    | block28123634Value0 block28123634Value1 block28123634Value2 block28123634Value3 block28123634Value4 block28123634Value5 block28123634Value6 block28123634Value7 block28123634Value8 block28123634Value9 block28123634Value10 block28123634Value11 block28123634Value12 |
    block28123634Value0 := block28123634Arg1.
    block28123634Value1 := block28123634Value0.
    block28123634Value2 := XmATTACHFORM.
    (block28123634Value1) topAttachment: (block28123634Value2).
    block28123634Value3 := block28123634Value0.
    (block28123634Value3) topOffset: (5).
    block28123634Value4 := block28123634Value0.
    block28123634Value5 := XmATTACHFORM.
    (block28123634Value4) leftAttachment: (block28123634Value5).
    block28123634Value6 := block28123634Value0.
    (block28123634Value6) leftOffset: (5).
    block28123634Value7 := block28123634Value0.
    block28123634Value8 := XmATTACHFORM.
    (block28123634Value7) rightAttachment: (block28123634Value8).
    block28123634Value9 := block28123634Value0.
    (block28123634Value9) rightOffset: (5).
    block28123634Value10 := block28123634Value0.
    block28123634Value11 := XmATTACHFORM.
    (block28123634Value10) bottomAttachment: (block28123634Value11).
    block28123634Value12 := (block28123634Value0) bottomOffset: (5).
    block28123634Value12
].
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack2 := [:block28123658Arg1 | 
    | block28123658Value0 block28123658Value1 block28123658Value2 block28123658Value3 block28123658Value4 block28123658Value5 block28123658Value6 block28123658Value7 block28123658Value8 block28123658Value9 block28123658Value10 block28123658Value11 block28123658Value12 |
    block28123658Value0 := block28123658Arg1.
    block28123658Value1 := block28123658Value0.
    block28123658Value2 := XmATTACHFORM.
    (block28123658Value1) topAttachment: (block28123658Value2).
    block28123658Value3 := block28123658Value0.
    (block28123658Value3) topOffset: (5).
    block28123658Value4 := block28123658Value0.
    block28123658Value5 := XmATTACHFORM.
    (block28123658Value4) leftAttachment: (block28123658Value5).
    block28123658Value6 := block28123658Value0.
    (block28123658Value6) leftOffset: (5).
    block28123658Value7 := block28123658Value0.
    block28123658Value8 := XmATTACHFORM.
    (block28123658Value7) rightAttachment: (block28123658Value8).
    block28123658Value9 := block28123658Value0.
    (block28123658Value9) rightOffset: (5).
    block28123658Value10 := block28123658Value0.
    block28123658Value11 := XmATTACHFORM.
    (block28123658Value10) bottomAttachment: (block28123658Value11).
    block28123658Value12 := (block28123658Value0) bottomOffset: (5).
    block28123658Value12
].
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            recoveredStack2 := [:block2812367cArg1 | 
    | block2812367cValue0 block2812367cValue1 block2812367cValue2 block2812367cValue3 block2812367cValue4 block2812367cValue5 block2812367cValue6 |
    block2812367cValue0 := block2812367cArg1.
    block2812367cValue1 := block2812367cValue0.
    block2812367cValue2 := XmATTACHFORM.
    (block2812367cValue1) rightAttachment: (block2812367cValue2).
    block2812367cValue3 := block2812367cValue0.
    (block2812367cValue3) rightOffset: (5).
    block2812367cValue4 := block2812367cValue0.
    block2812367cValue5 := XmATTACHFORM.
    (block2812367cValue4) bottomAttachment: (block2812367cValue5).
    block2812367cValue6 := (block2812367cValue0) bottomOffset: (5).
    block2812367cValue6
].
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 687.
        ].
        recoveredStep = 687 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            recoveredStack3 := XmNextendedSelectionCallback.
            recoveredPC := 694.
        ].
        recoveredStep = 694 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredStack5 := 'goListSelection:clientData:callData:'.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack3 := XmNvisualInfoCallback.
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 707.
        ].
        recoveredStep = 707 ifTrue: [
            recoveredStack5 := 'goListVisual:clientData:callData:'.
            recoveredPC := 710.
        ].
        recoveredStep = 710 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredPC := 715.
        ].
        recoveredStep = 715 ifTrue: [
            recoveredStack2 := XmNdefaultActionCallback.
            recoveredPC := 718.
        ].
        recoveredStep = 718 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredStack4 := 'goListDefault:clientData:callData:'.
            recoveredPC := 722.
        ].
        recoveredStep = 722 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 723.
        ].
        recoveredStep = 723 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 731.
        ].
        recoveredStep = 731 ifTrue: [
            recoveredStack3 := XmNdefaultActionCallback.
            recoveredPC := 734.
        ].
        recoveredStep = 734 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 735.
        ].
        recoveredStep = 735 ifTrue: [
            recoveredStack5 := 'specificationListDefault:clientData:callData:'.
            recoveredPC := 738.
        ].
        recoveredStep = 738 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 739.
        ].
        recoveredStep = 739 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredPC := 743.
        ].
        recoveredStep = 743 ifTrue: [
            recoveredStack2 := XmNvisualInfoCallback.
            recoveredPC := 746.
        ].
        recoveredStep = 746 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 747.
        ].
        recoveredStep = 747 ifTrue: [
            recoveredStack4 := 'specificationListVisual:clientData:callData:'.
            recoveredPC := 750.
        ].
        recoveredStep = 750 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 751.
        ].
        recoveredStep = 751 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 758.
        ].
        recoveredStep = 758 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 762.
        ].
        recoveredStep = 762 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            recoveredStack4 := 'closeActivate:clientData:callData:'.
            recoveredPC := 766.
        ].
        recoveredStep = 766 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 767.
        ].
        recoveredStep = 767 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 774.
        ].
        recoveredStep = 774 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 778.
        ].
        recoveredStep = 778 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 779.
        ].
        recoveredStep = 779 ifTrue: [
            recoveredStack4 := 'topShellFocus:clientData:callData:'.
            recoveredPC := 782.
        ].
        recoveredStep = 782 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 783.
        ].
        recoveredStep = 783 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 790.
        ].
        recoveredStep = 790 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 795.
        ].
        recoveredStep = 795 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 803.
        ].
        recoveredStep = 803 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 806.
        ].
        recoveredStep = 806 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 811.
        ].
        recoveredStep = 811 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 817.
        ].
        recoveredStep = 817 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 820.
        ].
        recoveredStep = 820 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 825.
        ].
        recoveredStep = 825 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

