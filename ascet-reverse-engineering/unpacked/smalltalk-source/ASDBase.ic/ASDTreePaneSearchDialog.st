"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003e938; bytecode file offset 0x93bf94"
!ASDTreePaneSearchDialog methodsFor: 'recovered'!
optionGroupName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ASDTreePaneSearchOptions.
    recoveredValue1 := (recoveredValue0) groupString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005a56c; bytecode file offset 0x957a6c"
!ASDTreePaneSearchDialog methodsFor: 'recovered'!
closeButton: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) close.
    ^self
! !

"ASDBase.ic method 0x2005ab30; bytecode file offset 0x957a6c"
!ASDTreePaneSearchDialog methodsFor: 'recovered'!
searchButton: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) searchTreeItem.
    ^self
! !

"ASDBase.ic method 0x200707a0; bytecode file offset 0x96d06c"
!ASDTreePaneSearchDialog methodsFor: 'recovered'!
treePane
    | recoveredValue0 |
    recoveredValue0 := treePane.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007088c; bytecode file offset 0x96d218"
!ASDTreePaneSearchDialog methodsFor: 'recovered'!
treeList
    | recoveredValue0 |
    recoveredValue0 := treeList.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200b3aa4; bytecode file offset 0x9b0488"
!ASDTreePaneSearchDialog methodsFor: 'recovered'!
typeAheadModeRadioButton
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('typeAheadModeRadioButton') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b3ad4; bytecode file offset 0x9b0488"
!ASDTreePaneSearchDialog methodsFor: 'recovered'!
simpleModeRadioButton
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('simpleModeRadioButton') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b3aec; bytecode file offset 0x9b0488"
!ASDTreePaneSearchDialog methodsFor: 'recovered'!
wildcardModeRadioButton
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('wildcardModeRadioButton') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b3b94; bytecode file offset 0x9b0488"
!ASDTreePaneSearchDialog methodsFor: 'recovered'!
searchComboBox
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('searchComboBox') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c6edc; bytecode file offset 0x9c38d8"
!ASDTreePaneSearchDialog methodsFor: 'recovered'!
treeList: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    treeList := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d6450; bytecode file offset 0x9d3134"
!ASDTreePaneSearchDialog methodsFor: 'recovered'!
initializeAfterCreate
    super initializeAfterCreate.
    (self) updateSearchMode.
    ^self
! !

"ASDBase.ic method 0x200f9c54; bytecode file offset 0x9f6530"
!ASDTreePaneSearchDialog methodsFor: 'recovered'!
close
    | recoveredValue0 |
    super close.
    recoveredValue0 := ASDTreePane.
    (recoveredValue0) removeDependent: (self).
    ^self
! !

"ASDBase.ic method 0x200f9c6c; bytecode file offset 0x9f6530"
!ASDTreePaneSearchDialog methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredValue0 |
    super initializeAfterOpen.
    recoveredValue0 := ASDTreePane.
    (recoveredValue0) addDependent: (self).
    ^self
! !

"ASDBase.ic method 0x201486ac; bytecode file offset 0xa44f70"
!ASDTreePaneSearchDialog methodsFor: 'recovered'!
searchModeButton: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) set.
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
            recoveredStack1 := (recoveredStack1) treePane.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) searchMode: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) updateSearchMode.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20150154; bytecode file offset 0xa4ca20"
!ASDTreePaneSearchDialog methodsFor: 'recovered'!
searchTreeItem
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) searchComboBox.
    recoveredValue1 := (self) treeList.
    (recoveredValue0) userData: (recoveredValue1).
    recoveredValue2 := (self) treePane.
    recoveredValue3 := (self) searchComboBox.
    recoveredValue4 := (self) selectedSearchMode.
    (recoveredValue2) searchTreeItemIn: (recoveredValue3) mode: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201cdc1c; bytecode file offset 0xaca4e4"
!ASDTreePaneSearchDialog methodsFor: 'recovered'!
update: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeDependent: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := ASDTreePane.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) updateSearchMode.
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

"ASDBase.ic method 0x202359bc; bytecode file offset 0xb32290"
!ASDTreePaneSearchDialog methodsFor: 'recovered'!
searchComboBoxLosingFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := CgRGBColor.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) lightGray.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) foregroundColor: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 'Search...'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202370b8; bytecode file offset 0xb33990"
!ASDTreePaneSearchDialog methodsFor: 'recovered'!
updateSearchMode
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (self) treePane.
    recoveredValue1 := (recoveredValue0) searchMode.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) simpleModeRadioButton.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := ASDTreePaneSimpleSearch.
    recoveredValue5 := (recoveredValue3) = (recoveredValue4).
    (recoveredValue2) set: (recoveredValue5).
    recoveredValue6 := (self) wildcardModeRadioButton.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := ASDTreePaneWildcardSearch.
    recoveredValue9 := (recoveredValue7) = (recoveredValue8).
    (recoveredValue6) set: (recoveredValue9).
    recoveredValue10 := (self) typeAheadModeRadioButton.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := ASDTreePaneTypeAheadSearch.
    recoveredValue13 := (recoveredValue11) = (recoveredValue12).
    (recoveredValue10) set: (recoveredValue13).
    ^self
! !

"ASDBase.ic method 0x2023c8a8; bytecode file offset 0xb39178"
!ASDTreePaneSearchDialog methodsFor: 'recovered'!
selectedSearchMode
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) simpleModeRadioButton.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := ASDTreePaneSimpleSearch.
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
            recoveredStack0 := (recoveredStack0) wildcardModeRadioButton.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := ASDTreePaneWildcardSearch.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeAheadModeRadioButton.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) set.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := ASDTreePaneTypeAheadSearch.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := ASDTreePaneSimpleSearch.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026e0fc; bytecode file offset 0xb6a9c8"
!ASDTreePaneSearchDialog methodsFor: 'recovered'!
treePane: recoveredArg1
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
    treePane := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x202abd84; bytecode file offset 0xba8660"
!ASDTreePaneSearchDialog methodsFor: 'recovered'!
searchComboBoxFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            (recoveredStack1) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 26].
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
            recoveredStack3 := (recoveredStack3) treePane.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) searchStrings.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) items: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) setString: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := CgRGBColor.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) black.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) foregroundColor: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b2ed8; bytecode file offset 0xbaf7b0"
!ASDTreePaneSearchDialog methodsFor: 'recovered'!
options
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := options.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ASDTreePaneSearchOptions.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) allOptions.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            options := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            copy := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := options.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) allOptionsFromOptionCollection: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 |
    recoveredBlock27Value0 := copy.
    recoveredBlock27Value1 := recoveredBlock27Arg1.
    recoveredBlock27Value2 := (recoveredBlock27Value1) deepCopy.
    recoveredBlock27Value3 := (recoveredBlock27Value0) add: (recoveredBlock27Value2).
    recoveredBlock27Value3
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := options.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2032fed8; bytecode file offset 0xc2c7b4"
!ASDTreePaneSearchDialog methodsFor: 'recovered'!
searchComboBoxKeyReleased: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) searchTreeItem.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) treePane.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) searchMode.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := ASDTreePaneTypeAheadSearch.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) character.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) character.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSeparator.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) searchTreeItem.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2068266c; bytecode file offset 0xf7f150"
!ASDTreePaneSearchDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 recoveredBlock14Value6 recoveredBlock14Value7 recoveredBlock14Value8 recoveredBlock14Value9 recoveredBlock14Value10 recoveredBlock14Value11 recoveredBlock14Value12 recoveredBlock14Value13 recoveredBlock14Value14 recoveredBlock14Value15 recoveredBlock14Value16 recoveredBlock14Value17 recoveredBlock14Value18 recoveredBlock14Value19 recoveredBlock14Value20 recoveredBlock14Value21 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := recoveredBlock14Value0.
    recoveredBlock14Value2 := MWMINPUTMODELESS.
    (recoveredBlock14Value1) mwmInputMode: (recoveredBlock14Value2).
    recoveredBlock14Value3 := recoveredBlock14Value0.
    (recoveredBlock14Value3) title: ('Search in Tree').
    recoveredBlock14Value4 := recoveredBlock14Value0.
    recoveredBlock14Value5 := MWMDECORALL.
    recoveredBlock14Value6 := MWMDECORRESIZEH.
    recoveredBlock14Value7 := (recoveredBlock14Value5) | (recoveredBlock14Value6).
    recoveredBlock14Value8 := MWMDECORBORDER.
    recoveredBlock14Value9 := (recoveredBlock14Value7) | (recoveredBlock14Value8).
    recoveredBlock14Value10 := MWMDECORMINIMIZE.
    recoveredBlock14Value11 := (recoveredBlock14Value9) | (recoveredBlock14Value10).
    recoveredBlock14Value12 := MWMDECORMAXIMIZE.
    recoveredBlock14Value13 := (recoveredBlock14Value11) | (recoveredBlock14Value12).
    (recoveredBlock14Value4) mwmDecorations: (recoveredBlock14Value13).
    recoveredBlock14Value14 := recoveredBlock14Value0.
    recoveredBlock14Value15 := (self) class.
    recoveredBlock14Value16 := (recoveredBlock14Value15) minSize.
    recoveredBlock14Value17 := (recoveredBlock14Value16) x.
    (recoveredBlock14Value14) height: (recoveredBlock14Value17).
    recoveredBlock14Value18 := (self) class.
    recoveredBlock14Value19 := (recoveredBlock14Value18) minSize.
    recoveredBlock14Value20 := (recoveredBlock14Value19) y.
    recoveredBlock14Value21 := (recoveredBlock14Value0) width: (recoveredBlock14Value20).
    recoveredBlock14Value21
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := [:block2812973cArg1 | 
    | block2812973cValue0 block2812973cValue1 block2812973cValue2 |
    block2812973cValue0 := block2812973cArg1.
    block2812973cValue1 := block2812973cValue0.
    (block2812973cValue1) height: (100).
    block2812973cValue2 := (block2812973cValue0) width: (200).
    block2812973cValue2
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := 'searchComboBox'.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := [:recoveredBlock152Arg1 | 
    | recoveredBlock152Value0 recoveredBlock152Value1 recoveredBlock152Value2 recoveredBlock152Value3 recoveredBlock152Value4 recoveredBlock152Value5 recoveredBlock152Value6 recoveredBlock152Value7 recoveredBlock152Value8 recoveredBlock152Value9 |
    recoveredBlock152Value0 := recoveredBlock152Arg1.
    recoveredBlock152Value1 := recoveredBlock152Value0.
    recoveredBlock152Value2 := (self) treePane.
    recoveredBlock152Value3 := (recoveredBlock152Value2) searchStrings.
    (recoveredBlock152Value1) items: (recoveredBlock152Value3).
    recoveredBlock152Value4 := recoveredBlock152Value0.
    (recoveredBlock152Value4) editable: (true).
    recoveredBlock152Value5 := recoveredBlock152Value0.
    (recoveredBlock152Value5) height: (25).
    recoveredBlock152Value6 := recoveredBlock152Value0.
    (recoveredBlock152Value6) visibleItemCount: (10).
    recoveredBlock152Value7 := CgRGBColor.
    recoveredBlock152Value8 := (recoveredBlock152Value7) lightGray.
    recoveredBlock152Value9 := (recoveredBlock152Value0) foregroundColor: (recoveredBlock152Value8).
    recoveredBlock152Value9
].
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := 'searchComboBox'.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := 'searchModeFrame'.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := [:block28129760Arg1 | 
    | block28129760Value0 block28129760Value1 |
    block28129760Value0 := block28129760Arg1.
    block28129760Value1 := (block28129760Value0) labelString: ('Search Mode').
    block28129760Value1
].
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := 'searchModeFrame'.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := 'searchModeForm'.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack2 := 'searchModeRadioBox'.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack3 := [:block28129784Arg1 | 
    | block28129784Value0 block28129784Value1 block28129784Value2 block28129784Value3 block28129784Value4 block28129784Value5 block28129784Value6 |
    block28129784Value0 := block28129784Arg1.
    block28129784Value1 := block28129784Value0.
    (block28129784Value1) radioAlwaysOne: (true).
    block28129784Value2 := block28129784Value0.
    (block28129784Value2) marginWidth: (5).
    block28129784Value3 := block28129784Value0.
    (block28129784Value3) marginHeight: (0).
    block28129784Value4 := block28129784Value0.
    (block28129784Value4) spacing: (0).
    block28129784Value5 := XmVERTICAL.
    block28129784Value6 := (block28129784Value0) orientation: (block28129784Value5).
    block28129784Value6
].
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack1 := (recoveredStack1) createRadioBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack2 := 'searchModeRadioBox'.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack2 := 'simpleModeRadioButton'.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack3 := [:block281297a8Arg1 | 
    | block281297a8Value0 block281297a8Value1 block281297a8Value2 block281297a8Value3 block281297a8Value4 |
    block281297a8Value0 := block281297a8Arg1.
    block281297a8Value1 := block281297a8Value0.
    (block281297a8Value1) labelString: ('Simple Mode').
    block281297a8Value2 := block281297a8Value0.
    block281297a8Value3 := XmONEOFMANY.
    (block281297a8Value2) indicatorType: (block281297a8Value3).
    block281297a8Value4 := (block281297a8Value0) set: (false).
    block281297a8Value4
].
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack2 := 'simpleModeRadioButton'.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack2 := 'wildcardModeRadioButton'.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack3 := [:block281297ccArg1 | 
    | block281297ccValue0 block281297ccValue1 block281297ccValue2 block281297ccValue3 block281297ccValue4 |
    block281297ccValue0 := block281297ccArg1.
    block281297ccValue1 := block281297ccValue0.
    (block281297ccValue1) labelString: ('Wildcard Mode').
    block281297ccValue2 := block281297ccValue0.
    block281297ccValue3 := XmONEOFMANY.
    (block281297ccValue2) indicatorType: (block281297ccValue3).
    block281297ccValue4 := (block281297ccValue0) set: (false).
    block281297ccValue4
].
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack2 := 'wildcardModeRadioButton'.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack2 := 'typeAheadModeRadioButton'.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack3 := [:block281297f0Arg1 | 
    | block281297f0Value0 block281297f0Value1 block281297f0Value2 block281297f0Value3 block281297f0Value4 |
    block281297f0Value0 := block281297f0Arg1.
    block281297f0Value1 := block281297f0Value0.
    (block281297f0Value1) labelString: ('Type-Ahead Mode').
    block281297f0Value2 := block281297f0Value0.
    block281297f0Value3 := XmONEOFMANY.
    (block281297f0Value2) indicatorType: (block281297f0Value3).
    block281297f0Value4 := (block281297f0Value0) set: (false).
    block281297f0Value4
].
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack2 := 'typeAheadModeRadioButton'.
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack2 := 'searchOptionFrame'.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack3 := [:block28129814Arg1 | 
    | block28129814Value0 block28129814Value1 block28129814Value2 |
    block28129814Value0 := block28129814Arg1.
    block28129814Value1 := block28129814Value0.
    (block28129814Value1) width: (280).
    block28129814Value2 := block28129814Value0.
    (block28129814Value2) labelString: ('Options').
    block28129814Value0
].
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack2 := 'searchOptionFrame'.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack2 := 'searchOptionForm'.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack2 := 'searchOptionForm'.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            (recoveredStack0) createOptionWidgetsInForm: (recoveredStack1).
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack1 := 'searchButton'.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack2 := [:block28129838Arg1 | 
    | block28129838Value0 block28129838Value1 block28129838Value2 block28129838Value3 |
    block28129838Value0 := block28129838Arg1.
    block28129838Value1 := block28129838Value0.
    (block28129838Value1) labelString: ('Search').
    block28129838Value2 := block28129838Value0.
    (block28129838Value2) height: (25).
    block28129838Value3 := (block28129838Value0) width: (80).
    block28129838Value3
].
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack0 := widgetDictionary.
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredStack1 := 'searchButton'.
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            recoveredStack1 := 'closeButton'.
            recoveredPC := 628.
        ].
        recoveredStep = 628 ifTrue: [
            recoveredStack2 := [:block2812985cArg1 | 
    | block2812985cValue0 block2812985cValue1 block2812985cValue2 block2812985cValue3 |
    block2812985cValue0 := block2812985cArg1.
    block2812985cValue1 := block2812985cValue0.
    (block2812985cValue1) labelString: ('Close').
    block2812985cValue2 := block2812985cValue0.
    (block2812985cValue2) height: (25).
    block2812985cValue3 := (block2812985cValue0) width: (80).
    block2812985cValue3
].
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 661.
        ].
        recoveredStep = 661 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 664.
        ].
        recoveredStep = 664 ifTrue: [
            recoveredStack0 := widgetDictionary.
            recoveredPC := 666.
        ].
        recoveredStep = 666 ifTrue: [
            recoveredStack1 := 'closeButton'.
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 675.
        ].
        recoveredStep = 675 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            recoveredStack1 := [:block28129880Arg1 | 
    | block28129880Value0 block28129880Value1 block28129880Value2 block28129880Value3 block28129880Value4 block28129880Value5 block28129880Value6 block28129880Value7 block28129880Value8 block28129880Value9 block28129880Value10 block28129880Value11 |
    block28129880Value0 := block28129880Arg1.
    block28129880Value1 := block28129880Value0.
    block28129880Value2 := XmATTACHFORM.
    (block28129880Value1) topAttachment: (block28129880Value2).
    block28129880Value3 := block28129880Value0.
    (block28129880Value3) topOffset: (5).
    block28129880Value4 := block28129880Value0.
    block28129880Value5 := XmATTACHNONE.
    (block28129880Value4) bottomAttachment: (block28129880Value5).
    block28129880Value6 := block28129880Value0.
    block28129880Value7 := XmATTACHFORM.
    (block28129880Value6) rightAttachment: (block28129880Value7).
    block28129880Value8 := block28129880Value0.
    (block28129880Value8) rightOffset: (5).
    block28129880Value9 := block28129880Value0.
    block28129880Value10 := XmATTACHFORM.
    (block28129880Value9) leftAttachment: (block28129880Value10).
    block28129880Value11 := (block28129880Value0) leftOffset: (5).
    block28129880Value11
].
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredPC := 740.
        ].
        recoveredStep = 740 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 745.
        ].
        recoveredStep = 745 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 748.
        ].
        recoveredStep = 748 ifTrue: [
            recoveredStack1 := [:recoveredBlock748Arg1 | 
    | recoveredBlock748Value0 recoveredBlock748Value1 recoveredBlock748Value2 recoveredBlock748Value3 recoveredBlock748Value4 recoveredBlock748Value5 recoveredBlock748Value6 recoveredBlock748Value7 recoveredBlock748Value8 recoveredBlock748Value9 recoveredBlock748Value10 recoveredBlock748Value11 recoveredBlock748Value12 recoveredBlock748Value13 recoveredBlock748Value14 |
    recoveredBlock748Value0 := recoveredBlock748Arg1.
    recoveredBlock748Value1 := recoveredBlock748Value0.
    recoveredBlock748Value2 := XmATTACHWIDGET.
    (recoveredBlock748Value1) topAttachment: (recoveredBlock748Value2).
    recoveredBlock748Value3 := recoveredBlock748Value0.
    recoveredBlock748Value4 := recoveredLocal9.
    (recoveredBlock748Value3) topWidget: (recoveredBlock748Value4).
    recoveredBlock748Value5 := recoveredBlock748Value0.
    (recoveredBlock748Value5) topOffset: (5).
    recoveredBlock748Value6 := recoveredBlock748Value0.
    recoveredBlock748Value7 := XmATTACHNONE.
    (recoveredBlock748Value6) bottomAttachment: (recoveredBlock748Value7).
    recoveredBlock748Value8 := recoveredBlock748Value0.
    (recoveredBlock748Value8) bottomOffset: (5).
    recoveredBlock748Value9 := recoveredBlock748Value0.
    recoveredBlock748Value10 := XmATTACHFORM.
    (recoveredBlock748Value9) rightAttachment: (recoveredBlock748Value10).
    recoveredBlock748Value11 := recoveredBlock748Value0.
    (recoveredBlock748Value11) rightOffset: (5).
    recoveredBlock748Value12 := recoveredBlock748Value0.
    recoveredBlock748Value13 := XmATTACHFORM.
    (recoveredBlock748Value12) leftAttachment: (recoveredBlock748Value13).
    recoveredBlock748Value14 := (recoveredBlock748Value0) leftOffset: (5).
    recoveredBlock748Value14
].
            recoveredPC := 822.
        ].
        recoveredStep = 822 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 827.
        ].
        recoveredStep = 827 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 830.
        ].
        recoveredStep = 830 ifTrue: [
            recoveredStack1 := [:recoveredBlock830Arg1 | 
    | recoveredBlock830Value0 recoveredBlock830Value1 recoveredBlock830Value2 recoveredBlock830Value3 recoveredBlock830Value4 recoveredBlock830Value5 recoveredBlock830Value6 recoveredBlock830Value7 recoveredBlock830Value8 recoveredBlock830Value9 recoveredBlock830Value10 recoveredBlock830Value11 recoveredBlock830Value12 recoveredBlock830Value13 recoveredBlock830Value14 recoveredBlock830Value15 recoveredBlock830Value16 |
    recoveredBlock830Value0 := recoveredBlock830Arg1.
    recoveredBlock830Value1 := recoveredBlock830Value0.
    recoveredBlock830Value2 := XmATTACHWIDGET.
    (recoveredBlock830Value1) topAttachment: (recoveredBlock830Value2).
    recoveredBlock830Value3 := recoveredBlock830Value0.
    recoveredBlock830Value4 := recoveredLocal8.
    (recoveredBlock830Value3) topWidget: (recoveredBlock830Value4).
    recoveredBlock830Value5 := recoveredBlock830Value0.
    (recoveredBlock830Value5) topOffset: (5).
    recoveredBlock830Value6 := recoveredBlock830Value0.
    recoveredBlock830Value7 := XmATTACHWIDGET.
    (recoveredBlock830Value6) bottomAttachment: (recoveredBlock830Value7).
    recoveredBlock830Value8 := recoveredBlock830Value0.
    recoveredBlock830Value9 := recoveredLocal10.
    (recoveredBlock830Value8) bottomWidget: (recoveredBlock830Value9).
    recoveredBlock830Value10 := recoveredBlock830Value0.
    (recoveredBlock830Value10) bottomOffset: (5).
    recoveredBlock830Value11 := recoveredBlock830Value0.
    recoveredBlock830Value12 := XmATTACHFORM.
    (recoveredBlock830Value11) rightAttachment: (recoveredBlock830Value12).
    recoveredBlock830Value13 := recoveredBlock830Value0.
    (recoveredBlock830Value13) rightOffset: (5).
    recoveredBlock830Value14 := recoveredBlock830Value0.
    recoveredBlock830Value15 := XmATTACHFORM.
    (recoveredBlock830Value14) leftAttachment: (recoveredBlock830Value15).
    recoveredBlock830Value16 := (recoveredBlock830Value0) leftOffset: (5).
    recoveredBlock830Value16
].
            recoveredPC := 912.
        ].
        recoveredStep = 912 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 917.
        ].
        recoveredStep = 917 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 920.
        ].
        recoveredStep = 920 ifTrue: [
            recoveredStack1 := [:block281298a4Arg1 | 
    | block281298a4Value0 block281298a4Value1 block281298a4Value2 block281298a4Value3 block281298a4Value4 block281298a4Value5 block281298a4Value6 block281298a4Value7 block281298a4Value8 |
    block281298a4Value0 := block281298a4Arg1.
    block281298a4Value1 := block281298a4Value0.
    block281298a4Value2 := XmATTACHFORM.
    (block281298a4Value1) topAttachment: (block281298a4Value2).
    block281298a4Value3 := block281298a4Value0.
    block281298a4Value4 := XmATTACHFORM.
    (block281298a4Value3) bottomAttachment: (block281298a4Value4).
    block281298a4Value5 := block281298a4Value0.
    block281298a4Value6 := XmATTACHFORM.
    (block281298a4Value5) rightAttachment: (block281298a4Value6).
    block281298a4Value7 := XmATTACHFORM.
    block281298a4Value8 := (block281298a4Value0) leftAttachment: (block281298a4Value7).
    block281298a4Value8
].
            recoveredPC := 924.
        ].
        recoveredStep = 924 ifTrue: [
            recoveredPC := 964.
        ].
        recoveredStep = 964 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 969.
        ].
        recoveredStep = 969 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 972.
        ].
        recoveredStep = 972 ifTrue: [
            recoveredStack1 := [:block281298c8Arg1 | 
    | block281298c8Value0 block281298c8Value1 block281298c8Value2 block281298c8Value3 block281298c8Value4 block281298c8Value5 block281298c8Value6 block281298c8Value7 block281298c8Value8 |
    block281298c8Value0 := block281298c8Arg1.
    block281298c8Value1 := block281298c8Value0.
    block281298c8Value2 := XmATTACHNONE.
    (block281298c8Value1) topAttachment: (block281298c8Value2).
    block281298c8Value3 := block281298c8Value0.
    block281298c8Value4 := XmATTACHFORM.
    (block281298c8Value3) bottomAttachment: (block281298c8Value4).
    block281298c8Value5 := block281298c8Value0.
    (block281298c8Value5) bottomOffset: (5).
    block281298c8Value6 := block281298c8Value0.
    block281298c8Value7 := XmATTACHPOSITION.
    (block281298c8Value6) leftAttachment: (block281298c8Value7).
    block281298c8Value8 := (block281298c8Value0) leftPosition: (51).
    block281298c8Value8
].
            recoveredPC := 976.
        ].
        recoveredStep = 976 ifTrue: [
            recoveredPC := 1020.
        ].
        recoveredStep = 1020 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1025.
        ].
        recoveredStep = 1025 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 1028.
        ].
        recoveredStep = 1028 ifTrue: [
            recoveredStack1 := [:block281298ecArg1 | 
    | block281298ecValue0 block281298ecValue1 block281298ecValue2 block281298ecValue3 block281298ecValue4 block281298ecValue5 block281298ecValue6 block281298ecValue7 block281298ecValue8 |
    block281298ecValue0 := block281298ecArg1.
    block281298ecValue1 := block281298ecValue0.
    block281298ecValue2 := XmATTACHNONE.
    (block281298ecValue1) topAttachment: (block281298ecValue2).
    block281298ecValue3 := block281298ecValue0.
    block281298ecValue4 := XmATTACHFORM.
    (block281298ecValue3) bottomAttachment: (block281298ecValue4).
    block281298ecValue5 := block281298ecValue0.
    (block281298ecValue5) bottomOffset: (5).
    block281298ecValue6 := block281298ecValue0.
    block281298ecValue7 := XmATTACHPOSITION.
    (block281298ecValue6) rightAttachment: (block281298ecValue7).
    block281298ecValue8 := (block281298ecValue0) rightPosition: (49).
    block281298ecValue8
].
            recoveredPC := 1032.
        ].
        recoveredStep = 1032 ifTrue: [
            recoveredPC := 1076.
        ].
        recoveredStep = 1076 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1081.
        ].
        recoveredStep = 1081 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 1084.
        ].
        recoveredStep = 1084 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 1088.
        ].
        recoveredStep = 1088 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1089.
        ].
        recoveredStep = 1089 ifTrue: [
            recoveredStack3 := 'searchButton:clientData:callData:'.
            recoveredPC := 1092.
        ].
        recoveredStep = 1092 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1093.
        ].
        recoveredStep = 1093 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1097.
        ].
        recoveredStep = 1097 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 1100.
        ].
        recoveredStep = 1100 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 1104.
        ].
        recoveredStep = 1104 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1105.
        ].
        recoveredStep = 1105 ifTrue: [
            recoveredStack3 := 'closeButton:clientData:callData:'.
            recoveredPC := 1108.
        ].
        recoveredStep = 1108 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1109.
        ].
        recoveredStep = 1109 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1113.
        ].
        recoveredStep = 1113 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 1116.
        ].
        recoveredStep = 1116 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 1120.
        ].
        recoveredStep = 1120 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1121.
        ].
        recoveredStep = 1121 ifTrue: [
            recoveredStack3 := 'searchModeButton:clientData:callData:'.
            recoveredPC := 1124.
        ].
        recoveredStep = 1124 ifTrue: [
            recoveredStack4 := ASDTreePaneSimpleSearch.
            recoveredPC := 1128.
        ].
        recoveredStep = 1128 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1133.
        ].
        recoveredStep = 1133 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 1136.
        ].
        recoveredStep = 1136 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 1140.
        ].
        recoveredStep = 1140 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1141.
        ].
        recoveredStep = 1141 ifTrue: [
            recoveredStack3 := 'searchModeButton:clientData:callData:'.
            recoveredPC := 1144.
        ].
        recoveredStep = 1144 ifTrue: [
            recoveredStack4 := ASDTreePaneWildcardSearch.
            recoveredPC := 1148.
        ].
        recoveredStep = 1148 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1153.
        ].
        recoveredStep = 1153 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 1156.
        ].
        recoveredStep = 1156 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 1160.
        ].
        recoveredStep = 1160 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1161.
        ].
        recoveredStep = 1161 ifTrue: [
            recoveredStack3 := 'searchModeButton:clientData:callData:'.
            recoveredPC := 1164.
        ].
        recoveredStep = 1164 ifTrue: [
            recoveredStack4 := ASDTreePaneTypeAheadSearch.
            recoveredPC := 1168.
        ].
        recoveredStep = 1168 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1173.
        ].
        recoveredStep = 1173 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 1176.
        ].
        recoveredStep = 1176 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1177.
        ].
        recoveredStep = 1177 ifTrue: [
            recoveredStack2 := KeyReleaseMask.
            recoveredPC := 1180.
        ].
        recoveredStep = 1180 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1181.
        ].
        recoveredStep = 1181 ifTrue: [
            recoveredStack4 := 'searchComboBoxKeyReleased:clientData:callData:'.
            recoveredPC := 1184.
        ].
        recoveredStep = 1184 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1185.
        ].
        recoveredStep = 1185 ifTrue: [
            (recoveredStack1) addEventHandler: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1189.
        ].
        recoveredStep = 1189 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 1192.
        ].
        recoveredStep = 1192 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1193.
        ].
        recoveredStep = 1193 ifTrue: [
            recoveredStack4 := 'searchComboBoxFocus:clientData:callData:'.
            recoveredPC := 1196.
        ].
        recoveredStep = 1196 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1197.
        ].
        recoveredStep = 1197 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1201.
        ].
        recoveredStep = 1201 ifTrue: [
            recoveredStack1 := XmNlosingFocusCallback.
            recoveredPC := 1204.
        ].
        recoveredStep = 1204 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1205.
        ].
        recoveredStep = 1205 ifTrue: [
            recoveredStack3 := 'searchComboBoxLosingFocus:clientData:callData:'.
            recoveredPC := 1208.
        ].
        recoveredStep = 1208 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 1209.
        ].
        recoveredStep = 1209 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1213.
        ].
        recoveredStep = 1213 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 1216.
        ].
        recoveredStep = 1216 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1221.
        ].
        recoveredStep = 1221 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 1224.
        ].
        recoveredStep = 1224 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1229.
        ].
        recoveredStep = 1229 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 1232.
        ].
        recoveredStep = 1232 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1237.
        ].
        recoveredStep = 1237 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1238.
        ].
        recoveredStep = 1238 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 1243.
        ].
        recoveredStep = 1243 ifTrue: [
            recoveredStack1 := 'Activate Simple Search Mode.\Finds all items including the search term (case insensitive).'.
            recoveredPC := 1246.
        ].
        recoveredStep = 1246 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 1251.
        ].
        recoveredStep = 1251 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 1254.
        ].
        recoveredStep = 1254 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 1259.
        ].
        recoveredStep = 1259 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1260.
        ].
        recoveredStep = 1260 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 1265.
        ].
        recoveredStep = 1265 ifTrue: [
            recoveredStack1 := 'Activate Wildcard Search Mode.\Finds all items matching the exact search term (case insensitive).\Wildcards ''*'' and ''?'' are allowed.'.
            recoveredPC := 1268.
        ].
        recoveredStep = 1268 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 1273.
        ].
        recoveredStep = 1273 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 1276.
        ].
        recoveredStep = 1276 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 1281.
        ].
        recoveredStep = 1281 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1282.
        ].
        recoveredStep = 1282 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 1287.
        ].
        recoveredStep = 1287 ifTrue: [
            recoveredStack1 := 'Activate Type Ahead Mode.\Search box performs a type ahead search on the tree.'.
            recoveredPC := 1290.
        ].
        recoveredStep = 1290 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 1295.
        ].
        recoveredStep = 1295 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 1298.
        ].
        recoveredStep = 1298 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 1303.
        ].
        recoveredStep = 1303 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1304.
        ].
        recoveredStep = 1304 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 1309.
        ].
        recoveredStep = 1309 ifTrue: [
            recoveredStack1 := 'Perform a search with the given search term.'.
            recoveredPC := 1312.
        ].
        recoveredStep = 1312 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 1317.
        ].
        recoveredStep = 1317 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 1320.
        ].
        recoveredStep = 1320 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 1325.
        ].
        recoveredStep = 1325 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 1328.
        ].
        recoveredStep = 1328 ifTrue: [
            recoveredStack1 := 'Search...'.
            recoveredPC := 1332.
        ].
        recoveredStep = 1332 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 1337.
        ].
        recoveredStep = 1337 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 1340.
        ].
        recoveredStep = 1340 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 1342.
        ].
        recoveredStep = 1342 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 1345.
        ].
        recoveredStep = 1345 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 1349.
        ].
        recoveredStep = 1349 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

