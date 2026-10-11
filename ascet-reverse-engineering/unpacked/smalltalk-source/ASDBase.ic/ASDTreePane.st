"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002b734; bytecode file offset 0x934580"
!ASDTreePane methodsFor: 'recovered'!
searchStrings
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) searchStrings.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200372d4; bytecode file offset 0x934580"
!ASDTreePane methodsFor: 'recovered'!
searchMode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) searchMode.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d2d8; bytecode file offset 0x93bf94"
!ASDTreePane methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050274; bytecode file offset 0x94d048"
!ASDTreePane methodsFor: 'recovered'!
refresh
    (self) refreshTrees.
    ^self
! !

"ASDBase.ic method 0x200613e8; bytecode file offset 0x95e838"
!ASDTreePane methodsFor: 'recovered'!
paneToolBar
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := (recoveredValue0) at: ('paneToolBar').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061474; bytecode file offset 0x95e838"
!ASDTreePane methodsFor: 'recovered'!
paneButton
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := (recoveredValue0) at: ('paneButton').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061d20; bytecode file offset 0x95e838"
!ASDTreePane methodsFor: 'recovered'!
tabStrip
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := (recoveredValue0) at: ('tabStrip').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006e058; bytecode file offset 0x96a9dc"
!ASDTreePane methodsFor: 'recovered'!
userInterface
    | recoveredValue0 |
    recoveredValue0 := userInterface.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20089974; bytecode file offset 0x986240"
!ASDTreePane methodsFor: 'recovered'!
resetTrees
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    trees := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20097f64; bytecode file offset 0x995850"
!ASDTreePane methodsFor: 'recovered'!
searchMode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) searchMode: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200989f4; bytecode file offset 0x995850"
!ASDTreePane methodsFor: 'recovered'!
searchStrings: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) searchStrings: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c5270; bytecode file offset 0x9c1f64"
!ASDTreePane methodsFor: 'recovered'!
lastSearchString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lastSearchString := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c590c; bytecode file offset 0x9c22c8"
!ASDTreePane methodsFor: 'recovered'!
lastSearchStringFound: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lastSearchStringFound := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200dd6dc; bytecode file offset 0x9d9f9c"
!ASDTreePane methodsFor: 'recovered'!
destroy: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    (self) resetTrees.
    recoveredValue0 := (self) class.
    (recoveredValue0) removeDependent: (self).
    ^self
! !

"ASDBase.ic method 0x200ff790; bytecode file offset 0x9fc05c"
!ASDTreePane methodsFor: 'recovered'!
toolBarFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) , ('ToolBar').
    recoveredValue3 := (recoveredValue2) asAtom.
    recoveredValue4 := [].
    recoveredValue5 := (recoveredValue0) at: (recoveredValue3) ifAbsent: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20102308; bytecode file offset 0x9febc4"
!ASDTreePane methodsFor: 'recovered'!
paneButton: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) closePane: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20117400; bytecode file offset 0xa13cec"
!ASDTreePane methodsFor: 'recovered'!
initialProgressMessage
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Character.
    recoveredValue1 := (recoveredValue0) lf.
    recoveredValue2 := (recoveredValue1) asString.
    recoveredValue3 := ('Searched 0 components.') , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , ('Found 0 exact matches, 0 wildcard matches.        ').
    ^recoveredValue4
! !

"ASDBase.ic method 0x2012a500; bytecode file offset 0xa26dec"
!ASDTreePane methodsFor: 'recovered'!
trees
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := trees.
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
            trees := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := trees.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201305a0; bytecode file offset 0xa2ce68"
!ASDTreePane methodsFor: 'recovered'!
openTreePaneSearchDialogFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASDTreePaneSearchDialog.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) treePane: (self).
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) treeList: (recoveredValue4).
    (recoveredValue1) promptAtCurrentMousePosition.
    ^self
! !

"ASDBase.ic method 0x20161674; bytecode file offset 0xa5df38"
!ASDTreePane methodsFor: 'recovered'!
updateSearchButtons
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) searchButtons.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) searchButtonIcon.
    recoveredBlock5Value2 := (recoveredBlock5Value0) image: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2016fb48; bytecode file offset 0xa6c400"
!ASDTreePane methodsFor: 'recovered'!
lastSearchStringFound
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := lastSearchStringFound.
    recoveredValue1 := [
    lastSearchStringFound := true.
    true
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := lastSearchStringFound.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2017fa64; bytecode file offset 0xa7c320"
!ASDTreePane methodsFor: 'recovered'!
lastSearchString
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := lastSearchString.
    recoveredValue1 := [
    lastSearchString := ''.
    ''
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := lastSearchString.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2018e0fc; bytecode file offset 0xa8a9bc"
!ASDTreePane methodsFor: 'recovered'!
searchButtons
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := searchButtons.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := OrderedCollection.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    searchButtons := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := searchButtons.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201eef68; bytecode file offset 0xaeb85c"
!ASDTreePane methodsFor: 'recovered'!
modifyVerifyTabStrip: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) selectedItems.
    recoveredValue2 := [
    ^self
].
    recoveredValue3 := (recoveredValue1) at: (1) ifAbsent: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) userData.
    (recoveredValue5) unmanageChild.
    ^self
! !

"ASDBase.ic method 0x201f7d7c; bytecode file offset 0xaf4660"
!ASDTreePane methodsFor: 'recovered'!
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
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) activate.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) reason.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := XmCRLOSINGFOCUS.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) inactivate.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f9800; bytecode file offset 0xaf60c4"
!ASDTreePane methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) tabStrip.
    recoveredValue1 := (recoveredValue0) selectedItems.
    recoveredValue2 := [
    ^self
].
    recoveredValue3 := (recoveredValue1) at: (1) ifAbsent: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) tabStrip.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) selectItem: (recoveredValue5) notify: (true).
    ^self
! !

"ASDBase.ic method 0x202191b4; bytecode file offset 0xb15a80"
!ASDTreePane methodsFor: 'recovered'!
updateTrees
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := (self) trees.
    recoveredBlock5Value1 := [:recoveredBlock5Block13Arg1 | 
    | recoveredBlock5Block13Value0 recoveredBlock5Block13Value1 recoveredBlock5Block13Value2 |
    recoveredBlock5Block13Value0 := recoveredBlock5Block13Arg1.
    recoveredBlock5Block13Value1 := (recoveredBlock5Block13Value0) at: (1).
    recoveredBlock5Block13Value2 := (self) updateTree: (recoveredBlock5Block13Value1).
    recoveredBlock5Block13Value2
].
    recoveredBlock5Value2 := (recoveredBlock5Value0) do: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) deferRedraw: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2023988c; bytecode file offset 0xb36154"
!ASDTreePane methodsFor: 'recovered'!
toolbarSelection: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) userData.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) userData.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBoolean.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) updateTrees.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack0.
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

"ASDBase.ic method 0x2024d3b8; bytecode file offset 0xb49c90"
!ASDTreePane methodsFor: 'recovered'!
losingFocusSearchInput: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDestroyed.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := CgRGBColor.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) lightGray.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) foregroundColor: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'Search...'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) lastSearchString: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) lastSearchStringFound: (recoveredStack1).
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

"ASDBase.ic method 0x2025baa0; bytecode file offset 0xb58370"
!ASDTreePane methodsFor: 'recovered'!
selectTree: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) , ('Tab').
    recoveredValue3 := (recoveredValue2) asAtom.
    recoveredValue4 := [
    ^nil
].
    recoveredValue5 := (recoveredValue0) at: (recoveredValue3) ifAbsent: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := (self) tabStrip.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) selectItem: (recoveredValue7) notify: (true).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2026e0b4; bytecode file offset 0xb6a980"
!ASDTreePane methodsFor: 'recovered'!
userInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) requiredAPIPolicy.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := [
    | recoveredBlock6Block12Value0 recoveredBlock6Block12Value1 recoveredBlock6Block12Value2 |
    recoveredBlock6Block12Value0 := recoveredArg1.
    recoveredBlock6Block12Value1 := recoveredBlock6Arg1.
    recoveredBlock6Block12Value2 := (recoveredBlock6Block12Value0) respondsTo: (recoveredBlock6Block12Value1).
    recoveredBlock6Block12Value2
].
    recoveredBlock6Value1 := (self) runtimeAssert: (recoveredBlock6Value0) additionalInfo: ('Required API Policy Violation').
    recoveredBlock6Value1
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    userInterface := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2028a6c0; bytecode file offset 0xb86f94"
!ASDTreePane methodsFor: 'recovered'!
addTreePaneSearchString: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) searchStrings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyWithout: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 9.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
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
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) searchStrings: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20299cfc; bytecode file offset 0xb965d4"
!ASDTreePane methodsFor: 'recovered'!
focusSearchInput: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDestroyed.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) foregroundColor.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := CgRGBColor.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) black.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) searchStrings.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack2) items: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2) setString: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := CgRGBColor.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) black.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) foregroundColor: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a2c20; bytecode file offset 0xb9f4e8"
!ASDTreePane methodsFor: 'recovered'!
updateBlock: recoveredArg1 for: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) trees.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
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
            recoveredBlock5Stack3 := 1.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) at: (recoveredBlock5Stack3).
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg2.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) = (recoveredBlock5Stack3).
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 24] ifFalse: [recoveredBlock5PC := 40].
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack2 := 2.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            (recoveredBlock5Stack1) at: (recoveredBlock5Stack2) put: (recoveredBlock5Stack3).
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 34.
        ].
        recoveredBlock5Step = 34 ifTrue: [
            (recoveredBlock5Stack1) updateTrees.
            recoveredBlock5PC := 36.
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg2.
            recoveredBlock5PC := 39.
        ].
        recoveredBlock5Step = 39 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 40 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202a6838; bytecode file offset 0xba310c"
!ASDTreePane methodsFor: 'recovered'!
singleSelectionTabStrip: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) selectedItems.
    recoveredValue2 := [
    ^self
].
    recoveredValue3 := (recoveredValue1) at: (1) ifAbsent: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) userData.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) manageChild.
    recoveredValue7 := recoveredValue5.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) clientWidth.
    (recoveredValue7) width: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) clientHeight.
    (recoveredValue5) height: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x202aadc4; bytecode file offset 0xba768c"
!ASDTreePane methodsFor: 'recovered'!
allExpandedInList: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) allVisibleItems.
    recoveredValue2 := [:recoveredBlock8Arg1 :recoveredBlock8Arg2 | 
    | recoveredBlock8Local1 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg2.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack3 := 1.
            recoveredBlock8PC := 20.
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) newNodeAt: (recoveredBlock8Stack2) top: (recoveredBlock8Stack3).
            recoveredBlock8PC := 22.
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack1.
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 24.
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local1.
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) hasChildren.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 30] ifFalse: [recoveredBlock8PC := 41].
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Arg2.
            recoveredBlock8PC := 34.
        ].
        recoveredBlock8Step = 34 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) isExpandedPos: (recoveredBlock8Stack3).
            recoveredBlock8PC := 35.
        ].
        recoveredBlock8Step = 35 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 41] ifFalse: [recoveredBlock8PC := 38].
        ].
        recoveredBlock8Step = 38 ifTrue: [
            recoveredBlock8PC := 39.
        ].
        recoveredBlock8Step = 39 ifTrue: [
            recoveredBlock8Stack1 := false.
            recoveredBlock8PC := 40.
        ].
        recoveredBlock8Step = 40 ifTrue: [
            ^recoveredBlock8Stack1
        ].
        recoveredBlock8Step = 41 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) doWithIndex: (recoveredValue2).
    ^true
! !

"ASDBase.ic method 0x202c8730; bytecode file offset 0xbc5004"
!ASDTreePane methodsFor: 'recovered'!
searchButtonIcon
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) searchMode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := ASDTreePaneSimpleSearch.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'GeneralSearch'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnIconWithName: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := ASDTreePaneWildcardSearch.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 'GeneralSearchWildcard'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnIconWithName: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := ASDTreePaneTypeAheadSearch.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 'GeneralSearchTypeAhead'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnIconWithName: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'GeneralSearch'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnIconWithName: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ce7fc; bytecode file offset 0xbcb0cc"
!ASDTreePane methodsFor: 'recovered'!
refreshTrees
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := [
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) trees.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack1 := [:block280e5dc4Arg1 | 
    | block280e5dc4Value0 block280e5dc4Value1 block280e5dc4Value2 block280e5dc4Value3 |
    block280e5dc4Value0 := block280e5dc4Arg1.
    block280e5dc4Value1 := (block280e5dc4Value0) at: (1).
    block280e5dc4Value2 := [
    | block280e5dc4Block10Value0 block280e5dc4Block10Value1 block280e5dc4Block10Value2 |
    block280e5dc4Block10Value0 := block280e5dc4Arg1.
    block280e5dc4Block10Value1 := (block280e5dc4Block10Value0) at: (1).
    block280e5dc4Block10Value2 := (block280e5dc4Block10Value1) refresh.
    block280e5dc4Block10Value2
].
    block280e5dc4Value3 := (block280e5dc4Value1) deferRedraw: (block280e5dc4Value2).
    block280e5dc4Value3
].
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5PC := 42.
        ].
        recoveredBlock5Step = 42 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) do: (recoveredBlock5Stack1).
            recoveredBlock5PC := 44.
        ].
        recoveredBlock5Step = 44 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack0.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) deferRedraw: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2031577c; bytecode file offset 0xc12048"
!ASDTreePane methodsFor: 'recovered'!
update: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) removeDependent: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack1 := [
    | recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := recoveredArg1.
            recoveredBlock25PC := 35.
        ].
        recoveredBlock25Step = 35 ifTrue: [
            recoveredBlock25Stack2 := ASDTreePane.
            recoveredBlock25PC := 37.
        ].
        recoveredBlock25Step = 37 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) = (recoveredBlock25Stack2).
            recoveredBlock25PC := 38.
        ].
        recoveredBlock25Step = 38 ifTrue: [
            (recoveredBlock25Stack1) ifTrue: [recoveredBlock25PC := 42] ifFalse: [recoveredBlock25PC := 48].
        ].
        recoveredBlock25Step = 42 ifTrue: [
            recoveredBlock25Stack1 := self.
            recoveredBlock25PC := 43.
        ].
        recoveredBlock25Step = 43 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) updateSearchButtons.
            recoveredBlock25PC := 44.
        ].
        recoveredBlock25Step = 44 ifTrue: [
            recoveredBlock25PC := 51.
        ].
        recoveredBlock25Step = 48 ifTrue: [
            recoveredBlock25Stack1 := self.
            recoveredBlock25PC := 49.
        ].
        recoveredBlock25Step = 49 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) updateTrees.
            recoveredBlock25PC := 51.
        ].
        recoveredBlock25Step = 51 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack1.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) suspendObserving: (recoveredStack1) notify: (recoveredStack2).
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

"ASDBase.ic method 0x2031e37c; bytecode file offset 0xc1ac6c"
!ASDTreePane methodsFor: 'recovered'!
activate
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := MainController.
    recoveredValue1 := (recoveredValue0) activeCaptionColor.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) widgetDictionary.
    recoveredValue3 := (recoveredValue2) at: ('outerForm').
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) backgroundColor: (recoveredValue5).
    (recoveredValue3) redrawWidget.
    recoveredValue6 := (self) widgetDictionary.
    recoveredValue7 := (recoveredValue6) at: ('paneLabel').
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue8) backgroundColor: (recoveredValue9).
    recoveredValue10 := recoveredValue7.
    recoveredValue11 := CgRGBColor.
    recoveredValue12 := OS.
    recoveredValue13 := ColorCaptiontext.
    recoveredValue14 := (recoveredValue12) getSysColor: (recoveredValue13).
    recoveredValue15 := (recoveredValue11) fromOSRGB: (recoveredValue14).
    (recoveredValue10) foregroundColor: (recoveredValue15).
    (recoveredValue7) redrawWidget.
    recoveredValue16 := (self) widgetDictionary.
    recoveredValue17 := (recoveredValue16) at: ('paneButton').
    recoveredValue18 := recoveredValue17.
    recoveredValue19 := recoveredLocal1.
    (recoveredValue18) backgroundColor: (recoveredValue19).
    (recoveredValue17) redrawWidget.
    ^self
! !

"ASDBase.ic method 0x20339828; bytecode file offset 0xc360f0"
!ASDTreePane methodsFor: 'recovered'!
refreshTree: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) trees.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) at: (1).
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEditingInProgress.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) refresh.
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

"ASDBase.ic method 0x20365c30; bytecode file offset 0xc6254c"
!ASDTreePane methodsFor: 'recovered'!
resizeTabStrip: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) selectedItems.
    recoveredValue2 := [
    ^self
].
    recoveredValue3 := (recoveredValue1) at: (1) ifAbsent: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) userData.
    recoveredValue6 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 recoveredBlock26Value4 recoveredBlock26Value5 recoveredBlock26Value6 recoveredBlock26Value7 recoveredBlock26Value8 recoveredBlock26Value9 recoveredBlock26Value10 recoveredBlock26Value11 recoveredBlock26Value12 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := recoveredBlock26Value0.
    recoveredBlock26Value2 := recoveredArg1.
    recoveredBlock26Value3 := (recoveredBlock26Value2) clientLeft.
    (recoveredBlock26Value1) x: (recoveredBlock26Value3).
    recoveredBlock26Value4 := recoveredBlock26Value0.
    recoveredBlock26Value5 := recoveredArg1.
    recoveredBlock26Value6 := (recoveredBlock26Value5) clientTop.
    (recoveredBlock26Value4) y: (recoveredBlock26Value6).
    recoveredBlock26Value7 := recoveredBlock26Value0.
    recoveredBlock26Value8 := recoveredArg1.
    recoveredBlock26Value9 := (recoveredBlock26Value8) clientWidth.
    (recoveredBlock26Value7) width: (recoveredBlock26Value9).
    recoveredBlock26Value10 := recoveredArg1.
    recoveredBlock26Value11 := (recoveredBlock26Value10) clientHeight.
    recoveredBlock26Value12 := (recoveredBlock26Value0) height: (recoveredBlock26Value11).
    recoveredBlock26Value12
].
    (recoveredValue5) setValuesBlock: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20373370; bytecode file offset 0xc6fc4c"
!ASDTreePane methodsFor: 'recovered'!
searchFieldKeyReleased: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := KeyRelease.
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
            recoveredStack1 := self.
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
            recoveredStack1 := (recoveredStack1) keysym.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := XKReturn.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 36].
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
            recoveredStack2 := (recoveredStack2) userData.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) searchMode.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) searchTreeItemIn: (recoveredStack2) mode: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) searchMode.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := ASDTreePaneTypeAheadSearch.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) character.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) character.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSeparator.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) userData.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := ASDTreePaneTypeAheadSearch.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) searchTreeItemIn: (recoveredStack2) mode: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a8514; bytecode file offset 0xca4e00"
!ASDTreePane methodsFor: 'recovered'!
inactivate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := (recoveredValue0) at: ('outerForm').
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := CgRGBColor.
    recoveredValue4 := OS.
    recoveredValue5 := ColorInactivecaption.
    recoveredValue6 := (recoveredValue4) getSysColor: (recoveredValue5).
    recoveredValue7 := (recoveredValue3) fromOSRGB: (recoveredValue6).
    (recoveredValue2) backgroundColor: (recoveredValue7).
    (recoveredValue1) redrawWidget.
    recoveredValue8 := (self) widgetDictionary.
    recoveredValue9 := (recoveredValue8) at: ('paneLabel').
    recoveredValue10 := recoveredValue9.
    recoveredValue11 := CgRGBColor.
    recoveredValue12 := OS.
    recoveredValue13 := ColorInactivecaption.
    recoveredValue14 := (recoveredValue12) getSysColor: (recoveredValue13).
    recoveredValue15 := (recoveredValue11) fromOSRGB: (recoveredValue14).
    (recoveredValue10) backgroundColor: (recoveredValue15).
    recoveredValue16 := recoveredValue9.
    recoveredValue17 := CgRGBColor.
    recoveredValue18 := OS.
    recoveredValue19 := ColorInactivecaptiontext.
    recoveredValue20 := (recoveredValue18) getSysColor: (recoveredValue19).
    recoveredValue21 := (recoveredValue17) fromOSRGB: (recoveredValue20).
    (recoveredValue16) foregroundColor: (recoveredValue21).
    (recoveredValue9) redrawWidget.
    recoveredValue22 := (self) widgetDictionary.
    recoveredValue23 := (recoveredValue22) at: ('paneButton').
    recoveredValue24 := recoveredValue23.
    recoveredValue25 := CgRGBColor.
    recoveredValue26 := OS.
    recoveredValue27 := ColorInactivecaption.
    recoveredValue28 := (recoveredValue26) getSysColor: (recoveredValue27).
    recoveredValue29 := (recoveredValue25) fromOSRGB: (recoveredValue28).
    (recoveredValue24) backgroundColor: (recoveredValue29).
    (recoveredValue23) redrawWidget.
    ^self
! !

"ASDBase.ic method 0x20429914; bytecode file offset 0xd2623c"
!ASDTreePane methodsFor: 'recovered'!
paneButtonExpose: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CgIndexedPalette.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := GCForeground.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := GCBackground.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) | (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := CgGCValues.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack6 := CgRGBColor.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack6 := (recoveredStack6) white.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack5 := (recoveredStack5) nearestPixelValue: (recoveredStack6).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack4) foreground: (recoveredStack5).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack5 := CgRGBColor.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack5 := (recoveredStack5) white.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := (recoveredStack4) nearestPixelValue: (recoveredStack5).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) background: (recoveredStack4).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) createGC: (recoveredStack2) values: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) resourceManager.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := CgRGBColor.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := OS.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) shell.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) hasFocus.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
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
            recoveredLocal2 := recoveredStack0.
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
            recoveredStack1 := recoveredLocal4.
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
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) drawIcon: (recoveredStack1) x: (recoveredStack2) y: (recoveredStack3) icon: (recoveredStack4).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) freeGC.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal2.
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

"ASDBase.ic method 0x204569c8; bytecode file offset 0xd532b4"
!ASDTreePane methodsFor: 'recovered'!
searchStartIndexFor: recoveredArg1 mode: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getWidget.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) userData.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedItemIndexes.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) lastSearchString.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := ASDTreePaneSearchOptions.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionStartSearchAtRoot.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) userData.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItemIndexes.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) lastSearchString.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) lastSearchString.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOfString: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 93].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := ASDTreePaneTypeAheadSearch.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 113].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) lastSearchString.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2046969c; bytecode file offset 0xd65fac"
!ASDTreePane methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) updateFonts.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) tabStrip.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Local1 recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9Stack4 recoveredBlock9Stack5 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 17.
        ].
        recoveredBlock9Step = 17 ifTrue: [
            recoveredBlock9Stack2 := self.
            recoveredBlock9PC := 18.
        ].
        recoveredBlock9Step = 18 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) tabStrip.
            recoveredBlock9PC := 19.
        ].
        recoveredBlock9Step = 19 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) selectedItems.
            recoveredBlock9PC := 20.
        ].
        recoveredBlock9Step = 20 ifTrue: [
            recoveredBlock9Stack3 := 1.
            recoveredBlock9PC := 22.
        ].
        recoveredBlock9Step = 22 ifTrue: [
            recoveredBlock9Stack4 := [].
            recoveredBlock9PC := 24.
        ].
        recoveredBlock9Step = 24 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) at: (recoveredBlock9Stack3) ifAbsent: (recoveredBlock9Stack4).
            recoveredBlock9PC := 26.
        ].
        recoveredBlock9Step = 26 ifTrue: [
            recoveredBlock9Stack3 := recoveredBlock9Stack2.
            recoveredBlock9PC := 27.
        ].
        recoveredBlock9Step = 27 ifTrue: [
            recoveredBlock9Local1 := recoveredBlock9Stack3.
            recoveredBlock9PC := 28.
        ].
        recoveredBlock9Step = 28 ifTrue: [
            (recoveredBlock9Stack2 == nil) ifTrue: [recoveredBlock9PC := 44] ifFalse: [recoveredBlock9PC := 32].
        ].
        recoveredBlock9Step = 32 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Local1.
            recoveredBlock9PC := 33.
        ].
        recoveredBlock9Step = 33 ifTrue: [
            recoveredBlock9Stack3 := recoveredBlock9Arg1.
            recoveredBlock9PC := 34.
        ].
        recoveredBlock9Step = 34 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) ~= (recoveredBlock9Stack3).
            recoveredBlock9PC := 35.
        ].
        recoveredBlock9Step = 35 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 38] ifFalse: [recoveredBlock9PC := 44].
        ].
        recoveredBlock9Step = 38 ifTrue: [
            recoveredBlock9PC := 39.
        ].
        recoveredBlock9Step = 39 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 40.
        ].
        recoveredBlock9Step = 40 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) userData.
            recoveredBlock9PC := 42.
        ].
        recoveredBlock9Step = 42 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) unmanageChild.
            recoveredBlock9PC := 44.
        ].
        recoveredBlock9Step = 44 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneToolBar.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) numItems.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneToolBar.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) tabStrip.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := XmATTACHFORM.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) bottomAttachment: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) trees.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := [:block28100e88Arg1 | 
    | block28100e88Stack0 block28100e88Stack1 block28100e88Stack2 block28100e88Stack3 block28100e88PC block28100e88Step block28100e88Done block28100e88Result |
    block28100e88Stack0 := self.
    block28100e88PC := 4.
    block28100e88Done := false.
    [block28100e88Done not] whileTrue: [
        block28100e88Step := block28100e88PC.
        block28100e88Step = 4 ifTrue: [
            block28100e88Stack1 := block28100e88Arg1.
            block28100e88PC := 5.
        ].
        block28100e88Step = 5 ifTrue: [
            block28100e88Stack2 := [:block28100eacArg1 | 
    | block28100eacStack0 block28100eacStack1 block28100eacStack2 block28100eacStack3 block28100eacPC block28100eacStep block28100eacDone block28100eacResult |
    block28100eacStack0 := self.
    block28100eacPC := 4.
    block28100eacDone := false.
    [block28100eacDone not] whileTrue: [
        block28100eacStep := block28100eacPC.
        block28100eacStep = 4 ifTrue: [
            block28100eacStack1 := block28100eacArg1.
            block28100eacPC := 5.
        ].
        block28100eacStep = 5 ifTrue: [
            block28100eacStack2 := [:block28100ed0Arg1 | 
    | block28100ed0Stack0 block28100ed0Stack1 block28100ed0Stack2 block28100ed0Stack3 block28100ed0Stack4 block28100ed0PC block28100ed0Step block28100ed0Done block28100ed0Result |
    block28100ed0Stack0 := self.
    block28100ed0PC := 4.
    block28100ed0Done := false.
    [block28100ed0Done not] whileTrue: [
        block28100ed0Step := block28100ed0PC.
        block28100ed0Step = 4 ifTrue: [
            block28100ed0Stack1 := block28100ed0Arg1.
            block28100ed0PC := 5.
        ].
        block28100ed0Step = 5 ifTrue: [
            block28100ed0Stack2 := 1.
            block28100ed0PC := 7.
        ].
        block28100ed0Step = 7 ifTrue: [
            block28100ed0Stack3 := [:block28100ef4Arg1 | 
    | block28100ef4Value0 block28100ef4Value1 |
    block28100ef4Value0 := block28100ef4Arg1.
    block28100ef4Value1 := (block28100ef4Value0) addHoverSupport.
    block28100ef4Value1
].
            block28100ed0PC := 9.
        ].
        block28100ed0Step = 9 ifTrue: [
            block28100ed0PC := 16.
        ].
        block28100ed0Step = 16 ifTrue: [
            block28100ed0Stack1 := (block28100ed0Stack1) at: (block28100ed0Stack2) ifPresent: (block28100ed0Stack3).
            block28100ed0PC := 18.
        ].
        block28100ed0Step = 18 ifTrue: [
            block28100ed0Result := block28100ed0Stack1.
            block28100ed0Done := true.
        ].
    ].
    block28100ed0Result
].
            block28100eacPC := 7.
        ].
        block28100eacStep = 7 ifTrue: [
            block28100eacPC := 25.
        ].
        block28100eacStep = 25 ifTrue: [
            block28100eacStack1 := (block28100eacStack1) ifNotNil: (block28100eacStack2).
            block28100eacPC := 27.
        ].
        block28100eacStep = 27 ifTrue: [
            block28100eacResult := block28100eacStack1.
            block28100eacDone := true.
        ].
    ].
    block28100eacResult
].
            block28100e88PC := 7.
        ].
        block28100e88Step = 7 ifTrue: [
            block28100e88PC := 34.
        ].
        block28100e88Step = 34 ifTrue: [
            block28100e88Stack1 := (block28100e88Stack1) do: (block28100e88Stack2).
            block28100e88PC := 36.
        ].
        block28100e88Step = 36 ifTrue: [
            block28100e88Result := block28100e88Stack1.
            block28100e88Done := true.
        ].
    ].
    block28100e88Result
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) addDependent: (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204fdfac; bytecode file offset 0xdfa890"
!ASDTreePane methodsFor: 'recovered'!
findItemMatching: recoveredArg1 in: recoveredArg2 starting: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) allVisibleItems.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := (recoveredStack3) newNodeAt: (recoveredStack4) top: (recoveredStack5).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := (recoveredStack4) label.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := (recoveredStack4) asLowercase.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := (recoveredStack3) match: (recoveredStack4).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := (recoveredStack3) > (recoveredStack4).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack3
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 26] ifFalse: [recoveredPC := 107]] ifFalse: [recoveredPC := 81].
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 103] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) lastSearchStringFound.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 137].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) allExpandedInList: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 137] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) findItemMatching: (recoveredStack2) in: (recoveredStack3) starting: (recoveredStack4).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := [:recoveredBlock149Arg1 | 
    | recoveredBlock149Value0 |
    recoveredBlock149Value0 := recoveredBlock149Arg1.
    ^recoveredBlock149Value0
].
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) allExpandedInList: (recoveredStack1).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 173] ifFalse: [recoveredPC := 170].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2052dc44; bytecode file offset 0xe2a594"
!ASDTreePane methodsFor: 'recovered'!
createSearchGroupFor: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 |
    recoveredValue0 := recoveredArg2.
    (recoveredValue0) createSeparator.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := ('TreePaneSearch') asString.
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 recoveredBlock15Value6 recoveredBlock15Value7 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := recoveredBlock15Value0.
    recoveredBlock15Value2 := (self) searchButtonIcon.
    (recoveredBlock15Value1) image: (recoveredBlock15Value2).
    recoveredBlock15Value3 := recoveredBlock15Value0.
    recoveredBlock15Value4 := [
    | recoveredBlock15Block29Value0 recoveredBlock15Block29Value1 |
    recoveredBlock15Block29Value0 := recoveredArg1.
    recoveredBlock15Block29Value1 := (self) openTreePaneSearchDialogFor: (recoveredBlock15Block29Value0).
    recoveredBlock15Block29Value1
].
    (recoveredBlock15Value3) userData: (recoveredBlock15Value4).
    recoveredBlock15Value5 := recoveredBlock15Value0.
    recoveredBlock15Value6 := ('Open Search Dialog') withCrs.
    (recoveredBlock15Value5) toolTipText: (recoveredBlock15Value6).
    recoveredBlock15Value7 := (recoveredBlock15Value0) addCallback: ('pressedCallback') receiver: (self) selector: ('toolbarSelection:clientData:callData:') clientData: (self).
    recoveredBlock15Value7
].
    recoveredValue4 := (recoveredValue1) createToolButton: (recoveredValue2) argBlock: (recoveredValue3).
    recoveredValue5 := recoveredValue4.
    recoveredLocal2 := recoveredValue5.
    (recoveredValue4) manageChild.
    recoveredValue6 := (self) searchButtons.
    recoveredValue7 := recoveredLocal2.
    (recoveredValue6) add: (recoveredValue7).
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := [:recoveredBlock81Arg1 | 
    | recoveredBlock81Value0 recoveredBlock81Value1 recoveredBlock81Value2 recoveredBlock81Value3 recoveredBlock81Value4 |
    recoveredBlock81Value0 := recoveredBlock81Arg1.
    recoveredBlock81Value1 := recoveredBlock81Value0.
    (recoveredBlock81Value1) height: (20).
    recoveredBlock81Value2 := recoveredBlock81Value0.
    (recoveredBlock81Value2) width: (100).
    recoveredBlock81Value3 := recoveredArg1.
    recoveredBlock81Value4 := (recoveredBlock81Value0) userData: (recoveredBlock81Value3).
    recoveredBlock81Value4
].
    recoveredValue10 := (recoveredValue8) createTobTBCombo: ('inputField') argBlock: (recoveredValue9).
    recoveredValue11 := recoveredValue10.
    recoveredLocal1 := recoveredValue11.
    (recoveredValue10) manageChild.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue12) getWidget.
    recoveredValue14 := recoveredValue13.
    recoveredValue15 := (self) searchStrings.
    (recoveredValue14) items: (recoveredValue15).
    recoveredValue16 := recoveredValue13.
    (recoveredValue16) visibleItemCount: (10).
    recoveredValue17 := recoveredValue13.
    recoveredValue18 := CgRGBColor.
    recoveredValue19 := (recoveredValue18) lightGray.
    (recoveredValue17) foregroundColor: (recoveredValue19).
    (recoveredValue13) editable: (true).
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := recoveredLocal1.
    (recoveredValue20) userData: (recoveredValue21).
    recoveredValue22 := recoveredLocal1.
    recoveredValue23 := (recoveredValue22) getWidget.
    recoveredValue24 := recoveredValue23.
    recoveredValue25 := KeyReleaseMask.
    recoveredValue26 := recoveredArg1.
    (recoveredValue24) addEventHandler: (recoveredValue25) receiver: (self) selector: ('searchFieldKeyReleased:clientData:callData:') clientData: (recoveredValue26).
    recoveredValue27 := recoveredValue23.
    recoveredValue28 := XmNfocusCallback.
    (recoveredValue27) addCallback: (recoveredValue28) receiver: (self) selector: ('focusSearchInput:clientData:callData:') clientData: (nil).
    recoveredValue29 := XmNlosingFocusCallback.
    (recoveredValue23) addCallback: (recoveredValue29) receiver: (self) selector: ('losingFocusSearchInput:clientData:callData:') clientData: (false).
    recoveredValue30 := recoveredLocal1.
    recoveredValue31 := (recoveredValue30) getWidget.
    (recoveredValue31) setString: ('Search...').
    recoveredValue32 := recoveredLocal1.
    (recoveredValue32) addTabGroup.
    recoveredValue33 := recoveredLocal1.
    ^recoveredValue33
! !

"ASDBase.ic method 0x2054aa90; bytecode file offset 0xe473d8"
!ASDTreePane methodsFor: 'recovered'!
searchTreeItemIn: recoveredArg1 mode: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getWidget.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := ASDTreePaneTypeAheadSearch.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'search...'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) equalsIgnoringCase: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := ASDTreePaneTypeAheadSearch.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) getWidget.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) searchStrings.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack2) items: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) searchTreeItem: (recoveredStack1) mode: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := ASDTreePaneTypeAheadSearch.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := ASDTreePaneWildcardSearch.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 95].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := '\ \Note: You can use * and ? as wildcard characters.'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := EtasUserQuestion.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := 'No such item found!!\Repeat the search with expanded tree?'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := 'ASDSearchExpandedTreePane'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) prompterID: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := 'YESNO'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) buttonStyle: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := 'question'.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) userData.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) expandAll.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := 'The number of nodes in the tree has exceeded the limit of %1 items.\ASCET has not expanded the tree completely to prevent the system from running out of memory.'.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := '\ \Note: Items in unexpanded nodes have not been included in the search!!'.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := ASDGeneralOptions.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := (recoveredStack2) instance.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionMaxTreeExpandLevel.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) getWidget.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) lastSearchString: (recoveredStack1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) searchTreeItem: (recoveredStack1) mode: (recoveredStack2).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredPC := 190.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := (recoveredStack0) getWidget.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 217].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := 'No such item found!!'.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2054f7f8; bytecode file offset 0xe4c0e4"
!ASDTreePane methodsFor: 'recovered'!
findItemMatching: recoveredArg1 in: recoveredArg2 starting: recoveredArg3 progress: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) allVisibleItems.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 124.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := (recoveredStack3) newNodeAt: (recoveredStack4) top: (recoveredStack5).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := (recoveredStack4) label.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := (recoveredStack4) asLowercase.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := (recoveredStack3) match: (recoveredStack4).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := (recoveredStack3) > (recoveredStack4).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack3
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack4 := 1000.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := (recoveredStack3) \\ (recoveredStack4).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := [:recoveredBlock95Arg1 | 
    | recoveredBlock95Value0 recoveredBlock95Value1 recoveredBlock95Value2 recoveredBlock95Value3 recoveredBlock95Value4 recoveredBlock95Value5 recoveredBlock95Value6 |
    recoveredBlock95Value0 := recoveredBlock95Arg1.
    recoveredBlock95Value1 := recoveredArg3.
    recoveredBlock95Value2 := recoveredLocal2.
    recoveredBlock95Value3 := (recoveredBlock95Value1) + (recoveredBlock95Value2).
    recoveredBlock95Value4 := recoveredLocal3.
    recoveredBlock95Value5 := (recoveredBlock95Value3) / (recoveredBlock95Value4).
    recoveredBlock95Value6 := (recoveredBlock95Value0) fractionComplete: (recoveredBlock95Value5).
    recoveredBlock95Value6
].
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack3) ifNotNil: (recoveredStack4).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 26] ifFalse: [recoveredPC := 153]] ifFalse: [recoveredPC := 127].
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 149] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 164] ifFalse: [recoveredPC := 210].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) lastSearchStringFound.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 183].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) allExpandedInList: (recoveredStack2).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 183] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) findItemMatching: (recoveredStack2) in: (recoveredStack3) starting: (recoveredStack4) progress: (recoveredStack5).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := [:recoveredBlock198Arg1 | 
    | recoveredBlock198Value0 |
    recoveredBlock198Value0 := recoveredBlock198Arg1.
    ^recoveredBlock198Value0
].
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := (recoveredStack0) allExpandedInList: (recoveredStack1).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 221] ifFalse: [recoveredPC := 218].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205b7b28; bytecode file offset 0xeb4484"
!ASDTreePane methodsFor: 'recovered'!
createWorkspaceTreePage: recoveredArg1 icon: recoveredArg2 elements: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) tabStrip.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 'Tab'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredBlock11Value0.
    recoveredBlock11Value2 := recoveredArg1.
    (recoveredBlock11Value1) labelString: (recoveredBlock11Value2).
    recoveredBlock11Value3 := (self) resourceManager.
    recoveredBlock11Value4 := recoveredArg2.
    recoveredBlock11Value5 := (recoveredBlock11Value3) returnIcon16WithName: (recoveredBlock11Value4).
    recoveredBlock11Value6 := (recoveredBlock11Value0) image: (recoveredBlock11Value5).
    recoveredBlock11Value6
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) createTab: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 'Tab'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAtom.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) tabStrip.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) userData: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := 'ToolBarDockingArea'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := [:block281172bcArg1 | 
    | block281172bcValue0 block281172bcValue1 |
    block281172bcValue0 := block281172bcArg1.
    block281172bcValue1 := (block281172bcValue0) barsFixed.
    block281172bcValue1
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) createTobTBDockingArea: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 'ToolBarDockingArea'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := 'ToolBar'.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := [:block281172e0Arg1 | 
    | block281172e0Value0 block281172e0Value1 |
    block281172e0Value0 := block281172e0Arg1.
    block281172e0Value1 := (block281172e0Value0) height: (24).
    block281172e0Value1
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) createTobTBBar: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := 'ToolBar'.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAtom.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := 'TreeList'.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasDatabaseWidget: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := 'TreeList'.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAtom.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := [:block28117304Arg1 | 
    | block28117304Value0 block28117304Value1 block28117304Value2 block28117304Value3 block28117304Value4 block28117304Value5 block28117304Value6 block28117304Value7 block28117304Value8 block28117304Value9 |
    block28117304Value0 := block28117304Arg1.
    block28117304Value1 := block28117304Value0.
    block28117304Value2 := XmATTACHFORM.
    (block28117304Value1) topAttachment: (block28117304Value2).
    block28117304Value3 := block28117304Value0.
    (block28117304Value3) topOffset: (0).
    block28117304Value4 := block28117304Value0.
    block28117304Value5 := XmATTACHFORM.
    (block28117304Value4) leftAttachment: (block28117304Value5).
    block28117304Value6 := block28117304Value0.
    (block28117304Value6) leftOffset: (0).
    block28117304Value7 := block28117304Value0.
    block28117304Value8 := XmATTACHFORM.
    (block28117304Value7) rightAttachment: (block28117304Value8).
    block28117304Value9 := (block28117304Value0) rightOffset: (0).
    block28117304Value9
].
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := [:recoveredBlock238Arg1 | 
    | recoveredBlock238Value0 recoveredBlock238Value1 recoveredBlock238Value2 recoveredBlock238Value3 recoveredBlock238Value4 recoveredBlock238Value5 recoveredBlock238Value6 recoveredBlock238Value7 recoveredBlock238Value8 recoveredBlock238Value9 recoveredBlock238Value10 recoveredBlock238Value11 recoveredBlock238Value12 recoveredBlock238Value13 recoveredBlock238Value14 |
    recoveredBlock238Value0 := recoveredBlock238Arg1.
    recoveredBlock238Value1 := recoveredBlock238Value0.
    recoveredBlock238Value2 := XmATTACHFORM.
    (recoveredBlock238Value1) bottomAttachment: (recoveredBlock238Value2).
    recoveredBlock238Value3 := recoveredBlock238Value0.
    (recoveredBlock238Value3) bottomOffset: (0).
    recoveredBlock238Value4 := recoveredBlock238Value0.
    recoveredBlock238Value5 := XmATTACHWIDGET.
    (recoveredBlock238Value4) topAttachment: (recoveredBlock238Value5).
    recoveredBlock238Value6 := recoveredBlock238Value0.
    recoveredBlock238Value7 := recoveredLocal1.
    (recoveredBlock238Value6) topWidget: (recoveredBlock238Value7).
    recoveredBlock238Value8 := recoveredBlock238Value0.
    (recoveredBlock238Value8) topOffset: (0).
    recoveredBlock238Value9 := recoveredBlock238Value0.
    recoveredBlock238Value10 := XmATTACHFORM.
    (recoveredBlock238Value9) leftAttachment: (recoveredBlock238Value10).
    recoveredBlock238Value11 := recoveredBlock238Value0.
    (recoveredBlock238Value11) leftOffset: (0).
    recoveredBlock238Value12 := recoveredBlock238Value0.
    recoveredBlock238Value13 := XmATTACHFORM.
    (recoveredBlock238Value12) rightAttachment: (recoveredBlock238Value13).
    recoveredBlock238Value14 := (recoveredBlock238Value0) rightOffset: (0).
    recoveredBlock238Value14
].
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := (recoveredStack0) trees.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205b8918; bytecode file offset 0xeb524c"
!ASDTreePane methodsFor: 'recovered'!
searchTreeItem: recoveredArg1 mode: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getWidget.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := ASDTreePaneTypeAheadSearch.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) lastSearchString.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOfString: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) lastSearchString.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) lastSearchString.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) lastSearchStringFound.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := '?*'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesAny: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := ASDTreePaneSimpleSearch.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := ASDTreePaneWildcardSearch.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) searchTreeItem: (recoveredStack2) mode: (recoveredStack3).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := ASDTreePaneWildcardSearch.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := $?.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := '#'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) replace: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredPC := 162.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := ASDTreePaneSimpleSearch.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := '*'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := '*'.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredPC := 162.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := '*'.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := (recoveredStack0) searchStartIndexFor: (recoveredStack1) mode: (recoveredStack2).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock175Value0 recoveredBlock175Value1 recoveredBlock175Value2 recoveredBlock175Value3 recoveredBlock175Value4 recoveredBlock175Value5 |
    recoveredBlock175Value0 := recoveredLocal2.
    recoveredBlock175Value1 := recoveredArg1.
    recoveredBlock175Value2 := (recoveredBlock175Value1) userData.
    recoveredBlock175Value3 := recoveredLocal1.
    recoveredBlock175Value4 := (self) findItemMatching: (recoveredBlock175Value0) in: (recoveredBlock175Value2) starting: (recoveredBlock175Value3).
    recoveredBlock175Value5 := recoveredBlock175Value4.
    recoveredLocal4 := recoveredBlock175Value5.
    recoveredBlock175Value4
].
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack0) showBusyCursorWhile: (recoveredStack1).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := [
    (self) lastSearchStringFound: (false).
    ^nil
].
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 228] ifFalse: [recoveredPC := 235].
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack0) lastSearchStringFound: (recoveredStack1).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := ASDTreePaneTypeAheadSearch.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 244] ifFalse: [recoveredPC := 259].
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack0) addTreePaneSearchString: (recoveredStack1).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := (recoveredStack0) getWidget.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := (recoveredStack0) userData.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItemIndexes.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 272] ifFalse: [recoveredPC := 295].
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack0 := (recoveredStack0) userData.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItemIndexes.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 288] ifFalse: [recoveredPC := 295].
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack0 := (recoveredStack0) userData.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            (recoveredStack0) deselectAllItems.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack0 := (recoveredStack0) userData.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            (recoveredStack0) selectPos: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack0) lastSearchString: (recoveredStack1).
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            (recoveredStack0) lastSearchStringFound: (recoveredStack1).
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205dee24; bytecode file offset 0xedb7b0"
!ASDTreePane methodsFor: 'recovered'!
createTreePage: recoveredArg1 icon: recoveredArg2 elements: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) tabStrip.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 'Tab'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredBlock11Value0.
    recoveredBlock11Value2 := recoveredArg1.
    (recoveredBlock11Value1) labelString: (recoveredBlock11Value2).
    recoveredBlock11Value3 := (self) resourceManager.
    recoveredBlock11Value4 := recoveredArg2.
    recoveredBlock11Value5 := (recoveredBlock11Value3) returnIcon16WithName: (recoveredBlock11Value4).
    recoveredBlock11Value6 := (recoveredBlock11Value0) image: (recoveredBlock11Value5).
    recoveredBlock11Value6
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) createTab: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 'Tab'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAtom.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) tabStrip.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) userData: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := 'ToolBarDockingArea'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := [:block2811a220Arg1 | 
    | block2811a220Value0 block2811a220Value1 |
    block2811a220Value0 := block2811a220Arg1.
    block2811a220Value1 := (block2811a220Value0) barsFixed.
    block2811a220Value1
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) createTobTBDockingArea: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 'ToolBarDockingArea'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := 'ToolBar'.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := [:block2811a244Arg1 | 
    | block2811a244Value0 block2811a244Value1 |
    block2811a244Value0 := block2811a244Arg1.
    block2811a244Value1 := (block2811a244Value0) height: (24).
    block2811a244Value1
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) createTobTBBar: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := 'ToolBar'.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAtom.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := 'TreeList'.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := [:recoveredBlock170Arg1 | 
    | recoveredBlock170Value0 recoveredBlock170Value1 recoveredBlock170Value2 recoveredBlock170Value3 recoveredBlock170Value4 recoveredBlock170Value5 recoveredBlock170Value6 recoveredBlock170Value7 recoveredBlock170Value8 recoveredBlock170Value9 recoveredBlock170Value10 recoveredBlock170Value11 |
    recoveredBlock170Value0 := recoveredBlock170Arg1.
    recoveredBlock170Value1 := recoveredBlock170Value0.
    recoveredBlock170Value2 := (self) userInterface.
    recoveredBlock170Value3 := (recoveredBlock170Value2) iconHierarchyPolicy.
    (recoveredBlock170Value1) hierarchyPolicy: (recoveredBlock170Value3).
    recoveredBlock170Value4 := recoveredBlock170Value0.
    recoveredBlock170Value5 := XmEXTENDEDSELECT.
    (recoveredBlock170Value4) selectionPolicy: (recoveredBlock170Value5).
    recoveredBlock170Value6 := recoveredBlock170Value0.
    recoveredBlock170Value7 := XmTOGETHER.
    (recoveredBlock170Value6) emphasisPolicy: (recoveredBlock170Value7).
    recoveredBlock170Value8 := recoveredBlock170Value0.
    (recoveredBlock170Value8) checkCycles: (true).
    recoveredBlock170Value9 := recoveredArg3.
    recoveredBlock170Value10 := (recoveredBlock170Value9) value.
    recoveredBlock170Value11 := (recoveredBlock170Value0) items: (recoveredBlock170Value10).
    recoveredBlock170Value11
].
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasScrolledIconTree: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := 'scrolledTree'.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := 'TreeList'.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAtom.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := [:block2811a268Arg1 | 
    | block2811a268Value0 block2811a268Value1 block2811a268Value2 block2811a268Value3 block2811a268Value4 block2811a268Value5 block2811a268Value6 block2811a268Value7 block2811a268Value8 block2811a268Value9 |
    block2811a268Value0 := block2811a268Arg1.
    block2811a268Value1 := block2811a268Value0.
    block2811a268Value2 := XmATTACHFORM.
    (block2811a268Value1) topAttachment: (block2811a268Value2).
    block2811a268Value3 := block2811a268Value0.
    (block2811a268Value3) topOffset: (0).
    block2811a268Value4 := block2811a268Value0.
    block2811a268Value5 := XmATTACHFORM.
    (block2811a268Value4) leftAttachment: (block2811a268Value5).
    block2811a268Value6 := block2811a268Value0.
    (block2811a268Value6) leftOffset: (0).
    block2811a268Value7 := block2811a268Value0.
    block2811a268Value8 := XmATTACHFORM.
    (block2811a268Value7) rightAttachment: (block2811a268Value8).
    block2811a268Value9 := (block2811a268Value0) rightOffset: (0).
    block2811a268Value9
].
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := [:recoveredBlock292Arg1 | 
    | recoveredBlock292Value0 recoveredBlock292Value1 recoveredBlock292Value2 recoveredBlock292Value3 recoveredBlock292Value4 recoveredBlock292Value5 recoveredBlock292Value6 recoveredBlock292Value7 recoveredBlock292Value8 recoveredBlock292Value9 recoveredBlock292Value10 recoveredBlock292Value11 recoveredBlock292Value12 recoveredBlock292Value13 recoveredBlock292Value14 |
    recoveredBlock292Value0 := recoveredBlock292Arg1.
    recoveredBlock292Value1 := recoveredBlock292Value0.
    recoveredBlock292Value2 := XmATTACHFORM.
    (recoveredBlock292Value1) bottomAttachment: (recoveredBlock292Value2).
    recoveredBlock292Value3 := recoveredBlock292Value0.
    (recoveredBlock292Value3) bottomOffset: (0).
    recoveredBlock292Value4 := recoveredBlock292Value0.
    recoveredBlock292Value5 := XmATTACHWIDGET.
    (recoveredBlock292Value4) topAttachment: (recoveredBlock292Value5).
    recoveredBlock292Value6 := recoveredBlock292Value0.
    recoveredBlock292Value7 := recoveredLocal2.
    (recoveredBlock292Value6) topWidget: (recoveredBlock292Value7).
    recoveredBlock292Value8 := recoveredBlock292Value0.
    (recoveredBlock292Value8) topOffset: (0).
    recoveredBlock292Value9 := recoveredBlock292Value0.
    recoveredBlock292Value10 := XmATTACHFORM.
    (recoveredBlock292Value9) leftAttachment: (recoveredBlock292Value10).
    recoveredBlock292Value11 := recoveredBlock292Value0.
    (recoveredBlock292Value11) leftOffset: (0).
    recoveredBlock292Value12 := recoveredBlock292Value0.
    recoveredBlock292Value13 := XmATTACHFORM.
    (recoveredBlock292Value12) rightAttachment: (recoveredBlock292Value13).
    recoveredBlock292Value14 := (recoveredBlock292Value0) rightOffset: (0).
    recoveredBlock292Value14
].
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack0 := (recoveredStack0) trees.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206111c0; bytecode file offset 0xf0db0c"
!ASDTreePane methodsFor: 'recovered'!
updateTree: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) trees.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) at: (1).
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDatabaseWidget.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEditingInProgress.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) topItemPosition.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) hierarchy.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredPC := 139.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := (recoveredStack2) hierarchy.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) itemIsExpandedAt: (recoveredStack3).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 139].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack4 := (recoveredStack4) hierarchy.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 102] ifFalse: [recoveredPC := 167]] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 163] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredPC := 105.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItemIndexes.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := [:recoveredBlock180Arg1 | 
    | recoveredBlock180Value0 recoveredBlock180Value1 recoveredBlock180Value2 recoveredBlock180Value3 |
    recoveredBlock180Value0 := recoveredBlock180Arg1.
    recoveredBlock180Value1 := recoveredLocal7.
    recoveredBlock180Value2 := (recoveredBlock180Value1) itemCount.
    recoveredBlock180Value3 := (recoveredBlock180Value0) <= (recoveredBlock180Value2).
    recoveredBlock180Value3
].
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := [:recoveredBlock196Arg1 | 
    | recoveredBlock196Value0 recoveredBlock196Value1 recoveredBlock196Value2 recoveredBlock196Value3 recoveredBlock196Value4 recoveredBlock196Value5 |
    recoveredBlock196Value0 := recoveredLocal4.
    recoveredBlock196Value1 := recoveredBlock196Arg1.
    recoveredBlock196Value2 := recoveredLocal7.
    recoveredBlock196Value3 := recoveredBlock196Arg1.
    recoveredBlock196Value4 := (recoveredBlock196Value2) getItemPos: (recoveredBlock196Value3).
    recoveredBlock196Value5 := (recoveredBlock196Value0) at: (recoveredBlock196Value1) put: (recoveredBlock196Value4).
    recoveredBlock196Value5
].
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 234] ifFalse: [recoveredPC := 258].
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 242] ifFalse: [recoveredPC := 258].
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := [:recoveredBlock261Arg1 | 
    | recoveredBlock261Local1 recoveredBlock261Stack0 recoveredBlock261Stack1 recoveredBlock261Stack2 recoveredBlock261Stack3 recoveredBlock261Stack4 recoveredBlock261PC recoveredBlock261Step recoveredBlock261Done recoveredBlock261Result |
    recoveredBlock261Stack0 := self.
    recoveredBlock261PC := 268.
    recoveredBlock261Done := false.
    [recoveredBlock261Done not] whileTrue: [
        recoveredBlock261Step := recoveredBlock261PC.
        recoveredBlock261Step = 268 ifTrue: [
            recoveredBlock261Stack1 := recoveredLocal7.
            recoveredBlock261PC := 271.
        ].
        recoveredBlock261Step = 271 ifTrue: [
            recoveredBlock261Stack2 := recoveredBlock261Arg1.
            recoveredBlock261PC := 272.
        ].
        recoveredBlock261Step = 272 ifTrue: [
            recoveredBlock261Stack3 := 1.
            recoveredBlock261PC := 274.
        ].
        recoveredBlock261Step = 274 ifTrue: [
            recoveredBlock261Stack2 := (recoveredBlock261Stack2) at: (recoveredBlock261Stack3).
            recoveredBlock261PC := 275.
        ].
        recoveredBlock261Step = 275 ifTrue: [
            recoveredBlock261Stack1 := (recoveredBlock261Stack1) indexOfItem: (recoveredBlock261Stack2).
            recoveredBlock261PC := 277.
        ].
        recoveredBlock261Step = 277 ifTrue: [
            recoveredBlock261Stack2 := recoveredBlock261Stack1.
            recoveredBlock261PC := 278.
        ].
        recoveredBlock261Step = 278 ifTrue: [
            recoveredBlock261Local1 := recoveredBlock261Stack2.
            recoveredBlock261PC := 279.
        ].
        recoveredBlock261Step = 279 ifTrue: [
            recoveredBlock261Stack2 := 0.
            recoveredBlock261PC := 281.
        ].
        recoveredBlock261Step = 281 ifTrue: [
            recoveredBlock261Stack1 := (recoveredBlock261Stack1) = (recoveredBlock261Stack2).
            recoveredBlock261PC := 282.
        ].
        recoveredBlock261Step = 282 ifTrue: [
            (recoveredBlock261Stack1) ifTrue: [recoveredBlock261PC := 286] ifFalse: [recoveredBlock261PC := 332].
        ].
        recoveredBlock261Step = 286 ifTrue: [
            recoveredBlock261Stack1 := nil.
            recoveredBlock261PC := 287.
        ].
        recoveredBlock261Step = 287 ifTrue: [
            recoveredBlock261Stack2 := recoveredBlock261Arg1.
            recoveredBlock261PC := 288.
        ].
        recoveredBlock261Step = 288 ifTrue: [
            recoveredBlock261Stack3 := 2.
            recoveredBlock261PC := 290.
        ].
        recoveredBlock261Step = 290 ifTrue: [
            recoveredBlock261Stack2 := (recoveredBlock261Stack2) at: (recoveredBlock261Stack3).
            recoveredBlock261PC := 291.
        ].
        recoveredBlock261Step = 291 ifTrue: [
            recoveredBlock261Stack3 := 1.
            recoveredBlock261PC := 293.
        ].
        recoveredBlock261Step = 293 ifTrue: [
            recoveredBlock261Stack2 := (recoveredBlock261Stack2) = (recoveredBlock261Stack3).
            recoveredBlock261PC := 294.
        ].
        recoveredBlock261Step = 294 ifTrue: [
            (recoveredBlock261Stack2) ifTrue: [recoveredBlock261PC := 298] ifFalse: [recoveredBlock261PC := 329].
        ].
        recoveredBlock261Step = 298 ifTrue: [
            recoveredBlock261PC := 299.
        ].
        recoveredBlock261Step = 299 ifTrue: [
            recoveredBlock261Stack1 := recoveredLocal7.
            recoveredBlock261PC := 302.
        ].
        recoveredBlock261Step = 302 ifTrue: [
            recoveredBlock261Stack2 := 1.
            recoveredBlock261PC := 304.
        ].
        recoveredBlock261Step = 304 ifTrue: [
            (recoveredBlock261Stack1) setPos: (recoveredBlock261Stack2).
            recoveredBlock261PC := 306.
        ].
        recoveredBlock261Step = 306 ifTrue: [
            recoveredBlock261Stack1 := nil.
            recoveredBlock261PC := 307.
        ].
        recoveredBlock261Step = 307 ifTrue: [
            recoveredBlock261Stack2 := recoveredLocal7.
            recoveredBlock261PC := 310.
        ].
        recoveredBlock261Step = 310 ifTrue: [
            recoveredBlock261Stack2 := (recoveredBlock261Stack2) items.
            recoveredBlock261PC := 312.
        ].
        recoveredBlock261Step = 312 ifTrue: [
            recoveredBlock261Stack2 := (recoveredBlock261Stack2) size.
            recoveredBlock261PC := 314.
        ].
        recoveredBlock261Step = 314 ifTrue: [
            recoveredBlock261Stack3 := 0.
            recoveredBlock261PC := 316.
        ].
        recoveredBlock261Step = 316 ifTrue: [
            recoveredBlock261Stack2 := (recoveredBlock261Stack2) > (recoveredBlock261Stack3).
            recoveredBlock261PC := 317.
        ].
        recoveredBlock261Step = 317 ifTrue: [
            (recoveredBlock261Stack2) ifTrue: [recoveredBlock261PC := 320] ifFalse: [recoveredBlock261PC := 329].
        ].
        recoveredBlock261Step = 320 ifTrue: [
            recoveredBlock261PC := 321.
        ].
        recoveredBlock261Step = 321 ifTrue: [
            recoveredBlock261Stack1 := recoveredLocal7.
            recoveredBlock261PC := 324.
        ].
        recoveredBlock261Step = 324 ifTrue: [
            recoveredBlock261Stack2 := 1.
            recoveredBlock261PC := 326.
        ].
        recoveredBlock261Step = 326 ifTrue: [
            recoveredBlock261Stack3 := true.
            recoveredBlock261PC := 327.
        ].
        recoveredBlock261Step = 327 ifTrue: [
            recoveredBlock261Stack1 := (recoveredBlock261Stack1) expandPos: (recoveredBlock261Stack2) notify: (recoveredBlock261Stack3).
            recoveredBlock261PC := 329.
        ].
        recoveredBlock261Step = 329 ifTrue: [
            recoveredBlock261PC := 369.
        ].
        recoveredBlock261Step = 332 ifTrue: [
            recoveredBlock261Stack1 := recoveredLocal7.
            recoveredBlock261PC := 335.
        ].
        recoveredBlock261Step = 335 ifTrue: [
            recoveredBlock261Stack1 := (recoveredBlock261Stack1) hierarchy.
            recoveredBlock261PC := 337.
        ].
        recoveredBlock261Step = 337 ifTrue: [
            recoveredBlock261Stack2 := recoveredBlock261Local1.
            recoveredBlock261PC := 338.
        ].
        recoveredBlock261Step = 338 ifTrue: [
            recoveredBlock261Stack1 := (recoveredBlock261Stack1) itemIsExpandedAt: (recoveredBlock261Stack2).
            recoveredBlock261PC := 340.
        ].
        recoveredBlock261Step = 340 ifTrue: [
            (recoveredBlock261Stack1) ifTrue: [recoveredBlock261PC := 344] ifFalse: [recoveredBlock261PC := 351].
        ].
        recoveredBlock261Step = 344 ifTrue: [
            recoveredBlock261Stack1 := recoveredLocal7.
            recoveredBlock261PC := 347.
        ].
        recoveredBlock261Step = 347 ifTrue: [
            recoveredBlock261Stack2 := recoveredBlock261Local1.
            recoveredBlock261PC := 348.
        ].
        recoveredBlock261Step = 348 ifTrue: [
            recoveredBlock261Stack3 := true.
            recoveredBlock261PC := 349.
        ].
        recoveredBlock261Step = 349 ifTrue: [
            (recoveredBlock261Stack1) collapsePos: (recoveredBlock261Stack2) notify: (recoveredBlock261Stack3).
            recoveredBlock261PC := 351.
        ].
        recoveredBlock261Step = 351 ifTrue: [
            recoveredBlock261Stack1 := recoveredLocal7.
            recoveredBlock261PC := 354.
        ].
        recoveredBlock261Step = 354 ifTrue: [
            recoveredBlock261Stack2 := recoveredBlock261Local1.
            recoveredBlock261PC := 355.
        ].
        recoveredBlock261Step = 355 ifTrue: [
            recoveredBlock261Stack2 := (recoveredBlock261Stack2) + (-1).
            recoveredBlock261PC := 356.
        ].
        recoveredBlock261Step = 356 ifTrue: [
            recoveredBlock261Stack3 := 1.
            recoveredBlock261PC := 358.
        ].
        recoveredBlock261Step = 358 ifTrue: [
            recoveredBlock261Stack2 := (recoveredBlock261Stack2) max: (recoveredBlock261Stack3).
            recoveredBlock261PC := 360.
        ].
        recoveredBlock261Step = 360 ifTrue: [
            (recoveredBlock261Stack1) setPos: (recoveredBlock261Stack2).
            recoveredBlock261PC := 362.
        ].
        recoveredBlock261Step = 362 ifTrue: [
            recoveredBlock261Stack1 := recoveredLocal7.
            recoveredBlock261PC := 365.
        ].
        recoveredBlock261Step = 365 ifTrue: [
            recoveredBlock261Stack2 := recoveredBlock261Local1.
            recoveredBlock261PC := 366.
        ].
        recoveredBlock261Step = 366 ifTrue: [
            recoveredBlock261Stack3 := true.
            recoveredBlock261PC := 367.
        ].
        recoveredBlock261Step = 367 ifTrue: [
            recoveredBlock261Stack1 := (recoveredBlock261Stack1) expandPos: (recoveredBlock261Stack2) notify: (recoveredBlock261Stack3).
            recoveredBlock261PC := 369.
        ].
        recoveredBlock261Step = 369 ifTrue: [
            recoveredBlock261Result := recoveredBlock261Stack1.
            recoveredBlock261Done := true.
        ].
    ].
    recoveredBlock261Result
].
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            (recoveredStack0) deselectAllItems.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack1 := [:recoveredBlock387Arg1 :recoveredBlock387Arg2 | 
    | recoveredBlock387Stack0 recoveredBlock387Stack1 recoveredBlock387Stack2 recoveredBlock387Stack3 recoveredBlock387Stack4 recoveredBlock387PC recoveredBlock387Step recoveredBlock387Done recoveredBlock387Result |
    recoveredBlock387Stack0 := self.
    recoveredBlock387PC := 394.
    recoveredBlock387Done := false.
    [recoveredBlock387Done not] whileTrue: [
        recoveredBlock387Step := recoveredBlock387PC.
        recoveredBlock387Step = 394 ifTrue: [
            recoveredBlock387Stack1 := recoveredLocal7.
            recoveredBlock387PC := 397.
        ].
        recoveredBlock387Step = 397 ifTrue: [
            recoveredBlock387Stack2 := recoveredBlock387Arg2.
            recoveredBlock387PC := 398.
        ].
        recoveredBlock387Step = 398 ifTrue: [
            recoveredBlock387Stack1 := (recoveredBlock387Stack1) indexOfItem: (recoveredBlock387Stack2).
            recoveredBlock387PC := 400.
        ].
        recoveredBlock387Step = 400 ifTrue: [
            recoveredBlock387Stack2 := recoveredBlock387Arg1.
            recoveredBlock387PC := 401.
        ].
        recoveredBlock387Step = 401 ifTrue: [
            recoveredBlock387Stack1 := (recoveredBlock387Stack1) = (recoveredBlock387Stack2).
            recoveredBlock387PC := 402.
        ].
        recoveredBlock387Step = 402 ifTrue: [
            (recoveredBlock387Stack1) ifTrue: [recoveredBlock387PC := 406] ifFalse: [recoveredBlock387PC := 416].
        ].
        recoveredBlock387Step = 406 ifTrue: [
            recoveredBlock387Stack1 := recoveredLocal3.
            recoveredBlock387PC := 409.
        ].
        recoveredBlock387Step = 409 ifTrue: [
            recoveredBlock387Stack2 := recoveredBlock387Arg1.
            recoveredBlock387PC := 410.
        ].
        recoveredBlock387Step = 410 ifTrue: [
            recoveredBlock387Stack1 := (recoveredBlock387Stack1) add: (recoveredBlock387Stack2).
            recoveredBlock387PC := 412.
        ].
        recoveredBlock387Step = 412 ifTrue: [
            recoveredBlock387PC := 453.
        ].
        recoveredBlock387Step = 416 ifTrue: [
            recoveredBlock387Stack1 := recoveredLocal7.
            recoveredBlock387PC := 419.
        ].
        recoveredBlock387Step = 419 ifTrue: [
            recoveredBlock387Stack2 := recoveredBlock387Arg2.
            recoveredBlock387PC := 420.
        ].
        recoveredBlock387Step = 420 ifTrue: [
            recoveredBlock387Stack1 := (recoveredBlock387Stack1) indexOfItem: (recoveredBlock387Stack2).
            recoveredBlock387PC := 422.
        ].
        recoveredBlock387Step = 422 ifTrue: [
            recoveredBlock387Stack2 := 0.
            recoveredBlock387PC := 424.
        ].
        recoveredBlock387Step = 424 ifTrue: [
            recoveredBlock387Stack1 := (recoveredBlock387Stack1) = (recoveredBlock387Stack2).
            recoveredBlock387PC := 425.
        ].
        recoveredBlock387Step = 425 ifTrue: [
            (recoveredBlock387Stack1) ifTrue: [recoveredBlock387PC := 428] ifFalse: [recoveredBlock387PC := 442].
        ].
        recoveredBlock387Step = 428 ifTrue: [
            recoveredBlock387Stack1 := recoveredLocal3.
            recoveredBlock387PC := 431.
        ].
        recoveredBlock387Step = 431 ifTrue: [
            recoveredBlock387Stack2 := recoveredBlock387Arg1.
            recoveredBlock387PC := 432.
        ].
        recoveredBlock387Step = 432 ifTrue: [
            recoveredBlock387Stack2 := (recoveredBlock387Stack2) + (-1).
            recoveredBlock387PC := 433.
        ].
        recoveredBlock387Step = 433 ifTrue: [
            recoveredBlock387Stack3 := 1.
            recoveredBlock387PC := 435.
        ].
        recoveredBlock387Step = 435 ifTrue: [
            recoveredBlock387Stack2 := (recoveredBlock387Stack2) max: (recoveredBlock387Stack3).
            recoveredBlock387PC := 437.
        ].
        recoveredBlock387Step = 437 ifTrue: [
            recoveredBlock387Stack1 := (recoveredBlock387Stack1) add: (recoveredBlock387Stack2).
            recoveredBlock387PC := 439.
        ].
        recoveredBlock387Step = 439 ifTrue: [
            recoveredBlock387PC := 453.
        ].
        recoveredBlock387Step = 442 ifTrue: [
            recoveredBlock387Stack1 := recoveredLocal3.
            recoveredBlock387PC := 445.
        ].
        recoveredBlock387Step = 445 ifTrue: [
            recoveredBlock387Stack2 := recoveredLocal7.
            recoveredBlock387PC := 448.
        ].
        recoveredBlock387Step = 448 ifTrue: [
            recoveredBlock387Stack3 := recoveredBlock387Arg2.
            recoveredBlock387PC := 449.
        ].
        recoveredBlock387Step = 449 ifTrue: [
            recoveredBlock387Stack2 := (recoveredBlock387Stack2) indexOfItem: (recoveredBlock387Stack3).
            recoveredBlock387PC := 451.
        ].
        recoveredBlock387Step = 451 ifTrue: [
            recoveredBlock387Stack1 := (recoveredBlock387Stack1) add: (recoveredBlock387Stack2).
            recoveredBlock387PC := 453.
        ].
        recoveredBlock387Step = 453 ifTrue: [
            recoveredBlock387Result := recoveredBlock387Stack1.
            recoveredBlock387Done := true.
        ].
    ].
    recoveredBlock387Result
].
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack1 := [:recoveredBlock459Arg1 | 
    | recoveredBlock459Value0 recoveredBlock459Value1 recoveredBlock459Value2 |
    recoveredBlock459Value0 := recoveredLocal7.
    recoveredBlock459Value1 := recoveredBlock459Arg1.
    recoveredBlock459Value2 := (recoveredBlock459Value0) selectPos: (recoveredBlock459Value1) notify: (false).
    recoveredBlock459Value2
].
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            (recoveredStack0) refresh.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            (recoveredStack0) topItemPosition: (recoveredStack1).
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20638278; bytecode file offset 0xf34c54"
!ASDTreePane methodsFor: 'recovered'!
createTreePane: recoveredArg1 inForm: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'outerForm'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:block281210f0Arg1 | 
    | block281210f0Value0 block281210f0Value1 block281210f0Value2 block281210f0Value3 block281210f0Value4 block281210f0Value5 block281210f0Value6 |
    block281210f0Value0 := block281210f0Arg1.
    block281210f0Value1 := CgRGBColor.
    block281210f0Value2 := OS.
    block281210f0Value3 := ColorActivecaption.
    block281210f0Value4 := (block281210f0Value2) getSysColor: (block281210f0Value3).
    block281210f0Value5 := (block281210f0Value1) fromOSRGB: (block281210f0Value4).
    block281210f0Value6 := (block281210f0Value0) backgroundColor: (block281210f0Value5).
    block281210f0Value6
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 'outerForm'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := 'paneLabel'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := [:recoveredBlock56Arg1 | 
    | recoveredBlock56Value0 recoveredBlock56Value1 recoveredBlock56Value2 recoveredBlock56Value3 recoveredBlock56Value4 recoveredBlock56Value5 recoveredBlock56Value6 recoveredBlock56Value7 recoveredBlock56Value8 recoveredBlock56Value9 recoveredBlock56Value10 recoveredBlock56Value11 recoveredBlock56Value12 recoveredBlock56Value13 recoveredBlock56Value14 recoveredBlock56Value15 recoveredBlock56Value16 recoveredBlock56Value17 |
    recoveredBlock56Value0 := recoveredBlock56Arg1.
    recoveredBlock56Value1 := recoveredBlock56Value0.
    (recoveredBlock56Value1) height: (20).
    recoveredBlock56Value2 := recoveredBlock56Value0.
    recoveredBlock56Value3 := CgRGBColor.
    recoveredBlock56Value4 := OS.
    recoveredBlock56Value5 := ColorActivecaption.
    recoveredBlock56Value6 := (recoveredBlock56Value4) getSysColor: (recoveredBlock56Value5).
    recoveredBlock56Value7 := (recoveredBlock56Value3) fromOSRGB: (recoveredBlock56Value6).
    (recoveredBlock56Value2) backgroundColor: (recoveredBlock56Value7).
    recoveredBlock56Value8 := recoveredBlock56Value0.
    recoveredBlock56Value9 := CgRGBColor.
    recoveredBlock56Value10 := OS.
    recoveredBlock56Value11 := ColorCaptiontext.
    recoveredBlock56Value12 := (recoveredBlock56Value10) getSysColor: (recoveredBlock56Value11).
    recoveredBlock56Value13 := (recoveredBlock56Value9) fromOSRGB: (recoveredBlock56Value12).
    (recoveredBlock56Value8) foregroundColor: (recoveredBlock56Value13).
    recoveredBlock56Value14 := recoveredBlock56Value0.
    recoveredBlock56Value15 := XmALIGNMENTBEGINNING.
    (recoveredBlock56Value14) alignment: (recoveredBlock56Value15).
    recoveredBlock56Value16 := recoveredArg1.
    recoveredBlock56Value17 := (recoveredBlock56Value0) labelString: (recoveredBlock56Value16).
    recoveredBlock56Value17
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := 'paneLabel'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := 'paneButton'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := [:block28121114Arg1 | 
    | block28121114Value0 block28121114Value1 block28121114Value2 block28121114Value3 block28121114Value4 block28121114Value5 block28121114Value6 block28121114Value7 block28121114Value8 block28121114Value9 |
    block28121114Value0 := block28121114Arg1.
    block28121114Value1 := block28121114Value0.
    (block28121114Value1) height: (12).
    block28121114Value2 := block28121114Value0.
    (block28121114Value2) width: (12).
    block28121114Value3 := block28121114Value0.
    block28121114Value4 := CgRGBColor.
    block28121114Value5 := OS.
    block28121114Value6 := ColorActivecaption.
    block28121114Value7 := (block28121114Value5) getSysColor: (block28121114Value6).
    block28121114Value8 := (block28121114Value4) fromOSRGB: (block28121114Value7).
    (block28121114Value3) backgroundColor: (block28121114Value8).
    block28121114Value9 := block28121114Value0.
    (block28121114Value9) labelString: ('X').
    block28121114Value0
].
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDrawnButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := 'paneButton'.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := 'paneForm'.
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack3 := 'Form'.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack3 := (recoveredStack3) asSymbol.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := 'tabStrip'.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack3 := [:block28121138Arg1 | 
    | block28121138Value0 |
    block28121138Value0 := block28121138Arg1.
    block28121138Value0
].
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasTabStrip: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack2 := 'tabStrip'.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack2 := 'paneToolBar'.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack3 := [:block2812115cArg1 | 
    | block2812115cValue0 block2812115cValue1 block2812115cValue2 |
    block2812115cValue0 := block2812115cArg1.
    block2812115cValue1 := block2812115cValue0.
    (block2812115cValue1) height: (24).
    block2812115cValue2 := (block2812115cValue0) showTips: (true).
    block2812115cValue2
].
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasToolBar: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack2 := 'paneToolBar'.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack2 := [:block28121180Arg1 | 
    | block28121180Value0 block28121180Value1 block28121180Value2 block28121180Value3 block28121180Value4 block28121180Value5 block28121180Value6 block28121180Value7 block28121180Value8 block28121180Value9 block28121180Value10 block28121180Value11 block28121180Value12 |
    block28121180Value0 := block28121180Arg1.
    block28121180Value1 := block28121180Value0.
    block28121180Value2 := XmATTACHFORM.
    (block28121180Value1) topAttachment: (block28121180Value2).
    block28121180Value3 := block28121180Value0.
    (block28121180Value3) topOffset: (2).
    block28121180Value4 := block28121180Value0.
    block28121180Value5 := XmATTACHFORM.
    (block28121180Value4) leftAttachment: (block28121180Value5).
    block28121180Value6 := block28121180Value0.
    (block28121180Value6) leftOffset: (0).
    block28121180Value7 := block28121180Value0.
    block28121180Value8 := XmATTACHFORM.
    (block28121180Value7) bottomAttachment: (block28121180Value8).
    block28121180Value9 := block28121180Value0.
    (block28121180Value9) bottomOffset: (0).
    block28121180Value10 := block28121180Value0.
    block28121180Value11 := XmATTACHFORM.
    (block28121180Value10) rightAttachment: (block28121180Value11).
    block28121180Value12 := (block28121180Value0) rightOffset: (0).
    block28121180Value12
].
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack2 := [:recoveredBlock330Arg1 | 
    | recoveredBlock330Value0 recoveredBlock330Value1 recoveredBlock330Value2 recoveredBlock330Value3 recoveredBlock330Value4 recoveredBlock330Value5 recoveredBlock330Value6 recoveredBlock330Value7 recoveredBlock330Value8 recoveredBlock330Value9 recoveredBlock330Value10 |
    recoveredBlock330Value0 := recoveredBlock330Arg1.
    recoveredBlock330Value1 := recoveredBlock330Value0.
    recoveredBlock330Value2 := XmATTACHFORM.
    (recoveredBlock330Value1) topAttachment: (recoveredBlock330Value2).
    recoveredBlock330Value3 := recoveredBlock330Value0.
    recoveredBlock330Value4 := XmATTACHNONE.
    (recoveredBlock330Value3) bottomAttachment: (recoveredBlock330Value4).
    recoveredBlock330Value5 := recoveredBlock330Value0.
    recoveredBlock330Value6 := XmATTACHFORM.
    (recoveredBlock330Value5) leftAttachment: (recoveredBlock330Value6).
    recoveredBlock330Value7 := recoveredBlock330Value0.
    recoveredBlock330Value8 := XmATTACHWIDGET.
    (recoveredBlock330Value7) rightAttachment: (recoveredBlock330Value8).
    recoveredBlock330Value9 := recoveredLocal4.
    recoveredBlock330Value10 := (recoveredBlock330Value0) rightWidget: (recoveredBlock330Value9).
    recoveredBlock330Value10
].
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack2 := [:block281211a4Arg1 | 
    | block281211a4Value0 block281211a4Value1 block281211a4Value2 block281211a4Value3 block281211a4Value4 block281211a4Value5 block281211a4Value6 block281211a4Value7 block281211a4Value8 block281211a4Value9 block281211a4Value10 |
    block281211a4Value0 := block281211a4Arg1.
    block281211a4Value1 := block281211a4Value0.
    block281211a4Value2 := XmATTACHFORM.
    (block281211a4Value1) topAttachment: (block281211a4Value2).
    block281211a4Value3 := block281211a4Value0.
    (block281211a4Value3) topOffset: (5).
    block281211a4Value4 := block281211a4Value0.
    block281211a4Value5 := XmATTACHNONE.
    (block281211a4Value4) bottomAttachment: (block281211a4Value5).
    block281211a4Value6 := block281211a4Value0.
    block281211a4Value7 := XmATTACHNONE.
    (block281211a4Value6) leftAttachment: (block281211a4Value7).
    block281211a4Value8 := block281211a4Value0.
    block281211a4Value9 := XmATTACHFORM.
    (block281211a4Value8) rightAttachment: (block281211a4Value9).
    block281211a4Value10 := (block281211a4Value0) rightOffset: (2).
    block281211a4Value10
].
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack2 := [:recoveredBlock410Arg1 | 
    | recoveredBlock410Value0 recoveredBlock410Value1 recoveredBlock410Value2 recoveredBlock410Value3 recoveredBlock410Value4 recoveredBlock410Value5 recoveredBlock410Value6 recoveredBlock410Value7 recoveredBlock410Value8 recoveredBlock410Value9 recoveredBlock410Value10 |
    recoveredBlock410Value0 := recoveredBlock410Arg1.
    recoveredBlock410Value1 := recoveredBlock410Value0.
    recoveredBlock410Value2 := XmATTACHWIDGET.
    (recoveredBlock410Value1) topAttachment: (recoveredBlock410Value2).
    recoveredBlock410Value3 := recoveredBlock410Value0.
    recoveredBlock410Value4 := recoveredLocal5.
    (recoveredBlock410Value3) topWidget: (recoveredBlock410Value4).
    recoveredBlock410Value5 := recoveredBlock410Value0.
    recoveredBlock410Value6 := XmATTACHFORM.
    (recoveredBlock410Value5) bottomAttachment: (recoveredBlock410Value6).
    recoveredBlock410Value7 := recoveredBlock410Value0.
    recoveredBlock410Value8 := XmATTACHFORM.
    (recoveredBlock410Value7) leftAttachment: (recoveredBlock410Value8).
    recoveredBlock410Value9 := XmATTACHFORM.
    recoveredBlock410Value10 := (recoveredBlock410Value0) rightAttachment: (recoveredBlock410Value9).
    recoveredBlock410Value10
].
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack2 := [:recoveredBlock450Arg1 | 
    | recoveredBlock450Value0 recoveredBlock450Value1 recoveredBlock450Value2 recoveredBlock450Value3 recoveredBlock450Value4 recoveredBlock450Value5 recoveredBlock450Value6 recoveredBlock450Value7 recoveredBlock450Value8 recoveredBlock450Value9 recoveredBlock450Value10 recoveredBlock450Value11 recoveredBlock450Value12 recoveredBlock450Value13 recoveredBlock450Value14 |
    recoveredBlock450Value0 := recoveredBlock450Arg1.
    recoveredBlock450Value1 := recoveredBlock450Value0.
    recoveredBlock450Value2 := XmATTACHFORM.
    (recoveredBlock450Value1) topAttachment: (recoveredBlock450Value2).
    recoveredBlock450Value3 := recoveredBlock450Value0.
    (recoveredBlock450Value3) topOffset: (1).
    recoveredBlock450Value4 := recoveredBlock450Value0.
    recoveredBlock450Value5 := XmATTACHFORM.
    (recoveredBlock450Value4) leftAttachment: (recoveredBlock450Value5).
    recoveredBlock450Value6 := recoveredBlock450Value0.
    (recoveredBlock450Value6) leftOffset: (0).
    recoveredBlock450Value7 := recoveredBlock450Value0.
    recoveredBlock450Value8 := XmATTACHWIDGET.
    (recoveredBlock450Value7) bottomAttachment: (recoveredBlock450Value8).
    recoveredBlock450Value9 := recoveredBlock450Value0.
    recoveredBlock450Value10 := recoveredLocal1.
    (recoveredBlock450Value9) bottomWidget: (recoveredBlock450Value10).
    recoveredBlock450Value11 := recoveredBlock450Value0.
    (recoveredBlock450Value11) bottomOffset: (0).
    recoveredBlock450Value12 := recoveredBlock450Value0.
    recoveredBlock450Value13 := XmATTACHFORM.
    (recoveredBlock450Value12) rightAttachment: (recoveredBlock450Value13).
    recoveredBlock450Value14 := (recoveredBlock450Value0) rightOffset: (0).
    recoveredBlock450Value14
].
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack2 := [:block281211c8Arg1 | 
    | block281211c8Value0 block281211c8Value1 block281211c8Value2 block281211c8Value3 block281211c8Value4 block281211c8Value5 block281211c8Value6 block281211c8Value7 block281211c8Value8 block281211c8Value9 |
    block281211c8Value0 := block281211c8Arg1.
    block281211c8Value1 := block281211c8Value0.
    block281211c8Value2 := XmATTACHFORM.
    (block281211c8Value1) leftAttachment: (block281211c8Value2).
    block281211c8Value3 := block281211c8Value0.
    (block281211c8Value3) leftOffset: (0).
    block281211c8Value4 := block281211c8Value0.
    block281211c8Value5 := XmATTACHFORM.
    (block281211c8Value4) bottomAttachment: (block281211c8Value5).
    block281211c8Value6 := block281211c8Value0.
    (block281211c8Value6) bottomOffset: (0).
    block281211c8Value7 := block281211c8Value0.
    block281211c8Value8 := XmATTACHFORM.
    (block281211c8Value7) rightAttachment: (block281211c8Value8).
    block281211c8Value9 := (block281211c8Value0) rightOffset: (0).
    block281211c8Value9
].
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            (recoveredStack1) manageChild.
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack3 := XmNactivateCallback.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack5 := 'paneButton:clientData:callData:'.
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredStack2 := XmNexposeCallback.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            recoveredStack4 := 'paneButtonExpose:clientData:callData:'.
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack2 := XmNresizeCallback.
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack4 := 'resizeTabStrip:clientData:callData:'.
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack4 := 'modifyVerifyTabStrip:clientData:callData:'.
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack4 := 'singleSelectionTabStrip:clientData:callData:'.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            recoveredStack1 := XmNdestroyCallback.
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            recoveredStack3 := 'destroy:clientData:callData:'.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 648.
        ].
        recoveredStep = 648 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            (recoveredStack0) widgetDictionary: (recoveredStack1).
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 656.
        ].
        recoveredStep = 656 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

