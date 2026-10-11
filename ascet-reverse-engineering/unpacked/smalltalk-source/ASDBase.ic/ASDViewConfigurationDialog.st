"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20044cec; bytecode file offset 0x9451f8"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
itemList
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('iconList').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005a50c; bytecode file offset 0x957a6c"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
editViewActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) editItem.
    ^self
! !

"ASDBase.ic method 0x2005a6e0; bytecode file offset 0x957a6c"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
importViewActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) importViews.
    ^self
! !

"ASDBase.ic method 0x2005a71c; bytecode file offset 0x957a6c"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
defViewActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) setSelectedItemToDefault.
    ^self
! !

"ASDBase.ic method 0x2005ab0c; bytecode file offset 0x957a6c"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
okActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) close.
    ^self
! !

"ASDBase.ic method 0x2005ab84; bytecode file offset 0x957a6c"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
itemListcellSingleSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) editItem.
    ^self
! !

"ASDBase.ic method 0x2005ae3c; bytecode file offset 0x957a6c"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
renameViewActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) renameItem.
    ^self
! !

"ASDBase.ic method 0x2005af38; bytecode file offset 0x957a6c"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
delViewActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) deleteItem.
    ^self
! !

"ASDBase.ic method 0x2005af5c; bytecode file offset 0x957a6c"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
addViewActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) addNewItem.
    ^self
! !

"ASDBase.ic method 0x2005aff8; bytecode file offset 0x957a6c"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
exportViewActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) exportViews.
    ^self
! !

"ASDBase.ic method 0x200700b0; bytecode file offset 0x96cb7c"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
views
    | recoveredValue0 |
    recoveredValue0 := views.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c6838; bytecode file offset 0x9c3164"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
views: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    views := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200efa58; bytecode file offset 0x9ec320"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
close
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := MainController.
    recoveredValue1 := (self) views.
    (recoveredValue0) updateCategories: (recoveredValue1).
    recoveredValue2 := super close.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20111800; bytecode file offset 0xa0e0c8"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
beginEditString: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) editPolicy.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue2) item.
    recoveredValue4 := (recoveredValue3) name.
    (recoveredValue1) value: (recoveredValue4).
    recoveredValue5 := recoveredArg3.
    (recoveredValue5) doit: (true).
    ^self
! !

"ASDBase.ic method 0x20162040; bytecode file offset 0xa5e904"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
selectedItem
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
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
            recoveredStack0 := (recoveredStack0) itemList.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017b318; bytecode file offset 0xa77bfc"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
renameItem
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemList.
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
            recoveredStack0 := (recoveredStack0) itemList.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) editItemAt: (recoveredStack1).
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

"ASDBase.ic method 0x201ddfd0; bytecode file offset 0xada894"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
editItem
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItem.
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
            recoveredStack0 := SGDocuContentsDialogTB.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectedItem.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFor: (recoveredStack1) view: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f277c; bytecode file offset 0xaef044"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
deleteItem
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) itemList.
    recoveredValue1 := (recoveredValue0) selectedItems.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := views.
    recoveredBlock6Value1 := recoveredBlock6Arg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) copyWithout: (recoveredBlock6Value1).
    recoveredBlock6Value3 := recoveredBlock6Value2.
    views := recoveredBlock6Value3.
    recoveredBlock6Value2
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := (self) itemList.
    recoveredValue4 := views.
    (recoveredValue3) items: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x202282c8; bytecode file offset 0xb24b98"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
updateItemListSelectFirst: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := views.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := views.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) & (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemList.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := views.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) selectItem: (recoveredStack2) notify: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) setPos: (recoveredStack1).
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

"ASDBase.ic method 0x202441a0; bytecode file offset 0xb40a6c"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
getBasicBlocksForViewType: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) getElementsByTagName: ('Comment').
    recoveredValue4 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 |
    recoveredBlock16Value0 := recoveredLocal1.
    recoveredBlock16Value1 := (recoveredBlock16Value0) add: ('Comment').
    recoveredBlock16Value1
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20278960; bytecode file offset 0xb75238"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
name: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := ' <'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := SGReservedNames.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := (recoveredStack4) defaultName.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := '>'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) label: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) label: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20301710; bytecode file offset 0xbfdff0"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
endEditString: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) newValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
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
            recoveredStack1 := 'Kli'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'Call_54698'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := views.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:block280e9724Arg1 | 
    | block280e9724Value0 block280e9724Value1 |
    block280e9724Value0 := block280e9724Arg1.
    block280e9724Value1 := (block280e9724Value0) name.
    block280e9724Value1
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWithout: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) newValue.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) uniqueStringFor: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) refresh.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20306e98; bytecode file offset 0xc0377c"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
addNewItem
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGCategory.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := views.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := [:block280e9ee0Arg1 | 
    | block280e9ee0Value0 block280e9ee0Value1 |
    block280e9ee0Value0 := block280e9ee0Arg1.
    block280e9ee0Value1 := (block280e9ee0Value0) name.
    block280e9ee0Value1
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) uniqueStringFor: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := views.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWith: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            views := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) updateItemListSelectFirst: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemList.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) selectItem: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) renameItem.
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

"ASDBase.ic method 0x2030bf30; bytecode file offset 0xc08824"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initializeAfterCreate.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 'GeneralViews'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'GeneralViews32'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) iconSmall: (recoveredStack1) large: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) updateFonts.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) notesAndViewsAvailable.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) allCategories.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) views: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) updateItemListSelectFirst: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemList.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) createViewMenu.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) menu: (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031a014; bytecode file offset 0xc168ec"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
readBasicBlockDefaultsForCategory: recoveredArg1 fromTag: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12Stack5 recoveredBlock12Stack6 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := recoveredArg2.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg1.
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) removeWhiteSpaces.
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) getElementsByTagName: (recoveredBlock12Stack3).
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Stack2.
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            recoveredLocal2 := recoveredBlock12Stack3.
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) isEmpty.
            recoveredBlock12PC := 32.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 53] ifFalse: [recoveredBlock12PC := 36].
        ].
        recoveredBlock12Step = 36 ifTrue: [
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            recoveredBlock12Stack1 := self.
            recoveredBlock12PC := 38.
        ].
        recoveredBlock12Step = 38 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 39.
        ].
        recoveredBlock12Step = 39 ifTrue: [
            recoveredBlock12Stack3 := recoveredLocal2.
            recoveredBlock12PC := 42.
        ].
        recoveredBlock12Step = 42 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) first.
            recoveredBlock12PC := 44.
        ].
        recoveredBlock12Step = 44 ifTrue: [
            recoveredBlock12Stack4 := recoveredArg1.
            recoveredBlock12PC := 47.
        ].
        recoveredBlock12Step = 47 ifTrue: [
            recoveredBlock12Stack5 := recoveredLocal1.
            recoveredBlock12PC := 50.
        ].
        recoveredBlock12Step = 50 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) readBasicBlockDefault: (recoveredBlock12Stack2) forType: (recoveredBlock12Stack3) forCategory: (recoveredBlock12Stack4) usedBlocks: (recoveredBlock12Stack5).
            recoveredBlock12PC := 53.
        ].
        recoveredBlock12Step = 53 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (#('As Line' 'Invisible' 'Contour' 'Hide Contents' 'Normal')) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2031b888; bytecode file offset 0xc18158"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
setSelectedItemToDefault
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItem.
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
            recoveredStack0 := (recoveredStack0) selectedItem.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
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
            recoveredStack0 := (recoveredStack0) selectedItem.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) setDefault: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := views.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 recoveredBlock26Value4 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := recoveredBlock26Arg1.
    recoveredBlock26Value2 := (self) selectedItem.
    recoveredBlock26Value3 := (recoveredBlock26Value1) = (recoveredBlock26Value2).
    recoveredBlock26Value4 := (recoveredBlock26Value0) setDefault: (recoveredBlock26Value3).
    recoveredBlock26Value4
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemList.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := views.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemList.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedItem.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) selectItem: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f0ae0; bytecode file offset 0xced3c8"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
readBasicBlockDefault: recoveredArg1 forType: recoveredArg2 forCategory: recoveredArg3 usedBlocks: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicBlockLists.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) getBasicBlocksForViewType: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 recoveredBlock35Value4 |
    recoveredBlock35Value0 := recoveredArg4.
    recoveredBlock35Value1 := recoveredBlock35Arg1.
    recoveredBlock35Value2 := [
    | recoveredBlock35Block48Value0 recoveredBlock35Block48Value1 recoveredBlock35Block48Value2 |
    recoveredBlock35Block48Value0 := recoveredArg4.
    recoveredBlock35Block48Value1 := recoveredBlock35Arg1.
    recoveredBlock35Block48Value2 := (recoveredBlock35Block48Value0) at: (recoveredBlock35Block48Value1) put: (true).
    recoveredBlock35Block48Value2
].
    recoveredBlock35Value3 := [:recoveredBlock35Block64Arg1 | 
    | recoveredBlock35Block64Value0 recoveredBlock35Block64Value1 recoveredBlock35Block64Value2 recoveredBlock35Block64Value3 recoveredBlock35Block64Value4 |
    recoveredBlock35Block64Value0 := SGMonitorStreamDummy.
    recoveredBlock35Block64Value1 := (recoveredBlock35Block64Value0) create.
    recoveredBlock35Block64Value2 := recoveredBlock35Arg1.
    recoveredBlock35Block64Value3 := ('Error on parsing XML file. Multiple defaults for basic block <%1>!!') bindWith: (recoveredBlock35Block64Value2).
    recoveredBlock35Block64Value4 := (recoveredBlock35Block64Value1) addErrorText: (recoveredBlock35Block64Value3).
    recoveredBlock35Block64Value4
].
    recoveredBlock35Value4 := (recoveredBlock35Value0) at: (recoveredBlock35Value1) ifAbsent: (recoveredBlock35Value2) ifPresent: (recoveredBlock35Value3).
    recoveredBlock35Value4
].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2043d110; bytecode file offset 0xd39a24"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
importDefaultViews
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDGeneralOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionDefaultsViewConfiguration.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 107].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := CfsReadFileStream.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 |
    recoveredBlock53Value0 := recoveredLocal1.
    recoveredBlock53Value1 := RBUserInfo.
    recoveredBlock53Value2 := (self) importViewsFromXmlString: (recoveredBlock53Value0) errorLogger: (recoveredBlock53Value1).
    recoveredBlock53Value2
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := SgmlException.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := [:recoveredBlock70Arg1 | 
    | recoveredBlock70Value0 recoveredBlock70Value1 recoveredBlock70Value2 recoveredBlock70Value3 recoveredBlock70Value4 recoveredBlock70Value5 recoveredBlock70Value6 |
    recoveredBlock70Value0 := SGMonitorStreamDummy.
    recoveredBlock70Value1 := (recoveredBlock70Value0) create.
    recoveredBlock70Value2 := recoveredLocal3.
    recoveredBlock70Value3 := ('Fatal error when importing views from: ') , (recoveredBlock70Value2).
    recoveredBlock70Value4 := (recoveredBlock70Value3) , ('. Wrong file format.').
    (recoveredBlock70Value1) addErrorText: (recoveredBlock70Value4).
    recoveredBlock70Value5 := recoveredBlock70Arg1.
    recoveredBlock70Value6 := (recoveredBlock70Value5) exitWith: (nil).
    recoveredBlock70Value6
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) views.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) updateCategories: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204856a0; bytecode file offset 0xd81fa8"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
createViewMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            recoveredStack3 := '~View'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'addNewItem'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := '~Add'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := 'renameItem'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := '~Rename'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock33Value0 recoveredBlock33Value1 |
    recoveredBlock33Value0 := (self) selectedItem.
    recoveredBlock33Value1 := (recoveredBlock33Value0) notNil.
    recoveredBlock33Value1
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := 'editItem'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := '~Edit'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock51Value0 recoveredBlock51Value1 |
    recoveredBlock51Value0 := (self) selectedItem.
    recoveredBlock51Value1 := (recoveredBlock51Value0) notNil.
    recoveredBlock51Value1
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := 'deleteItem'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := '~Delete'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock72Value0 recoveredBlock72Value1 |
    recoveredBlock72Value0 := (self) selectedItem.
    recoveredBlock72Value1 := (recoveredBlock72Value0) notNil.
    recoveredBlock72Value1
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := 'setSelectedItemToDefault'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := 'De~fault'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock92Value0 recoveredBlock92Value1 |
    recoveredBlock92Value0 := (self) selectedItem.
    recoveredBlock92Value1 := (recoveredBlock92Value0) notNil.
    recoveredBlock92Value1
].
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack6 := [
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
            recoveredBlock102Stack2 := (recoveredBlock102Stack2) selectedItem.
            recoveredBlock102PC := 112.
        ].
        recoveredBlock102Step = 112 ifTrue: [
            (recoveredBlock102Stack2 == nil) ifTrue: [recoveredBlock102PC := 122] ifFalse: [recoveredBlock102PC := 116].
        ].
        recoveredBlock102Step = 116 ifTrue: [
            recoveredBlock102PC := 117.
        ].
        recoveredBlock102Step = 117 ifTrue: [
            recoveredBlock102Stack1 := self.
            recoveredBlock102PC := 118.
        ].
        recoveredBlock102Step = 118 ifTrue: [
            recoveredBlock102Stack1 := (recoveredBlock102Stack1) selectedItem.
            recoveredBlock102PC := 120.
        ].
        recoveredBlock102Step = 120 ifTrue: [
            recoveredBlock102Stack1 := (recoveredBlock102Stack1) default.
            recoveredBlock102PC := 122.
        ].
        recoveredBlock102Step = 122 ifTrue: [
            recoveredBlock102Result := recoveredBlock102Stack1.
            recoveredBlock102Done := true.
        ].
    ].
    recoveredBlock102Result
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) toggle: (recoveredStack6).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204ff410; bytecode file offset 0xdfbd7c"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
importViews
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_62438'.
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
            recoveredStack1 := EtasUserQuestion.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'Existing views will be overwritten!!\Continue anyway?.'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := 'ImportViews'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) prompterID: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := 'OKCANCEL'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) buttonStyle: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := 'question'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := RBFileSelectionPrompter.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := 'Import File'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := 'views.xml'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack2) fileName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := MainController.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) getOrCreateExportPath.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack2) searchPath: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := '*.xml'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack2) searchMask: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := Dictionary.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack5 := '*.xml'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack6 := EtXmlFile.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack4) at: (recoveredStack5) put: (recoveredStack6).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack2) filterDictionary: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := XmOPEN.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack2) accessType: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := (recoveredStack3) shell.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack2) parent: (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 129] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := 'The file \'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := '\ does not exists.'.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := CfsReadFileStream.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 163].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := 'The file \'.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack3 := '\ could not be opened.'.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := RBUserInfo.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) importViewsFromXmlString: (recoveredStack1) errorLogger: (recoveredStack2).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2051d758; bytecode file offset 0xe1a08c"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
writeViewTypesForElement: recoveredArg1 to: recoveredArg2 in: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'Element'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) createElement: (recoveredStack2).
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
            recoveredStack3 := 'type'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack5 := 'Type'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack6 := [
    'UNDEFINED'
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5) ifAbsent: (recoveredStack6).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := (recoveredStack4) abtXmlPrintString.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack2) setAttribute: (recoveredStack3) value: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := 'modelType'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack5 := 'ModelType'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack6 := [
    'UNDEFINED'
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5) ifAbsent: (recoveredStack6).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := (recoveredStack4) abtXmlPrintString.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack2) setAttribute: (recoveredStack3) value: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := 'kind'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack5 := 'Kind'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack6 := [
    'UNDEFINED'
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5) ifAbsent: (recoveredStack6).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := (recoveredStack4) abtXmlPrintString.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack2) setAttribute: (recoveredStack3) value: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := 'scope'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack5 := 'Scope'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack6 := [
    'UNDEFINED'
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5) ifAbsent: (recoveredStack6).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := (recoveredStack4) abtXmlPrintString.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack2) setAttribute: (recoveredStack3) value: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := 'existence'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack5 := 'Existence'.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack6 := [
    'UNDEFINED'
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5) ifAbsent: (recoveredStack6).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack4 := (recoveredStack4) abtXmlPrintString.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack2) setAttribute: (recoveredStack3) value: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := 'dependency'.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack5 := 'Dependency'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack6 := [
    'UNDEFINED'
].
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5) ifAbsent: (recoveredStack6).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack4 := (recoveredStack4) abtXmlPrintString.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack2) setAttribute: (recoveredStack3) value: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := 'memory'.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack5 := 'Memory'.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack6 := [
    'UNDEFINED'
].
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5) ifAbsent: (recoveredStack6).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack4 := (recoveredStack4) abtXmlPrintString.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack2) setAttribute: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := 'calibration'.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack4 := 'Calibration'.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack5 := [
    'UNDEFINED'
].
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4) ifAbsent: (recoveredStack5).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := (recoveredStack3) abtXmlPrintString.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack1) setAttribute: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack1) appendChild: (recoveredStack2).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205d2344; bytecode file offset 0xecec78"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
getElementsForViewType: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) getElementsByTagName: ('Element').
    recoveredValue4 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Local1 recoveredBlock16Local2 recoveredBlock16Local3 recoveredBlock16Local4 recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16Stack4 recoveredBlock16Stack5 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := Dictionary.
            recoveredBlock16PC := 24.
        ].
        recoveredBlock16Step = 24 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) new.
            recoveredBlock16PC := 25.
        ].
        recoveredBlock16Step = 25 ifTrue: [
            recoveredBlock16Local2 := recoveredBlock16Stack1.
            recoveredBlock16PC := 26.
        ].
        recoveredBlock16Step = 26 ifTrue: [
            recoveredBlock16Stack1 := ''.
            recoveredBlock16PC := 28.
        ].
        recoveredBlock16Step = 28 ifTrue: [
            recoveredBlock16Local3 := recoveredBlock16Stack1.
            recoveredBlock16PC := 29.
        ].
        recoveredBlock16Step = 29 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 31.
        ].
        recoveredBlock16Step = 31 ifTrue: [
            recoveredBlock16Stack2 := 'type'.
            recoveredBlock16PC := 33.
        ].
        recoveredBlock16Step = 33 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) getAttribute: (recoveredBlock16Stack2).
            recoveredBlock16PC := 35.
        ].
        recoveredBlock16Step = 35 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Stack1.
            recoveredBlock16PC := 36.
        ].
        recoveredBlock16Step = 36 ifTrue: [
            recoveredBlock16Local4 := recoveredBlock16Stack2.
            recoveredBlock16PC := 37.
        ].
        recoveredBlock16Step = 37 ifTrue: [
            (recoveredBlock16Stack1 == nil) ifTrue: [recoveredBlock16PC := 50] ifFalse: [recoveredBlock16PC := 40].
        ].
        recoveredBlock16Step = 40 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local2.
            recoveredBlock16PC := 41.
        ].
        recoveredBlock16Step = 41 ifTrue: [
            recoveredBlock16Stack2 := 'Type'.
            recoveredBlock16PC := 43.
        ].
        recoveredBlock16Step = 43 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Local4.
            recoveredBlock16PC := 44.
        ].
        recoveredBlock16Step = 44 ifTrue: [
            (recoveredBlock16Stack1) at: (recoveredBlock16Stack2) put: (recoveredBlock16Stack3).
            recoveredBlock16PC := 46.
        ].
        recoveredBlock16Step = 46 ifTrue: [
            recoveredBlock16PC := 57.
        ].
        recoveredBlock16Step = 50 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local2.
            recoveredBlock16PC := 51.
        ].
        recoveredBlock16Step = 51 ifTrue: [
            recoveredBlock16Stack2 := 'Type'.
            recoveredBlock16PC := 53.
        ].
        recoveredBlock16Step = 53 ifTrue: [
            recoveredBlock16Stack3 := 'UNDEFINED'.
            recoveredBlock16PC := 55.
        ].
        recoveredBlock16Step = 55 ifTrue: [
            (recoveredBlock16Stack1) at: (recoveredBlock16Stack2) put: (recoveredBlock16Stack3).
            recoveredBlock16PC := 57.
        ].
        recoveredBlock16Step = 57 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 59.
        ].
        recoveredBlock16Step = 59 ifTrue: [
            recoveredBlock16Stack2 := 'modelType'.
            recoveredBlock16PC := 61.
        ].
        recoveredBlock16Step = 61 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) getAttribute: (recoveredBlock16Stack2).
            recoveredBlock16PC := 63.
        ].
        recoveredBlock16Step = 63 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Stack1.
            recoveredBlock16PC := 64.
        ].
        recoveredBlock16Step = 64 ifTrue: [
            recoveredBlock16Local4 := recoveredBlock16Stack2.
            recoveredBlock16PC := 65.
        ].
        recoveredBlock16Step = 65 ifTrue: [
            (recoveredBlock16Stack1 == nil) ifTrue: [recoveredBlock16PC := 78] ifFalse: [recoveredBlock16PC := 68].
        ].
        recoveredBlock16Step = 68 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local2.
            recoveredBlock16PC := 69.
        ].
        recoveredBlock16Step = 69 ifTrue: [
            recoveredBlock16Stack2 := 'ModelType'.
            recoveredBlock16PC := 71.
        ].
        recoveredBlock16Step = 71 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Local4.
            recoveredBlock16PC := 72.
        ].
        recoveredBlock16Step = 72 ifTrue: [
            (recoveredBlock16Stack1) at: (recoveredBlock16Stack2) put: (recoveredBlock16Stack3).
            recoveredBlock16PC := 74.
        ].
        recoveredBlock16Step = 74 ifTrue: [
            recoveredBlock16PC := 85.
        ].
        recoveredBlock16Step = 78 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local2.
            recoveredBlock16PC := 79.
        ].
        recoveredBlock16Step = 79 ifTrue: [
            recoveredBlock16Stack2 := 'ModelType'.
            recoveredBlock16PC := 81.
        ].
        recoveredBlock16Step = 81 ifTrue: [
            recoveredBlock16Stack3 := 'UNDEFINED'.
            recoveredBlock16PC := 83.
        ].
        recoveredBlock16Step = 83 ifTrue: [
            (recoveredBlock16Stack1) at: (recoveredBlock16Stack2) put: (recoveredBlock16Stack3).
            recoveredBlock16PC := 85.
        ].
        recoveredBlock16Step = 85 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 87.
        ].
        recoveredBlock16Step = 87 ifTrue: [
            recoveredBlock16Stack2 := 'kind'.
            recoveredBlock16PC := 89.
        ].
        recoveredBlock16Step = 89 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) getAttribute: (recoveredBlock16Stack2).
            recoveredBlock16PC := 91.
        ].
        recoveredBlock16Step = 91 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Stack1.
            recoveredBlock16PC := 92.
        ].
        recoveredBlock16Step = 92 ifTrue: [
            recoveredBlock16Local4 := recoveredBlock16Stack2.
            recoveredBlock16PC := 93.
        ].
        recoveredBlock16Step = 93 ifTrue: [
            (recoveredBlock16Stack1 == nil) ifTrue: [recoveredBlock16PC := 106] ifFalse: [recoveredBlock16PC := 96].
        ].
        recoveredBlock16Step = 96 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local2.
            recoveredBlock16PC := 97.
        ].
        recoveredBlock16Step = 97 ifTrue: [
            recoveredBlock16Stack2 := 'Kind'.
            recoveredBlock16PC := 99.
        ].
        recoveredBlock16Step = 99 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Local4.
            recoveredBlock16PC := 100.
        ].
        recoveredBlock16Step = 100 ifTrue: [
            (recoveredBlock16Stack1) at: (recoveredBlock16Stack2) put: (recoveredBlock16Stack3).
            recoveredBlock16PC := 102.
        ].
        recoveredBlock16Step = 102 ifTrue: [
            recoveredBlock16PC := 113.
        ].
        recoveredBlock16Step = 106 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local2.
            recoveredBlock16PC := 107.
        ].
        recoveredBlock16Step = 107 ifTrue: [
            recoveredBlock16Stack2 := 'Kind'.
            recoveredBlock16PC := 109.
        ].
        recoveredBlock16Step = 109 ifTrue: [
            recoveredBlock16Stack3 := 'UNDEFINED'.
            recoveredBlock16PC := 111.
        ].
        recoveredBlock16Step = 111 ifTrue: [
            (recoveredBlock16Stack1) at: (recoveredBlock16Stack2) put: (recoveredBlock16Stack3).
            recoveredBlock16PC := 113.
        ].
        recoveredBlock16Step = 113 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 115.
        ].
        recoveredBlock16Step = 115 ifTrue: [
            recoveredBlock16Stack2 := 'scope'.
            recoveredBlock16PC := 117.
        ].
        recoveredBlock16Step = 117 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) getAttribute: (recoveredBlock16Stack2).
            recoveredBlock16PC := 119.
        ].
        recoveredBlock16Step = 119 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Stack1.
            recoveredBlock16PC := 120.
        ].
        recoveredBlock16Step = 120 ifTrue: [
            recoveredBlock16Local4 := recoveredBlock16Stack2.
            recoveredBlock16PC := 121.
        ].
        recoveredBlock16Step = 121 ifTrue: [
            (recoveredBlock16Stack1 == nil) ifTrue: [recoveredBlock16PC := 134] ifFalse: [recoveredBlock16PC := 124].
        ].
        recoveredBlock16Step = 124 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local2.
            recoveredBlock16PC := 125.
        ].
        recoveredBlock16Step = 125 ifTrue: [
            recoveredBlock16Stack2 := 'Scope'.
            recoveredBlock16PC := 127.
        ].
        recoveredBlock16Step = 127 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Local4.
            recoveredBlock16PC := 128.
        ].
        recoveredBlock16Step = 128 ifTrue: [
            (recoveredBlock16Stack1) at: (recoveredBlock16Stack2) put: (recoveredBlock16Stack3).
            recoveredBlock16PC := 130.
        ].
        recoveredBlock16Step = 130 ifTrue: [
            recoveredBlock16PC := 141.
        ].
        recoveredBlock16Step = 134 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local2.
            recoveredBlock16PC := 135.
        ].
        recoveredBlock16Step = 135 ifTrue: [
            recoveredBlock16Stack2 := 'Scope'.
            recoveredBlock16PC := 137.
        ].
        recoveredBlock16Step = 137 ifTrue: [
            recoveredBlock16Stack3 := 'UNDEFINED'.
            recoveredBlock16PC := 139.
        ].
        recoveredBlock16Step = 139 ifTrue: [
            (recoveredBlock16Stack1) at: (recoveredBlock16Stack2) put: (recoveredBlock16Stack3).
            recoveredBlock16PC := 141.
        ].
        recoveredBlock16Step = 141 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 143.
        ].
        recoveredBlock16Step = 143 ifTrue: [
            recoveredBlock16Stack2 := 'existence'.
            recoveredBlock16PC := 145.
        ].
        recoveredBlock16Step = 145 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) getAttribute: (recoveredBlock16Stack2).
            recoveredBlock16PC := 147.
        ].
        recoveredBlock16Step = 147 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Stack1.
            recoveredBlock16PC := 148.
        ].
        recoveredBlock16Step = 148 ifTrue: [
            recoveredBlock16Local4 := recoveredBlock16Stack2.
            recoveredBlock16PC := 149.
        ].
        recoveredBlock16Step = 149 ifTrue: [
            (recoveredBlock16Stack1 == nil) ifTrue: [recoveredBlock16PC := 162] ifFalse: [recoveredBlock16PC := 152].
        ].
        recoveredBlock16Step = 152 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local2.
            recoveredBlock16PC := 153.
        ].
        recoveredBlock16Step = 153 ifTrue: [
            recoveredBlock16Stack2 := 'Existence'.
            recoveredBlock16PC := 155.
        ].
        recoveredBlock16Step = 155 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Local4.
            recoveredBlock16PC := 156.
        ].
        recoveredBlock16Step = 156 ifTrue: [
            (recoveredBlock16Stack1) at: (recoveredBlock16Stack2) put: (recoveredBlock16Stack3).
            recoveredBlock16PC := 158.
        ].
        recoveredBlock16Step = 158 ifTrue: [
            recoveredBlock16PC := 169.
        ].
        recoveredBlock16Step = 162 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local2.
            recoveredBlock16PC := 163.
        ].
        recoveredBlock16Step = 163 ifTrue: [
            recoveredBlock16Stack2 := 'Existence'.
            recoveredBlock16PC := 165.
        ].
        recoveredBlock16Step = 165 ifTrue: [
            recoveredBlock16Stack3 := 'UNDEFINED'.
            recoveredBlock16PC := 167.
        ].
        recoveredBlock16Step = 167 ifTrue: [
            (recoveredBlock16Stack1) at: (recoveredBlock16Stack2) put: (recoveredBlock16Stack3).
            recoveredBlock16PC := 169.
        ].
        recoveredBlock16Step = 169 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 171.
        ].
        recoveredBlock16Step = 171 ifTrue: [
            recoveredBlock16Stack2 := 'dependency'.
            recoveredBlock16PC := 173.
        ].
        recoveredBlock16Step = 173 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) getAttribute: (recoveredBlock16Stack2).
            recoveredBlock16PC := 175.
        ].
        recoveredBlock16Step = 175 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Stack1.
            recoveredBlock16PC := 176.
        ].
        recoveredBlock16Step = 176 ifTrue: [
            recoveredBlock16Local4 := recoveredBlock16Stack2.
            recoveredBlock16PC := 177.
        ].
        recoveredBlock16Step = 177 ifTrue: [
            (recoveredBlock16Stack1 == nil) ifTrue: [recoveredBlock16PC := 190] ifFalse: [recoveredBlock16PC := 180].
        ].
        recoveredBlock16Step = 180 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local2.
            recoveredBlock16PC := 181.
        ].
        recoveredBlock16Step = 181 ifTrue: [
            recoveredBlock16Stack2 := 'Dependency'.
            recoveredBlock16PC := 183.
        ].
        recoveredBlock16Step = 183 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Local4.
            recoveredBlock16PC := 184.
        ].
        recoveredBlock16Step = 184 ifTrue: [
            (recoveredBlock16Stack1) at: (recoveredBlock16Stack2) put: (recoveredBlock16Stack3).
            recoveredBlock16PC := 186.
        ].
        recoveredBlock16Step = 186 ifTrue: [
            recoveredBlock16PC := 197.
        ].
        recoveredBlock16Step = 190 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local2.
            recoveredBlock16PC := 191.
        ].
        recoveredBlock16Step = 191 ifTrue: [
            recoveredBlock16Stack2 := 'Dependency'.
            recoveredBlock16PC := 193.
        ].
        recoveredBlock16Step = 193 ifTrue: [
            recoveredBlock16Stack3 := 'UNDEFINED'.
            recoveredBlock16PC := 195.
        ].
        recoveredBlock16Step = 195 ifTrue: [
            (recoveredBlock16Stack1) at: (recoveredBlock16Stack2) put: (recoveredBlock16Stack3).
            recoveredBlock16PC := 197.
        ].
        recoveredBlock16Step = 197 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 199.
        ].
        recoveredBlock16Step = 199 ifTrue: [
            recoveredBlock16Stack2 := 'memory'.
            recoveredBlock16PC := 201.
        ].
        recoveredBlock16Step = 201 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) getAttribute: (recoveredBlock16Stack2).
            recoveredBlock16PC := 203.
        ].
        recoveredBlock16Step = 203 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Stack1.
            recoveredBlock16PC := 204.
        ].
        recoveredBlock16Step = 204 ifTrue: [
            recoveredBlock16Local4 := recoveredBlock16Stack2.
            recoveredBlock16PC := 205.
        ].
        recoveredBlock16Step = 205 ifTrue: [
            (recoveredBlock16Stack1 == nil) ifTrue: [recoveredBlock16PC := 218] ifFalse: [recoveredBlock16PC := 208].
        ].
        recoveredBlock16Step = 208 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local2.
            recoveredBlock16PC := 209.
        ].
        recoveredBlock16Step = 209 ifTrue: [
            recoveredBlock16Stack2 := 'Memory'.
            recoveredBlock16PC := 211.
        ].
        recoveredBlock16Step = 211 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Local4.
            recoveredBlock16PC := 212.
        ].
        recoveredBlock16Step = 212 ifTrue: [
            (recoveredBlock16Stack1) at: (recoveredBlock16Stack2) put: (recoveredBlock16Stack3).
            recoveredBlock16PC := 214.
        ].
        recoveredBlock16Step = 214 ifTrue: [
            recoveredBlock16PC := 225.
        ].
        recoveredBlock16Step = 218 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local2.
            recoveredBlock16PC := 219.
        ].
        recoveredBlock16Step = 219 ifTrue: [
            recoveredBlock16Stack2 := 'Memory'.
            recoveredBlock16PC := 221.
        ].
        recoveredBlock16Step = 221 ifTrue: [
            recoveredBlock16Stack3 := 'UNDEFINED'.
            recoveredBlock16PC := 223.
        ].
        recoveredBlock16Step = 223 ifTrue: [
            (recoveredBlock16Stack1) at: (recoveredBlock16Stack2) put: (recoveredBlock16Stack3).
            recoveredBlock16PC := 225.
        ].
        recoveredBlock16Step = 225 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 227.
        ].
        recoveredBlock16Step = 227 ifTrue: [
            recoveredBlock16Stack2 := 'calibration'.
            recoveredBlock16PC := 229.
        ].
        recoveredBlock16Step = 229 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) getAttribute: (recoveredBlock16Stack2).
            recoveredBlock16PC := 231.
        ].
        recoveredBlock16Step = 231 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Stack1.
            recoveredBlock16PC := 232.
        ].
        recoveredBlock16Step = 232 ifTrue: [
            recoveredBlock16Local4 := recoveredBlock16Stack2.
            recoveredBlock16PC := 233.
        ].
        recoveredBlock16Step = 233 ifTrue: [
            (recoveredBlock16Stack1 == nil) ifTrue: [recoveredBlock16PC := 246] ifFalse: [recoveredBlock16PC := 236].
        ].
        recoveredBlock16Step = 236 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local2.
            recoveredBlock16PC := 237.
        ].
        recoveredBlock16Step = 237 ifTrue: [
            recoveredBlock16Stack2 := 'Calibration'.
            recoveredBlock16PC := 239.
        ].
        recoveredBlock16Step = 239 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Local4.
            recoveredBlock16PC := 240.
        ].
        recoveredBlock16Step = 240 ifTrue: [
            (recoveredBlock16Stack1) at: (recoveredBlock16Stack2) put: (recoveredBlock16Stack3).
            recoveredBlock16PC := 242.
        ].
        recoveredBlock16Step = 242 ifTrue: [
            recoveredBlock16PC := 253.
        ].
        recoveredBlock16Step = 246 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local2.
            recoveredBlock16PC := 247.
        ].
        recoveredBlock16Step = 247 ifTrue: [
            recoveredBlock16Stack2 := 'Calibration'.
            recoveredBlock16PC := 249.
        ].
        recoveredBlock16Step = 249 ifTrue: [
            recoveredBlock16Stack3 := 'UNDEFINED'.
            recoveredBlock16PC := 251.
        ].
        recoveredBlock16Step = 251 ifTrue: [
            (recoveredBlock16Stack1) at: (recoveredBlock16Stack2) put: (recoveredBlock16Stack3).
            recoveredBlock16PC := 253.
        ].
        recoveredBlock16Step = 253 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local2.
            recoveredBlock16PC := 254.
        ].
        recoveredBlock16Step = 254 ifTrue: [
            recoveredBlock16Stack2 := 'Type'.
            recoveredBlock16PC := 256.
        ].
        recoveredBlock16Step = 256 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) at: (recoveredBlock16Stack2).
            recoveredBlock16PC := 258.
        ].
        recoveredBlock16Step = 258 ifTrue: [
            recoveredBlock16Stack2 := '-'.
            recoveredBlock16PC := 260.
        ].
        recoveredBlock16Step = 260 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) , (recoveredBlock16Stack2).
            recoveredBlock16PC := 262.
        ].
        recoveredBlock16Step = 262 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Local2.
            recoveredBlock16PC := 263.
        ].
        recoveredBlock16Step = 263 ifTrue: [
            recoveredBlock16Stack3 := 'ModelType'.
            recoveredBlock16PC := 265.
        ].
        recoveredBlock16Step = 265 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) at: (recoveredBlock16Stack3).
            recoveredBlock16PC := 267.
        ].
        recoveredBlock16Step = 267 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) , (recoveredBlock16Stack2).
            recoveredBlock16PC := 269.
        ].
        recoveredBlock16Step = 269 ifTrue: [
            recoveredBlock16Stack2 := '-'.
            recoveredBlock16PC := 271.
        ].
        recoveredBlock16Step = 271 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) , (recoveredBlock16Stack2).
            recoveredBlock16PC := 273.
        ].
        recoveredBlock16Step = 273 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Local2.
            recoveredBlock16PC := 274.
        ].
        recoveredBlock16Step = 274 ifTrue: [
            recoveredBlock16Stack3 := 'Kind'.
            recoveredBlock16PC := 276.
        ].
        recoveredBlock16Step = 276 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) at: (recoveredBlock16Stack3).
            recoveredBlock16PC := 278.
        ].
        recoveredBlock16Step = 278 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) , (recoveredBlock16Stack2).
            recoveredBlock16PC := 280.
        ].
        recoveredBlock16Step = 280 ifTrue: [
            recoveredBlock16Stack2 := '-'.
            recoveredBlock16PC := 282.
        ].
        recoveredBlock16Step = 282 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) , (recoveredBlock16Stack2).
            recoveredBlock16PC := 284.
        ].
        recoveredBlock16Step = 284 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Local2.
            recoveredBlock16PC := 285.
        ].
        recoveredBlock16Step = 285 ifTrue: [
            recoveredBlock16Stack3 := 'Scope'.
            recoveredBlock16PC := 287.
        ].
        recoveredBlock16Step = 287 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) at: (recoveredBlock16Stack3).
            recoveredBlock16PC := 289.
        ].
        recoveredBlock16Step = 289 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) , (recoveredBlock16Stack2).
            recoveredBlock16PC := 291.
        ].
        recoveredBlock16Step = 291 ifTrue: [
            recoveredBlock16Stack2 := '-'.
            recoveredBlock16PC := 293.
        ].
        recoveredBlock16Step = 293 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) , (recoveredBlock16Stack2).
            recoveredBlock16PC := 295.
        ].
        recoveredBlock16Step = 295 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Local2.
            recoveredBlock16PC := 296.
        ].
        recoveredBlock16Step = 296 ifTrue: [
            recoveredBlock16Stack3 := 'Existence'.
            recoveredBlock16PC := 298.
        ].
        recoveredBlock16Step = 298 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) at: (recoveredBlock16Stack3).
            recoveredBlock16PC := 300.
        ].
        recoveredBlock16Step = 300 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) , (recoveredBlock16Stack2).
            recoveredBlock16PC := 302.
        ].
        recoveredBlock16Step = 302 ifTrue: [
            recoveredBlock16Stack2 := '-'.
            recoveredBlock16PC := 304.
        ].
        recoveredBlock16Step = 304 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) , (recoveredBlock16Stack2).
            recoveredBlock16PC := 306.
        ].
        recoveredBlock16Step = 306 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Local2.
            recoveredBlock16PC := 307.
        ].
        recoveredBlock16Step = 307 ifTrue: [
            recoveredBlock16Stack3 := 'Dependency'.
            recoveredBlock16PC := 309.
        ].
        recoveredBlock16Step = 309 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) at: (recoveredBlock16Stack3).
            recoveredBlock16PC := 311.
        ].
        recoveredBlock16Step = 311 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) , (recoveredBlock16Stack2).
            recoveredBlock16PC := 313.
        ].
        recoveredBlock16Step = 313 ifTrue: [
            recoveredBlock16Stack2 := '-'.
            recoveredBlock16PC := 315.
        ].
        recoveredBlock16Step = 315 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) , (recoveredBlock16Stack2).
            recoveredBlock16PC := 317.
        ].
        recoveredBlock16Step = 317 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Local2.
            recoveredBlock16PC := 318.
        ].
        recoveredBlock16Step = 318 ifTrue: [
            recoveredBlock16Stack3 := 'Memory'.
            recoveredBlock16PC := 320.
        ].
        recoveredBlock16Step = 320 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) at: (recoveredBlock16Stack3).
            recoveredBlock16PC := 322.
        ].
        recoveredBlock16Step = 322 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) , (recoveredBlock16Stack2).
            recoveredBlock16PC := 324.
        ].
        recoveredBlock16Step = 324 ifTrue: [
            recoveredBlock16Stack2 := '-'.
            recoveredBlock16PC := 326.
        ].
        recoveredBlock16Step = 326 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) , (recoveredBlock16Stack2).
            recoveredBlock16PC := 328.
        ].
        recoveredBlock16Step = 328 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Local2.
            recoveredBlock16PC := 329.
        ].
        recoveredBlock16Step = 329 ifTrue: [
            recoveredBlock16Stack3 := 'Calibration'.
            recoveredBlock16PC := 331.
        ].
        recoveredBlock16Step = 331 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) at: (recoveredBlock16Stack3).
            recoveredBlock16PC := 333.
        ].
        recoveredBlock16Step = 333 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) , (recoveredBlock16Stack2).
            recoveredBlock16PC := 335.
        ].
        recoveredBlock16Step = 335 ifTrue: [
            recoveredBlock16Local3 := recoveredBlock16Stack1.
            recoveredBlock16PC := 336.
        ].
        recoveredBlock16Step = 336 ifTrue: [
            recoveredBlock16Stack1 := recoveredLocal1.
            recoveredBlock16PC := 339.
        ].
        recoveredBlock16Step = 339 ifTrue: [
            recoveredBlock16Stack2 := Array.
            recoveredBlock16PC := 341.
        ].
        recoveredBlock16Step = 341 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Local3.
            recoveredBlock16PC := 342.
        ].
        recoveredBlock16Step = 342 ifTrue: [
            recoveredBlock16Stack4 := recoveredBlock16Local2.
            recoveredBlock16PC := 343.
        ].
        recoveredBlock16Step = 343 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) with: (recoveredBlock16Stack3) with: (recoveredBlock16Stack4).
            recoveredBlock16PC := 345.
        ].
        recoveredBlock16Step = 345 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) add: (recoveredBlock16Stack2).
            recoveredBlock16PC := 347.
        ].
        recoveredBlock16Step = 347 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20664fa8; bytecode file offset 0xf61a48"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
exportViews
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_62438'.
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
            recoveredStack0 := (recoveredStack0) itemList.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'No views selected!!'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) warning: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) prompt.
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
            recoveredStack0 := RBFileSelectionPrompter.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'Export File'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 'views.xml'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) fileName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := MainController.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) getOrCreateExportPath.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) searchPath: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := '*.xml'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) searchMask: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := Dictionary.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := '*.xml'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack5 := EtXmlFile.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) filterDictionary: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := XmSAVE.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) accessType: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) shell.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) parent: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal4 := recoveredStack1.
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
            recoveredStack0 := CfsStat.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := RBUserQuestion.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := 'The file \'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := '\ exists. Overwrite it?'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirm: (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) okCancel.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
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
            recoveredStack0 := EtasGenericDOMDocument.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := 'Views'.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) createElement: (recoveredStack2).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) addTag: (recoveredStack1).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemList.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := [:recoveredBlock156Arg1 | 
    | recoveredBlock156Local1 recoveredBlock156Local2 recoveredBlock156Local3 recoveredBlock156Local4 recoveredBlock156Local5 recoveredBlock156Local6 recoveredBlock156Local7 recoveredBlock156Local8 recoveredBlock156Local9 recoveredBlock156Value0 recoveredBlock156Value1 recoveredBlock156Value2 recoveredBlock156Value3 recoveredBlock156Value4 recoveredBlock156Value5 recoveredBlock156Value6 recoveredBlock156Value7 recoveredBlock156Value8 recoveredBlock156Value9 recoveredBlock156Value10 recoveredBlock156Value11 recoveredBlock156Value12 recoveredBlock156Value13 recoveredBlock156Value14 recoveredBlock156Value15 recoveredBlock156Value16 recoveredBlock156Value17 recoveredBlock156Value18 recoveredBlock156Value19 recoveredBlock156Value20 recoveredBlock156Value21 recoveredBlock156Value22 recoveredBlock156Value23 recoveredBlock156Value24 recoveredBlock156Value25 recoveredBlock156Value26 recoveredBlock156Value27 recoveredBlock156Value28 recoveredBlock156Value29 recoveredBlock156Value30 recoveredBlock156Value31 recoveredBlock156Value32 recoveredBlock156Value33 recoveredBlock156Value34 recoveredBlock156Value35 recoveredBlock156Value36 recoveredBlock156Value37 recoveredBlock156Value38 recoveredBlock156Value39 recoveredBlock156Value40 recoveredBlock156Value41 recoveredBlock156Value42 recoveredBlock156Value43 recoveredBlock156Value44 recoveredBlock156Value45 recoveredBlock156Value46 recoveredBlock156Value47 recoveredBlock156Value48 recoveredBlock156Value49 recoveredBlock156Value50 recoveredBlock156Value51 recoveredBlock156Value52 recoveredBlock156Value53 recoveredBlock156Value54 recoveredBlock156Value55 recoveredBlock156Value56 recoveredBlock156Value57 recoveredBlock156Value58 recoveredBlock156Value59 recoveredBlock156Value60 recoveredBlock156Value61 recoveredBlock156Value62 recoveredBlock156Value63 recoveredBlock156Value64 recoveredBlock156Value65 recoveredBlock156Value66 recoveredBlock156Value67 recoveredBlock156Value68 recoveredBlock156Value69 recoveredBlock156Value70 recoveredBlock156Value71 recoveredBlock156Value72 recoveredBlock156Value73 recoveredBlock156Value74 recoveredBlock156Value75 recoveredBlock156Value76 recoveredBlock156Value77 recoveredBlock156Value78 recoveredBlock156Value79 recoveredBlock156Value80 recoveredBlock156Value81 recoveredBlock156Value82 recoveredBlock156Value83 recoveredBlock156Value84 recoveredBlock156Value85 recoveredBlock156Value86 recoveredBlock156Value87 recoveredBlock156Value88 recoveredBlock156Value89 recoveredBlock156Value90 recoveredBlock156Value91 recoveredBlock156Value92 recoveredBlock156Value93 recoveredBlock156Value94 recoveredBlock156Value95 recoveredBlock156Value96 recoveredBlock156Value97 recoveredBlock156Value98 recoveredBlock156Value99 recoveredBlock156Value100 recoveredBlock156Value101 recoveredBlock156Value102 recoveredBlock156Value103 recoveredBlock156Value104 recoveredBlock156Value105 recoveredBlock156Value106 recoveredBlock156Value107 recoveredBlock156Value108 recoveredBlock156Value109 recoveredBlock156Value110 recoveredBlock156Value111 recoveredBlock156Value112 recoveredBlock156Value113 recoveredBlock156Value114 recoveredBlock156Value115 recoveredBlock156Value116 recoveredBlock156Value117 recoveredBlock156Value118 recoveredBlock156Value119 recoveredBlock156Value120 recoveredBlock156Value121 recoveredBlock156Value122 recoveredBlock156Value123 recoveredBlock156Value124 recoveredBlock156Value125 recoveredBlock156Value126 recoveredBlock156Value127 recoveredBlock156Value128 recoveredBlock156Value129 recoveredBlock156Value130 recoveredBlock156Value131 recoveredBlock156Value132 recoveredBlock156Value133 recoveredBlock156Value134 recoveredBlock156Value135 recoveredBlock156Value136 recoveredBlock156Value137 recoveredBlock156Value138 recoveredBlock156Value139 recoveredBlock156Value140 recoveredBlock156Value141 recoveredBlock156Value142 recoveredBlock156Value143 recoveredBlock156Value144 recoveredBlock156Value145 recoveredBlock156Value146 recoveredBlock156Value147 recoveredBlock156Value148 recoveredBlock156Value149 recoveredBlock156Value150 recoveredBlock156Value151 recoveredBlock156Value152 recoveredBlock156Value153 recoveredBlock156Value154 recoveredBlock156Value155 recoveredBlock156Value156 recoveredBlock156Value157 recoveredBlock156Value158 recoveredBlock156Value159 recoveredBlock156Value160 recoveredBlock156Value161 recoveredBlock156Value162 recoveredBlock156Value163 recoveredBlock156Value164 |
    recoveredBlock156Value0 := recoveredLocal2.
    recoveredBlock156Value1 := (recoveredBlock156Value0) createElement: ('View').
    recoveredBlock156Local9 := recoveredBlock156Value1.
    recoveredBlock156Value2 := recoveredBlock156Local9.
    recoveredBlock156Value3 := recoveredBlock156Arg1.
    recoveredBlock156Value4 := (recoveredBlock156Value3) name.
    recoveredBlock156Value5 := (recoveredBlock156Value4) abtXmlPrintString.
    (recoveredBlock156Value2) setAttribute: ('name') value: (recoveredBlock156Value5).
    recoveredBlock156Value6 := recoveredLocal1.
    recoveredBlock156Value7 := recoveredBlock156Local9.
    (recoveredBlock156Value6) appendChild: (recoveredBlock156Value7).
    recoveredBlock156Value8 := recoveredLocal2.
    recoveredBlock156Value9 := (recoveredBlock156Value8) createElement: ('DocumentationSettings').
    recoveredBlock156Local8 := recoveredBlock156Value9.
    recoveredBlock156Value10 := recoveredBlock156Local9.
    recoveredBlock156Value11 := recoveredBlock156Local8.
    (recoveredBlock156Value10) appendChild: (recoveredBlock156Value11).
    recoveredBlock156Value12 := recoveredLocal2.
    recoveredBlock156Value13 := (recoveredBlock156Value12) createElement: ('Components').
    recoveredBlock156Local6 := recoveredBlock156Value13.
    recoveredBlock156Value14 := recoveredBlock156Local6.
    recoveredBlock156Value15 := recoveredBlock156Value14.
    recoveredBlock156Value16 := recoveredBlock156Arg1.
    recoveredBlock156Value17 := (recoveredBlock156Value16) isCommentsSet.
    recoveredBlock156Value18 := (recoveredBlock156Value17) asString.
    recoveredBlock156Value19 := (recoveredBlock156Value18) abtXmlPrintString.
    (recoveredBlock156Value15) setAttribute: ('notes') value: (recoveredBlock156Value19).
    recoveredBlock156Value20 := recoveredBlock156Value14.
    recoveredBlock156Value21 := recoveredBlock156Arg1.
    recoveredBlock156Value22 := (recoveredBlock156Value21) isInterfaceSet.
    recoveredBlock156Value23 := (recoveredBlock156Value22) asString.
    recoveredBlock156Value24 := (recoveredBlock156Value23) abtXmlPrintString.
    (recoveredBlock156Value20) setAttribute: ('layout') value: (recoveredBlock156Value24).
    recoveredBlock156Value25 := recoveredBlock156Value14.
    recoveredBlock156Value26 := recoveredBlock156Arg1.
    recoveredBlock156Value27 := (recoveredBlock156Value26) isPublicMethodSet.
    recoveredBlock156Value28 := (recoveredBlock156Value27) asString.
    recoveredBlock156Value29 := (recoveredBlock156Value28) abtXmlPrintString.
    (recoveredBlock156Value25) setAttribute: ('publicMethods') value: (recoveredBlock156Value29).
    recoveredBlock156Value30 := recoveredBlock156Value14.
    recoveredBlock156Value31 := recoveredBlock156Arg1.
    recoveredBlock156Value32 := (recoveredBlock156Value31) isPrivateMethodSet.
    recoveredBlock156Value33 := (recoveredBlock156Value32) asString.
    recoveredBlock156Value34 := (recoveredBlock156Value33) abtXmlPrintString.
    (recoveredBlock156Value30) setAttribute: ('privateMethods') value: (recoveredBlock156Value34).
    recoveredBlock156Value35 := recoveredBlock156Value14.
    recoveredBlock156Value36 := recoveredBlock156Arg1.
    recoveredBlock156Value37 := (recoveredBlock156Value36) isProcessesSet.
    recoveredBlock156Value38 := (recoveredBlock156Value37) asString.
    recoveredBlock156Value39 := (recoveredBlock156Value38) abtXmlPrintString.
    (recoveredBlock156Value35) setAttribute: ('processes') value: (recoveredBlock156Value39).
    recoveredBlock156Value40 := recoveredBlock156Value14.
    recoveredBlock156Value41 := recoveredBlock156Arg1.
    recoveredBlock156Value42 := (recoveredBlock156Value41) isGraphicsSet.
    recoveredBlock156Value43 := (recoveredBlock156Value42) asString.
    recoveredBlock156Value44 := (recoveredBlock156Value43) abtXmlPrintString.
    (recoveredBlock156Value40) setAttribute: ('graphic') value: (recoveredBlock156Value44).
    recoveredBlock156Value45 := recoveredBlock156Value14.
    recoveredBlock156Value46 := recoveredBlock156Arg1.
    recoveredBlock156Value47 := (recoveredBlock156Value46) isElementsSet.
    recoveredBlock156Value48 := (recoveredBlock156Value47) asString.
    recoveredBlock156Value49 := (recoveredBlock156Value48) abtXmlPrintString.
    (recoveredBlock156Value45) setAttribute: ('elements') value: (recoveredBlock156Value49).
    recoveredBlock156Value50 := recoveredBlock156Value14.
    recoveredBlock156Value51 := recoveredBlock156Arg1.
    recoveredBlock156Value52 := (recoveredBlock156Value51) isImportedElementsSet.
    recoveredBlock156Value53 := (recoveredBlock156Value52) asString.
    recoveredBlock156Value54 := (recoveredBlock156Value53) abtXmlPrintString.
    (recoveredBlock156Value50) setAttribute: ('importedElements') value: (recoveredBlock156Value54).
    recoveredBlock156Value55 := recoveredBlock156Value14.
    recoveredBlock156Value56 := recoveredBlock156Arg1.
    recoveredBlock156Value57 := (recoveredBlock156Value56) isExportedElementsSet.
    recoveredBlock156Value58 := (recoveredBlock156Value57) asString.
    recoveredBlock156Value59 := (recoveredBlock156Value58) abtXmlPrintString.
    (recoveredBlock156Value55) setAttribute: ('exportedElements') value: (recoveredBlock156Value59).
    recoveredBlock156Value60 := recoveredBlock156Value14.
    recoveredBlock156Value61 := recoveredBlock156Arg1.
    recoveredBlock156Value62 := (recoveredBlock156Value61) isDataSet.
    recoveredBlock156Value63 := (recoveredBlock156Value62) asString.
    recoveredBlock156Value64 := (recoveredBlock156Value63) abtXmlPrintString.
    (recoveredBlock156Value60) setAttribute: ('data') value: (recoveredBlock156Value64).
    recoveredBlock156Value65 := recoveredBlock156Arg1.
    recoveredBlock156Value66 := (recoveredBlock156Value65) isImplementationSet.
    recoveredBlock156Value67 := (recoveredBlock156Value66) asString.
    recoveredBlock156Value68 := (recoveredBlock156Value67) abtXmlPrintString.
    (recoveredBlock156Value14) setAttribute: ('implementation') value: (recoveredBlock156Value68).
    recoveredBlock156Value69 := recoveredBlock156Local8.
    recoveredBlock156Value70 := recoveredBlock156Local6.
    (recoveredBlock156Value69) appendChild: (recoveredBlock156Value70).
    recoveredBlock156Value71 := recoveredLocal2.
    recoveredBlock156Value72 := (recoveredBlock156Value71) createElement: ('Projects').
    recoveredBlock156Local5 := recoveredBlock156Value72.
    recoveredBlock156Value73 := recoveredBlock156Local5.
    recoveredBlock156Value74 := recoveredBlock156Value73.
    recoveredBlock156Value75 := recoveredBlock156Arg1.
    recoveredBlock156Value76 := (recoveredBlock156Value75) isNotesSet.
    recoveredBlock156Value77 := (recoveredBlock156Value76) asString.
    recoveredBlock156Value78 := (recoveredBlock156Value77) abtXmlPrintString.
    (recoveredBlock156Value74) setAttribute: ('notes') value: (recoveredBlock156Value78).
    recoveredBlock156Value79 := recoveredBlock156Value73.
    recoveredBlock156Value80 := recoveredBlock156Arg1.
    recoveredBlock156Value81 := (recoveredBlock156Value80) isCodegenOptionsSet.
    recoveredBlock156Value82 := (recoveredBlock156Value81) asString.
    recoveredBlock156Value83 := (recoveredBlock156Value82) abtXmlPrintString.
    (recoveredBlock156Value79) setAttribute: ('codegenOptions') value: (recoveredBlock156Value83).
    recoveredBlock156Value84 := recoveredBlock156Value73.
    recoveredBlock156Value85 := recoveredBlock156Arg1.
    recoveredBlock156Value86 := (recoveredBlock156Value85) isTargetOptionsSet.
    recoveredBlock156Value87 := (recoveredBlock156Value86) asString.
    recoveredBlock156Value88 := (recoveredBlock156Value87) abtXmlPrintString.
    (recoveredBlock156Value84) setAttribute: ('targetOptions') value: (recoveredBlock156Value88).
    recoveredBlock156Value89 := recoveredBlock156Value73.
    recoveredBlock156Value90 := recoveredBlock156Arg1.
    recoveredBlock156Value91 := (recoveredBlock156Value90) isOperatingSystemSet.
    recoveredBlock156Value92 := (recoveredBlock156Value91) asString.
    recoveredBlock156Value93 := (recoveredBlock156Value92) abtXmlPrintString.
    (recoveredBlock156Value89) setAttribute: ('operatingSystem') value: (recoveredBlock156Value93).
    recoveredBlock156Value94 := recoveredBlock156Value73.
    recoveredBlock156Value95 := recoveredBlock156Arg1.
    recoveredBlock156Value96 := (recoveredBlock156Value95) isTaskSettingsSet.
    recoveredBlock156Value97 := (recoveredBlock156Value96) asString.
    recoveredBlock156Value98 := (recoveredBlock156Value97) abtXmlPrintString.
    (recoveredBlock156Value94) setAttribute: ('taskSettings') value: (recoveredBlock156Value98).
    recoveredBlock156Value99 := recoveredBlock156Value73.
    recoveredBlock156Value100 := recoveredBlock156Arg1.
    recoveredBlock156Value101 := (recoveredBlock156Value100) isTaskScheduleSet.
    recoveredBlock156Value102 := (recoveredBlock156Value101) asString.
    recoveredBlock156Value103 := (recoveredBlock156Value102) abtXmlPrintString.
    (recoveredBlock156Value99) setAttribute: ('taskSchedule') value: (recoveredBlock156Value103).
    recoveredBlock156Value104 := recoveredBlock156Value73.
    recoveredBlock156Value105 := recoveredBlock156Arg1.
    recoveredBlock156Value106 := (recoveredBlock156Value105) isExportedElementsPSet.
    recoveredBlock156Value107 := (recoveredBlock156Value106) asString.
    recoveredBlock156Value108 := (recoveredBlock156Value107) abtXmlPrintString.
    (recoveredBlock156Value104) setAttribute: ('elements') value: (recoveredBlock156Value108).
    recoveredBlock156Value109 := recoveredBlock156Value73.
    recoveredBlock156Value110 := recoveredBlock156Arg1.
    recoveredBlock156Value111 := (recoveredBlock156Value110) isBindingsSet.
    recoveredBlock156Value112 := (recoveredBlock156Value111) asString.
    recoveredBlock156Value113 := (recoveredBlock156Value112) abtXmlPrintString.
    (recoveredBlock156Value109) setAttribute: ('bindings') value: (recoveredBlock156Value113).
    recoveredBlock156Value114 := recoveredBlock156Value73.
    recoveredBlock156Value115 := recoveredBlock156Arg1.
    recoveredBlock156Value116 := (recoveredBlock156Value115) isDataPSet.
    recoveredBlock156Value117 := (recoveredBlock156Value116) asString.
    recoveredBlock156Value118 := (recoveredBlock156Value117) abtXmlPrintString.
    (recoveredBlock156Value114) setAttribute: ('data') value: (recoveredBlock156Value118).
    recoveredBlock156Value119 := recoveredBlock156Value73.
    recoveredBlock156Value120 := recoveredBlock156Arg1.
    recoveredBlock156Value121 := (recoveredBlock156Value120) isImplementationPSet.
    recoveredBlock156Value122 := (recoveredBlock156Value121) asString.
    recoveredBlock156Value123 := (recoveredBlock156Value122) abtXmlPrintString.
    (recoveredBlock156Value119) setAttribute: ('implementation') value: (recoveredBlock156Value123).
    recoveredBlock156Value124 := recoveredBlock156Arg1.
    recoveredBlock156Value125 := (recoveredBlock156Value124) isGlobalFormulasSet.
    recoveredBlock156Value126 := (recoveredBlock156Value125) asString.
    recoveredBlock156Value127 := (recoveredBlock156Value126) abtXmlPrintString.
    (recoveredBlock156Value73) setAttribute: ('formulas') value: (recoveredBlock156Value127).
    recoveredBlock156Value128 := recoveredBlock156Local8.
    recoveredBlock156Value129 := recoveredBlock156Local5.
    (recoveredBlock156Value128) appendChild: (recoveredBlock156Value129).
    recoveredBlock156Value130 := recoveredLocal2.
    recoveredBlock156Value131 := (recoveredBlock156Value130) createElement: ('BDESettings').
    recoveredBlock156Local7 := recoveredBlock156Value131.
    recoveredBlock156Value132 := recoveredBlock156Local7.
    recoveredBlock156Value133 := recoveredBlock156Value132.
    recoveredBlock156Value134 := recoveredBlock156Arg1.
    recoveredBlock156Value135 := (recoveredBlock156Value134) isSequenceCalls.
    recoveredBlock156Value136 := (recoveredBlock156Value135) asString.
    recoveredBlock156Value137 := (recoveredBlock156Value136) abtXmlPrintString.
    (recoveredBlock156Value133) setAttribute: ('usedsequenceCalls') value: (recoveredBlock156Value137).
    recoveredBlock156Value138 := recoveredBlock156Value132.
    recoveredBlock156Value139 := recoveredBlock156Arg1.
    recoveredBlock156Value140 := (recoveredBlock156Value139) isUnusedSequenceCalls.
    recoveredBlock156Value141 := (recoveredBlock156Value140) asString.
    recoveredBlock156Value142 := (recoveredBlock156Value141) abtXmlPrintString.
    (recoveredBlock156Value138) setAttribute: ('unusedsequenceCalls') value: (recoveredBlock156Value142).
    recoveredBlock156Value143 := recoveredBlock156Value132.
    recoveredBlock156Value144 := recoveredBlock156Arg1.
    recoveredBlock156Value145 := (recoveredBlock156Value144) isProcessNameLocals.
    recoveredBlock156Value146 := (recoveredBlock156Value145) asString.
    recoveredBlock156Value147 := (recoveredBlock156Value146) abtXmlPrintString.
    (recoveredBlock156Value143) setAttribute: ('processNameLocals') value: (recoveredBlock156Value147).
    recoveredBlock156Value148 := recoveredBlock156Arg1.
    recoveredBlock156Value149 := (recoveredBlock156Value148) isGraphicalComments.
    recoveredBlock156Value150 := (recoveredBlock156Value149) asString.
    recoveredBlock156Value151 := (recoveredBlock156Value150) abtXmlPrintString.
    (recoveredBlock156Value132) setAttribute: ('graphicalComments') value: (recoveredBlock156Value151).
    recoveredBlock156Value152 := recoveredBlock156Local9.
    recoveredBlock156Value153 := recoveredBlock156Local7.
    (recoveredBlock156Value152) appendChild: (recoveredBlock156Value153).
    recoveredBlock156Value154 := recoveredLocal2.
    recoveredBlock156Value155 := (recoveredBlock156Value154) createElement: ('ElementDefaults').
    recoveredBlock156Local4 := recoveredBlock156Value155.
    recoveredBlock156Value156 := recoveredBlock156Local9.
    recoveredBlock156Value157 := recoveredBlock156Local4.
    (recoveredBlock156Value156) appendChild: (recoveredBlock156Value157).
    recoveredBlock156Value158 := [:recoveredBlock156Block748Arg1 | 
    | recoveredBlock156Block748Value0 recoveredBlock156Block748Value1 recoveredBlock156Block748Value2 recoveredBlock156Block748Value3 recoveredBlock156Block748Value4 recoveredBlock156Block748Value5 recoveredBlock156Block748Value6 recoveredBlock156Block748Value7 recoveredBlock156Block748Value8 recoveredBlock156Block748Value9 recoveredBlock156Block748Value10 |
    recoveredBlock156Block748Value0 := recoveredLocal2.
    recoveredBlock156Block748Value1 := recoveredBlock156Block748Arg1.
    recoveredBlock156Block748Value2 := (recoveredBlock156Block748Value1) removeWhiteSpaces.
    recoveredBlock156Block748Value3 := (recoveredBlock156Block748Value0) createElement: (recoveredBlock156Block748Value2).
    recoveredBlock156Local1 := recoveredBlock156Block748Value3.
    recoveredBlock156Block748Value4 := recoveredBlock156Arg1.
    recoveredBlock156Block748Value5 := recoveredBlock156Block748Arg1.
    recoveredBlock156Block748Value6 := (recoveredBlock156Block748Value4) getElementsForType: (recoveredBlock156Block748Value5).
    recoveredBlock156Block748Value7 := [:recoveredBlock156Block748Block777Arg1 | 
    | recoveredBlock156Block748Block777Value0 recoveredBlock156Block748Block777Value1 recoveredBlock156Block748Block777Value2 recoveredBlock156Block748Block777Value3 |
    recoveredBlock156Block748Block777Value0 := recoveredBlock156Block748Block777Arg1.
    recoveredBlock156Block748Block777Value1 := recoveredBlock156Local1.
    recoveredBlock156Block748Block777Value2 := recoveredLocal2.
    recoveredBlock156Block748Block777Value3 := (self) writeViewTypesForElement: (recoveredBlock156Block748Block777Value0) to: (recoveredBlock156Block748Block777Value1) in: (recoveredBlock156Block748Block777Value2).
    recoveredBlock156Block748Block777Value3
].
    (recoveredBlock156Block748Value6) do: (recoveredBlock156Block748Value7).
    recoveredBlock156Block748Value8 := recoveredBlock156Local4.
    recoveredBlock156Block748Value9 := recoveredBlock156Local1.
    recoveredBlock156Block748Value10 := (recoveredBlock156Block748Value8) appendChild: (recoveredBlock156Block748Value9).
    recoveredBlock156Block748Value10
].
    (#('As Line' 'Invisible' 'Contour' 'Hide Contents')) do: (recoveredBlock156Value158).
    recoveredBlock156Value159 := recoveredLocal2.
    recoveredBlock156Value160 := (recoveredBlock156Value159) createElement: ('BasicBlockDefaults').
    recoveredBlock156Local3 := recoveredBlock156Value160.
    recoveredBlock156Value161 := recoveredBlock156Local9.
    recoveredBlock156Value162 := recoveredBlock156Local3.
    (recoveredBlock156Value161) appendChild: (recoveredBlock156Value162).
    recoveredBlock156Value163 := [:recoveredBlock156Block838Arg1 | 
    | recoveredBlock156Block838Value0 recoveredBlock156Block838Value1 recoveredBlock156Block838Value2 recoveredBlock156Block838Value3 recoveredBlock156Block838Value4 recoveredBlock156Block838Value5 recoveredBlock156Block838Value6 recoveredBlock156Block838Value7 recoveredBlock156Block838Value8 recoveredBlock156Block838Value9 recoveredBlock156Block838Value10 |
    recoveredBlock156Block838Value0 := recoveredLocal2.
    recoveredBlock156Block838Value1 := recoveredBlock156Block838Arg1.
    recoveredBlock156Block838Value2 := (recoveredBlock156Block838Value1) removeWhiteSpaces.
    recoveredBlock156Block838Value3 := (recoveredBlock156Block838Value0) createElement: (recoveredBlock156Block838Value2).
    recoveredBlock156Local1 := recoveredBlock156Block838Value3.
    recoveredBlock156Block838Value4 := recoveredBlock156Arg1.
    recoveredBlock156Block838Value5 := recoveredBlock156Block838Arg1.
    recoveredBlock156Block838Value6 := (recoveredBlock156Block838Value4) getBasicBlocksForType: (recoveredBlock156Block838Value5).
    recoveredBlock156Block838Value7 := [:recoveredBlock156Block838Block867Arg1 | 
    | recoveredBlock156Block838Block867Value0 recoveredBlock156Block838Block867Value1 recoveredBlock156Block838Block867Value2 recoveredBlock156Block838Block867Value3 recoveredBlock156Block838Block867Value4 recoveredBlock156Block838Block867Value5 |
    recoveredBlock156Block838Block867Value0 := recoveredLocal2.
    recoveredBlock156Block838Block867Value1 := recoveredBlock156Block838Block867Arg1.
    recoveredBlock156Block838Block867Value2 := (recoveredBlock156Block838Block867Value0) createElement: (recoveredBlock156Block838Block867Value1).
    recoveredBlock156Local2 := recoveredBlock156Block838Block867Value2.
    recoveredBlock156Block838Block867Value3 := recoveredBlock156Local1.
    recoveredBlock156Block838Block867Value4 := recoveredBlock156Local2.
    recoveredBlock156Block838Block867Value5 := (recoveredBlock156Block838Block867Value3) appendChild: (recoveredBlock156Block838Block867Value4).
    recoveredBlock156Block838Block867Value5
].
    (recoveredBlock156Block838Value6) do: (recoveredBlock156Block838Value7).
    recoveredBlock156Block838Value8 := recoveredBlock156Local3.
    recoveredBlock156Block838Value9 := recoveredBlock156Local1.
    recoveredBlock156Block838Value10 := (recoveredBlock156Block838Value8) appendChild: (recoveredBlock156Block838Value9).
    recoveredBlock156Block838Value10
].
    recoveredBlock156Value164 := (#('As Line' 'Invisible' 'Contour' 'Hide Contents' 'Normal')) do: (recoveredBlock156Value163).
    recoveredBlock156Value164
].
            recoveredPC := 912.
        ].
        recoveredStep = 912 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 917.
        ].
        recoveredStep = 917 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock917Stack0 recoveredBlock917Stack1 recoveredBlock917Stack2 recoveredBlock917Stack3 recoveredBlock917PC recoveredBlock917Step recoveredBlock917Done recoveredBlock917Result |
    recoveredBlock917Stack0 := self.
    recoveredBlock917PC := 924.
    recoveredBlock917Done := false.
    [recoveredBlock917Done not] whileTrue: [
        recoveredBlock917Step := recoveredBlock917PC.
        recoveredBlock917Step = 924 ifTrue: [
            recoveredBlock917Stack1 := CfsWriteFileStream.
            recoveredBlock917PC := 928.
        ].
        recoveredBlock917Step = 928 ifTrue: [
            recoveredBlock917Stack2 := recoveredLocal4.
            recoveredBlock917PC := 931.
        ].
        recoveredBlock917Step = 931 ifTrue: [
            recoveredBlock917Stack1 := (recoveredBlock917Stack1) openEmpty: (recoveredBlock917Stack2).
            recoveredBlock917PC := 935.
        ].
        recoveredBlock917Step = 935 ifTrue: [
            recoveredBlock917Stack2 := recoveredBlock917Stack1.
            recoveredBlock917PC := 936.
        ].
        recoveredBlock917Step = 936 ifTrue: [
            recoveredLocal3 := recoveredBlock917Stack2.
            recoveredBlock917PC := 939.
        ].
        recoveredBlock917Step = 939 ifTrue: [
            recoveredBlock917Stack1 := (recoveredBlock917Stack1) isCfsError.
            recoveredBlock917PC := 943.
        ].
        recoveredBlock917Step = 943 ifTrue: [
            (recoveredBlock917Stack1) ifTrue: [recoveredBlock917PC := 946] ifFalse: [recoveredBlock917PC := 948].
        ].
        recoveredBlock917Step = 946 ifTrue: [
            recoveredBlock917Stack1 := nil.
            recoveredBlock917PC := 947.
        ].
        recoveredBlock917Step = 947 ifTrue: [
            ^recoveredBlock917Stack1
        ].
        recoveredBlock917Step = 948 ifTrue: [
            recoveredBlock917Stack1 := recoveredLocal2.
            recoveredBlock917PC := 951.
        ].
        recoveredBlock917Step = 951 ifTrue: [
            recoveredBlock917Stack2 := recoveredLocal3.
            recoveredBlock917PC := 954.
        ].
        recoveredBlock917Step = 954 ifTrue: [
            (recoveredBlock917Stack1) abtXmlPrintOn: (recoveredBlock917Stack2).
            recoveredBlock917PC := 959.
        ].
        recoveredBlock917Step = 959 ifTrue: [
            recoveredBlock917Stack1 := recoveredLocal3.
            recoveredBlock917PC := 962.
        ].
        recoveredBlock917Step = 962 ifTrue: [
            recoveredBlock917Stack1 := (recoveredBlock917Stack1) close.
            recoveredBlock917PC := 967.
        ].
        recoveredBlock917Step = 967 ifTrue: [
            recoveredBlock917Result := recoveredBlock917Stack1.
            recoveredBlock917Done := true.
        ].
    ].
    recoveredBlock917Result
].
            recoveredPC := 968.
        ].
        recoveredStep = 968 ifTrue: [
            recoveredStack1 := ExAll.
            recoveredPC := 972.
        ].
        recoveredStep = 972 ifTrue: [
            recoveredStack2 := [:recoveredBlock972Arg1 | 
    | recoveredBlock972Value0 recoveredBlock972Value1 recoveredBlock972Value2 recoveredBlock972Value3 recoveredBlock972Value4 recoveredBlock972Value5 recoveredBlock972Value6 recoveredBlock972Value7 recoveredBlock972Value8 recoveredBlock972Value9 recoveredBlock972Value10 recoveredBlock972Value11 recoveredBlock972Value12 |
    recoveredBlock972Value0 := RBUserInfo.
    recoveredBlock972Value1 := recoveredLocal4.
    recoveredBlock972Value2 := ('Failed to create view file <') , (recoveredBlock972Value1).
    recoveredBlock972Value3 := ('>.\Reason: ') withCrs.
    recoveredBlock972Value4 := (recoveredBlock972Value2) , (recoveredBlock972Value3).
    recoveredBlock972Value5 := recoveredBlock972Arg1.
    recoveredBlock972Value6 := (recoveredBlock972Value5) description.
    recoveredBlock972Value7 := (recoveredBlock972Value4) , (recoveredBlock972Value6).
    recoveredBlock972Value8 := (recoveredBlock972Value0) errorMessage: (recoveredBlock972Value7).
    recoveredBlock972Value9 := (recoveredBlock972Value8) prompt.
    recoveredBlock972Value10 := (recoveredBlock972Value9) signal.
    recoveredBlock972Value11 := (recoveredBlock972Value10) exit.
    recoveredBlock972Value12 := (recoveredBlock972Value11) with: (nil).
    recoveredBlock972Value12
].
            recoveredPC := 1024.
        ].
        recoveredStep = 1024 ifTrue: [
            (recoveredStack0) when: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 1029.
        ].
        recoveredStep = 1029 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1030.
        ].
        recoveredStep = 1030 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206711f8; bytecode file offset 0xf6dc34"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:block28126ee0Arg1 | 
    | block28126ee0Value0 block28126ee0Value1 block28126ee0Value2 block28126ee0Value3 block28126ee0Value4 block28126ee0Value5 block28126ee0Value6 block28126ee0Value7 block28126ee0Value8 block28126ee0Value9 block28126ee0Value10 block28126ee0Value11 |
    block28126ee0Value0 := block28126ee0Arg1.
    block28126ee0Value1 := block28126ee0Value0.
    block28126ee0Value2 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (block28126ee0Value1) mwmInputMode: (block28126ee0Value2).
    block28126ee0Value3 := block28126ee0Value0.
    block28126ee0Value4 := MWMDECORALL.
    block28126ee0Value5 := MWMDECORMINIMIZE.
    block28126ee0Value6 := (block28126ee0Value4) | (block28126ee0Value5).
    block28126ee0Value7 := MWMDECORMAXIMIZE.
    block28126ee0Value8 := (block28126ee0Value6) | (block28126ee0Value7).
    (block28126ee0Value3) mwmDecorations: (block28126ee0Value8).
    block28126ee0Value9 := block28126ee0Value0.
    (block28126ee0Value9) title: ('Views').
    block28126ee0Value10 := block28126ee0Value0.
    (block28126ee0Value10) height: (580).
    block28126ee0Value11 := (block28126ee0Value0) width: (420).
    block28126ee0Value11
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := 'def'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := [:block28126f04Arg1 | 
    | block28126f04Value0 block28126f04Value1 |
    block28126f04Value0 := block28126f04Arg1.
    block28126f04Value1 := (block28126f04Value0) labelString: ('Default').
    block28126f04Value1
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := 'def'.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := 'del'.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := [:block28126f28Arg1 | 
    | block28126f28Value0 block28126f28Value1 |
    block28126f28Value0 := block28126f28Arg1.
    block28126f28Value1 := (block28126f28Value0) labelString: ('Delete').
    block28126f28Value1
].
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := 'del'.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := 'edit'.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack3 := [:block28126f4cArg1 | 
    | block28126f4cValue0 block28126f4cValue1 |
    block28126f4cValue0 := block28126f4cArg1.
    block28126f4cValue1 := (block28126f4cValue0) labelString: ('Edit').
    block28126f4cValue1
].
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack2 := 'edit'.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := 'rename'.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack3 := [:block28126f70Arg1 | 
    | block28126f70Value0 block28126f70Value1 |
    block28126f70Value0 := block28126f70Arg1.
    block28126f70Value1 := (block28126f70Value0) labelString: ('Rename').
    block28126f70Value1
].
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := 'rename'.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := 'add'.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack3 := [:block28126f94Arg1 | 
    | block28126f94Value0 block28126f94Value1 |
    block28126f94Value0 := block28126f94Arg1.
    block28126f94Value1 := (block28126f94Value0) labelString: ('Add').
    block28126f94Value1
].
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack2 := 'add'.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack2 := 'import'.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack3 := [:block28126fb8Arg1 | 
    | block28126fb8Value0 block28126fb8Value1 |
    block28126fb8Value0 := block28126fb8Arg1.
    block28126fb8Value1 := (block28126fb8Value0) labelString: ('Import').
    block28126fb8Value1
].
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack2 := 'import'.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack2 := 'export'.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack3 := [:block28126fdcArg1 | 
    | block28126fdcValue0 block28126fdcValue1 |
    block28126fdcValue0 := block28126fdcArg1.
    block28126fdcValue1 := (block28126fdcValue0) labelString: ('Export').
    block28126fdcValue1
].
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack2 := 'export'.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack2 := 'iconList'.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack3 := [:block28127000Arg1 | 
    | block28127000Value0 block28127000Value1 block28127000Value2 |
    block28127000Value0 := block28127000Arg1.
    block28127000Value1 := XmEXTENDEDSELECT.
    block28127000Value2 := (block28127000Value0) selectionPolicy: (block28127000Value1).
    block28127000Value2
].
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasScrolledIconList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack2 := 'scrolledIconList'.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack2 := 'iconList'.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack2 := [:recoveredBlock420Arg1 | 
    | recoveredBlock420Value0 recoveredBlock420Value1 recoveredBlock420Value2 recoveredBlock420Value3 recoveredBlock420Value4 recoveredBlock420Value5 recoveredBlock420Value6 recoveredBlock420Value7 recoveredBlock420Value8 recoveredBlock420Value9 recoveredBlock420Value10 recoveredBlock420Value11 recoveredBlock420Value12 recoveredBlock420Value13 recoveredBlock420Value14 |
    recoveredBlock420Value0 := recoveredBlock420Arg1.
    recoveredBlock420Value1 := recoveredBlock420Value0.
    recoveredBlock420Value2 := XmATTACHWIDGET.
    (recoveredBlock420Value1) bottomAttachment: (recoveredBlock420Value2).
    recoveredBlock420Value3 := recoveredBlock420Value0.
    recoveredBlock420Value4 := recoveredLocal7.
    (recoveredBlock420Value3) bottomWidget: (recoveredBlock420Value4).
    recoveredBlock420Value5 := recoveredBlock420Value0.
    (recoveredBlock420Value5) bottomOffset: (5).
    recoveredBlock420Value6 := recoveredBlock420Value0.
    recoveredBlock420Value7 := XmATTACHFORM.
    (recoveredBlock420Value6) topAttachment: (recoveredBlock420Value7).
    recoveredBlock420Value8 := recoveredBlock420Value0.
    (recoveredBlock420Value8) topOffset: (5).
    recoveredBlock420Value9 := recoveredBlock420Value0.
    recoveredBlock420Value10 := XmATTACHFORM.
    (recoveredBlock420Value9) leftAttachment: (recoveredBlock420Value10).
    recoveredBlock420Value11 := recoveredBlock420Value0.
    (recoveredBlock420Value11) leftOffset: (5).
    recoveredBlock420Value12 := recoveredBlock420Value0.
    recoveredBlock420Value13 := XmATTACHFORM.
    (recoveredBlock420Value12) rightAttachment: (recoveredBlock420Value13).
    recoveredBlock420Value14 := (recoveredBlock420Value0) rightOffset: (5).
    recoveredBlock420Value14
].
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack2 := [:block28127024Arg1 | 
    | block28127024Value0 block28127024Value1 block28127024Value2 block28127024Value3 block28127024Value4 block28127024Value5 block28127024Value6 block28127024Value7 block28127024Value8 |
    block28127024Value0 := block28127024Arg1.
    block28127024Value1 := block28127024Value0.
    block28127024Value2 := XmATTACHNONE.
    (block28127024Value1) topAttachment: (block28127024Value2).
    block28127024Value3 := block28127024Value0.
    block28127024Value4 := XmATTACHFORM.
    (block28127024Value3) bottomAttachment: (block28127024Value4).
    block28127024Value5 := block28127024Value0.
    (block28127024Value5) bottomOffset: (5).
    block28127024Value6 := block28127024Value0.
    block28127024Value7 := XmATTACHFORM.
    (block28127024Value6) rightAttachment: (block28127024Value7).
    block28127024Value8 := (block28127024Value0) rightOffset: (5).
    block28127024Value8
].
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack2 := [:recoveredBlock558Arg1 | 
    | recoveredBlock558Value0 recoveredBlock558Value1 recoveredBlock558Value2 recoveredBlock558Value3 recoveredBlock558Value4 recoveredBlock558Value5 recoveredBlock558Value6 recoveredBlock558Value7 recoveredBlock558Value8 recoveredBlock558Value9 recoveredBlock558Value10 |
    recoveredBlock558Value0 := recoveredBlock558Arg1.
    recoveredBlock558Value1 := recoveredBlock558Value0.
    recoveredBlock558Value2 := XmATTACHNONE.
    (recoveredBlock558Value1) topAttachment: (recoveredBlock558Value2).
    recoveredBlock558Value3 := recoveredBlock558Value0.
    recoveredBlock558Value4 := XmATTACHFORM.
    (recoveredBlock558Value3) bottomAttachment: (recoveredBlock558Value4).
    recoveredBlock558Value5 := recoveredBlock558Value0.
    (recoveredBlock558Value5) bottomOffset: (5).
    recoveredBlock558Value6 := recoveredBlock558Value0.
    recoveredBlock558Value7 := XmATTACHWIDGET.
    (recoveredBlock558Value6) rightAttachment: (recoveredBlock558Value7).
    recoveredBlock558Value8 := recoveredBlock558Value0.
    recoveredBlock558Value9 := recoveredLocal7.
    (recoveredBlock558Value8) rightWidget: (recoveredBlock558Value9).
    recoveredBlock558Value10 := (recoveredBlock558Value0) rightOffset: (5).
    recoveredBlock558Value10
].
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            recoveredStack2 := [:recoveredBlock620Arg1 | 
    | recoveredBlock620Value0 recoveredBlock620Value1 recoveredBlock620Value2 recoveredBlock620Value3 recoveredBlock620Value4 recoveredBlock620Value5 recoveredBlock620Value6 recoveredBlock620Value7 recoveredBlock620Value8 recoveredBlock620Value9 recoveredBlock620Value10 |
    recoveredBlock620Value0 := recoveredBlock620Arg1.
    recoveredBlock620Value1 := recoveredBlock620Value0.
    recoveredBlock620Value2 := XmATTACHNONE.
    (recoveredBlock620Value1) topAttachment: (recoveredBlock620Value2).
    recoveredBlock620Value3 := recoveredBlock620Value0.
    recoveredBlock620Value4 := XmATTACHFORM.
    (recoveredBlock620Value3) bottomAttachment: (recoveredBlock620Value4).
    recoveredBlock620Value5 := recoveredBlock620Value0.
    (recoveredBlock620Value5) bottomOffset: (5).
    recoveredBlock620Value6 := recoveredBlock620Value0.
    recoveredBlock620Value7 := XmATTACHWIDGET.
    (recoveredBlock620Value6) rightAttachment: (recoveredBlock620Value7).
    recoveredBlock620Value8 := recoveredBlock620Value0.
    recoveredBlock620Value9 := recoveredLocal6.
    (recoveredBlock620Value8) rightWidget: (recoveredBlock620Value9).
    recoveredBlock620Value10 := (recoveredBlock620Value0) rightOffset: (5).
    recoveredBlock620Value10
].
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 679.
        ].
        recoveredStep = 679 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack2 := [:recoveredBlock682Arg1 | 
    | recoveredBlock682Value0 recoveredBlock682Value1 recoveredBlock682Value2 recoveredBlock682Value3 recoveredBlock682Value4 recoveredBlock682Value5 recoveredBlock682Value6 recoveredBlock682Value7 recoveredBlock682Value8 recoveredBlock682Value9 recoveredBlock682Value10 |
    recoveredBlock682Value0 := recoveredBlock682Arg1.
    recoveredBlock682Value1 := recoveredBlock682Value0.
    recoveredBlock682Value2 := XmATTACHNONE.
    (recoveredBlock682Value1) topAttachment: (recoveredBlock682Value2).
    recoveredBlock682Value3 := recoveredBlock682Value0.
    recoveredBlock682Value4 := XmATTACHFORM.
    (recoveredBlock682Value3) bottomAttachment: (recoveredBlock682Value4).
    recoveredBlock682Value5 := recoveredBlock682Value0.
    (recoveredBlock682Value5) bottomOffset: (5).
    recoveredBlock682Value6 := recoveredBlock682Value0.
    recoveredBlock682Value7 := XmATTACHWIDGET.
    (recoveredBlock682Value6) rightAttachment: (recoveredBlock682Value7).
    recoveredBlock682Value8 := recoveredBlock682Value0.
    recoveredBlock682Value9 := recoveredLocal4.
    (recoveredBlock682Value8) rightWidget: (recoveredBlock682Value9).
    recoveredBlock682Value10 := (recoveredBlock682Value0) rightOffset: (5).
    recoveredBlock682Value10
].
            recoveredPC := 736.
        ].
        recoveredStep = 736 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 741.
        ].
        recoveredStep = 741 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 744.
        ].
        recoveredStep = 744 ifTrue: [
            recoveredStack2 := [:recoveredBlock744Arg1 | 
    | recoveredBlock744Value0 recoveredBlock744Value1 recoveredBlock744Value2 recoveredBlock744Value3 recoveredBlock744Value4 recoveredBlock744Value5 recoveredBlock744Value6 recoveredBlock744Value7 recoveredBlock744Value8 recoveredBlock744Value9 recoveredBlock744Value10 |
    recoveredBlock744Value0 := recoveredBlock744Arg1.
    recoveredBlock744Value1 := recoveredBlock744Value0.
    recoveredBlock744Value2 := XmATTACHNONE.
    (recoveredBlock744Value1) topAttachment: (recoveredBlock744Value2).
    recoveredBlock744Value3 := recoveredBlock744Value0.
    recoveredBlock744Value4 := XmATTACHFORM.
    (recoveredBlock744Value3) bottomAttachment: (recoveredBlock744Value4).
    recoveredBlock744Value5 := recoveredBlock744Value0.
    (recoveredBlock744Value5) bottomOffset: (5).
    recoveredBlock744Value6 := recoveredBlock744Value0.
    recoveredBlock744Value7 := XmATTACHWIDGET.
    (recoveredBlock744Value6) rightAttachment: (recoveredBlock744Value7).
    recoveredBlock744Value8 := recoveredBlock744Value0.
    recoveredBlock744Value9 := recoveredLocal3.
    (recoveredBlock744Value8) rightWidget: (recoveredBlock744Value9).
    recoveredBlock744Value10 := (recoveredBlock744Value0) rightOffset: (5).
    recoveredBlock744Value10
].
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 803.
        ].
        recoveredStep = 803 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 806.
        ].
        recoveredStep = 806 ifTrue: [
            recoveredStack2 := [:recoveredBlock806Arg1 | 
    | recoveredBlock806Value0 recoveredBlock806Value1 recoveredBlock806Value2 recoveredBlock806Value3 recoveredBlock806Value4 recoveredBlock806Value5 recoveredBlock806Value6 recoveredBlock806Value7 recoveredBlock806Value8 recoveredBlock806Value9 recoveredBlock806Value10 |
    recoveredBlock806Value0 := recoveredBlock806Arg1.
    recoveredBlock806Value1 := recoveredBlock806Value0.
    recoveredBlock806Value2 := XmATTACHNONE.
    (recoveredBlock806Value1) topAttachment: (recoveredBlock806Value2).
    recoveredBlock806Value3 := recoveredBlock806Value0.
    recoveredBlock806Value4 := XmATTACHFORM.
    (recoveredBlock806Value3) bottomAttachment: (recoveredBlock806Value4).
    recoveredBlock806Value5 := recoveredBlock806Value0.
    (recoveredBlock806Value5) bottomOffset: (5).
    recoveredBlock806Value6 := recoveredBlock806Value0.
    recoveredBlock806Value7 := XmATTACHWIDGET.
    (recoveredBlock806Value6) rightAttachment: (recoveredBlock806Value7).
    recoveredBlock806Value8 := recoveredBlock806Value0.
    recoveredBlock806Value9 := recoveredLocal5.
    (recoveredBlock806Value8) rightWidget: (recoveredBlock806Value9).
    recoveredBlock806Value10 := (recoveredBlock806Value0) rightOffset: (5).
    recoveredBlock806Value10
].
            recoveredPC := 860.
        ].
        recoveredStep = 860 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 865.
        ].
        recoveredStep = 865 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 868.
        ].
        recoveredStep = 868 ifTrue: [
            recoveredStack2 := [:recoveredBlock868Arg1 | 
    | recoveredBlock868Value0 recoveredBlock868Value1 recoveredBlock868Value2 recoveredBlock868Value3 recoveredBlock868Value4 recoveredBlock868Value5 recoveredBlock868Value6 recoveredBlock868Value7 recoveredBlock868Value8 recoveredBlock868Value9 recoveredBlock868Value10 |
    recoveredBlock868Value0 := recoveredBlock868Arg1.
    recoveredBlock868Value1 := recoveredBlock868Value0.
    recoveredBlock868Value2 := XmATTACHNONE.
    (recoveredBlock868Value1) topAttachment: (recoveredBlock868Value2).
    recoveredBlock868Value3 := recoveredBlock868Value0.
    recoveredBlock868Value4 := XmATTACHFORM.
    (recoveredBlock868Value3) bottomAttachment: (recoveredBlock868Value4).
    recoveredBlock868Value5 := recoveredBlock868Value0.
    (recoveredBlock868Value5) bottomOffset: (5).
    recoveredBlock868Value6 := recoveredBlock868Value0.
    recoveredBlock868Value7 := XmATTACHWIDGET.
    (recoveredBlock868Value6) rightAttachment: (recoveredBlock868Value7).
    recoveredBlock868Value8 := recoveredBlock868Value0.
    recoveredBlock868Value9 := recoveredLocal2.
    (recoveredBlock868Value8) rightWidget: (recoveredBlock868Value9).
    recoveredBlock868Value10 := (recoveredBlock868Value0) rightOffset: (5).
    recoveredBlock868Value10
].
            recoveredPC := 922.
        ].
        recoveredStep = 922 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 927.
        ].
        recoveredStep = 927 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 930.
        ].
        recoveredStep = 930 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 931.
        ].
        recoveredStep = 931 ifTrue: [
            recoveredStack3 := XmNbeginEditCallback.
            recoveredPC := 934.
        ].
        recoveredStep = 934 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 935.
        ].
        recoveredStep = 935 ifTrue: [
            recoveredStack5 := 'beginEditString:clientData:callData:'.
            recoveredPC := 938.
        ].
        recoveredStep = 938 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 939.
        ].
        recoveredStep = 939 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 943.
        ].
        recoveredStep = 943 ifTrue: [
            recoveredStack3 := XmNendEditCallback.
            recoveredPC := 946.
        ].
        recoveredStep = 946 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 947.
        ].
        recoveredStep = 947 ifTrue: [
            recoveredStack5 := 'endEditString:clientData:callData:'.
            recoveredPC := 950.
        ].
        recoveredStep = 950 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 951.
        ].
        recoveredStep = 951 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 955.
        ].
        recoveredStep = 955 ifTrue: [
            recoveredStack3 := XmNvisualInfoCallback.
            recoveredPC := 958.
        ].
        recoveredStep = 958 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 959.
        ].
        recoveredStep = 959 ifTrue: [
            recoveredStack5 := 'name:clientData:callData:'.
            recoveredPC := 962.
        ].
        recoveredStep = 962 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 963.
        ].
        recoveredStep = 963 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredPC := 967.
        ].
        recoveredStep = 967 ifTrue: [
            recoveredStack2 := XmNdefaultActionCallback.
            recoveredPC := 970.
        ].
        recoveredStep = 970 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 971.
        ].
        recoveredStep = 971 ifTrue: [
            recoveredStack4 := 'itemListcellSingleSelectionCallback:clientData:callData:'.
            recoveredPC := 974.
        ].
        recoveredStep = 974 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 975.
        ].
        recoveredStep = 975 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 979.
        ].
        recoveredStep = 979 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 982.
        ].
        recoveredStep = 982 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 986.
        ].
        recoveredStep = 986 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 987.
        ].
        recoveredStep = 987 ifTrue: [
            recoveredStack4 := 'addViewActivate:clientData:callData:'.
            recoveredPC := 990.
        ].
        recoveredStep = 990 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 991.
        ].
        recoveredStep = 991 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 995.
        ].
        recoveredStep = 995 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 998.
        ].
        recoveredStep = 998 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1002.
        ].
        recoveredStep = 1002 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1003.
        ].
        recoveredStep = 1003 ifTrue: [
            recoveredStack4 := 'renameViewActivate:clientData:callData:'.
            recoveredPC := 1006.
        ].
        recoveredStep = 1006 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1007.
        ].
        recoveredStep = 1007 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1011.
        ].
        recoveredStep = 1011 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1014.
        ].
        recoveredStep = 1014 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1018.
        ].
        recoveredStep = 1018 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1019.
        ].
        recoveredStep = 1019 ifTrue: [
            recoveredStack4 := 'delViewActivate:clientData:callData:'.
            recoveredPC := 1022.
        ].
        recoveredStep = 1022 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1023.
        ].
        recoveredStep = 1023 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1027.
        ].
        recoveredStep = 1027 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1030.
        ].
        recoveredStep = 1030 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1034.
        ].
        recoveredStep = 1034 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1035.
        ].
        recoveredStep = 1035 ifTrue: [
            recoveredStack4 := 'editViewActivate:clientData:callData:'.
            recoveredPC := 1038.
        ].
        recoveredStep = 1038 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1039.
        ].
        recoveredStep = 1039 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1043.
        ].
        recoveredStep = 1043 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1046.
        ].
        recoveredStep = 1046 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1050.
        ].
        recoveredStep = 1050 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1051.
        ].
        recoveredStep = 1051 ifTrue: [
            recoveredStack4 := 'defViewActivate:clientData:callData:'.
            recoveredPC := 1054.
        ].
        recoveredStep = 1054 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1055.
        ].
        recoveredStep = 1055 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1059.
        ].
        recoveredStep = 1059 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1062.
        ].
        recoveredStep = 1062 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1066.
        ].
        recoveredStep = 1066 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1067.
        ].
        recoveredStep = 1067 ifTrue: [
            recoveredStack4 := 'importViewActivate:clientData:callData:'.
            recoveredPC := 1070.
        ].
        recoveredStep = 1070 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1071.
        ].
        recoveredStep = 1071 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1075.
        ].
        recoveredStep = 1075 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1078.
        ].
        recoveredStep = 1078 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1082.
        ].
        recoveredStep = 1082 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1083.
        ].
        recoveredStep = 1083 ifTrue: [
            recoveredStack4 := 'exportViewActivate:clientData:callData:'.
            recoveredPC := 1086.
        ].
        recoveredStep = 1086 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1087.
        ].
        recoveredStep = 1087 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1091.
        ].
        recoveredStep = 1091 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 1094.
        ].
        recoveredStep = 1094 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1099.
        ].
        recoveredStep = 1099 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1102.
        ].
        recoveredStep = 1102 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1107.
        ].
        recoveredStep = 1107 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1110.
        ].
        recoveredStep = 1110 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1115.
        ].
        recoveredStep = 1115 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1118.
        ].
        recoveredStep = 1118 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1123.
        ].
        recoveredStep = 1123 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1126.
        ].
        recoveredStep = 1126 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1131.
        ].
        recoveredStep = 1131 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1134.
        ].
        recoveredStep = 1134 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1139.
        ].
        recoveredStep = 1139 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1142.
        ].
        recoveredStep = 1142 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1147.
        ].
        recoveredStep = 1147 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1150.
        ].
        recoveredStep = 1150 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1155.
        ].
        recoveredStep = 1155 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1158.
        ].
        recoveredStep = 1158 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 1161.
        ].
        recoveredStep = 1161 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 1164.
        ].
        recoveredStep = 1164 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1169.
        ].
        recoveredStep = 1169 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2068a62c; bytecode file offset 0xf87084"
!ASDViewConfigurationDialog methodsFor: 'recovered'!
importViewsFromXmlString: recoveredArg1 errorLogger: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := views.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) allCategories.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            views := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := EtasGenericDOMDocument.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) parseString: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'Invalid contents in views file.'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootTag.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'Views'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 'Expected top element ''Views'' instead of %1 in views file'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) rootTag.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := 'View'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) getElementsByTagName: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := [:recoveredBlock83Arg1 | 
    | recoveredBlock83Local1 recoveredBlock83Local2 recoveredBlock83Local3 recoveredBlock83Local4 recoveredBlock83Local5 recoveredBlock83Local6 recoveredBlock83Local7 recoveredBlock83Local8 recoveredBlock83Local9 recoveredBlock83Local10 recoveredBlock83Stack0 recoveredBlock83Stack1 recoveredBlock83Stack2 recoveredBlock83Stack3 recoveredBlock83Stack4 recoveredBlock83PC recoveredBlock83Step recoveredBlock83Done recoveredBlock83Result |
    recoveredBlock83Stack0 := self.
    recoveredBlock83PC := 90.
    recoveredBlock83Done := false.
    [recoveredBlock83Done not] whileTrue: [
        recoveredBlock83Step := recoveredBlock83PC.
        recoveredBlock83Step = 90 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Arg1.
            recoveredBlock83PC := 93.
        ].
        recoveredBlock83Step = 93 ifTrue: [
            recoveredBlock83Stack2 := 'name'.
            recoveredBlock83PC := 95.
        ].
        recoveredBlock83Step = 95 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getAttribute: (recoveredBlock83Stack2).
            recoveredBlock83PC := 97.
        ].
        recoveredBlock83Step = 97 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 98.
        ].
        recoveredBlock83Step = 98 ifTrue: [
            recoveredBlock83Local9 := recoveredBlock83Stack2.
            recoveredBlock83PC := 101.
        ].
        recoveredBlock83Step = 101 ifTrue: [
            (recoveredBlock83Stack1 ~~ nil) ifTrue: [recoveredBlock83PC := 115] ifFalse: [recoveredBlock83PC := 104].
        ].
        recoveredBlock83Step = 104 ifTrue: [
            recoveredBlock83Stack1 := recoveredArg2.
            recoveredBlock83PC := 107.
        ].
        recoveredBlock83Step = 107 ifTrue: [
            recoveredBlock83Stack2 := 'Error on parsing XML file. Import aborted!!'.
            recoveredBlock83PC := 109.
        ].
        recoveredBlock83Step = 109 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) errorMessage: (recoveredBlock83Stack2).
            recoveredBlock83PC := 111.
        ].
        recoveredBlock83Step = 111 ifTrue: [
            (recoveredBlock83Stack1) prompt.
            recoveredBlock83PC := 113.
        ].
        recoveredBlock83Step = 113 ifTrue: [
            recoveredBlock83Stack1 := nil.
            recoveredBlock83PC := 114.
        ].
        recoveredBlock83Step = 114 ifTrue: [
            ^recoveredBlock83Stack1
        ].
        recoveredBlock83Step = 115 ifTrue: [
            recoveredBlock83Stack1 := views.
            recoveredBlock83PC := 117.
        ].
        recoveredBlock83Step = 117 ifTrue: [
            recoveredBlock83Stack2 := [:recoveredBlock83Block117Arg1 | 
    | recoveredBlock83Block117Value0 recoveredBlock83Block117Value1 recoveredBlock83Block117Value2 recoveredBlock83Block117Value3 |
    recoveredBlock83Block117Value0 := recoveredBlock83Block117Arg1.
    recoveredBlock83Block117Value1 := (recoveredBlock83Block117Value0) name.
    recoveredBlock83Block117Value2 := recoveredBlock83Local9.
    recoveredBlock83Block117Value3 := (recoveredBlock83Block117Value1) = (recoveredBlock83Block117Value2).
    recoveredBlock83Block117Value3
].
            recoveredBlock83PC := 132.
        ].
        recoveredBlock83Step = 132 ifTrue: [
            recoveredBlock83Stack3 := [].
            recoveredBlock83PC := 134.
        ].
        recoveredBlock83Step = 134 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) detect: (recoveredBlock83Stack2) ifNone: (recoveredBlock83Stack3).
            recoveredBlock83PC := 136.
        ].
        recoveredBlock83Step = 136 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 137.
        ].
        recoveredBlock83Step = 137 ifTrue: [
            recoveredBlock83Local10 := recoveredBlock83Stack2.
            recoveredBlock83PC := 140.
        ].
        recoveredBlock83Step = 140 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 162] ifFalse: [recoveredBlock83PC := 144].
        ].
        recoveredBlock83Step = 144 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 147.
        ].
        recoveredBlock83Step = 147 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 148.
        ].
        recoveredBlock83Step = 148 ifTrue: [
            (recoveredBlock83Stack2) resetAllSettings.
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 151.
        ].
        recoveredBlock83Step = 151 ifTrue: [
            (recoveredBlock83Stack2) createDefaultVisibility.
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 154.
        ].
        recoveredBlock83Step = 154 ifTrue: [
            (recoveredBlock83Stack2) clearElementLists.
            recoveredBlock83PC := 156.
        ].
        recoveredBlock83Step = 156 ifTrue: [
            (recoveredBlock83Stack1) clearBasicBlockLists.
            recoveredBlock83PC := 158.
        ].
        recoveredBlock83Step = 158 ifTrue: [
            recoveredBlock83PC := 193.
        ].
        recoveredBlock83Step = 162 ifTrue: [
            recoveredBlock83Stack1 := SGCategory.
            recoveredBlock83PC := 164.
        ].
        recoveredBlock83Step = 164 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) createDefault.
            recoveredBlock83PC := 166.
        ].
        recoveredBlock83Step = 166 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 167.
        ].
        recoveredBlock83Step = 167 ifTrue: [
            recoveredBlock83Local10 := recoveredBlock83Stack2.
            recoveredBlock83PC := 170.
        ].
        recoveredBlock83Step = 170 ifTrue: [
            (recoveredBlock83Stack1 ~~ nil) ifTrue: [recoveredBlock83PC := 176] ifFalse: [recoveredBlock83PC := 174].
        ].
        recoveredBlock83Step = 174 ifTrue: [
            recoveredBlock83Stack1 := nil.
            recoveredBlock83PC := 175.
        ].
        recoveredBlock83Step = 175 ifTrue: [
            ^recoveredBlock83Stack1
        ].
        recoveredBlock83Step = 176 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 179.
        ].
        recoveredBlock83Step = 179 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Local9.
            recoveredBlock83PC := 182.
        ].
        recoveredBlock83Step = 182 ifTrue: [
            (recoveredBlock83Stack1) name: (recoveredBlock83Stack2).
            recoveredBlock83PC := 184.
        ].
        recoveredBlock83Step = 184 ifTrue: [
            recoveredBlock83Stack1 := views.
            recoveredBlock83PC := 186.
        ].
        recoveredBlock83Step = 186 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Local10.
            recoveredBlock83PC := 189.
        ].
        recoveredBlock83Step = 189 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) copyWith: (recoveredBlock83Stack2).
            recoveredBlock83PC := 191.
        ].
        recoveredBlock83Step = 191 ifTrue: [
            views := recoveredBlock83Stack1.
            recoveredBlock83PC := 193.
        ].
        recoveredBlock83Step = 193 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Arg1.
            recoveredBlock83PC := 196.
        ].
        recoveredBlock83Step = 196 ifTrue: [
            recoveredBlock83Stack2 := 'Components'.
            recoveredBlock83PC := 198.
        ].
        recoveredBlock83Step = 198 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getElementsByTagName: (recoveredBlock83Stack2).
            recoveredBlock83PC := 200.
        ].
        recoveredBlock83Step = 200 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 201.
        ].
        recoveredBlock83Step = 201 ifTrue: [
            recoveredBlock83Local8 := recoveredBlock83Stack2.
            recoveredBlock83PC := 204.
        ].
        recoveredBlock83Step = 204 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) isEmpty.
            recoveredBlock83PC := 206.
        ].
        recoveredBlock83Step = 206 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 210] ifFalse: [recoveredBlock83PC := 221].
        ].
        recoveredBlock83Step = 210 ifTrue: [
            recoveredBlock83Stack1 := recoveredArg2.
            recoveredBlock83PC := 213.
        ].
        recoveredBlock83Step = 213 ifTrue: [
            recoveredBlock83Stack2 := 'Error on parsing XML file. Import aborted!!'.
            recoveredBlock83PC := 215.
        ].
        recoveredBlock83Step = 215 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) errorMessage: (recoveredBlock83Stack2).
            recoveredBlock83PC := 217.
        ].
        recoveredBlock83Step = 217 ifTrue: [
            (recoveredBlock83Stack1) prompt.
            recoveredBlock83PC := 219.
        ].
        recoveredBlock83Step = 219 ifTrue: [
            recoveredBlock83Stack1 := nil.
            recoveredBlock83PC := 220.
        ].
        recoveredBlock83Step = 220 ifTrue: [
            ^recoveredBlock83Stack1
        ].
        recoveredBlock83Step = 221 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Arg1.
            recoveredBlock83PC := 224.
        ].
        recoveredBlock83Step = 224 ifTrue: [
            recoveredBlock83Stack2 := 'Projects'.
            recoveredBlock83PC := 226.
        ].
        recoveredBlock83Step = 226 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getElementsByTagName: (recoveredBlock83Stack2).
            recoveredBlock83PC := 228.
        ].
        recoveredBlock83Step = 228 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 229.
        ].
        recoveredBlock83Step = 229 ifTrue: [
            recoveredBlock83Local7 := recoveredBlock83Stack2.
            recoveredBlock83PC := 232.
        ].
        recoveredBlock83Step = 232 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) isEmpty.
            recoveredBlock83PC := 234.
        ].
        recoveredBlock83Step = 234 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 238] ifFalse: [recoveredBlock83PC := 249].
        ].
        recoveredBlock83Step = 238 ifTrue: [
            recoveredBlock83Stack1 := recoveredArg2.
            recoveredBlock83PC := 241.
        ].
        recoveredBlock83Step = 241 ifTrue: [
            recoveredBlock83Stack2 := 'Error on parsing XML file. Import aborted!!'.
            recoveredBlock83PC := 243.
        ].
        recoveredBlock83Step = 243 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) errorMessage: (recoveredBlock83Stack2).
            recoveredBlock83PC := 245.
        ].
        recoveredBlock83Step = 245 ifTrue: [
            (recoveredBlock83Stack1) prompt.
            recoveredBlock83PC := 247.
        ].
        recoveredBlock83Step = 247 ifTrue: [
            recoveredBlock83Stack1 := nil.
            recoveredBlock83PC := 248.
        ].
        recoveredBlock83Step = 248 ifTrue: [
            ^recoveredBlock83Stack1
        ].
        recoveredBlock83Step = 249 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Arg1.
            recoveredBlock83PC := 252.
        ].
        recoveredBlock83Step = 252 ifTrue: [
            recoveredBlock83Stack2 := 'BDESettings'.
            recoveredBlock83PC := 254.
        ].
        recoveredBlock83Step = 254 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getElementsByTagName: (recoveredBlock83Stack2).
            recoveredBlock83PC := 256.
        ].
        recoveredBlock83Step = 256 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 257.
        ].
        recoveredBlock83Step = 257 ifTrue: [
            recoveredBlock83Local6 := recoveredBlock83Stack2.
            recoveredBlock83PC := 260.
        ].
        recoveredBlock83Step = 260 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) isEmpty.
            recoveredBlock83PC := 262.
        ].
        recoveredBlock83Step = 262 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 266] ifFalse: [recoveredBlock83PC := 277].
        ].
        recoveredBlock83Step = 266 ifTrue: [
            recoveredBlock83Stack1 := recoveredArg2.
            recoveredBlock83PC := 269.
        ].
        recoveredBlock83Step = 269 ifTrue: [
            recoveredBlock83Stack2 := 'Error on parsing XML file. Import aborted!!'.
            recoveredBlock83PC := 271.
        ].
        recoveredBlock83Step = 271 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) errorMessage: (recoveredBlock83Stack2).
            recoveredBlock83PC := 273.
        ].
        recoveredBlock83Step = 273 ifTrue: [
            (recoveredBlock83Stack1) prompt.
            recoveredBlock83PC := 275.
        ].
        recoveredBlock83Step = 275 ifTrue: [
            recoveredBlock83Stack1 := nil.
            recoveredBlock83PC := 276.
        ].
        recoveredBlock83Step = 276 ifTrue: [
            ^recoveredBlock83Stack1
        ].
        recoveredBlock83Step = 277 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Arg1.
            recoveredBlock83PC := 280.
        ].
        recoveredBlock83Step = 280 ifTrue: [
            recoveredBlock83Stack2 := 'ElementDefaults'.
            recoveredBlock83PC := 282.
        ].
        recoveredBlock83Step = 282 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getElementsByTagName: (recoveredBlock83Stack2).
            recoveredBlock83PC := 284.
        ].
        recoveredBlock83Step = 284 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 285.
        ].
        recoveredBlock83Step = 285 ifTrue: [
            recoveredBlock83Local5 := recoveredBlock83Stack2.
            recoveredBlock83PC := 288.
        ].
        recoveredBlock83Step = 288 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) isEmpty.
            recoveredBlock83PC := 290.
        ].
        recoveredBlock83Step = 290 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 294] ifFalse: [recoveredBlock83PC := 305].
        ].
        recoveredBlock83Step = 294 ifTrue: [
            recoveredBlock83Stack1 := recoveredArg2.
            recoveredBlock83PC := 297.
        ].
        recoveredBlock83Step = 297 ifTrue: [
            recoveredBlock83Stack2 := 'Error on parsing XML file. Import aborted!!'.
            recoveredBlock83PC := 299.
        ].
        recoveredBlock83Step = 299 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) errorMessage: (recoveredBlock83Stack2).
            recoveredBlock83PC := 301.
        ].
        recoveredBlock83Step = 301 ifTrue: [
            (recoveredBlock83Stack1) prompt.
            recoveredBlock83PC := 303.
        ].
        recoveredBlock83Step = 303 ifTrue: [
            recoveredBlock83Stack1 := nil.
            recoveredBlock83PC := 304.
        ].
        recoveredBlock83Step = 304 ifTrue: [
            ^recoveredBlock83Stack1
        ].
        recoveredBlock83Step = 305 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Arg1.
            recoveredBlock83PC := 308.
        ].
        recoveredBlock83Step = 308 ifTrue: [
            recoveredBlock83Stack2 := 'BasicBlockDefaults'.
            recoveredBlock83PC := 310.
        ].
        recoveredBlock83Step = 310 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getElementsByTagName: (recoveredBlock83Stack2).
            recoveredBlock83PC := 312.
        ].
        recoveredBlock83Step = 312 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 313.
        ].
        recoveredBlock83Step = 313 ifTrue: [
            recoveredBlock83Local4 := recoveredBlock83Stack2.
            recoveredBlock83PC := 316.
        ].
        recoveredBlock83Step = 316 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) notEmpty.
            recoveredBlock83PC := 318.
        ].
        recoveredBlock83Step = 318 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 322] ifFalse: [recoveredBlock83PC := 334].
        ].
        recoveredBlock83Step = 322 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local4.
            recoveredBlock83PC := 325.
        ].
        recoveredBlock83Step = 325 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) first.
            recoveredBlock83PC := 327.
        ].
        recoveredBlock83Step = 327 ifTrue: [
            recoveredBlock83Local4 := recoveredBlock83Stack1.
            recoveredBlock83PC := 330.
        ].
        recoveredBlock83Step = 330 ifTrue: [
            recoveredBlock83PC := 338.
        ].
        recoveredBlock83Step = 334 ifTrue: [
            recoveredBlock83Stack1 := nil.
            recoveredBlock83PC := 335.
        ].
        recoveredBlock83Step = 335 ifTrue: [
            recoveredBlock83Local4 := recoveredBlock83Stack1.
            recoveredBlock83PC := 338.
        ].
        recoveredBlock83Step = 338 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local8.
            recoveredBlock83PC := 341.
        ].
        recoveredBlock83Step = 341 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) first.
            recoveredBlock83PC := 343.
        ].
        recoveredBlock83Step = 343 ifTrue: [
            recoveredBlock83Local8 := recoveredBlock83Stack1.
            recoveredBlock83PC := 346.
        ].
        recoveredBlock83Step = 346 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local7.
            recoveredBlock83PC := 349.
        ].
        recoveredBlock83Step = 349 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) first.
            recoveredBlock83PC := 351.
        ].
        recoveredBlock83Step = 351 ifTrue: [
            recoveredBlock83Local7 := recoveredBlock83Stack1.
            recoveredBlock83PC := 354.
        ].
        recoveredBlock83Step = 354 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local6.
            recoveredBlock83PC := 357.
        ].
        recoveredBlock83Step = 357 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) first.
            recoveredBlock83PC := 359.
        ].
        recoveredBlock83Step = 359 ifTrue: [
            recoveredBlock83Local6 := recoveredBlock83Stack1.
            recoveredBlock83PC := 362.
        ].
        recoveredBlock83Step = 362 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local5.
            recoveredBlock83PC := 365.
        ].
        recoveredBlock83Step = 365 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) first.
            recoveredBlock83PC := 367.
        ].
        recoveredBlock83Step = 367 ifTrue: [
            recoveredBlock83Local5 := recoveredBlock83Stack1.
            recoveredBlock83PC := 370.
        ].
        recoveredBlock83Step = 370 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local8.
            recoveredBlock83PC := 373.
        ].
        recoveredBlock83Step = 373 ifTrue: [
            recoveredBlock83Stack2 := 'notes'.
            recoveredBlock83PC := 375.
        ].
        recoveredBlock83Step = 375 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getAttribute: (recoveredBlock83Stack2).
            recoveredBlock83PC := 377.
        ].
        recoveredBlock83Step = 377 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 378.
        ].
        recoveredBlock83Step = 378 ifTrue: [
            recoveredBlock83Local9 := recoveredBlock83Stack2.
            recoveredBlock83PC := 381.
        ].
        recoveredBlock83Step = 381 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 397] ifFalse: [recoveredBlock83PC := 384].
        ].
        recoveredBlock83Step = 384 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local9.
            recoveredBlock83PC := 387.
        ].
        recoveredBlock83Step = 387 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) asBoolean.
            recoveredBlock83PC := 389.
        ].
        recoveredBlock83Step = 389 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 397] ifFalse: [recoveredBlock83PC := 392].
        ].
        recoveredBlock83Step = 392 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 395.
        ].
        recoveredBlock83Step = 395 ifTrue: [
            (recoveredBlock83Stack1) clearComments.
            recoveredBlock83PC := 397.
        ].
        recoveredBlock83Step = 397 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local8.
            recoveredBlock83PC := 400.
        ].
        recoveredBlock83Step = 400 ifTrue: [
            recoveredBlock83Stack2 := 'layout'.
            recoveredBlock83PC := 402.
        ].
        recoveredBlock83Step = 402 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getAttribute: (recoveredBlock83Stack2).
            recoveredBlock83PC := 404.
        ].
        recoveredBlock83Step = 404 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 405.
        ].
        recoveredBlock83Step = 405 ifTrue: [
            recoveredBlock83Local9 := recoveredBlock83Stack2.
            recoveredBlock83PC := 408.
        ].
        recoveredBlock83Step = 408 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 425] ifFalse: [recoveredBlock83PC := 412].
        ].
        recoveredBlock83Step = 412 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local9.
            recoveredBlock83PC := 415.
        ].
        recoveredBlock83Step = 415 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) asBoolean.
            recoveredBlock83PC := 417.
        ].
        recoveredBlock83Step = 417 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 425] ifFalse: [recoveredBlock83PC := 420].
        ].
        recoveredBlock83Step = 420 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 423.
        ].
        recoveredBlock83Step = 423 ifTrue: [
            (recoveredBlock83Stack1) clearInterface.
            recoveredBlock83PC := 425.
        ].
        recoveredBlock83Step = 425 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local8.
            recoveredBlock83PC := 428.
        ].
        recoveredBlock83Step = 428 ifTrue: [
            recoveredBlock83Stack2 := 'publicMethods'.
            recoveredBlock83PC := 430.
        ].
        recoveredBlock83Step = 430 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getAttribute: (recoveredBlock83Stack2).
            recoveredBlock83PC := 432.
        ].
        recoveredBlock83Step = 432 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 433.
        ].
        recoveredBlock83Step = 433 ifTrue: [
            recoveredBlock83Local9 := recoveredBlock83Stack2.
            recoveredBlock83PC := 436.
        ].
        recoveredBlock83Step = 436 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 453] ifFalse: [recoveredBlock83PC := 440].
        ].
        recoveredBlock83Step = 440 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local9.
            recoveredBlock83PC := 443.
        ].
        recoveredBlock83Step = 443 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) asBoolean.
            recoveredBlock83PC := 445.
        ].
        recoveredBlock83Step = 445 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 453] ifFalse: [recoveredBlock83PC := 448].
        ].
        recoveredBlock83Step = 448 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 451.
        ].
        recoveredBlock83Step = 451 ifTrue: [
            (recoveredBlock83Stack1) clearPublicMethod.
            recoveredBlock83PC := 453.
        ].
        recoveredBlock83Step = 453 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local8.
            recoveredBlock83PC := 456.
        ].
        recoveredBlock83Step = 456 ifTrue: [
            recoveredBlock83Stack2 := 'privateMethods'.
            recoveredBlock83PC := 458.
        ].
        recoveredBlock83Step = 458 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getAttribute: (recoveredBlock83Stack2).
            recoveredBlock83PC := 460.
        ].
        recoveredBlock83Step = 460 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 461.
        ].
        recoveredBlock83Step = 461 ifTrue: [
            recoveredBlock83Local9 := recoveredBlock83Stack2.
            recoveredBlock83PC := 464.
        ].
        recoveredBlock83Step = 464 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 481] ifFalse: [recoveredBlock83PC := 468].
        ].
        recoveredBlock83Step = 468 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local9.
            recoveredBlock83PC := 471.
        ].
        recoveredBlock83Step = 471 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) asBoolean.
            recoveredBlock83PC := 473.
        ].
        recoveredBlock83Step = 473 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 481] ifFalse: [recoveredBlock83PC := 476].
        ].
        recoveredBlock83Step = 476 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 479.
        ].
        recoveredBlock83Step = 479 ifTrue: [
            (recoveredBlock83Stack1) clearPrivateMethod.
            recoveredBlock83PC := 481.
        ].
        recoveredBlock83Step = 481 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local8.
            recoveredBlock83PC := 484.
        ].
        recoveredBlock83Step = 484 ifTrue: [
            recoveredBlock83Stack2 := 'processes'.
            recoveredBlock83PC := 486.
        ].
        recoveredBlock83Step = 486 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getAttribute: (recoveredBlock83Stack2).
            recoveredBlock83PC := 488.
        ].
        recoveredBlock83Step = 488 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 489.
        ].
        recoveredBlock83Step = 489 ifTrue: [
            recoveredBlock83Local9 := recoveredBlock83Stack2.
            recoveredBlock83PC := 492.
        ].
        recoveredBlock83Step = 492 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 509] ifFalse: [recoveredBlock83PC := 496].
        ].
        recoveredBlock83Step = 496 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local9.
            recoveredBlock83PC := 499.
        ].
        recoveredBlock83Step = 499 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) asBoolean.
            recoveredBlock83PC := 501.
        ].
        recoveredBlock83Step = 501 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 509] ifFalse: [recoveredBlock83PC := 504].
        ].
        recoveredBlock83Step = 504 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 507.
        ].
        recoveredBlock83Step = 507 ifTrue: [
            (recoveredBlock83Stack1) clearProcesses.
            recoveredBlock83PC := 509.
        ].
        recoveredBlock83Step = 509 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local8.
            recoveredBlock83PC := 512.
        ].
        recoveredBlock83Step = 512 ifTrue: [
            recoveredBlock83Stack2 := 'graphic'.
            recoveredBlock83PC := 514.
        ].
        recoveredBlock83Step = 514 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getAttribute: (recoveredBlock83Stack2).
            recoveredBlock83PC := 516.
        ].
        recoveredBlock83Step = 516 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 517.
        ].
        recoveredBlock83Step = 517 ifTrue: [
            recoveredBlock83Local9 := recoveredBlock83Stack2.
            recoveredBlock83PC := 520.
        ].
        recoveredBlock83Step = 520 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 537] ifFalse: [recoveredBlock83PC := 524].
        ].
        recoveredBlock83Step = 524 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local9.
            recoveredBlock83PC := 527.
        ].
        recoveredBlock83Step = 527 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) asBoolean.
            recoveredBlock83PC := 529.
        ].
        recoveredBlock83Step = 529 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 537] ifFalse: [recoveredBlock83PC := 532].
        ].
        recoveredBlock83Step = 532 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 535.
        ].
        recoveredBlock83Step = 535 ifTrue: [
            (recoveredBlock83Stack1) clearGraphics.
            recoveredBlock83PC := 537.
        ].
        recoveredBlock83Step = 537 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local8.
            recoveredBlock83PC := 540.
        ].
        recoveredBlock83Step = 540 ifTrue: [
            recoveredBlock83Stack2 := 'elements'.
            recoveredBlock83PC := 542.
        ].
        recoveredBlock83Step = 542 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getAttribute: (recoveredBlock83Stack2).
            recoveredBlock83PC := 544.
        ].
        recoveredBlock83Step = 544 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 545.
        ].
        recoveredBlock83Step = 545 ifTrue: [
            recoveredBlock83Local9 := recoveredBlock83Stack2.
            recoveredBlock83PC := 548.
        ].
        recoveredBlock83Step = 548 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 565] ifFalse: [recoveredBlock83PC := 552].
        ].
        recoveredBlock83Step = 552 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local9.
            recoveredBlock83PC := 555.
        ].
        recoveredBlock83Step = 555 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) asBoolean.
            recoveredBlock83PC := 557.
        ].
        recoveredBlock83Step = 557 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 565] ifFalse: [recoveredBlock83PC := 560].
        ].
        recoveredBlock83Step = 560 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 563.
        ].
        recoveredBlock83Step = 563 ifTrue: [
            (recoveredBlock83Stack1) clearElements.
            recoveredBlock83PC := 565.
        ].
        recoveredBlock83Step = 565 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local8.
            recoveredBlock83PC := 568.
        ].
        recoveredBlock83Step = 568 ifTrue: [
            recoveredBlock83Stack2 := 'importedElements'.
            recoveredBlock83PC := 570.
        ].
        recoveredBlock83Step = 570 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getAttribute: (recoveredBlock83Stack2).
            recoveredBlock83PC := 572.
        ].
        recoveredBlock83Step = 572 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 573.
        ].
        recoveredBlock83Step = 573 ifTrue: [
            recoveredBlock83Local9 := recoveredBlock83Stack2.
            recoveredBlock83PC := 576.
        ].
        recoveredBlock83Step = 576 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 593] ifFalse: [recoveredBlock83PC := 580].
        ].
        recoveredBlock83Step = 580 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local9.
            recoveredBlock83PC := 583.
        ].
        recoveredBlock83Step = 583 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) asBoolean.
            recoveredBlock83PC := 585.
        ].
        recoveredBlock83Step = 585 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 593] ifFalse: [recoveredBlock83PC := 588].
        ].
        recoveredBlock83Step = 588 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 591.
        ].
        recoveredBlock83Step = 591 ifTrue: [
            (recoveredBlock83Stack1) clearImportedElements.
            recoveredBlock83PC := 593.
        ].
        recoveredBlock83Step = 593 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local8.
            recoveredBlock83PC := 596.
        ].
        recoveredBlock83Step = 596 ifTrue: [
            recoveredBlock83Stack2 := 'exportedElements'.
            recoveredBlock83PC := 598.
        ].
        recoveredBlock83Step = 598 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getAttribute: (recoveredBlock83Stack2).
            recoveredBlock83PC := 600.
        ].
        recoveredBlock83Step = 600 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 601.
        ].
        recoveredBlock83Step = 601 ifTrue: [
            recoveredBlock83Local9 := recoveredBlock83Stack2.
            recoveredBlock83PC := 604.
        ].
        recoveredBlock83Step = 604 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 621] ifFalse: [recoveredBlock83PC := 608].
        ].
        recoveredBlock83Step = 608 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local9.
            recoveredBlock83PC := 611.
        ].
        recoveredBlock83Step = 611 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) asBoolean.
            recoveredBlock83PC := 613.
        ].
        recoveredBlock83Step = 613 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 621] ifFalse: [recoveredBlock83PC := 616].
        ].
        recoveredBlock83Step = 616 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 619.
        ].
        recoveredBlock83Step = 619 ifTrue: [
            (recoveredBlock83Stack1) clearExportedElements.
            recoveredBlock83PC := 621.
        ].
        recoveredBlock83Step = 621 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local8.
            recoveredBlock83PC := 624.
        ].
        recoveredBlock83Step = 624 ifTrue: [
            recoveredBlock83Stack2 := 'data'.
            recoveredBlock83PC := 626.
        ].
        recoveredBlock83Step = 626 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getAttribute: (recoveredBlock83Stack2).
            recoveredBlock83PC := 628.
        ].
        recoveredBlock83Step = 628 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 629.
        ].
        recoveredBlock83Step = 629 ifTrue: [
            recoveredBlock83Local9 := recoveredBlock83Stack2.
            recoveredBlock83PC := 632.
        ].
        recoveredBlock83Step = 632 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 651] ifFalse: [recoveredBlock83PC := 636].
        ].
        recoveredBlock83Step = 636 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local9.
            recoveredBlock83PC := 639.
        ].
        recoveredBlock83Step = 639 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) asBoolean.
            recoveredBlock83PC := 641.
        ].
        recoveredBlock83Step = 641 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 651] ifFalse: [recoveredBlock83PC := 644].
        ].
        recoveredBlock83Step = 644 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 647.
        ].
        recoveredBlock83Step = 647 ifTrue: [
            (recoveredBlock83Stack1) clearData.
            recoveredBlock83PC := 651.
        ].
        recoveredBlock83Step = 651 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local8.
            recoveredBlock83PC := 654.
        ].
        recoveredBlock83Step = 654 ifTrue: [
            recoveredBlock83Stack2 := 'implementation'.
            recoveredBlock83PC := 658.
        ].
        recoveredBlock83Step = 658 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getAttribute: (recoveredBlock83Stack2).
            recoveredBlock83PC := 660.
        ].
        recoveredBlock83Step = 660 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 661.
        ].
        recoveredBlock83Step = 661 ifTrue: [
            recoveredBlock83Local9 := recoveredBlock83Stack2.
            recoveredBlock83PC := 664.
        ].
        recoveredBlock83Step = 664 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 683] ifFalse: [recoveredBlock83PC := 668].
        ].
        recoveredBlock83Step = 668 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local9.
            recoveredBlock83PC := 671.
        ].
        recoveredBlock83Step = 671 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) asBoolean.
            recoveredBlock83PC := 673.
        ].
        recoveredBlock83Step = 673 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 683] ifFalse: [recoveredBlock83PC := 676].
        ].
        recoveredBlock83Step = 676 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 679.
        ].
        recoveredBlock83Step = 679 ifTrue: [
            (recoveredBlock83Stack1) clearImplementation.
            recoveredBlock83PC := 683.
        ].
        recoveredBlock83Step = 683 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local7.
            recoveredBlock83PC := 686.
        ].
        recoveredBlock83Step = 686 ifTrue: [
            recoveredBlock83Stack2 := 'notes'.
            recoveredBlock83PC := 688.
        ].
        recoveredBlock83Step = 688 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getAttribute: (recoveredBlock83Stack2).
            recoveredBlock83PC := 690.
        ].
        recoveredBlock83Step = 690 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 691.
        ].
        recoveredBlock83Step = 691 ifTrue: [
            recoveredBlock83Local9 := recoveredBlock83Stack2.
            recoveredBlock83PC := 694.
        ].
        recoveredBlock83Step = 694 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 713] ifFalse: [recoveredBlock83PC := 698].
        ].
        recoveredBlock83Step = 698 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local9.
            recoveredBlock83PC := 701.
        ].
        recoveredBlock83Step = 701 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) asBoolean.
            recoveredBlock83PC := 703.
        ].
        recoveredBlock83Step = 703 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 713] ifFalse: [recoveredBlock83PC := 706].
        ].
        recoveredBlock83Step = 706 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 709.
        ].
        recoveredBlock83Step = 709 ifTrue: [
            (recoveredBlock83Stack1) clearNotes.
            recoveredBlock83PC := 713.
        ].
        recoveredBlock83Step = 713 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local7.
            recoveredBlock83PC := 716.
        ].
        recoveredBlock83Step = 716 ifTrue: [
            recoveredBlock83Stack2 := 'codegenOptions'.
            recoveredBlock83PC := 720.
        ].
        recoveredBlock83Step = 720 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getAttribute: (recoveredBlock83Stack2).
            recoveredBlock83PC := 722.
        ].
        recoveredBlock83Step = 722 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 723.
        ].
        recoveredBlock83Step = 723 ifTrue: [
            recoveredBlock83Local9 := recoveredBlock83Stack2.
            recoveredBlock83PC := 726.
        ].
        recoveredBlock83Step = 726 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 745] ifFalse: [recoveredBlock83PC := 730].
        ].
        recoveredBlock83Step = 730 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local9.
            recoveredBlock83PC := 733.
        ].
        recoveredBlock83Step = 733 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) asBoolean.
            recoveredBlock83PC := 735.
        ].
        recoveredBlock83Step = 735 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 745] ifFalse: [recoveredBlock83PC := 738].
        ].
        recoveredBlock83Step = 738 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 741.
        ].
        recoveredBlock83Step = 741 ifTrue: [
            (recoveredBlock83Stack1) clearCodegenOptions.
            recoveredBlock83PC := 745.
        ].
        recoveredBlock83Step = 745 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local7.
            recoveredBlock83PC := 748.
        ].
        recoveredBlock83Step = 748 ifTrue: [
            recoveredBlock83Stack2 := 'targetOptions'.
            recoveredBlock83PC := 752.
        ].
        recoveredBlock83Step = 752 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getAttribute: (recoveredBlock83Stack2).
            recoveredBlock83PC := 754.
        ].
        recoveredBlock83Step = 754 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 755.
        ].
        recoveredBlock83Step = 755 ifTrue: [
            recoveredBlock83Local9 := recoveredBlock83Stack2.
            recoveredBlock83PC := 758.
        ].
        recoveredBlock83Step = 758 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 777] ifFalse: [recoveredBlock83PC := 762].
        ].
        recoveredBlock83Step = 762 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local9.
            recoveredBlock83PC := 765.
        ].
        recoveredBlock83Step = 765 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) asBoolean.
            recoveredBlock83PC := 767.
        ].
        recoveredBlock83Step = 767 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 777] ifFalse: [recoveredBlock83PC := 770].
        ].
        recoveredBlock83Step = 770 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 773.
        ].
        recoveredBlock83Step = 773 ifTrue: [
            (recoveredBlock83Stack1) clearTargetOptions.
            recoveredBlock83PC := 777.
        ].
        recoveredBlock83Step = 777 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local7.
            recoveredBlock83PC := 780.
        ].
        recoveredBlock83Step = 780 ifTrue: [
            recoveredBlock83Stack2 := 'operatingSystem'.
            recoveredBlock83PC := 784.
        ].
        recoveredBlock83Step = 784 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getAttribute: (recoveredBlock83Stack2).
            recoveredBlock83PC := 786.
        ].
        recoveredBlock83Step = 786 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 787.
        ].
        recoveredBlock83Step = 787 ifTrue: [
            recoveredBlock83Local9 := recoveredBlock83Stack2.
            recoveredBlock83PC := 790.
        ].
        recoveredBlock83Step = 790 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 809] ifFalse: [recoveredBlock83PC := 794].
        ].
        recoveredBlock83Step = 794 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local9.
            recoveredBlock83PC := 797.
        ].
        recoveredBlock83Step = 797 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) asBoolean.
            recoveredBlock83PC := 799.
        ].
        recoveredBlock83Step = 799 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 809] ifFalse: [recoveredBlock83PC := 802].
        ].
        recoveredBlock83Step = 802 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 805.
        ].
        recoveredBlock83Step = 805 ifTrue: [
            (recoveredBlock83Stack1) clearOperatingSystem.
            recoveredBlock83PC := 809.
        ].
        recoveredBlock83Step = 809 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local7.
            recoveredBlock83PC := 812.
        ].
        recoveredBlock83Step = 812 ifTrue: [
            recoveredBlock83Stack2 := 'taskSettings'.
            recoveredBlock83PC := 816.
        ].
        recoveredBlock83Step = 816 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getAttribute: (recoveredBlock83Stack2).
            recoveredBlock83PC := 818.
        ].
        recoveredBlock83Step = 818 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 819.
        ].
        recoveredBlock83Step = 819 ifTrue: [
            recoveredBlock83Local9 := recoveredBlock83Stack2.
            recoveredBlock83PC := 822.
        ].
        recoveredBlock83Step = 822 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 841] ifFalse: [recoveredBlock83PC := 826].
        ].
        recoveredBlock83Step = 826 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local9.
            recoveredBlock83PC := 829.
        ].
        recoveredBlock83Step = 829 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) asBoolean.
            recoveredBlock83PC := 831.
        ].
        recoveredBlock83Step = 831 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 841] ifFalse: [recoveredBlock83PC := 834].
        ].
        recoveredBlock83Step = 834 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 837.
        ].
        recoveredBlock83Step = 837 ifTrue: [
            (recoveredBlock83Stack1) clearTaskSettings.
            recoveredBlock83PC := 841.
        ].
        recoveredBlock83Step = 841 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local7.
            recoveredBlock83PC := 844.
        ].
        recoveredBlock83Step = 844 ifTrue: [
            recoveredBlock83Stack2 := 'taskSchedule'.
            recoveredBlock83PC := 848.
        ].
        recoveredBlock83Step = 848 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getAttribute: (recoveredBlock83Stack2).
            recoveredBlock83PC := 850.
        ].
        recoveredBlock83Step = 850 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 851.
        ].
        recoveredBlock83Step = 851 ifTrue: [
            recoveredBlock83Local9 := recoveredBlock83Stack2.
            recoveredBlock83PC := 854.
        ].
        recoveredBlock83Step = 854 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 873] ifFalse: [recoveredBlock83PC := 858].
        ].
        recoveredBlock83Step = 858 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local9.
            recoveredBlock83PC := 861.
        ].
        recoveredBlock83Step = 861 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) asBoolean.
            recoveredBlock83PC := 863.
        ].
        recoveredBlock83Step = 863 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 873] ifFalse: [recoveredBlock83PC := 866].
        ].
        recoveredBlock83Step = 866 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 869.
        ].
        recoveredBlock83Step = 869 ifTrue: [
            (recoveredBlock83Stack1) clearTaskSchedule.
            recoveredBlock83PC := 873.
        ].
        recoveredBlock83Step = 873 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local7.
            recoveredBlock83PC := 876.
        ].
        recoveredBlock83Step = 876 ifTrue: [
            recoveredBlock83Stack2 := 'elements'.
            recoveredBlock83PC := 878.
        ].
        recoveredBlock83Step = 878 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getAttribute: (recoveredBlock83Stack2).
            recoveredBlock83PC := 880.
        ].
        recoveredBlock83Step = 880 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 881.
        ].
        recoveredBlock83Step = 881 ifTrue: [
            recoveredBlock83Local9 := recoveredBlock83Stack2.
            recoveredBlock83PC := 884.
        ].
        recoveredBlock83Step = 884 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 903] ifFalse: [recoveredBlock83PC := 888].
        ].
        recoveredBlock83Step = 888 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local9.
            recoveredBlock83PC := 891.
        ].
        recoveredBlock83Step = 891 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) asBoolean.
            recoveredBlock83PC := 893.
        ].
        recoveredBlock83Step = 893 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 903] ifFalse: [recoveredBlock83PC := 896].
        ].
        recoveredBlock83Step = 896 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 899.
        ].
        recoveredBlock83Step = 899 ifTrue: [
            (recoveredBlock83Stack1) clearExportedElementsP.
            recoveredBlock83PC := 903.
        ].
        recoveredBlock83Step = 903 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local7.
            recoveredBlock83PC := 906.
        ].
        recoveredBlock83Step = 906 ifTrue: [
            recoveredBlock83Stack2 := 'bindings'.
            recoveredBlock83PC := 910.
        ].
        recoveredBlock83Step = 910 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getAttribute: (recoveredBlock83Stack2).
            recoveredBlock83PC := 912.
        ].
        recoveredBlock83Step = 912 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 913.
        ].
        recoveredBlock83Step = 913 ifTrue: [
            recoveredBlock83Local9 := recoveredBlock83Stack2.
            recoveredBlock83PC := 916.
        ].
        recoveredBlock83Step = 916 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 935] ifFalse: [recoveredBlock83PC := 920].
        ].
        recoveredBlock83Step = 920 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local9.
            recoveredBlock83PC := 923.
        ].
        recoveredBlock83Step = 923 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) asBoolean.
            recoveredBlock83PC := 925.
        ].
        recoveredBlock83Step = 925 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 935] ifFalse: [recoveredBlock83PC := 928].
        ].
        recoveredBlock83Step = 928 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 931.
        ].
        recoveredBlock83Step = 931 ifTrue: [
            (recoveredBlock83Stack1) clearBindings.
            recoveredBlock83PC := 935.
        ].
        recoveredBlock83Step = 935 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local7.
            recoveredBlock83PC := 938.
        ].
        recoveredBlock83Step = 938 ifTrue: [
            recoveredBlock83Stack2 := 'data'.
            recoveredBlock83PC := 940.
        ].
        recoveredBlock83Step = 940 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getAttribute: (recoveredBlock83Stack2).
            recoveredBlock83PC := 942.
        ].
        recoveredBlock83Step = 942 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 943.
        ].
        recoveredBlock83Step = 943 ifTrue: [
            recoveredBlock83Local9 := recoveredBlock83Stack2.
            recoveredBlock83PC := 946.
        ].
        recoveredBlock83Step = 946 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 965] ifFalse: [recoveredBlock83PC := 950].
        ].
        recoveredBlock83Step = 950 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local9.
            recoveredBlock83PC := 953.
        ].
        recoveredBlock83Step = 953 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) asBoolean.
            recoveredBlock83PC := 955.
        ].
        recoveredBlock83Step = 955 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 965] ifFalse: [recoveredBlock83PC := 958].
        ].
        recoveredBlock83Step = 958 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 961.
        ].
        recoveredBlock83Step = 961 ifTrue: [
            (recoveredBlock83Stack1) clearDataP.
            recoveredBlock83PC := 965.
        ].
        recoveredBlock83Step = 965 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local7.
            recoveredBlock83PC := 968.
        ].
        recoveredBlock83Step = 968 ifTrue: [
            recoveredBlock83Stack2 := 'implementation'.
            recoveredBlock83PC := 972.
        ].
        recoveredBlock83Step = 972 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getAttribute: (recoveredBlock83Stack2).
            recoveredBlock83PC := 974.
        ].
        recoveredBlock83Step = 974 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 975.
        ].
        recoveredBlock83Step = 975 ifTrue: [
            recoveredBlock83Local9 := recoveredBlock83Stack2.
            recoveredBlock83PC := 978.
        ].
        recoveredBlock83Step = 978 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 997] ifFalse: [recoveredBlock83PC := 982].
        ].
        recoveredBlock83Step = 982 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local9.
            recoveredBlock83PC := 985.
        ].
        recoveredBlock83Step = 985 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) asBoolean.
            recoveredBlock83PC := 987.
        ].
        recoveredBlock83Step = 987 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 997] ifFalse: [recoveredBlock83PC := 990].
        ].
        recoveredBlock83Step = 990 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 993.
        ].
        recoveredBlock83Step = 993 ifTrue: [
            (recoveredBlock83Stack1) clearImplementationP.
            recoveredBlock83PC := 997.
        ].
        recoveredBlock83Step = 997 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local7.
            recoveredBlock83PC := 1000.
        ].
        recoveredBlock83Step = 1000 ifTrue: [
            recoveredBlock83Stack2 := 'formulas'.
            recoveredBlock83PC := 1004.
        ].
        recoveredBlock83Step = 1004 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getAttribute: (recoveredBlock83Stack2).
            recoveredBlock83PC := 1006.
        ].
        recoveredBlock83Step = 1006 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 1007.
        ].
        recoveredBlock83Step = 1007 ifTrue: [
            recoveredBlock83Local9 := recoveredBlock83Stack2.
            recoveredBlock83PC := 1010.
        ].
        recoveredBlock83Step = 1010 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 1029] ifFalse: [recoveredBlock83PC := 1014].
        ].
        recoveredBlock83Step = 1014 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local9.
            recoveredBlock83PC := 1017.
        ].
        recoveredBlock83Step = 1017 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) asBoolean.
            recoveredBlock83PC := 1019.
        ].
        recoveredBlock83Step = 1019 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 1029] ifFalse: [recoveredBlock83PC := 1022].
        ].
        recoveredBlock83Step = 1022 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 1025.
        ].
        recoveredBlock83Step = 1025 ifTrue: [
            (recoveredBlock83Stack1) clearGlobalFormulas.
            recoveredBlock83PC := 1029.
        ].
        recoveredBlock83Step = 1029 ifTrue: [
            recoveredBlock83Stack1 := 'hw'.
            recoveredBlock83PC := 1032.
        ].
        recoveredBlock83Step = 1032 ifTrue: [
            recoveredBlock83Stack2 := 'CUST39104'.
            recoveredBlock83PC := 1036.
        ].
        recoveredBlock83Step = 1036 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) == (recoveredBlock83Stack2).
            recoveredBlock83PC := 1037.
        ].
        recoveredBlock83Step = 1037 ifTrue: [
            recoveredBlock83PC := 1038.
        ].
        recoveredBlock83Step = 1038 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local6.
            recoveredBlock83PC := 1041.
        ].
        recoveredBlock83Step = 1041 ifTrue: [
            recoveredBlock83Stack2 := 'sequenceCalls'.
            recoveredBlock83PC := 1044.
        ].
        recoveredBlock83Step = 1044 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getAttribute: (recoveredBlock83Stack2).
            recoveredBlock83PC := 1046.
        ].
        recoveredBlock83Step = 1046 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 1047.
        ].
        recoveredBlock83Step = 1047 ifTrue: [
            recoveredBlock83Local9 := recoveredBlock83Stack2.
            recoveredBlock83PC := 1050.
        ].
        recoveredBlock83Step = 1050 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 1069] ifFalse: [recoveredBlock83PC := 1054].
        ].
        recoveredBlock83Step = 1054 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local9.
            recoveredBlock83PC := 1057.
        ].
        recoveredBlock83Step = 1057 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) asBoolean.
            recoveredBlock83PC := 1059.
        ].
        recoveredBlock83Step = 1059 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 1069] ifFalse: [recoveredBlock83PC := 1062].
        ].
        recoveredBlock83Step = 1062 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 1065.
        ].
        recoveredBlock83Step = 1065 ifTrue: [
            (recoveredBlock83Stack1) clearSequenceCalls.
            recoveredBlock83PC := 1069.
        ].
        recoveredBlock83Step = 1069 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local6.
            recoveredBlock83PC := 1072.
        ].
        recoveredBlock83Step = 1072 ifTrue: [
            recoveredBlock83Stack2 := 'usedsequenceCalls'.
            recoveredBlock83PC := 1076.
        ].
        recoveredBlock83Step = 1076 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getAttribute: (recoveredBlock83Stack2).
            recoveredBlock83PC := 1078.
        ].
        recoveredBlock83Step = 1078 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 1079.
        ].
        recoveredBlock83Step = 1079 ifTrue: [
            recoveredBlock83Local9 := recoveredBlock83Stack2.
            recoveredBlock83PC := 1082.
        ].
        recoveredBlock83Step = 1082 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 1101] ifFalse: [recoveredBlock83PC := 1086].
        ].
        recoveredBlock83Step = 1086 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local9.
            recoveredBlock83PC := 1089.
        ].
        recoveredBlock83Step = 1089 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) asBoolean.
            recoveredBlock83PC := 1091.
        ].
        recoveredBlock83Step = 1091 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 1101] ifFalse: [recoveredBlock83PC := 1094].
        ].
        recoveredBlock83Step = 1094 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 1097.
        ].
        recoveredBlock83Step = 1097 ifTrue: [
            (recoveredBlock83Stack1) clearSequenceCalls.
            recoveredBlock83PC := 1101.
        ].
        recoveredBlock83Step = 1101 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local6.
            recoveredBlock83PC := 1104.
        ].
        recoveredBlock83Step = 1104 ifTrue: [
            recoveredBlock83Stack2 := 'unusedsequenceCalls'.
            recoveredBlock83PC := 1108.
        ].
        recoveredBlock83Step = 1108 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getAttribute: (recoveredBlock83Stack2).
            recoveredBlock83PC := 1110.
        ].
        recoveredBlock83Step = 1110 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 1111.
        ].
        recoveredBlock83Step = 1111 ifTrue: [
            recoveredBlock83Local9 := recoveredBlock83Stack2.
            recoveredBlock83PC := 1114.
        ].
        recoveredBlock83Step = 1114 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 1133] ifFalse: [recoveredBlock83PC := 1118].
        ].
        recoveredBlock83Step = 1118 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local9.
            recoveredBlock83PC := 1121.
        ].
        recoveredBlock83Step = 1121 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) asBoolean.
            recoveredBlock83PC := 1123.
        ].
        recoveredBlock83Step = 1123 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 1133] ifFalse: [recoveredBlock83PC := 1126].
        ].
        recoveredBlock83Step = 1126 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 1129.
        ].
        recoveredBlock83Step = 1129 ifTrue: [
            (recoveredBlock83Stack1) clearUnusedSequenceCalls.
            recoveredBlock83PC := 1133.
        ].
        recoveredBlock83Step = 1133 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local6.
            recoveredBlock83PC := 1136.
        ].
        recoveredBlock83Step = 1136 ifTrue: [
            recoveredBlock83Stack2 := 'processNameLocals'.
            recoveredBlock83PC := 1140.
        ].
        recoveredBlock83Step = 1140 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getAttribute: (recoveredBlock83Stack2).
            recoveredBlock83PC := 1142.
        ].
        recoveredBlock83Step = 1142 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 1143.
        ].
        recoveredBlock83Step = 1143 ifTrue: [
            recoveredBlock83Local9 := recoveredBlock83Stack2.
            recoveredBlock83PC := 1146.
        ].
        recoveredBlock83Step = 1146 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 1165] ifFalse: [recoveredBlock83PC := 1150].
        ].
        recoveredBlock83Step = 1150 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local9.
            recoveredBlock83PC := 1153.
        ].
        recoveredBlock83Step = 1153 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) asBoolean.
            recoveredBlock83PC := 1155.
        ].
        recoveredBlock83Step = 1155 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 1165] ifFalse: [recoveredBlock83PC := 1158].
        ].
        recoveredBlock83Step = 1158 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 1161.
        ].
        recoveredBlock83Step = 1161 ifTrue: [
            (recoveredBlock83Stack1) clearProcessNameLocals.
            recoveredBlock83PC := 1165.
        ].
        recoveredBlock83Step = 1165 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local6.
            recoveredBlock83PC := 1168.
        ].
        recoveredBlock83Step = 1168 ifTrue: [
            recoveredBlock83Stack2 := 'graphicalComments'.
            recoveredBlock83PC := 1172.
        ].
        recoveredBlock83Step = 1172 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getAttribute: (recoveredBlock83Stack2).
            recoveredBlock83PC := 1174.
        ].
        recoveredBlock83Step = 1174 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 1175.
        ].
        recoveredBlock83Step = 1175 ifTrue: [
            recoveredBlock83Local9 := recoveredBlock83Stack2.
            recoveredBlock83PC := 1178.
        ].
        recoveredBlock83Step = 1178 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 1197] ifFalse: [recoveredBlock83PC := 1182].
        ].
        recoveredBlock83Step = 1182 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local9.
            recoveredBlock83PC := 1185.
        ].
        recoveredBlock83Step = 1185 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) asBoolean.
            recoveredBlock83PC := 1187.
        ].
        recoveredBlock83Step = 1187 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 1197] ifFalse: [recoveredBlock83PC := 1190].
        ].
        recoveredBlock83Step = 1190 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 1193.
        ].
        recoveredBlock83Step = 1193 ifTrue: [
            (recoveredBlock83Stack1) clearGraphicalComments.
            recoveredBlock83PC := 1197.
        ].
        recoveredBlock83Step = 1197 ifTrue: [
            recoveredBlock83Stack1 := 'Kli'.
            recoveredBlock83PC := 1200.
        ].
        recoveredBlock83Step = 1200 ifTrue: [
            recoveredBlock83Stack2 := 'WHAT3141'.
            recoveredBlock83PC := 1204.
        ].
        recoveredBlock83Step = 1204 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) == (recoveredBlock83Stack2).
            recoveredBlock83PC := 1205.
        ].
        recoveredBlock83Step = 1205 ifTrue: [
            recoveredBlock83PC := 1206.
        ].
        recoveredBlock83Step = 1206 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local5.
            recoveredBlock83PC := 1209.
        ].
        recoveredBlock83Step = 1209 ifTrue: [
            recoveredBlock83Stack2 := 'AsLine'.
            recoveredBlock83PC := 1212.
        ].
        recoveredBlock83Step = 1212 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getElementsByTagName: (recoveredBlock83Stack2).
            recoveredBlock83PC := 1214.
        ].
        recoveredBlock83Step = 1214 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 1215.
        ].
        recoveredBlock83Step = 1215 ifTrue: [
            recoveredBlock83Local1 := recoveredBlock83Stack2.
            recoveredBlock83PC := 1218.
        ].
        recoveredBlock83Step = 1218 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) isEmpty.
            recoveredBlock83PC := 1220.
        ].
        recoveredBlock83Step = 1220 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 1265] ifFalse: [recoveredBlock83PC := 1224].
        ].
        recoveredBlock83Step = 1224 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 1227.
        ].
        recoveredBlock83Step = 1227 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) elementLists.
            recoveredBlock83PC := 1231.
        ].
        recoveredBlock83Step = 1231 ifTrue: [
            recoveredBlock83Stack2 := 'As Line'.
            recoveredBlock83PC := 1234.
        ].
        recoveredBlock83Step = 1234 ifTrue: [
            recoveredBlock83Stack3 := [].
            recoveredBlock83PC := 1236.
        ].
        recoveredBlock83Step = 1236 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) at: (recoveredBlock83Stack2) ifAbsent: (recoveredBlock83Stack3).
            recoveredBlock83PC := 1241.
        ].
        recoveredBlock83Step = 1241 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 1242.
        ].
        recoveredBlock83Step = 1242 ifTrue: [
            recoveredBlock83Local3 := recoveredBlock83Stack2.
            recoveredBlock83PC := 1245.
        ].
        recoveredBlock83Step = 1245 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 1265] ifFalse: [recoveredBlock83PC := 1248].
        ].
        recoveredBlock83Step = 1248 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local3.
            recoveredBlock83PC := 1251.
        ].
        recoveredBlock83Step = 1251 ifTrue: [
            recoveredBlock83Stack2 := self.
            recoveredBlock83PC := 1252.
        ].
        recoveredBlock83Step = 1252 ifTrue: [
            recoveredBlock83Stack3 := recoveredBlock83Local1.
            recoveredBlock83PC := 1255.
        ].
        recoveredBlock83Step = 1255 ifTrue: [
            recoveredBlock83Stack3 := (recoveredBlock83Stack3) first.
            recoveredBlock83PC := 1257.
        ].
        recoveredBlock83Step = 1257 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) getElementsForViewType: (recoveredBlock83Stack3).
            recoveredBlock83PC := 1261.
        ].
        recoveredBlock83Step = 1261 ifTrue: [
            (recoveredBlock83Stack1) addAll: (recoveredBlock83Stack2).
            recoveredBlock83PC := 1265.
        ].
        recoveredBlock83Step = 1265 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local5.
            recoveredBlock83PC := 1268.
        ].
        recoveredBlock83Step = 1268 ifTrue: [
            recoveredBlock83Stack2 := 'Invisible'.
            recoveredBlock83PC := 1272.
        ].
        recoveredBlock83Step = 1272 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getElementsByTagName: (recoveredBlock83Stack2).
            recoveredBlock83PC := 1274.
        ].
        recoveredBlock83Step = 1274 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 1275.
        ].
        recoveredBlock83Step = 1275 ifTrue: [
            recoveredBlock83Local1 := recoveredBlock83Stack2.
            recoveredBlock83PC := 1278.
        ].
        recoveredBlock83Step = 1278 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) isEmpty.
            recoveredBlock83PC := 1280.
        ].
        recoveredBlock83Step = 1280 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 1325] ifFalse: [recoveredBlock83PC := 1284].
        ].
        recoveredBlock83Step = 1284 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 1287.
        ].
        recoveredBlock83Step = 1287 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) elementLists.
            recoveredBlock83PC := 1291.
        ].
        recoveredBlock83Step = 1291 ifTrue: [
            recoveredBlock83Stack2 := 'Invisible'.
            recoveredBlock83PC := 1294.
        ].
        recoveredBlock83Step = 1294 ifTrue: [
            recoveredBlock83Stack3 := [].
            recoveredBlock83PC := 1296.
        ].
        recoveredBlock83Step = 1296 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) at: (recoveredBlock83Stack2) ifAbsent: (recoveredBlock83Stack3).
            recoveredBlock83PC := 1301.
        ].
        recoveredBlock83Step = 1301 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 1302.
        ].
        recoveredBlock83Step = 1302 ifTrue: [
            recoveredBlock83Local3 := recoveredBlock83Stack2.
            recoveredBlock83PC := 1305.
        ].
        recoveredBlock83Step = 1305 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 1325] ifFalse: [recoveredBlock83PC := 1308].
        ].
        recoveredBlock83Step = 1308 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local3.
            recoveredBlock83PC := 1311.
        ].
        recoveredBlock83Step = 1311 ifTrue: [
            recoveredBlock83Stack2 := self.
            recoveredBlock83PC := 1312.
        ].
        recoveredBlock83Step = 1312 ifTrue: [
            recoveredBlock83Stack3 := recoveredBlock83Local1.
            recoveredBlock83PC := 1315.
        ].
        recoveredBlock83Step = 1315 ifTrue: [
            recoveredBlock83Stack3 := (recoveredBlock83Stack3) first.
            recoveredBlock83PC := 1317.
        ].
        recoveredBlock83Step = 1317 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) getElementsForViewType: (recoveredBlock83Stack3).
            recoveredBlock83PC := 1321.
        ].
        recoveredBlock83Step = 1321 ifTrue: [
            (recoveredBlock83Stack1) addAll: (recoveredBlock83Stack2).
            recoveredBlock83PC := 1325.
        ].
        recoveredBlock83Step = 1325 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local5.
            recoveredBlock83PC := 1328.
        ].
        recoveredBlock83Step = 1328 ifTrue: [
            recoveredBlock83Stack2 := 'Contour'.
            recoveredBlock83PC := 1332.
        ].
        recoveredBlock83Step = 1332 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getElementsByTagName: (recoveredBlock83Stack2).
            recoveredBlock83PC := 1334.
        ].
        recoveredBlock83Step = 1334 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 1335.
        ].
        recoveredBlock83Step = 1335 ifTrue: [
            recoveredBlock83Local1 := recoveredBlock83Stack2.
            recoveredBlock83PC := 1338.
        ].
        recoveredBlock83Step = 1338 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) isEmpty.
            recoveredBlock83PC := 1340.
        ].
        recoveredBlock83Step = 1340 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 1385] ifFalse: [recoveredBlock83PC := 1344].
        ].
        recoveredBlock83Step = 1344 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 1347.
        ].
        recoveredBlock83Step = 1347 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) elementLists.
            recoveredBlock83PC := 1351.
        ].
        recoveredBlock83Step = 1351 ifTrue: [
            recoveredBlock83Stack2 := 'Contour'.
            recoveredBlock83PC := 1354.
        ].
        recoveredBlock83Step = 1354 ifTrue: [
            recoveredBlock83Stack3 := [].
            recoveredBlock83PC := 1356.
        ].
        recoveredBlock83Step = 1356 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) at: (recoveredBlock83Stack2) ifAbsent: (recoveredBlock83Stack3).
            recoveredBlock83PC := 1361.
        ].
        recoveredBlock83Step = 1361 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 1362.
        ].
        recoveredBlock83Step = 1362 ifTrue: [
            recoveredBlock83Local3 := recoveredBlock83Stack2.
            recoveredBlock83PC := 1365.
        ].
        recoveredBlock83Step = 1365 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 1385] ifFalse: [recoveredBlock83PC := 1368].
        ].
        recoveredBlock83Step = 1368 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local3.
            recoveredBlock83PC := 1371.
        ].
        recoveredBlock83Step = 1371 ifTrue: [
            recoveredBlock83Stack2 := self.
            recoveredBlock83PC := 1372.
        ].
        recoveredBlock83Step = 1372 ifTrue: [
            recoveredBlock83Stack3 := recoveredBlock83Local1.
            recoveredBlock83PC := 1375.
        ].
        recoveredBlock83Step = 1375 ifTrue: [
            recoveredBlock83Stack3 := (recoveredBlock83Stack3) first.
            recoveredBlock83PC := 1377.
        ].
        recoveredBlock83Step = 1377 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) getElementsForViewType: (recoveredBlock83Stack3).
            recoveredBlock83PC := 1381.
        ].
        recoveredBlock83Step = 1381 ifTrue: [
            (recoveredBlock83Stack1) addAll: (recoveredBlock83Stack2).
            recoveredBlock83PC := 1385.
        ].
        recoveredBlock83Step = 1385 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local5.
            recoveredBlock83PC := 1388.
        ].
        recoveredBlock83Step = 1388 ifTrue: [
            recoveredBlock83Stack2 := 'HideContents'.
            recoveredBlock83PC := 1392.
        ].
        recoveredBlock83Step = 1392 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) getElementsByTagName: (recoveredBlock83Stack2).
            recoveredBlock83PC := 1394.
        ].
        recoveredBlock83Step = 1394 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 1395.
        ].
        recoveredBlock83Step = 1395 ifTrue: [
            recoveredBlock83Local1 := recoveredBlock83Stack2.
            recoveredBlock83PC := 1398.
        ].
        recoveredBlock83Step = 1398 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) isEmpty.
            recoveredBlock83PC := 1400.
        ].
        recoveredBlock83Step = 1400 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 1445] ifFalse: [recoveredBlock83PC := 1404].
        ].
        recoveredBlock83Step = 1404 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local10.
            recoveredBlock83PC := 1407.
        ].
        recoveredBlock83Step = 1407 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) elementLists.
            recoveredBlock83PC := 1411.
        ].
        recoveredBlock83Step = 1411 ifTrue: [
            recoveredBlock83Stack2 := 'Hide Contents'.
            recoveredBlock83PC := 1414.
        ].
        recoveredBlock83Step = 1414 ifTrue: [
            recoveredBlock83Stack3 := [].
            recoveredBlock83PC := 1416.
        ].
        recoveredBlock83Step = 1416 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) at: (recoveredBlock83Stack2) ifAbsent: (recoveredBlock83Stack3).
            recoveredBlock83PC := 1421.
        ].
        recoveredBlock83Step = 1421 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 1422.
        ].
        recoveredBlock83Step = 1422 ifTrue: [
            recoveredBlock83Local3 := recoveredBlock83Stack2.
            recoveredBlock83PC := 1425.
        ].
        recoveredBlock83Step = 1425 ifTrue: [
            (recoveredBlock83Stack1 == nil) ifTrue: [recoveredBlock83PC := 1445] ifFalse: [recoveredBlock83PC := 1428].
        ].
        recoveredBlock83Step = 1428 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Local3.
            recoveredBlock83PC := 1431.
        ].
        recoveredBlock83Step = 1431 ifTrue: [
            recoveredBlock83Stack2 := self.
            recoveredBlock83PC := 1432.
        ].
        recoveredBlock83Step = 1432 ifTrue: [
            recoveredBlock83Stack3 := recoveredBlock83Local1.
            recoveredBlock83PC := 1435.
        ].
        recoveredBlock83Step = 1435 ifTrue: [
            recoveredBlock83Stack3 := (recoveredBlock83Stack3) first.
            recoveredBlock83PC := 1437.
        ].
        recoveredBlock83Step = 1437 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) getElementsForViewType: (recoveredBlock83Stack3).
            recoveredBlock83PC := 1441.
        ].
        recoveredBlock83Step = 1441 ifTrue: [
            (recoveredBlock83Stack1) addAll: (recoveredBlock83Stack2).
            recoveredBlock83PC := 1445.
        ].
        recoveredBlock83Step = 1445 ifTrue: [
            recoveredBlock83Stack1 := nil.
            recoveredBlock83PC := 1446.
        ].
        recoveredBlock83Step = 1446 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Local4.
            recoveredBlock83PC := 1449.
        ].
        recoveredBlock83Step = 1449 ifTrue: [
            (recoveredBlock83Stack2 == nil) ifTrue: [recoveredBlock83PC := 1465] ifFalse: [recoveredBlock83PC := 1452].
        ].
        recoveredBlock83Step = 1452 ifTrue: [
            recoveredBlock83PC := 1453.
        ].
        recoveredBlock83Step = 1453 ifTrue: [
            recoveredBlock83Stack1 := self.
            recoveredBlock83PC := 1454.
        ].
        recoveredBlock83Step = 1454 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Local10.
            recoveredBlock83PC := 1457.
        ].
        recoveredBlock83Step = 1457 ifTrue: [
            recoveredBlock83Stack3 := recoveredBlock83Local4.
            recoveredBlock83PC := 1460.
        ].
        recoveredBlock83Step = 1460 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) readBasicBlockDefaultsForCategory: (recoveredBlock83Stack2) fromTag: (recoveredBlock83Stack3).
            recoveredBlock83PC := 1465.
        ].
        recoveredBlock83Step = 1465 ifTrue: [
            recoveredBlock83Result := recoveredBlock83Stack1.
            recoveredBlock83Done := true.
        ].
    ].
    recoveredBlock83Result
].
            recoveredPC := 1466.
        ].
        recoveredStep = 1466 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 1471.
        ].
        recoveredStep = 1471 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 1475.
        ].
        recoveredStep = 1475 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 1485] ifFalse: [recoveredPC := 1478].
        ].
        recoveredStep = 1478 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1479.
        ].
        recoveredStep = 1479 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 1480.
        ].
        recoveredStep = 1480 ifTrue: [
            (recoveredStack0) updateItemListSelectFirst: (recoveredStack1).
            recoveredPC := 1485.
        ].
        recoveredStep = 1485 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1486.
        ].
        recoveredStep = 1486 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

