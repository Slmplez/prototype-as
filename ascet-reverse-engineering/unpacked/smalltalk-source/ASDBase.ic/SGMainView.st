"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000ca9c; bytecode file offset 0x909658"
!SGMainView methodsFor: 'recovered'!
isEditorFor: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2001685c; bytecode file offset 0x92209c"
!SGMainView methodsFor: 'recovered'!
toolbarSearchName
    ^'searchBar'
! !

"ASDBase.ic method 0x200200a8; bytecode file offset 0x92209c"
!SGMainView methodsFor: 'recovered'!
toolbarGeneralsName
    ^'toolBar'
! !

"ASDBase.ic method 0x200254fc; bytecode file offset 0x92209c"
!SGMainView methodsFor: 'recovered'!
toolbarNavigationName
    ^'navigationBar'
! !

"ASDBase.ic method 0x2004435c; bytecode file offset 0x9451f8"
!SGMainView methodsFor: 'recovered'!
widgetToolbarDockingArea
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('toolBarDockingArea').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004fcbc; bytecode file offset 0x94d048"
!SGMainView methodsFor: 'recovered'!
menuViewConfigureToolbarGeneral
    (self) configureGeneralToolbar.
    ^self
! !

"ASDBase.ic method 0x2004ffb0; bytecode file offset 0x94d048"
!SGMainView methodsFor: 'recovered'!
menuViewConfigureResetToolbarConfiguration
    (self) resetToolbarConfiguration.
    ^self
! !

"ASDBase.ic method 0x2005f6bc; bytecode file offset 0x95c4f4"
!SGMainView methodsFor: 'recovered'!
visibleToolbars
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) editorName.
    recoveredValue2 := (self) visibleToolbarsFor: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d42f0; bytecode file offset 0x9d0bfc"
!SGMainView methodsFor: 'recovered'!
createNavigationToolbar
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) userInterfaceManager.
    recoveredValue1 := (self) toolbarNavigationName.
    recoveredValue2 := (self) widgetToolbarNavigation.
    (recoveredValue0) addToolbarItemsFor: (recoveredValue1) toToolbar: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200d4308; bytecode file offset 0x9d0bfc"
!SGMainView methodsFor: 'recovered'!
createGeneralToolbar
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) userInterfaceManager.
    recoveredValue1 := (self) toolbarGeneralsName.
    recoveredValue2 := (self) widgetToolbarGenerals.
    (recoveredValue0) addToolbarItemsFor: (recoveredValue1) toToolbar: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200dffa0; bytecode file offset 0x9dc89c"
!SGMainView methodsFor: 'recovered'!
createDefaultUISettings
    (self) writeDefaultSplitbarConfiguration.
    (self) writeDefaultToolbarConfiguration.
    (self) writeDefaultToolbarVisibility.
    ^self
! !

"ASDBase.ic method 0x200e3394; bytecode file offset 0x9dfda8"
!SGMainView methodsFor: 'recovered'!
resetToolbarConfiguration
    (self) writeDefaultToolbarConfiguration.
    (self) writeDefaultToolbarVisibility.
    (self) showHideToolbars.
    ^self
! !

"ASDBase.ic method 0x200e33e4; bytecode file offset 0x9dfda8"
!SGMainView methodsFor: 'recovered'!
writeDefaultToolbarConfiguration
    (self) writeDefaultSearchToolbarConfiguration.
    (self) writeDefaultNavigationToolbarConfiguration.
    (self) writeDefaultGeneralToolbarConfiguration.
    ^self
! !

"ASDBase.ic method 0x20106fb0; bytecode file offset 0xa03874"
!SGMainView methodsFor: 'recovered'!
registeredToolbarItems
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := registeredToolbarItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) registerToolbarItems.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := registeredToolbarItems.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20109764; bytecode file offset 0xa06028"
!SGMainView methodsFor: 'recovered'!
createSearchToolbar
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) userInterfaceManager.
    recoveredValue1 := (self) toolbarSearchName.
    recoveredValue2 := (self) widgetToolbarSearch.
    (recoveredValue0) addToolbarItemsFor: (recoveredValue1) toToolbar: (recoveredValue2).
    (self) userInterfaceManager.
    ^self
! !

"ASDBase.ic method 0x20117454; bytecode file offset 0xa13d1c"
!SGMainView methodsFor: 'recovered'!
menuCreateSelectActionForAscetLink
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('ASCETLINKS') = ('PROD105089').
    recoveredValue1 := (self) mainController.
    recoveredValue2 := (recoveredValue1) selectedObject.
    (self) menuCreateAscetLinkFor: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20118718; bytecode file offset 0xa1503c"
!SGMainView methodsFor: 'recovered'!
configureNavigationToolbar
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) widgetToolbarNavigation.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) createNavigationToolbar.
    recoveredBlock6Value0
].
    recoveredValue2 := (self) configureToolbar: (recoveredValue0) createBlock: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20118754; bytecode file offset 0xa1503c"
!SGMainView methodsFor: 'recovered'!
configureGeneralToolbar
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) widgetToolbarGenerals.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) createGeneralToolbar.
    recoveredBlock6Value0
].
    recoveredValue2 := (self) configureToolbar: (recoveredValue0) createBlock: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20173a48; bytecode file offset 0xa70348"
!SGMainView methodsFor: 'recovered'!
searchInputTool
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) searchBar.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := ('EditorSearchComponents') asString.
    recoveredBlock5Value2 := (recoveredBlock5Value0) toolNamed: (recoveredBlock5Value1).
    ^recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x20173a80; bytecode file offset 0xa70348"
!SGMainView methodsFor: 'recovered'!
navigationInputTool
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) navigationBar.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := ('GeneralNavigationInput') asString.
    recoveredBlock5Value2 := (recoveredBlock5Value0) toolNamed: (recoveredBlock5Value1).
    ^recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x201832cc; bytecode file offset 0xa7fb9c"
!SGMainView methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 |
    super initializeAfterCreate.
    (self) registerToolbarItems.
    (self) initToolbars.
    recoveredValue0 := RBIconGO.
    recoveredValue1 := (self) resourceManager.
    (recoveredValue0) ResourceManagerAdapter: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201a2ecc; bytecode file offset 0xa9f7c0"
!SGMainView methodsFor: 'recovered'!
visibleToolbarButtons
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) widgetToolbarDockingArea.
    recoveredValue1 := (recoveredValue0) children.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := (self) userInterfaceManager.
    recoveredBlock6Value1 := recoveredBlock6Arg1.
    recoveredBlock6Value2 := (recoveredBlock6Value1) name.
    recoveredBlock6Value3 := (recoveredBlock6Value0) readToolbarButtonVisibility: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := (self) userInterfaceManager.
    recoveredValue4 := (recoveredValue3) visibleToolbarItems.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201efdb0; bytecode file offset 0xaec688"
!SGMainView methodsFor: 'recovered'!
menuCreateOpenActionForAscetLink
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ('ASCETLINKS') = ('PROD105089').
    recoveredValue1 := ASDAscetLinkCreateConfig.
    recoveredValue2 := (recoveredValue1) createDefault.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (recoveredValue3) action: ('open').
    recoveredValue4 := (self) mainController.
    recoveredValue5 := (recoveredValue4) selectedObject.
    recoveredValue6 := recoveredLocal1.
    (self) menuCreateAscetLinkFor: (recoveredValue5) param: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x201f5ec4; bytecode file offset 0xaf2798"
!SGMainView methodsFor: 'recovered'!
visibleToolbarsFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) widgetToolbarDockingArea.
    recoveredValue1 := (recoveredValue0) children.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 |
    recoveredBlock6Value0 := (self) userInterfaceManager.
    recoveredBlock6Value1 := recoveredBlock6Value0.
    recoveredBlock6Value2 := recoveredBlock6Arg1.
    recoveredBlock6Value3 := (recoveredBlock6Value2) name.
    (recoveredBlock6Value1) readToolbarVisibility: (recoveredBlock6Value3).
    recoveredBlock6Value4 := recoveredBlock6Arg1.
    recoveredBlock6Value5 := (recoveredBlock6Value4) name.
    recoveredBlock6Value6 := (recoveredBlock6Value0) readToolbarOrder: (recoveredBlock6Value5).
    recoveredBlock6Value6
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := (self) userInterfaceManager.
    recoveredValue4 := (recoveredValue3) visibleToolbars.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201f8700; bytecode file offset 0xaf4fd4"
!SGMainView methodsFor: 'recovered'!
writeDefaultSearchToolbarConfiguration
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) add: ('GeneralSearch').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) add: ('EditorSearchComponents').
    recoveredValue5 := (self) userInterfaceManager.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) toolbarSearchName.
    (recoveredValue5) writeToolbarConfiguration: (recoveredValue6) toolbar: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x20212630; bytecode file offset 0xb0ef1c"
!SGMainView methodsFor: 'recovered'!
close
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    (self) writeToolbarPositionAndVisibility.
    recoveredBlock4Value0 := (self) userInterfaceManager.
    (recoveredBlock4Value0) writeSettingsFile.
    recoveredBlock4Value1 := super close.
    recoveredBlock4Value2 := recoveredBlock4Value1.
    recoveredLocal1 := recoveredBlock4Value2.
    recoveredBlock4Value1
].
    (self) suppressIdleTimerWhile: (recoveredValue0).
    recoveredValue1 := recoveredLocal1.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20249168; bytecode file offset 0xb45a64"
!SGMainView methodsFor: 'recovered'!
writeToolbarOrders
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetToolbarDockingArea.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) children.
    recoveredBlock5Value2 := [:recoveredBlock5Block14Arg1 | 
    | recoveredBlock5Block14Value0 recoveredBlock5Block14Value1 recoveredBlock5Block14Value2 recoveredBlock5Block14Value3 recoveredBlock5Block14Value4 recoveredBlock5Block14Value5 |
    recoveredBlock5Block14Value0 := (self) userInterfaceManager.
    recoveredBlock5Block14Value1 := recoveredBlock5Block14Arg1.
    recoveredBlock5Block14Value2 := (self) positionOfToolbar: (recoveredBlock5Block14Value1).
    recoveredBlock5Block14Value3 := recoveredBlock5Block14Arg1.
    recoveredBlock5Block14Value4 := (recoveredBlock5Block14Value3) name.
    recoveredBlock5Block14Value5 := (recoveredBlock5Block14Value0) writeToolbarOrder: (recoveredBlock5Block14Value2) for: (recoveredBlock5Block14Value4).
    recoveredBlock5Block14Value5
].
    recoveredBlock5Value3 := (recoveredBlock5Value1) do: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2025fa04; bytecode file offset 0xb5c2e8"
!SGMainView methodsFor: 'recovered'!
initToolbars
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) userInterfaceManager.
    recoveredValue1 := (self) visibleToolbarButtons.
    (recoveredValue0) visibleToolbarItems: (recoveredValue1).
    recoveredValue2 := (self) userInterfaceManager.
    recoveredValue3 := (self) availableToolbarButtons.
    (recoveredValue2) availableToolbarItems: (recoveredValue3).
    recoveredValue4 := (self) userInterfaceManager.
    recoveredValue5 := (self) visibleToolbars.
    (recoveredValue4) visibleToolbars: (recoveredValue5).
    (self) createGeneralToolbar.
    (self) createSearchToolbar.
    (self) createNavigationToolbar.
    (self) restoreToolbarsPositionAndVisibility.
    (self) showHideToolbars.
    ^self
! !

"ASDBase.ic method 0x2026f69c; bytecode file offset 0xb6bf78"
!SGMainView methodsFor: 'recovered'!
writeDefaultNavigationToolbarConfiguration
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) add: ('GeneralNavigationBack').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) add: ('GeneralNavigationForward').
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) add: ('GeneralNavigationInput').
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) add: ('GeneralNavigationGoTo').
    recoveredValue7 := (self) userInterfaceManager.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (self) toolbarNavigationName.
    (recoveredValue7) writeToolbarConfiguration: (recoveredValue8) toolbar: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x2029b998; bytecode file offset 0xb98278"
!SGMainView methodsFor: 'recovered'!
createSearchComponentsBox: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'EditorSearchComponents'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block280e3880Arg1 | 
    | block280e3880Value0 block280e3880Value1 |
    block280e3880Value0 := block280e3880Arg1.
    block280e3880Value1 := (block280e3880Value0) width: (100).
    block280e3880Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) createTobTBCombo: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) manageChild.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) getWidget.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := KeyReleaseMask.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack5 := 'searchFieldKeyReleased:clientData:callData:'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2) addEventHandler: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) visibleItemCount: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d7dc0; bytecode file offset 0xbd469c"
!SGMainView methodsFor: 'recovered'!
writeToolbarPositionAndVisibility
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetToolbarDockingArea.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) children.
    recoveredBlock5Value2 := [:recoveredBlock5Block14Arg1 | 
    | recoveredBlock5Block14Value0 recoveredBlock5Block14Value1 recoveredBlock5Block14Value2 recoveredBlock5Block14Value3 recoveredBlock5Block14Value4 recoveredBlock5Block14Value5 recoveredBlock5Block14Value6 recoveredBlock5Block14Value7 recoveredBlock5Block14Value8 recoveredBlock5Block14Value9 recoveredBlock5Block14Value10 recoveredBlock5Block14Value11 recoveredBlock5Block14Value12 |
    recoveredBlock5Block14Value0 := (self) userInterfaceManager.
    recoveredBlock5Block14Value1 := recoveredBlock5Block14Value0.
    recoveredBlock5Block14Value2 := recoveredBlock5Block14Arg1.
    recoveredBlock5Block14Value3 := (self) positionOfToolbar: (recoveredBlock5Block14Value2).
    recoveredBlock5Block14Value4 := recoveredBlock5Block14Arg1.
    recoveredBlock5Block14Value5 := (recoveredBlock5Block14Value4) name.
    (recoveredBlock5Block14Value1) writeToolbarOrder: (recoveredBlock5Block14Value3) for: (recoveredBlock5Block14Value5).
    recoveredBlock5Block14Value6 := (self) userInterfaceManager.
    recoveredBlock5Block14Value7 := recoveredBlock5Block14Arg1.
    recoveredBlock5Block14Value8 := (recoveredBlock5Block14Value7) name.
    recoveredBlock5Block14Value9 := (recoveredBlock5Block14Value6) toolbarVisible: (recoveredBlock5Block14Value8).
    recoveredBlock5Block14Value10 := recoveredBlock5Block14Arg1.
    recoveredBlock5Block14Value11 := (recoveredBlock5Block14Value10) name.
    recoveredBlock5Block14Value12 := (recoveredBlock5Block14Value0) writeToolbarVisibility: (recoveredBlock5Block14Value9) for: (recoveredBlock5Block14Value11).
    recoveredBlock5Block14Value12
].
    recoveredBlock5Value3 := (recoveredBlock5Value1) do: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202fda14; bytecode file offset 0xbfa2d8"
!SGMainView methodsFor: 'recovered'!
positionOfToolbar: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) parent.
    recoveredValue2 := (recoveredValue1) rows.
    recoveredValue3 := [:recoveredBlock9Arg1 :recoveredBlock9Arg2 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := [:recoveredBlock9Block19Arg1 :recoveredBlock9Block19Arg2 | 
    | recoveredBlock9Block19Stack0 recoveredBlock9Block19Stack1 recoveredBlock9Block19Stack2 recoveredBlock9Block19Stack3 recoveredBlock9Block19Stack4 recoveredBlock9Block19PC recoveredBlock9Block19Step recoveredBlock9Block19Done recoveredBlock9Block19Result |
    recoveredBlock9Block19Stack0 := self.
    recoveredBlock9Block19PC := 26.
    recoveredBlock9Block19Done := false.
    [recoveredBlock9Block19Done not] whileTrue: [
        recoveredBlock9Block19Step := recoveredBlock9Block19PC.
        recoveredBlock9Block19Step = 26 ifTrue: [
            recoveredBlock9Block19Stack1 := nil.
            recoveredBlock9Block19PC := 27.
        ].
        recoveredBlock9Block19Step = 27 ifTrue: [
            recoveredBlock9Block19Stack2 := recoveredBlock9Block19Arg1.
            recoveredBlock9Block19PC := 28.
        ].
        recoveredBlock9Block19Step = 28 ifTrue: [
            recoveredBlock9Block19Stack3 := recoveredArg1.
            recoveredBlock9Block19PC := 31.
        ].
        recoveredBlock9Block19Step = 31 ifTrue: [
            recoveredBlock9Block19Stack2 := (recoveredBlock9Block19Stack2) = (recoveredBlock9Block19Stack3).
            recoveredBlock9Block19PC := 32.
        ].
        recoveredBlock9Block19Step = 32 ifTrue: [
            (recoveredBlock9Block19Stack2) ifTrue: [recoveredBlock9Block19PC := 36] ifFalse: [recoveredBlock9Block19PC := 43].
        ].
        recoveredBlock9Block19Step = 36 ifTrue: [
            recoveredBlock9Block19PC := 37.
        ].
        recoveredBlock9Block19Step = 37 ifTrue: [
            recoveredBlock9Block19Stack1 := recoveredBlock9Block19Arg2.
            recoveredBlock9Block19PC := 38.
        ].
        recoveredBlock9Block19Step = 38 ifTrue: [
            recoveredBlock9Block19Stack2 := recoveredBlock9Arg2.
            recoveredBlock9Block19PC := 41.
        ].
        recoveredBlock9Block19Step = 41 ifTrue: [
            recoveredBlock9Block19Stack1 := (recoveredBlock9Block19Stack1) @ (recoveredBlock9Block19Stack2).
            recoveredBlock9Block19PC := 42.
        ].
        recoveredBlock9Block19Step = 42 ifTrue: [
            ^recoveredBlock9Block19Stack1
        ].
        recoveredBlock9Block19Step = 43 ifTrue: [
            recoveredBlock9Block19Result := recoveredBlock9Block19Stack1.
            recoveredBlock9Block19Done := true.
        ].
    ].
    recoveredBlock9Block19Result
].
    recoveredBlock9Value2 := (recoveredBlock9Value0) doWithIndex: (recoveredBlock9Value1).
    recoveredBlock9Value2
].
    (recoveredValue2) doWithIndex: (recoveredValue3).
    recoveredValue4 := (0) @ (0).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2034a4b0; bytecode file offset 0xc46d80"
!SGMainView methodsFor: 'recovered'!
writeDefaultToolbarVisibility
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := (self) userInterfaceManager.
    recoveredValue1 := (self) toolbarGeneralsName.
    (recoveredValue0) writeToolbarVisibility: (true) for: (recoveredValue1).
    recoveredValue2 := (self) userInterfaceManager.
    recoveredValue3 := (self) toolbarNavigationName.
    (recoveredValue2) writeToolbarVisibility: (true) for: (recoveredValue3).
    recoveredValue4 := (self) userInterfaceManager.
    recoveredValue5 := (self) toolbarSearchName.
    (recoveredValue4) writeToolbarVisibility: (true) for: (recoveredValue5).
    recoveredValue6 := (self) userInterfaceManager.
    recoveredValue7 := (1) @ (1).
    recoveredValue8 := (self) toolbarGeneralsName.
    (recoveredValue6) writeToolbarOrder: (recoveredValue7) for: (recoveredValue8).
    recoveredValue9 := (self) userInterfaceManager.
    recoveredValue10 := (1) @ (2).
    recoveredValue11 := (self) toolbarNavigationName.
    (recoveredValue9) writeToolbarOrder: (recoveredValue10) for: (recoveredValue11).
    recoveredValue12 := (self) userInterfaceManager.
    recoveredValue13 := (2) @ (1).
    recoveredValue14 := (self) toolbarSearchName.
    (recoveredValue12) writeToolbarOrder: (recoveredValue13) for: (recoveredValue14).
    ^self
! !

"ASDBase.ic method 0x2034d580; bytecode file offset 0xc49e68"
!SGMainView methodsFor: 'recovered'!
createGeneralNavigationInputBox: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredBlock7Value0.
    (recoveredBlock7Value1) width: (300).
    recoveredBlock7Value2 := recoveredBlock7Value0.
    (recoveredBlock7Value2) toolTipText: ('Address').
    recoveredBlock7Value3 := [
    | recoveredBlock7Block27Value0 |
    recoveredBlock7Block27Value0 := (self) menuNavigateToAddress.
    recoveredBlock7Block27Value0
].
    recoveredBlock7Value4 := (recoveredBlock7Value0) userData: (recoveredBlock7Value3).
    recoveredBlock7Value4
].
    recoveredValue2 := (recoveredValue0) createTobTBCombo: ('GeneralNavigationInput') argBlock: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) getWidget.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := KeyReleaseMask.
    (recoveredValue5) addEventHandler: (recoveredValue6) receiver: (self) selector: ('navigationFieldKeyReleased:clientData:callData:') clientData: (nil).
    (recoveredValue4) visibleItemCount: (10).
    recoveredValue7 := recoveredLocal1.
    (recoveredValue7) manageChild.
    ^self
! !

"ASDBase.ic method 0x203a299c; bytecode file offset 0xc9f284"
!SGMainView methodsFor: 'recovered'!
subMenuViewConfigure
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := 'menuViewConfigureToolbarGeneral'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := 'Toolbar ~General'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 |
    recoveredBlock15Value0 := (self) class.
    recoveredBlock15Value1 := (recoveredBlock15Value0) hasGeneralToolbar.
    recoveredBlock15Value1
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock27Value0 recoveredBlock27Value1 |
    recoveredBlock27Value0 := (self) class.
    recoveredBlock27Value1 := (recoveredBlock27Value0) hasGeneralToolbar.
    recoveredBlock27Value1
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack2) addSingleLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := 'menuViewConfigureResetToolbarConfiguration'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := '~Reset Toolbar Configuration'.
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
            recoveredStack8 := nil.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203db530; bytecode file offset 0xcd7e28"
!SGMainView methodsFor: 'recovered'!
configureToolbar: recoveredArg1 createBlock: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterfaceManager.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) configureToolbar: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
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
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 recoveredBlock28Value4 recoveredBlock28Value5 recoveredBlock28Value6 recoveredBlock28Value7 recoveredBlock28Value8 recoveredBlock28Value9 |
    recoveredBlock28Value0 := recoveredArg1.
    (recoveredBlock28Value0) unmanageChild.
    recoveredBlock28Value1 := recoveredArg1.
    recoveredBlock28Value2 := (recoveredBlock28Value1) children.
    recoveredBlock28Value3 := (recoveredBlock28Value2) copy.
    recoveredBlock28Value4 := [:recoveredBlock28Block46Arg1 | 
    | recoveredBlock28Block46Value0 recoveredBlock28Block46Value1 recoveredBlock28Block46Value2 recoveredBlock28Block46Value3 recoveredBlock28Block46Value4 |
    recoveredBlock28Block46Value0 := recoveredArg1.
    recoveredBlock28Block46Value1 := (recoveredBlock28Block46Value0) children.
    recoveredBlock28Block46Value2 := recoveredBlock28Block46Arg1.
    (recoveredBlock28Block46Value1) remove: (recoveredBlock28Block46Value2).
    recoveredBlock28Block46Value3 := recoveredBlock28Block46Arg1.
    recoveredBlock28Block46Value4 := (recoveredBlock28Block46Value3) destroyWidget.
    recoveredBlock28Block46Value4
].
    (recoveredBlock28Value3) do: (recoveredBlock28Value4).
    recoveredBlock28Value5 := recoveredArg1.
    recoveredBlock28Value6 := OrderedCollection.
    recoveredBlock28Value7 := (recoveredBlock28Value6) new.
    (recoveredBlock28Value5) children: (recoveredBlock28Value7).
    recoveredBlock28Value8 := recoveredArg2.
    (recoveredBlock28Value8) value.
    recoveredBlock28Value9 := (self) showHideToolbars.
    recoveredBlock28Value9
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) deferRedraw: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204906f0; bytecode file offset 0xd8cfe4"
!SGMainView methodsFor: 'recovered'!
showHideToolbars
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) widgetToolbarGenerals.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
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
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) children.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) isEmpty.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 32] ifFalse: [recoveredBlock5PC := 18].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) generalToolbarVisible.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 24] ifFalse: [recoveredBlock5PC := 32].
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) class.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) hasGeneralToolbar.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 38] ifFalse: [recoveredBlock5PC := 32].
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) unmanageChild.
            recoveredBlock5PC := 35.
        ].
        recoveredBlock5Step = 35 ifTrue: [
            recoveredBlock5PC := 41.
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 39.
        ].
        recoveredBlock5Step = 39 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) manageChild.
            recoveredBlock5PC := 41.
        ].
        recoveredBlock5Step = 41 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := (self) widgetToolbarSearch.
    recoveredValue3 := [:recoveredBlock47Arg1 | 
    | recoveredBlock47Stack0 recoveredBlock47Stack1 recoveredBlock47Stack2 recoveredBlock47PC recoveredBlock47Step recoveredBlock47Done recoveredBlock47Result |
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
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) children.
            recoveredBlock47PC := 56.
        ].
        recoveredBlock47Step = 56 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) isEmpty.
            recoveredBlock47PC := 57.
        ].
        recoveredBlock47Step = 57 ifTrue: [
            (recoveredBlock47Stack1) ifTrue: [recoveredBlock47PC := 74] ifFalse: [recoveredBlock47PC := 60].
        ].
        recoveredBlock47Step = 60 ifTrue: [
            recoveredBlock47Stack1 := self.
            recoveredBlock47PC := 61.
        ].
        recoveredBlock47Step = 61 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) searchToolbarVisible.
            recoveredBlock47PC := 63.
        ].
        recoveredBlock47Step = 63 ifTrue: [
            (recoveredBlock47Stack1) ifTrue: [recoveredBlock47PC := 66] ifFalse: [recoveredBlock47PC := 74].
        ].
        recoveredBlock47Step = 66 ifTrue: [
            recoveredBlock47Stack1 := self.
            recoveredBlock47PC := 67.
        ].
        recoveredBlock47Step = 67 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) class.
            recoveredBlock47PC := 69.
        ].
        recoveredBlock47Step = 69 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) hasSearchToolbar.
            recoveredBlock47PC := 71.
        ].
        recoveredBlock47Step = 71 ifTrue: [
            (recoveredBlock47Stack1) ifTrue: [recoveredBlock47PC := 80] ifFalse: [recoveredBlock47PC := 74].
        ].
        recoveredBlock47Step = 74 ifTrue: [
            recoveredBlock47Stack1 := recoveredBlock47Arg1.
            recoveredBlock47PC := 75.
        ].
        recoveredBlock47Step = 75 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) unmanageChild.
            recoveredBlock47PC := 77.
        ].
        recoveredBlock47Step = 77 ifTrue: [
            recoveredBlock47PC := 83.
        ].
        recoveredBlock47Step = 80 ifTrue: [
            recoveredBlock47Stack1 := recoveredBlock47Arg1.
            recoveredBlock47PC := 81.
        ].
        recoveredBlock47Step = 81 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) manageChild.
            recoveredBlock47PC := 83.
        ].
        recoveredBlock47Step = 83 ifTrue: [
            recoveredBlock47Result := recoveredBlock47Stack1.
            recoveredBlock47Done := true.
        ].
    ].
    recoveredBlock47Result
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    recoveredValue4 := (self) widgetToolbarNavigation.
    recoveredValue5 := [:recoveredBlock89Arg1 | 
    | recoveredBlock89Stack0 recoveredBlock89Stack1 recoveredBlock89Stack2 recoveredBlock89PC recoveredBlock89Step recoveredBlock89Done recoveredBlock89Result |
    recoveredBlock89Stack0 := self.
    recoveredBlock89PC := 96.
    recoveredBlock89Done := false.
    [recoveredBlock89Done not] whileTrue: [
        recoveredBlock89Step := recoveredBlock89PC.
        recoveredBlock89Step = 96 ifTrue: [
            recoveredBlock89Stack1 := recoveredBlock89Arg1.
            recoveredBlock89PC := 97.
        ].
        recoveredBlock89Step = 97 ifTrue: [
            recoveredBlock89Stack1 := (recoveredBlock89Stack1) children.
            recoveredBlock89PC := 98.
        ].
        recoveredBlock89Step = 98 ifTrue: [
            recoveredBlock89Stack1 := (recoveredBlock89Stack1) isEmpty.
            recoveredBlock89PC := 99.
        ].
        recoveredBlock89Step = 99 ifTrue: [
            (recoveredBlock89Stack1) ifTrue: [recoveredBlock89PC := 116] ifFalse: [recoveredBlock89PC := 102].
        ].
        recoveredBlock89Step = 102 ifTrue: [
            recoveredBlock89Stack1 := self.
            recoveredBlock89PC := 103.
        ].
        recoveredBlock89Step = 103 ifTrue: [
            recoveredBlock89Stack1 := (recoveredBlock89Stack1) navigationToolbarVisible.
            recoveredBlock89PC := 105.
        ].
        recoveredBlock89Step = 105 ifTrue: [
            (recoveredBlock89Stack1) ifTrue: [recoveredBlock89PC := 108] ifFalse: [recoveredBlock89PC := 116].
        ].
        recoveredBlock89Step = 108 ifTrue: [
            recoveredBlock89Stack1 := self.
            recoveredBlock89PC := 109.
        ].
        recoveredBlock89Step = 109 ifTrue: [
            recoveredBlock89Stack1 := (recoveredBlock89Stack1) class.
            recoveredBlock89PC := 111.
        ].
        recoveredBlock89Step = 111 ifTrue: [
            recoveredBlock89Stack1 := (recoveredBlock89Stack1) hasNavigationToolbar.
            recoveredBlock89PC := 113.
        ].
        recoveredBlock89Step = 113 ifTrue: [
            (recoveredBlock89Stack1) ifTrue: [recoveredBlock89PC := 122] ifFalse: [recoveredBlock89PC := 116].
        ].
        recoveredBlock89Step = 116 ifTrue: [
            recoveredBlock89Stack1 := recoveredBlock89Arg1.
            recoveredBlock89PC := 117.
        ].
        recoveredBlock89Step = 117 ifTrue: [
            recoveredBlock89Stack1 := (recoveredBlock89Stack1) unmanageChild.
            recoveredBlock89PC := 119.
        ].
        recoveredBlock89Step = 119 ifTrue: [
            recoveredBlock89PC := 125.
        ].
        recoveredBlock89Step = 122 ifTrue: [
            recoveredBlock89Stack1 := recoveredBlock89Arg1.
            recoveredBlock89PC := 123.
        ].
        recoveredBlock89Step = 123 ifTrue: [
            recoveredBlock89Stack1 := (recoveredBlock89Stack1) manageChild.
            recoveredBlock89PC := 125.
        ].
        recoveredBlock89Step = 125 ifTrue: [
            recoveredBlock89Result := recoveredBlock89Stack1.
            recoveredBlock89Done := true.
        ].
    ].
    recoveredBlock89Result
].
    (recoveredValue4) ifNotNil: (recoveredValue5).
    (self) updateToolbarSensitive.
    ^self
! !

"ASDBase.ic method 0x204cf6a0; bytecode file offset 0xdcbfc8"
!SGMainView methodsFor: 'recovered'!
writeDefaultGeneralToolbarConfiguration
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) add: ('GeneralFileNew').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) add: ('GeneralFileOpen').
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) add: ('GeneralFileSave').
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) add: ('Separator').
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) add: ('GeneralCut').
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) add: ('GeneralCopy').
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) add: ('GeneralPaste').
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) add: ('GeneralDelete').
    recoveredValue11 := recoveredValue2.
    (recoveredValue11) add: ('Separator').
    recoveredValue12 := recoveredValue2.
    (recoveredValue12) add: ('GeneralExpandAll').
    recoveredValue13 := recoveredValue2.
    (recoveredValue13) add: ('GeneralCollapseAll').
    recoveredValue14 := recoveredValue2.
    (recoveredValue14) add: ('Separator').
    recoveredValue15 := recoveredValue2.
    (recoveredValue15) add: ('GeneralFileImport').
    recoveredValue16 := recoveredValue2.
    (recoveredValue16) add: ('GeneralFileExport').
    recoveredValue17 := recoveredValue2.
    (recoveredValue17) add: ('Separator').
    recoveredValue18 := recoveredValue2.
    (recoveredValue18) add: ('GeneralFolderNew').
    recoveredValue19 := recoveredValue2.
    (recoveredValue19) add: ('ComponentsProject').
    recoveredValue20 := recoveredValue2.
    (recoveredValue20) add: ('ComponentsModule').
    recoveredValue21 := recoveredValue2.
    (recoveredValue21) add: ('ComponentsClass').
    recoveredValue22 := recoveredValue2.
    (recoveredValue22) add: ('ComponentsStateMachine').
    recoveredValue23 := recoveredValue2.
    (recoveredValue23) add: ('ComponentsEnumeration').
    recoveredValue24 := recoveredValue2.
    (recoveredValue24) add: ('ComponentsRecord').
    recoveredValue25 := recoveredValue2.
    (recoveredValue25) add: ('ComponentsContainer').
    recoveredValue26 := recoveredValue2.
    (recoveredValue26) add: ('Separator').
    recoveredValue27 := recoveredValue2.
    (recoveredValue27) add: ('GeneralViews').
    recoveredValue28 := recoveredValue2.
    (recoveredValue28) add: ('GeneralOptions').
    recoveredValue29 := recoveredValue2.
    (recoveredValue29) add: ('GeneralHelp').
    recoveredValue30 := (self) userInterfaceManager.
    recoveredValue31 := recoveredLocal1.
    recoveredValue32 := (self) toolbarGeneralsName.
    (recoveredValue30) writeToolbarConfiguration: (recoveredValue31) toolbar: (recoveredValue32).
    ^self
! !

"ASDBase.ic method 0x204ef4a0; bytecode file offset 0xdebdbc"
!SGMainView methodsFor: 'recovered'!
restoreToolbarsPositionAndVisibility
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetToolbarDockingArea.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal2.
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
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) userInterfaceManager.
            recoveredBlock25PC := 34.
        ].
        recoveredBlock25Step = 34 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Arg1.
            recoveredBlock25PC := 35.
        ].
        recoveredBlock25Step = 35 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) name.
            recoveredBlock25PC := 37.
        ].
        recoveredBlock25Step = 37 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) toolbarVisible: (recoveredBlock25Stack1).
            recoveredBlock25PC := 39.
        ].
        recoveredBlock25Step = 39 ifTrue: [
            (recoveredBlock25Stack0) ifTrue: [recoveredBlock25PC := 42] ifFalse: [recoveredBlock25PC := 48].
        ].
        recoveredBlock25Step = 42 ifTrue: [
            recoveredBlock25Stack0 := recoveredBlock25Arg1.
            recoveredBlock25PC := 43.
        ].
        recoveredBlock25Step = 43 ifTrue: [
            (recoveredBlock25Stack0) manageChild.
            recoveredBlock25PC := 45.
        ].
        recoveredBlock25Step = 45 ifTrue: [
            recoveredBlock25PC := 51.
        ].
        recoveredBlock25Step = 48 ifTrue: [
            recoveredBlock25Stack0 := recoveredBlock25Arg1.
            recoveredBlock25PC := 49.
        ].
        recoveredBlock25Step = 49 ifTrue: [
            (recoveredBlock25Stack0) unmanageChild.
            recoveredBlock25PC := 51.
        ].
        recoveredBlock25Step = 51 ifTrue: [
            recoveredBlock25Stack0 := recoveredLocal1.
            recoveredBlock25PC := 54.
        ].
        recoveredBlock25Step = 54 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Arg1.
            recoveredBlock25PC := 55.
        ].
        recoveredBlock25Step = 55 ifTrue: [
            recoveredBlock25Stack2 := self.
            recoveredBlock25PC := 56.
        ].
        recoveredBlock25Step = 56 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) userInterfaceManager.
            recoveredBlock25PC := 58.
        ].
        recoveredBlock25Step = 58 ifTrue: [
            recoveredBlock25Stack3 := recoveredBlock25Arg1.
            recoveredBlock25PC := 59.
        ].
        recoveredBlock25Step = 59 ifTrue: [
            recoveredBlock25Stack3 := (recoveredBlock25Stack3) name.
            recoveredBlock25PC := 61.
        ].
        recoveredBlock25Step = 61 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) toolbarPosition: (recoveredBlock25Stack3).
            recoveredBlock25PC := 63.
        ].
        recoveredBlock25Step = 63 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) at: (recoveredBlock25Stack1) put: (recoveredBlock25Stack2).
            recoveredBlock25PC := 65.
        ].
        recoveredBlock25Step = 65 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack0.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := [:block2810951cArg1 | 
    | block2810951cValue0 block2810951cValue1 |
    block2810951cValue0 := block2810951cArg1.
    block2810951cValue1 := (block2810951cValue0) y.
    block2810951cValue1
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := [:recoveredBlock86Arg1 | 
    | recoveredBlock86Value0 recoveredBlock86Value1 recoveredBlock86Value2 recoveredBlock86Value3 recoveredBlock86Value4 recoveredBlock86Value5 recoveredBlock86Value6 recoveredBlock86Value7 recoveredBlock86Value8 recoveredBlock86Value9 recoveredBlock86Value10 |
    recoveredBlock86Value0 := recoveredLocal3.
    recoveredBlock86Value1 := OrderedCollection.
    recoveredBlock86Value2 := (recoveredBlock86Value1) new.
    recoveredBlock86Value3 := recoveredBlock86Value2.
    recoveredBlock86Value4 := recoveredLocal1.
    recoveredBlock86Value5 := (recoveredBlock86Value4) keys.
    recoveredBlock86Value6 := [:recoveredBlock86Block104Arg1 | 
    | recoveredBlock86Block104Value0 recoveredBlock86Block104Value1 recoveredBlock86Block104Value2 recoveredBlock86Block104Value3 recoveredBlock86Block104Value4 recoveredBlock86Block104Value5 |
    recoveredBlock86Block104Value0 := recoveredLocal1.
    recoveredBlock86Block104Value1 := recoveredBlock86Block104Arg1.
    recoveredBlock86Block104Value2 := (recoveredBlock86Block104Value0) at: (recoveredBlock86Block104Value1).
    recoveredBlock86Block104Value3 := (recoveredBlock86Block104Value2) y.
    recoveredBlock86Block104Value4 := recoveredBlock86Arg1.
    recoveredBlock86Block104Value5 := (recoveredBlock86Block104Value3) = (recoveredBlock86Block104Value4).
    recoveredBlock86Block104Value5
].
    recoveredBlock86Value7 := (recoveredBlock86Value5) select: (recoveredBlock86Value6).
    recoveredBlock86Value8 := [:recoveredBlock86Block125Arg1 :recoveredBlock86Block125Arg2 | 
    | recoveredBlock86Block125Value0 recoveredBlock86Block125Value1 recoveredBlock86Block125Value2 recoveredBlock86Block125Value3 recoveredBlock86Block125Value4 recoveredBlock86Block125Value5 recoveredBlock86Block125Value6 recoveredBlock86Block125Value7 recoveredBlock86Block125Value8 |
    recoveredBlock86Block125Value0 := recoveredLocal1.
    recoveredBlock86Block125Value1 := recoveredBlock86Block125Arg1.
    recoveredBlock86Block125Value2 := (recoveredBlock86Block125Value0) at: (recoveredBlock86Block125Value1).
    recoveredBlock86Block125Value3 := (recoveredBlock86Block125Value2) x.
    recoveredBlock86Block125Value4 := recoveredLocal1.
    recoveredBlock86Block125Value5 := recoveredBlock86Block125Arg2.
    recoveredBlock86Block125Value6 := (recoveredBlock86Block125Value4) at: (recoveredBlock86Block125Value5).
    recoveredBlock86Block125Value7 := (recoveredBlock86Block125Value6) x.
    recoveredBlock86Block125Value8 := (recoveredBlock86Block125Value3) < (recoveredBlock86Block125Value7).
    recoveredBlock86Block125Value8
].
    recoveredBlock86Value9 := (recoveredBlock86Value7) asSortedCollection: (recoveredBlock86Value8).
    (recoveredBlock86Value3) addAll: (recoveredBlock86Value9).
    recoveredBlock86Value10 := (recoveredBlock86Value0) add: (recoveredBlock86Value2).
    recoveredBlock86Value10
].
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetToolbarDockingArea.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack0) rows: (recoveredStack1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205252b0; bytecode file offset 0xe21c04"
!SGMainView methodsFor: 'recovered'!
createViewMenu
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
            recoveredStack2 := '~View'.
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
            recoveredStack3 := 'menuViewExpandAll'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := '~Expand All'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack5 := (recoveredStack5) resourceManager.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack6 := 'GeneralExpandAll'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := (recoveredStack5) returnIconWithName: (recoveredStack6).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock26Value0 |
    recoveredBlock26Value0 := (self) expandCollapseListIsPossible.
    recoveredBlock26Value0
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack7 := [
    true
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack10 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) icon: (recoveredStack5) enable: (recoveredStack6) visible: (recoveredStack7) for: (recoveredStack8) accelerator: (recoveredStack9) acceleratorText: (recoveredStack10).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := 'menuViewCollapseAll'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := '~Collapse All'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack5 := (recoveredStack5) resourceManager.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack6 := 'GeneralCollapseAll'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack5 := (recoveredStack5) returnIconWithName: (recoveredStack6).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock59Value0 |
    recoveredBlock59Value0 := (self) expandCollapseListIsPossible.
    recoveredBlock59Value0
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack7 := [
    true
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack10 := nil.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) icon: (recoveredStack5) enable: (recoveredStack6) visible: (recoveredStack7) for: (recoveredStack8) accelerator: (recoveredStack9) acceleratorText: (recoveredStack10).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := 'subMenuViewFilter'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := '~Filter'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock86Value0 |
    recoveredBlock86Value0 := (self) filterListIsPossible.
    recoveredBlock86Value0
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack2) addSubMenuWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack2) addSingleLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := 'subMenuViewShowHide'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack4 := '~Show/Hide'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack2) addSubMenuWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := 'subMenuViewConfigure'.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack4 := 'Con~figure'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack2) addSubMenuWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack2) addSingleLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := 'menuViewUpdate'.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack4 := '~Update'.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock163Value0 |
    recoveredBlock163Value0 := (self) validDatabaseExists.
    recoveredBlock163Value0
].
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack8 := CwAccelerator.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack9 := 0.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack10 := XKF5.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack8 := (recoveredStack8) mask: (recoveredStack9) keysym: (recoveredStack10).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack9 := 'F5'.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20528000; bytecode file offset 0xe24948"
!SGMainView methodsFor: 'recovered'!
availableToolbarButtons
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal4 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := OrderedCollection.
    recoveredValue7 := (recoveredValue6) new.
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal3.
    (recoveredValue8) add: ('GeneralFileNew').
    recoveredValue9 := recoveredLocal3.
    (recoveredValue9) add: ('GeneralFileOpen').
    recoveredValue10 := recoveredLocal3.
    (recoveredValue10) add: ('GeneralFileSave').
    recoveredValue11 := recoveredLocal3.
    (recoveredValue11) add: ('GeneralCut').
    recoveredValue12 := recoveredLocal3.
    (recoveredValue12) add: ('GeneralCopy').
    recoveredValue13 := recoveredLocal3.
    (recoveredValue13) add: ('GeneralPaste').
    recoveredValue14 := recoveredLocal3.
    (recoveredValue14) add: ('GeneralDelete').
    recoveredValue15 := recoveredLocal3.
    (recoveredValue15) add: ('GeneralExpandAll').
    recoveredValue16 := recoveredLocal3.
    (recoveredValue16) add: ('GeneralCollapseAll').
    recoveredValue17 := recoveredLocal3.
    (recoveredValue17) add: ('GeneralFileImport').
    recoveredValue18 := recoveredLocal3.
    (recoveredValue18) add: ('GeneralFileExport').
    recoveredValue19 := recoveredLocal3.
    (recoveredValue19) add: ('GeneralFolderNew').
    recoveredValue20 := recoveredLocal3.
    (recoveredValue20) add: ('ComponentsProject').
    recoveredValue21 := recoveredLocal3.
    (recoveredValue21) add: ('ComponentsModule').
    recoveredValue22 := recoveredLocal3.
    (recoveredValue22) add: ('ComponentsClass').
    recoveredValue23 := recoveredLocal3.
    (recoveredValue23) add: ('ComponentsStateMachine').
    recoveredValue24 := recoveredLocal3.
    (recoveredValue24) add: ('ComponentsEnumeration').
    recoveredValue25 := recoveredLocal3.
    (recoveredValue25) add: ('ComponentsRecord').
    recoveredValue26 := recoveredLocal3.
    (recoveredValue26) add: ('ComponentsContainer').
    recoveredValue27 := recoveredLocal3.
    (recoveredValue27) add: ('GeneralViews').
    recoveredValue28 := recoveredLocal3.
    (recoveredValue28) add: ('GeneralOptions').
    recoveredValue29 := recoveredLocal3.
    (recoveredValue29) add: ('GeneralHelp').
    recoveredValue30 := recoveredLocal3.
    (recoveredValue30) add: ('Separator').
    recoveredValue31 := recoveredLocal2.
    (recoveredValue31) add: ('GeneralSearch').
    recoveredValue32 := recoveredLocal2.
    (recoveredValue32) add: ('EditorSearchComponents').
    recoveredValue33 := recoveredLocal2.
    (recoveredValue33) add: ('Separator').
    recoveredValue34 := recoveredLocal1.
    (recoveredValue34) add: ('GeneralNavigationBack').
    recoveredValue35 := recoveredLocal1.
    (recoveredValue35) add: ('GeneralNavigationForward').
    recoveredValue36 := recoveredLocal1.
    (recoveredValue36) add: ('GeneralNavigationInput').
    recoveredValue37 := recoveredLocal1.
    (recoveredValue37) add: ('GeneralNavigationGoTo').
    recoveredValue38 := recoveredLocal1.
    (recoveredValue38) add: ('Separator').
    recoveredValue39 := recoveredLocal4.
    recoveredValue40 := (self) toolbarGeneralsName.
    recoveredValue41 := recoveredLocal3.
    (recoveredValue39) at: (recoveredValue40) put: (recoveredValue41).
    recoveredValue42 := recoveredLocal4.
    recoveredValue43 := (self) toolbarSearchName.
    recoveredValue44 := recoveredLocal2.
    (recoveredValue42) at: (recoveredValue43) put: (recoveredValue44).
    recoveredValue45 := recoveredLocal4.
    recoveredValue46 := (self) toolbarNavigationName.
    recoveredValue47 := recoveredLocal1.
    (recoveredValue45) at: (recoveredValue46) put: (recoveredValue47).
    recoveredValue48 := recoveredLocal4.
    ^recoveredValue48
! !

"ASDBase.ic method 0x20684a48; bytecode file offset 0xf81514"
!SGMainView methodsFor: 'recovered'!
registerToolbarItems
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 recoveredValue100 recoveredValue101 recoveredValue102 recoveredValue103 recoveredValue104 recoveredValue105 recoveredValue106 recoveredValue107 recoveredValue108 recoveredValue109 recoveredValue110 recoveredValue111 recoveredValue112 recoveredValue113 recoveredValue114 recoveredValue115 recoveredValue116 recoveredValue117 recoveredValue118 recoveredValue119 recoveredValue120 recoveredValue121 recoveredValue122 recoveredValue123 recoveredValue124 recoveredValue125 recoveredValue126 recoveredValue127 recoveredValue128 recoveredValue129 recoveredValue130 recoveredValue131 recoveredValue132 recoveredValue133 recoveredValue134 recoveredValue135 recoveredValue136 recoveredValue137 recoveredValue138 recoveredValue139 recoveredValue140 recoveredValue141 recoveredValue142 recoveredValue143 recoveredValue144 recoveredValue145 recoveredValue146 recoveredValue147 recoveredValue148 recoveredValue149 recoveredValue150 recoveredValue151 recoveredValue152 recoveredValue153 recoveredValue154 recoveredValue155 recoveredValue156 recoveredValue157 recoveredValue158 recoveredValue159 recoveredValue160 recoveredValue161 recoveredValue162 recoveredValue163 recoveredValue164 recoveredValue165 recoveredValue166 recoveredValue167 recoveredValue168 recoveredValue169 recoveredValue170 recoveredValue171 recoveredValue172 recoveredValue173 recoveredValue174 recoveredValue175 recoveredValue176 recoveredValue177 recoveredValue178 recoveredValue179 recoveredValue180 recoveredValue181 recoveredValue182 recoveredValue183 recoveredValue184 recoveredValue185 recoveredValue186 recoveredValue187 recoveredValue188 recoveredValue189 recoveredValue190 recoveredValue191 recoveredValue192 recoveredValue193 recoveredValue194 recoveredValue195 recoveredValue196 recoveredValue197 recoveredValue198 recoveredValue199 recoveredValue200 recoveredValue201 recoveredValue202 recoveredValue203 recoveredValue204 recoveredValue205 recoveredValue206 recoveredValue207 recoveredValue208 recoveredValue209 recoveredValue210 recoveredValue211 recoveredValue212 recoveredValue213 recoveredValue214 recoveredValue215 recoveredValue216 recoveredValue217 recoveredValue218 recoveredValue219 recoveredValue220 recoveredValue221 recoveredValue222 recoveredValue223 recoveredValue224 recoveredValue225 recoveredValue226 recoveredValue227 recoveredValue228 recoveredValue229 recoveredValue230 recoveredValue231 recoveredValue232 recoveredValue233 recoveredValue234 recoveredValue235 recoveredValue236 recoveredValue237 recoveredValue238 recoveredValue239 recoveredValue240 recoveredValue241 recoveredValue242 recoveredValue243 recoveredValue244 recoveredValue245 recoveredValue246 recoveredValue247 recoveredValue248 recoveredValue249 recoveredValue250 recoveredValue251 recoveredValue252 recoveredValue253 recoveredValue254 recoveredValue255 recoveredValue256 recoveredValue257 recoveredValue258 recoveredValue259 recoveredValue260 recoveredValue261 recoveredValue262 recoveredValue263 recoveredValue264 recoveredValue265 recoveredValue266 recoveredValue267 recoveredValue268 recoveredValue269 recoveredValue270 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    registeredToolbarItems := recoveredValue1.
    recoveredValue2 := registeredToolbarItems.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := ETASDynamicToolbarButton.
    recoveredValue5 := (recoveredValue4) new.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) type: ('General').
    recoveredValue7 := recoveredValue5.
    recoveredValue8 := [
    | recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
    recoveredBlock23Stack0 := self.
    recoveredBlock23PC := 30.
    recoveredBlock23Done := false.
    [recoveredBlock23Done not] whileTrue: [
        recoveredBlock23Step := recoveredBlock23PC.
        recoveredBlock23Step = 30 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) library.
            recoveredBlock23PC := 32.
        ].
        recoveredBlock23Step = 32 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) isWorkspaceMode.
            recoveredBlock23PC := 34.
        ].
        recoveredBlock23Step = 34 ifTrue: [
            (recoveredBlock23Stack0) ifTrue: [recoveredBlock23PC := 38] ifFalse: [recoveredBlock23PC := 46].
        ].
        recoveredBlock23Step = 38 ifTrue: [
            recoveredBlock23Stack0 := self.
            recoveredBlock23PC := 39.
        ].
        recoveredBlock23Step = 39 ifTrue: [
            recoveredBlock23Stack1 := 'GeneralWorkspaceNew'.
            recoveredBlock23PC := 41.
        ].
        recoveredBlock23Step = 41 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) returnSizableToolbarIcon: (recoveredBlock23Stack1).
            recoveredBlock23PC := 43.
        ].
        recoveredBlock23Step = 43 ifTrue: [
            recoveredBlock23PC := 51.
        ].
        recoveredBlock23Step = 46 ifTrue: [
            recoveredBlock23Stack0 := self.
            recoveredBlock23PC := 47.
        ].
        recoveredBlock23Step = 47 ifTrue: [
            recoveredBlock23Stack1 := 'GeneralDatabaseNew'.
            recoveredBlock23PC := 49.
        ].
        recoveredBlock23Step = 49 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) returnSizableToolbarIcon: (recoveredBlock23Stack1).
            recoveredBlock23PC := 51.
        ].
        recoveredBlock23Step = 51 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack0.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
    (recoveredValue7) icon: (recoveredValue8).
    recoveredValue9 := recoveredValue5.
    recoveredValue10 := [
    | recoveredBlock55Value0 |
    recoveredBlock55Value0 := (self) menuFileNew.
    recoveredBlock55Value0
].
    (recoveredValue9) action: (recoveredValue10).
    recoveredValue11 := recoveredValue5.
    recoveredValue12 := SCNew.
    (recoveredValue11) tooltip: (recoveredValue12).
    recoveredValue13 := (self) returnSizableToolbarIcon: ('GeneralFileNew').
    recoveredValue14 := (recoveredValue5) iconForConfigDialog: (recoveredValue13).
    (recoveredValue3) at: ('GeneralFileNew') put: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := ETASToolbarButton.
    recoveredValue17 := (recoveredValue16) new.
    recoveredValue18 := recoveredValue17.
    (recoveredValue18) type: ('General').
    recoveredValue19 := recoveredValue17.
    recoveredValue20 := [
    | recoveredBlock93Value0 |
    recoveredBlock93Value0 := (self) menuFileOpen.
    recoveredBlock93Value0
].
    (recoveredValue19) action: (recoveredValue20).
    recoveredValue21 := SCOpen.
    recoveredValue22 := (recoveredValue17) tooltip: (recoveredValue21).
    (recoveredValue15) at: ('GeneralFileOpen') put: (recoveredValue22).
    recoveredValue23 := recoveredValue2.
    recoveredValue24 := ETASToolbarButton.
    recoveredValue25 := (recoveredValue24) new.
    recoveredValue26 := recoveredValue25.
    (recoveredValue26) type: ('General').
    recoveredValue27 := recoveredValue25.
    recoveredValue28 := [
    | recoveredBlock123Value0 |
    recoveredBlock123Value0 := (self) menuFileSave.
    recoveredBlock123Value0
].
    (recoveredValue27) action: (recoveredValue28).
    recoveredValue29 := SCSave.
    recoveredValue30 := (recoveredValue25) tooltip: (recoveredValue29).
    (recoveredValue23) at: ('GeneralFileSave') put: (recoveredValue30).
    recoveredValue31 := recoveredValue2.
    recoveredValue32 := ETASToolbarButton.
    recoveredValue33 := (recoveredValue32) new.
    recoveredValue34 := recoveredValue33.
    (recoveredValue34) type: ('General').
    recoveredValue35 := recoveredValue33.
    recoveredValue36 := [
    | recoveredBlock153Value0 |
    recoveredBlock153Value0 := (self) menuEditCutFocus.
    recoveredBlock153Value0
].
    (recoveredValue35) action: (recoveredValue36).
    recoveredValue37 := SCCut.
    recoveredValue38 := (recoveredValue33) tooltip: (recoveredValue37).
    (recoveredValue31) at: ('GeneralCut') put: (recoveredValue38).
    recoveredValue39 := recoveredValue2.
    recoveredValue40 := ETASToolbarButton.
    recoveredValue41 := (recoveredValue40) new.
    recoveredValue42 := recoveredValue41.
    (recoveredValue42) type: ('General').
    recoveredValue43 := recoveredValue41.
    recoveredValue44 := [
    | recoveredBlock183Value0 |
    recoveredBlock183Value0 := (self) menuEditCopyFocus.
    recoveredBlock183Value0
].
    (recoveredValue43) action: (recoveredValue44).
    recoveredValue45 := VUICopy.
    recoveredValue46 := (recoveredValue41) tooltip: (recoveredValue45).
    (recoveredValue39) at: ('GeneralCopy') put: (recoveredValue46).
    recoveredValue47 := recoveredValue2.
    recoveredValue48 := ETASToolbarButton.
    recoveredValue49 := (recoveredValue48) new.
    recoveredValue50 := recoveredValue49.
    (recoveredValue50) type: ('General').
    recoveredValue51 := recoveredValue49.
    recoveredValue52 := [
    | recoveredBlock213Value0 |
    recoveredBlock213Value0 := (self) menuEditPasteFocus.
    recoveredBlock213Value0
].
    (recoveredValue51) action: (recoveredValue52).
    recoveredValue53 := SCPaste.
    recoveredValue54 := (recoveredValue49) tooltip: (recoveredValue53).
    (recoveredValue47) at: ('GeneralPaste') put: (recoveredValue54).
    recoveredValue55 := recoveredValue2.
    recoveredValue56 := ETASToolbarButton.
    recoveredValue57 := (recoveredValue56) new.
    recoveredValue58 := recoveredValue57.
    (recoveredValue58) type: ('General').
    recoveredValue59 := recoveredValue57.
    recoveredValue60 := [
    | recoveredBlock243Value0 |
    recoveredBlock243Value0 := (self) menuEditDeleteFocus.
    recoveredBlock243Value0
].
    (recoveredValue59) action: (recoveredValue60).
    recoveredValue61 := SCDelete.
    recoveredValue62 := (recoveredValue61) copyEtasNlsStringWithout: ($&).
    recoveredValue63 := (recoveredValue57) tooltip: (recoveredValue62).
    (recoveredValue55) at: ('GeneralDelete') put: (recoveredValue63).
    recoveredValue64 := recoveredValue2.
    recoveredValue65 := ETASToolbarButton.
    recoveredValue66 := (recoveredValue65) new.
    recoveredValue67 := recoveredValue66.
    (recoveredValue67) type: ('General').
    recoveredValue68 := recoveredValue66.
    recoveredValue69 := [
    | recoveredBlock278Value0 |
    recoveredBlock278Value0 := (self) expandClassList.
    recoveredBlock278Value0
].
    (recoveredValue68) action: (recoveredValue69).
    recoveredValue70 := EtExpandAllMenu.
    recoveredValue71 := (recoveredValue70) copyEtasNlsStringWithout: ($~).
    recoveredValue72 := (recoveredValue66) tooltip: (recoveredValue71).
    (recoveredValue64) at: ('GeneralExpandAll') put: (recoveredValue72).
    recoveredValue73 := recoveredValue2.
    recoveredValue74 := ETASToolbarButton.
    recoveredValue75 := (recoveredValue74) new.
    recoveredValue76 := recoveredValue75.
    (recoveredValue76) type: ('General').
    recoveredValue77 := recoveredValue75.
    recoveredValue78 := [
    | recoveredBlock312Value0 |
    recoveredBlock312Value0 := (self) collapseClassList.
    recoveredBlock312Value0
].
    (recoveredValue77) action: (recoveredValue78).
    recoveredValue79 := EtCollapseAllMenu.
    recoveredValue80 := (recoveredValue79) copyEtasNlsStringWithout: ($~).
    recoveredValue81 := (recoveredValue75) tooltip: (recoveredValue80).
    (recoveredValue73) at: ('GeneralCollapseAll') put: (recoveredValue81).
    recoveredValue82 := recoveredValue2.
    recoveredValue83 := ETASDynamicToolbarPulldownButton.
    recoveredValue84 := (recoveredValue83) new.
    recoveredValue85 := recoveredValue84.
    (recoveredValue85) type: ('General').
    recoveredValue86 := recoveredValue84.
    recoveredValue87 := [
    | recoveredBlock346Value0 recoveredBlock346Value1 recoveredBlock346Value2 recoveredBlock346Value3 |
    recoveredBlock346Value0 := (self) rootItemIcon.
    recoveredBlock346Value1 := (self) returnSizableToolbarIcon: (recoveredBlock346Value0).
    recoveredBlock346Value2 := (self) returnSizableToolbarIcon: ('GeneralOverlayImport').
    recoveredBlock346Value3 := (recoveredBlock346Value1) getOverlayedIconWith: (recoveredBlock346Value2).
    recoveredBlock346Value3
].
    (recoveredValue86) icon: (recoveredValue87).
    recoveredValue88 := recoveredValue84.
    recoveredValue89 := [
    | recoveredBlock368Value0 |
    recoveredBlock368Value0 := (self) menuFileImport.
    recoveredBlock368Value0
].
    (recoveredValue88) action: (recoveredValue89).
    recoveredValue90 := recoveredValue84.
    recoveredValue91 := [:recoveredBlock380Arg1 | 
    | recoveredBlock380Value0 recoveredBlock380Value1 |
    recoveredBlock380Value0 := recoveredBlock380Arg1.
    recoveredBlock380Value1 := (self) createPulldownImportMenuFor: (recoveredBlock380Value0).
    recoveredBlock380Value1
].
    (recoveredValue90) pulldownMenuBlock: (recoveredValue91).
    recoveredValue92 := recoveredValue84.
    recoveredValue93 := EtImport.
    recoveredValue94 := (recoveredValue93) copyEtasNlsStringWithout: ($~).
    (recoveredValue92) tooltip: (recoveredValue94).
    recoveredValue95 := (self) rootItemIcon.
    recoveredValue96 := (self) returnSizableToolbarIcon: (recoveredValue95).
    recoveredValue97 := (self) returnSizableToolbarIcon: ('GeneralOverlayImport').
    recoveredValue98 := (recoveredValue96) getOverlayedIconWith: (recoveredValue97).
    recoveredValue99 := (recoveredValue84) iconForConfigDialog: (recoveredValue98).
    (recoveredValue82) at: ('GeneralFileImport') put: (recoveredValue99).
    recoveredValue100 := recoveredValue2.
    recoveredValue101 := ETASDynamicToolbarButton.
    recoveredValue102 := (recoveredValue101) new.
    recoveredValue103 := recoveredValue102.
    (recoveredValue103) type: ('General').
    recoveredValue104 := recoveredValue102.
    recoveredValue105 := [
    | recoveredBlock431Value0 recoveredBlock431Value1 recoveredBlock431Value2 recoveredBlock431Value3 |
    recoveredBlock431Value0 := (self) rootItemIcon.
    recoveredBlock431Value1 := (self) returnSizableToolbarIcon: (recoveredBlock431Value0).
    recoveredBlock431Value2 := (self) returnSizableToolbarIcon: ('GeneralOverlayExport').
    recoveredBlock431Value3 := (recoveredBlock431Value1) getOverlayedIconWith: (recoveredBlock431Value2).
    recoveredBlock431Value3
].
    (recoveredValue104) icon: (recoveredValue105).
    recoveredValue106 := recoveredValue102.
    recoveredValue107 := [
    | recoveredBlock454Value0 |
    recoveredBlock454Value0 := (self) menuItemExport.
    recoveredBlock454Value0
].
    (recoveredValue106) action: (recoveredValue107).
    recoveredValue108 := recoveredValue102.
    recoveredValue109 := EtExport.
    recoveredValue110 := (recoveredValue109) copyEtasNlsStringWithout: ($~).
    (recoveredValue108) tooltip: (recoveredValue110).
    recoveredValue111 := (self) rootItemIcon.
    recoveredValue112 := (self) returnSizableToolbarIcon: (recoveredValue111).
    recoveredValue113 := (self) returnSizableToolbarIcon: ('GeneralOverlayExport').
    recoveredValue114 := (recoveredValue112) getOverlayedIconWith: (recoveredValue113).
    recoveredValue115 := (recoveredValue102) iconForConfigDialog: (recoveredValue114).
    (recoveredValue100) at: ('GeneralFileExport') put: (recoveredValue115).
    recoveredValue116 := recoveredValue2.
    recoveredValue117 := ETASToolbarButton.
    recoveredValue118 := (recoveredValue117) new.
    recoveredValue119 := recoveredValue118.
    (recoveredValue119) type: ('General').
    recoveredValue120 := recoveredValue118.
    recoveredValue121 := [
    | recoveredBlock507Value0 |
    recoveredBlock507Value0 := (self) addFolder.
    recoveredBlock507Value0
].
    (recoveredValue120) action: (recoveredValue121).
    recoveredValue122 := EtAddItem.
    recoveredValue123 := SGLibraryFolder.
    recoveredValue124 := (recoveredValue123) label.
    recoveredValue125 := (recoveredValue122) bindWith: (recoveredValue124).
    recoveredValue126 := (recoveredValue125) copyEtasNlsStringWithout: ($~).
    recoveredValue127 := (recoveredValue118) tooltip: (recoveredValue126).
    (recoveredValue116) at: ('GeneralFolderNew') put: (recoveredValue127).
    recoveredValue128 := recoveredValue2.
    recoveredValue129 := ETASToolbarButton.
    recoveredValue130 := (recoveredValue129) new.
    recoveredValue131 := recoveredValue130.
    (recoveredValue131) type: ('General').
    recoveredValue132 := recoveredValue130.
    recoveredValue133 := [
    | recoveredBlock561Value0 |
    recoveredBlock561Value0 := (self) addProject.
    recoveredBlock561Value0
].
    (recoveredValue132) action: (recoveredValue133).
    recoveredValue134 := EtAddItem.
    recoveredValue135 := (recoveredValue134) bindWith: ('~Project').
    recoveredValue136 := (recoveredValue135) copyEtasNlsStringWithout: ($~).
    recoveredValue137 := (recoveredValue130) tooltip: (recoveredValue136).
    (recoveredValue128) at: ('ComponentsProject') put: (recoveredValue137).
    recoveredValue138 := recoveredValue2.
    recoveredValue139 := ETASToolbarPulldownButton.
    recoveredValue140 := (recoveredValue139) new.
    recoveredValue141 := recoveredValue140.
    (recoveredValue141) type: ('General').
    recoveredValue142 := recoveredValue140.
    recoveredValue143 := [
    | recoveredBlock613Value0 |
    recoveredBlock613Value0 := (self) addModule.
    recoveredBlock613Value0
].
    (recoveredValue142) action: (recoveredValue143).
    recoveredValue144 := recoveredValue140.
    recoveredValue145 := [:recoveredBlock629Arg1 | 
    | recoveredBlock629Value0 recoveredBlock629Value1 recoveredBlock629Value2 recoveredBlock629Value3 recoveredBlock629Value4 recoveredBlock629Value5 |
    recoveredBlock629Value0 := recoveredBlock629Arg1.
    recoveredBlock629Value1 := SGModule.
    recoveredBlock629Value2 := ASDGeneralOptions.
    recoveredBlock629Value3 := (recoveredBlock629Value2) instance.
    recoveredBlock629Value4 := (recoveredBlock629Value3) optionDefaultModuleType.
    recoveredBlock629Value5 := (self) createPulldownMenuFor: (recoveredBlock629Value0) clientData: (recoveredBlock629Value1) defaultType: (recoveredBlock629Value4).
    recoveredBlock629Value5
].
    (recoveredValue144) pulldownMenuBlock: (recoveredValue145).
    recoveredValue146 := recoveredValue140.
    recoveredValue147 := [:recoveredBlock661Arg1 | 
    | recoveredBlock661Value0 recoveredBlock661Value1 |
    recoveredBlock661Value0 := recoveredBlock661Arg1.
    recoveredBlock661Value1 := (self) getTobHoverHelpBlockModule: (recoveredBlock661Value0).
    recoveredBlock661Value1
].
    (recoveredValue146) tooltip: (recoveredValue147).
    recoveredValue148 := (recoveredValue140) descriptionForConfigDialog: ('Insert Module').
    (recoveredValue138) at: ('ComponentsModule') put: (recoveredValue148).
    recoveredValue149 := recoveredValue2.
    recoveredValue150 := ETASToolbarPulldownButton.
    recoveredValue151 := (recoveredValue150) new.
    recoveredValue152 := recoveredValue151.
    (recoveredValue152) type: ('General').
    recoveredValue153 := recoveredValue151.
    recoveredValue154 := [
    | recoveredBlock703Value0 |
    recoveredBlock703Value0 := (self) addClass.
    recoveredBlock703Value0
].
    (recoveredValue153) action: (recoveredValue154).
    recoveredValue155 := recoveredValue151.
    recoveredValue156 := [:recoveredBlock719Arg1 | 
    | recoveredBlock719Value0 recoveredBlock719Value1 recoveredBlock719Value2 recoveredBlock719Value3 recoveredBlock719Value4 recoveredBlock719Value5 |
    recoveredBlock719Value0 := recoveredBlock719Arg1.
    recoveredBlock719Value1 := SGClass.
    recoveredBlock719Value2 := ASDGeneralOptions.
    recoveredBlock719Value3 := (recoveredBlock719Value2) instance.
    recoveredBlock719Value4 := (recoveredBlock719Value3) optionDefaultClassType.
    recoveredBlock719Value5 := (self) createPulldownMenuFor: (recoveredBlock719Value0) clientData: (recoveredBlock719Value1) defaultType: (recoveredBlock719Value4).
    recoveredBlock719Value5
].
    (recoveredValue155) pulldownMenuBlock: (recoveredValue156).
    recoveredValue157 := recoveredValue151.
    recoveredValue158 := [:recoveredBlock751Arg1 | 
    | recoveredBlock751Value0 recoveredBlock751Value1 |
    recoveredBlock751Value0 := recoveredBlock751Arg1.
    recoveredBlock751Value1 := (self) getTobHoverHelpBlockClass: (recoveredBlock751Value0).
    recoveredBlock751Value1
].
    (recoveredValue157) tooltip: (recoveredValue158).
    recoveredValue159 := (recoveredValue151) descriptionForConfigDialog: ('Insert Class').
    (recoveredValue149) at: ('ComponentsClass') put: (recoveredValue159).
    recoveredValue160 := recoveredValue2.
    recoveredValue161 := ETASToolbarButton.
    recoveredValue162 := (recoveredValue161) new.
    recoveredValue163 := recoveredValue162.
    (recoveredValue163) type: ('General').
    recoveredValue164 := recoveredValue162.
    recoveredValue165 := [
    | recoveredBlock791Value0 |
    recoveredBlock791Value0 := (self) addStateMachine.
    recoveredBlock791Value0
].
    (recoveredValue164) action: (recoveredValue165).
    recoveredValue166 := EtAddItem.
    recoveredValue167 := (recoveredValue166) bindWith: ('~State Machine').
    recoveredValue168 := (recoveredValue167) copyEtasNlsStringWithout: ($~).
    recoveredValue169 := (recoveredValue162) tooltip: (recoveredValue168).
    (recoveredValue160) at: ('ComponentsStateMachine') put: (recoveredValue169).
    recoveredValue170 := recoveredValue2.
    recoveredValue171 := ETASToolbarButton.
    recoveredValue172 := (recoveredValue171) new.
    recoveredValue173 := recoveredValue172.
    (recoveredValue173) type: ('General').
    recoveredValue174 := recoveredValue172.
    recoveredValue175 := [
    | recoveredBlock841Value0 |
    recoveredBlock841Value0 := (self) addEnumeration.
    recoveredBlock841Value0
].
    (recoveredValue174) action: (recoveredValue175).
    recoveredValue176 := EtAddItem.
    recoveredValue177 := (recoveredValue176) bindWith: ('~Enumeration').
    recoveredValue178 := (recoveredValue177) copyEtasNlsStringWithout: ($~).
    recoveredValue179 := (recoveredValue172) tooltip: (recoveredValue178).
    (recoveredValue170) at: ('ComponentsEnumeration') put: (recoveredValue179).
    recoveredValue180 := recoveredValue2.
    recoveredValue181 := ETASToolbarButton.
    recoveredValue182 := (recoveredValue181) new.
    recoveredValue183 := recoveredValue182.
    (recoveredValue183) type: ('General').
    recoveredValue184 := recoveredValue182.
    recoveredValue185 := [
    | recoveredBlock891Value0 |
    recoveredBlock891Value0 := (self) addRecord.
    recoveredBlock891Value0
].
    (recoveredValue184) action: (recoveredValue185).
    recoveredValue186 := EtAddItem.
    recoveredValue187 := (recoveredValue186) bindWith: ('~Record').
    recoveredValue188 := (recoveredValue187) copyEtasNlsStringWithout: ($~).
    recoveredValue189 := (recoveredValue182) tooltip: (recoveredValue188).
    (recoveredValue180) at: ('ComponentsRecord') put: (recoveredValue189).
    recoveredValue190 := recoveredValue2.
    recoveredValue191 := ETASToolbarButton.
    recoveredValue192 := (recoveredValue191) new.
    recoveredValue193 := recoveredValue192.
    (recoveredValue193) type: ('General').
    recoveredValue194 := recoveredValue192.
    recoveredValue195 := [
    | recoveredBlock941Value0 |
    recoveredBlock941Value0 := (self) addContainer.
    recoveredBlock941Value0
].
    (recoveredValue194) action: (recoveredValue195).
    recoveredValue196 := EtAddItem.
    recoveredValue197 := (recoveredValue196) bindWith: ('~Container').
    recoveredValue198 := (recoveredValue197) copyEtasNlsStringWithout: ($~).
    recoveredValue199 := (recoveredValue192) tooltip: (recoveredValue198).
    (recoveredValue190) at: ('ComponentsContainer') put: (recoveredValue199).
    recoveredValue200 := recoveredValue2.
    recoveredValue201 := ETASToolbarButton.
    recoveredValue202 := (recoveredValue201) new.
    recoveredValue203 := recoveredValue202.
    (recoveredValue203) type: ('General').
    recoveredValue204 := recoveredValue202.
    recoveredValue205 := [
    | recoveredBlock991Value0 |
    recoveredBlock991Value0 := (self) menuToolsViews.
    recoveredBlock991Value0
].
    (recoveredValue204) action: (recoveredValue205).
    recoveredValue206 := (recoveredValue202) tooltip: ('Edit Views').
    (recoveredValue200) at: ('GeneralViews') put: (recoveredValue206).
    recoveredValue207 := recoveredValue2.
    recoveredValue208 := ETASToolbarButton.
    recoveredValue209 := (recoveredValue208) new.
    recoveredValue210 := recoveredValue209.
    (recoveredValue210) type: ('General').
    recoveredValue211 := recoveredValue209.
    recoveredValue212 := [
    | recoveredBlock1027Value0 |
    recoveredBlock1027Value0 := (self) menuToolsOptions.
    recoveredBlock1027Value0
].
    (recoveredValue211) action: (recoveredValue212).
    recoveredValue213 := (recoveredValue209) tooltip: ('Options').
    (recoveredValue207) at: ('GeneralOptions') put: (recoveredValue213).
    recoveredValue214 := recoveredValue2.
    recoveredValue215 := ETASToolbarButton.
    recoveredValue216 := (recoveredValue215) new.
    recoveredValue217 := recoveredValue216.
    (recoveredValue217) type: ('General').
    recoveredValue218 := recoveredValue216.
    recoveredValue219 := [
    | recoveredBlock1063Value0 |
    recoveredBlock1063Value0 := (self) menuHelpContents.
    recoveredBlock1063Value0
].
    (recoveredValue218) action: (recoveredValue219).
    recoveredValue220 := (recoveredValue216) tooltip: ('Open Online Help').
    (recoveredValue214) at: ('GeneralHelp') put: (recoveredValue220).
    recoveredValue221 := recoveredValue2.
    recoveredValue222 := ETASToolbarPulldownButton.
    recoveredValue223 := (recoveredValue222) new.
    recoveredValue224 := recoveredValue223.
    (recoveredValue224) type: ('Search').
    recoveredValue225 := recoveredValue223.
    recoveredValue226 := [
    | recoveredBlock1103Value0 |
    recoveredBlock1103Value0 := (self) menuSearch.
    recoveredBlock1103Value0
].
    (recoveredValue225) action: (recoveredValue226).
    recoveredValue227 := recoveredValue223.
    recoveredValue228 := [:recoveredBlock1119Arg1 | 
    | recoveredBlock1119Value0 recoveredBlock1119Value1 |
    recoveredBlock1119Value0 := recoveredBlock1119Arg1.
    recoveredBlock1119Value1 := (self) createSearchPulldownMenuFor: (recoveredBlock1119Value0).
    recoveredBlock1119Value1
].
    (recoveredValue227) pulldownMenuBlock: (recoveredValue228).
    recoveredValue229 := (recoveredValue223) tooltip: ('Search').
    (recoveredValue221) at: ('GeneralSearch') put: (recoveredValue229).
    recoveredValue230 := recoveredValue2.
    recoveredValue231 := ETASToolbarDropdownList.
    recoveredValue232 := (recoveredValue231) new.
    recoveredValue233 := recoveredValue232.
    (recoveredValue233) type: ('ComboBox').
    recoveredValue234 := recoveredValue232.
    recoveredValue235 := [:recoveredBlock1159Arg1 | 
    | recoveredBlock1159Value0 recoveredBlock1159Value1 |
    recoveredBlock1159Value0 := recoveredBlock1159Arg1.
    recoveredBlock1159Value1 := (self) createSearchComponentsBox: (recoveredBlock1159Value0).
    recoveredBlock1159Value1
].
    (recoveredValue234) createBlock: (recoveredValue235).
    recoveredValue236 := recoveredValue232.
    (recoveredValue236) tooltip: ('Search Components').
    recoveredValue237 := (self) returnIconWithName: ('ComboBox').
    recoveredValue238 := (recoveredValue232) iconForConfigDialog: (recoveredValue237).
    (recoveredValue230) at: ('EditorSearchComponents') put: (recoveredValue238).
    recoveredValue239 := recoveredValue2.
    recoveredValue240 := ETASToolbarButton.
    recoveredValue241 := (recoveredValue240) new.
    recoveredValue242 := recoveredValue241.
    (recoveredValue242) type: ('Navigation').
    recoveredValue243 := recoveredValue241.
    recoveredValue244 := [
    | recoveredBlock1211Value0 |
    recoveredBlock1211Value0 := (self) menuNavigateBack.
    recoveredBlock1211Value0
].
    (recoveredValue243) action: (recoveredValue244).
    recoveredValue245 := (recoveredValue241) tooltip: ('Back').
    (recoveredValue239) at: ('GeneralNavigationBack') put: (recoveredValue245).
    recoveredValue246 := recoveredValue2.
    recoveredValue247 := ETASToolbarButton.
    recoveredValue248 := (recoveredValue247) new.
    recoveredValue249 := recoveredValue248.
    (recoveredValue249) type: ('Navigation').
    recoveredValue250 := recoveredValue248.
    recoveredValue251 := [
    | recoveredBlock1249Value0 |
    recoveredBlock1249Value0 := (self) menuNavigateForward.
    recoveredBlock1249Value0
].
    (recoveredValue250) action: (recoveredValue251).
    recoveredValue252 := (recoveredValue248) tooltip: ('Forward').
    (recoveredValue246) at: ('GeneralNavigationForward') put: (recoveredValue252).
    recoveredValue253 := recoveredValue2.
    recoveredValue254 := ETASToolbarDropdownList.
    recoveredValue255 := (recoveredValue254) new.
    recoveredValue256 := recoveredValue255.
    (recoveredValue256) type: ('ComboBox').
    recoveredValue257 := recoveredValue255.
    recoveredValue258 := [:recoveredBlock1289Arg1 | 
    | recoveredBlock1289Value0 recoveredBlock1289Value1 |
    recoveredBlock1289Value0 := recoveredBlock1289Arg1.
    recoveredBlock1289Value1 := (self) createGeneralNavigationInputBox: (recoveredBlock1289Value0).
    recoveredBlock1289Value1
].
    (recoveredValue257) createBlock: (recoveredValue258).
    recoveredValue259 := (recoveredValue255) tooltip: ('Address').
    (recoveredValue253) at: ('GeneralNavigationInput') put: (recoveredValue259).
    recoveredValue260 := recoveredValue2.
    recoveredValue261 := ETASToolbarButton.
    recoveredValue262 := (recoveredValue261) new.
    recoveredValue263 := recoveredValue262.
    (recoveredValue263) type: ('Navigation').
    recoveredValue264 := recoveredValue262.
    recoveredValue265 := [
    | recoveredBlock1329Value0 |
    recoveredBlock1329Value0 := (self) menuNavigateToAddress.
    recoveredBlock1329Value0
].
    (recoveredValue264) action: (recoveredValue265).
    recoveredValue266 := (recoveredValue262) tooltip: ('Go to').
    (recoveredValue260) at: ('GeneralNavigationGoTo') put: (recoveredValue266).
    recoveredValue267 := ETASToolbarSeparator.
    recoveredValue268 := (recoveredValue267) new.
    recoveredValue269 := recoveredValue268.
    (recoveredValue269) type: ('Separator').
    recoveredValue270 := (recoveredValue268) tooltip: ('Separator').
    (recoveredValue2) at: ('Separator') put: (recoveredValue270).
    ^self
! !

