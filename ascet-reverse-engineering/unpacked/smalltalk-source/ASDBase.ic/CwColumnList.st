"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20037634; bytecode file offset 0x934580"
!CwColumnList methodsFor: 'recovered'!
isMapped
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := (recoveredValue0) isMapped.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006bac0; bytecode file offset 0x96873c"
!CwColumnList methodsFor: 'recovered'!
columns
    | recoveredValue0 |
    recoveredValue0 := columns.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bf84; bytecode file offset 0x9692b0"
!CwColumnList methodsFor: 'recovered'!
lists
    | recoveredValue0 |
    recoveredValue0 := lists.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cb48; bytecode file offset 0x969c04"
!CwColumnList methodsFor: 'recovered'!
itemLists
    | recoveredValue0 |
    recoveredValue0 := itemLists.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d48c; bytecode file offset 0x96a390"
!CwColumnList methodsFor: 'recovered'!
fontList
    | recoveredValue0 |
    recoveredValue0 := fontList.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e800; bytecode file offset 0x96b41c"
!CwColumnList methodsFor: 'recovered'!
printBlocks
    | recoveredValue0 |
    recoveredValue0 := printBlocks.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ef44; bytecode file offset 0x96b8a0"
!CwColumnList methodsFor: 'recovered'!
updateProcess
    | recoveredValue0 |
    recoveredValue0 := updateProcess.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f680; bytecode file offset 0x96bf7c"
!CwColumnList methodsFor: 'recovered'!
dynamicListResize
    | recoveredValue0 |
    recoveredValue0 := dynamicListResize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f830; bytecode file offset 0x96c1f4"
!CwColumnList methodsFor: 'recovered'!
scrolled
    | recoveredValue0 |
    recoveredValue0 := scrolled.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fae8; bytecode file offset 0x96c42c"
!CwColumnList methodsFor: 'recovered'!
proportionalListSizes
    | recoveredValue0 |
    recoveredValue0 := proportionalListSizes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008fb6c; bytecode file offset 0x98c42c"
!CwColumnList methodsFor: 'recovered'!
getSelectedPositions
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) lists.
    recoveredValue1 := (recoveredValue0) at: (1).
    recoveredValue2 := (recoveredValue1) getSelectedPos.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20099c6c; bytecode file offset 0x99652c"
!CwColumnList methodsFor: 'recovered'!
indexOf: recoveredArg1 column: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) itemLists.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) indexOf: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200a26b8; bytecode file offset 0x99f064"
!CwColumnList methodsFor: 'recovered'!
callBrowseSelectionCallback: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := XmNbrowseSelectionCallback.
    recoveredValue1 := recoveredArg1.
    (self) callCallbacks: (recoveredValue0) callData: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a26c8; bytecode file offset 0x99f064"
!CwColumnList methodsFor: 'recovered'!
callDefaultActionCallback: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := XmNdefaultActionCallback.
    recoveredValue1 := recoveredArg1.
    (self) callCallbacks: (recoveredValue0) callData: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a2748; bytecode file offset 0x99f064"
!CwColumnList methodsFor: 'recovered'!
callUpdateCompleteCallback: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EwUpdateCompleteCallback.
    recoveredValue1 := recoveredArg1.
    (self) callCallbacks: (recoveredValue0) callData: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c2370; bytecode file offset 0x9bf474"
!CwColumnList methodsFor: 'recovered'!
columns: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    columns := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2ea4; bytecode file offset 0x9bfde0"
!CwColumnList methodsFor: 'recovered'!
lists: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lists := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3710; bytecode file offset 0x9c058c"
!CwColumnList methodsFor: 'recovered'!
itemLists: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    itemLists := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4334; bytecode file offset 0x9c0bf0"
!CwColumnList methodsFor: 'recovered'!
fontList: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fontList := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4810; bytecode file offset 0x9c11bc"
!CwColumnList methodsFor: 'recovered'!
browseSelectionCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    browseSelectionCallback := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4b6c; bytecode file offset 0x9c16b0"
!CwColumnList methodsFor: 'recovered'!
defaultActionCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    defaultActionCallback := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4f50; bytecode file offset 0x9c1afc"
!CwColumnList methodsFor: 'recovered'!
printBlocks: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    printBlocks := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5488; bytecode file offset 0x9c1f64"
!CwColumnList methodsFor: 'recovered'!
updateProcess: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    updateProcess := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c58d4; bytecode file offset 0x9c22c8"
!CwColumnList methodsFor: 'recovered'!
updateCompleteCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    updateCompleteCallback := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5a88; bytecode file offset 0x9c25bc"
!CwColumnList methodsFor: 'recovered'!
dynamicListResize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dynamicListResize := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5e00; bytecode file offset 0x9c2804"
!CwColumnList methodsFor: 'recovered'!
scrolled: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    scrolled := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5f6c; bytecode file offset 0x9c29e8"
!CwColumnList methodsFor: 'recovered'!
proportionalListSizes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    proportionalListSizes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200fae6c; bytecode file offset 0x9f772c"
!CwColumnList methodsFor: 'recovered'!
setItemListsAsync: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) itemLists: (recoveredValue0).
    (self) preprocessItemLists.
    (self) updateListsAsync.
    ^self
! !

"ASDBase.ic method 0x200fd958; bytecode file offset 0x9fa218"
!CwColumnList methodsFor: 'recovered'!
setItemLists: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) itemLists: (recoveredValue0).
    (self) preprocessItemLists.
    (self) updateLists.
    ^self
! !

"ASDBase.ic method 0x20119d4c; bytecode file offset 0xa16880"
!CwColumnList methodsFor: 'recovered'!
deselectAllItems
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) lists.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c81e4Arg1 | 
    | block280c81e4Value0 block280c81e4Value1 |
    block280c81e4Value0 := block280c81e4Arg1.
    block280c81e4Value1 := (block280c81e4Value0) deselectAllItems.
    block280c81e4Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20136b34; bytecode file offset 0xa333fc"
!CwColumnList methodsFor: 'recovered'!
callUpdateCompleteCallback
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CwAnyCallbackData.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := EwUPDATECOMPLETE.
    (recoveredValue2) reason: (recoveredValue3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue4 := recoveredLocal1.
    (self) callUpdateCompleteCallback: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201542a4; bytecode file offset 0xa50b60"
!CwColumnList methodsFor: 'recovered'!
setSelectedPositions: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) selectPosition: (recoveredBlock5Value0) notify: (false).
    recoveredBlock5Value1
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2015d5c0; bytecode file offset 0xa59e94"
!CwColumnList methodsFor: 'recovered'!
browseSelectionCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := browseSelectionCallback.
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
            (recoveredStack1) browseSelectionCallback: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := browseSelectionCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015d6c8; bytecode file offset 0xa59fd8"
!CwColumnList methodsFor: 'recovered'!
defaultActionCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := defaultActionCallback.
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
            (recoveredStack1) defaultActionCallback: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := defaultActionCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015d9b8; bytecode file offset 0xa5a278"
!CwColumnList methodsFor: 'recovered'!
updateCompleteCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := updateCompleteCallback.
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
            (recoveredStack1) updateCompleteCallback: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := updateCompleteCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20177c28; bytecode file offset 0xa7490c"
!CwColumnList methodsFor: 'recovered'!
visibleItemCount: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) lists.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) visibleItemCount: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201aca20; bytecode file offset 0xaa92e8"
!CwColumnList methodsFor: 'recovered'!
indexOfPrintedValue: recoveredArg1 column: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) lists.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) getMatchPos: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := 0.
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
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f35d0; bytecode file offset 0xaefe98"
!CwColumnList methodsFor: 'recovered'!
isEmpty
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) lists.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d7f4cArg1 | 
    | block280d7f4cValue0 block280d7f4cValue1 block280d7f4cValue2 block280d7f4cValue3 |
    block280d7f4cValue0 := block280d7f4cArg1.
    block280d7f4cValue1 := (block280d7f4cValue0) items.
    block280d7f4cValue2 := (block280d7f4cValue1) size.
    block280d7f4cValue3 := (block280d7f4cValue2) > (0).
    block280d7f4cValue3
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [
    ^true
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20218b08; bytecode file offset 0xb153d4"
!CwColumnList methodsFor: 'recovered'!
forceResize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) scrolled.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) shellResize: (recoveredStack1) clientData: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) updateWidget.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappedWhenManaged.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) mappedWhenManaged: (recoveredStack1).
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

"ASDBase.ic method 0x2026868c; bytecode file offset 0xb64f6c"
!CwColumnList methodsFor: 'recovered'!
shellResize: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRealized.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) boundingBox.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) width.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) preferredExtent.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) width: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
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

"ASDBase.ic method 0x2027d6c4; bytecode file offset 0xb79f90"
!CwColumnList methodsFor: 'recovered'!
rowAt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) itemLists.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 |
    recoveredBlock17Value0 := recoveredLocal1.
    recoveredBlock17Value1 := recoveredBlock17Arg1.
    recoveredBlock17Value2 := recoveredArg1.
    recoveredBlock17Value3 := (recoveredBlock17Value1) at: (recoveredBlock17Value2).
    recoveredBlock17Value4 := (recoveredBlock17Value0) add: (recoveredBlock17Value3).
    recoveredBlock17Value4
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x202e0434; bytecode file offset 0xbdcd04"
!CwColumnList methodsFor: 'recovered'!
deletePosition: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) lists.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemLists.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) deletePos: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) removeAtIndex: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 18] ifFalse: [recoveredLocal1 := nil. recoveredPC := 44]] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) fixListDimensions.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ed934; bytecode file offset 0xbea210"
!CwColumnList methodsFor: 'recovered'!
deleteAllItems
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
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemLists.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 isInteger) ifTrue: [(recoveredStack0 > 0) ifTrue: [recoveredStack0 := recoveredStack0 - 1. recoveredPC := 14] ifFalse: [recoveredPC := 30]] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) itemLists: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) lists.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := [:block280e7ef4Arg1 | 
    | block280e7ef4Value0 block280e7ef4Value1 |
    block280e7ef4Value0 := block280e7ef4Arg1.
    block280e7ef4Value1 := (block280e7ef4Value0) deleteAllItems.
    block280e7ef4Value1
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 50.
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

"ASDBase.ic method 0x2031a810; bytecode file offset 0xc17100"
!CwColumnList methodsFor: 'recovered'!
defaultAction: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := CwColumnListCallbackData.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := XmCRDEFAULTACTION.
    (recoveredValue2) reason: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) lists.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue5) indexOf: (recoveredValue6).
    recoveredValue8 := recoveredValue7.
    recoveredLocal2 := recoveredValue8.
    (recoveredValue4) itemXPosition: (recoveredValue7).
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := (self) itemLists.
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := (recoveredValue10) at: (recoveredValue11).
    recoveredValue13 := recoveredArg3.
    recoveredValue14 := (recoveredValue13) itemPosition.
    recoveredValue15 := recoveredValue14.
    recoveredLocal1 := recoveredValue15.
    recoveredValue16 := (recoveredValue12) at: (recoveredValue14).
    (recoveredValue9) item: (recoveredValue16).
    recoveredValue17 := recoveredValue1.
    recoveredValue18 := recoveredLocal1.
    (recoveredValue17) itemYPosition: (recoveredValue18).
    recoveredValue19 := recoveredValue1.
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := (self) rowAt: (recoveredValue20).
    (recoveredValue19) row: (recoveredValue21).
    recoveredLocal3 := recoveredValue1.
    recoveredValue22 := recoveredLocal3.
    (self) callDefaultActionCallback: (recoveredValue22).
    ^self
! !

"ASDBase.ic method 0x2032e9e0; bytecode file offset 0xc2b2b4"
!CwColumnList methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) lists.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredBlock5Value0.
    recoveredBlock5Value2 := XmNbrowseSelectionCallback.
    recoveredBlock5Value3 := (self) lists.
    recoveredBlock5Value4 := [:recoveredBlock5Block23Arg1 | 
    | recoveredBlock5Block23Value0 recoveredBlock5Block23Value1 recoveredBlock5Block23Value2 |
    recoveredBlock5Block23Value0 := recoveredBlock5Block23Arg1.
    recoveredBlock5Block23Value1 := recoveredBlock5Arg1.
    recoveredBlock5Block23Value2 := (recoveredBlock5Block23Value0) == (recoveredBlock5Block23Value1).
    recoveredBlock5Block23Value2
].
    recoveredBlock5Value5 := (recoveredBlock5Value3) reject: (recoveredBlock5Value4).
    recoveredBlock5Value6 := recoveredBlock5Value5.
    recoveredLocal1 := recoveredBlock5Value6.
    (recoveredBlock5Value1) addCallback: (recoveredBlock5Value2) receiver: (self) selector: ('browseSelect:clientData:callData:') clientData: (recoveredBlock5Value5).
    recoveredBlock5Value7 := XmNdefaultActionCallback.
    recoveredBlock5Value8 := recoveredLocal1.
    recoveredBlock5Value9 := (recoveredBlock5Value0) addCallback: (recoveredBlock5Value7) receiver: (self) selector: ('defaultAction:clientData:callData:') clientData: (recoveredBlock5Value8).
    recoveredBlock5Value9
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2036d79c; bytecode file offset 0xc6a070"
!CwColumnList methodsFor: 'recovered'!
preprocessItemLists
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemLists.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280f1500Arg1 :block280f1500Arg2 | 
    | block280f1500Value0 block280f1500Value1 block280f1500Value2 block280f1500Value3 block280f1500Value4 |
    block280f1500Value0 := block280f1500Arg1.
    block280f1500Value1 := (block280f1500Value0) size.
    block280f1500Value2 := block280f1500Arg2.
    block280f1500Value3 := (block280f1500Value2) size.
    block280f1500Value4 := (block280f1500Value1) > (block280f1500Value3).
    block280f1500Value4
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32Stack4 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal2.
            recoveredBlock32PC := 41.
        ].
        recoveredBlock32Step = 41 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 42.
        ].
        recoveredBlock32Step = 42 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) size.
            recoveredBlock32PC := 43.
        ].
        recoveredBlock32Step = 43 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) - (recoveredBlock32Stack2).
            recoveredBlock32PC := 44.
        ].
        recoveredBlock32Step = 44 ifTrue: [
            recoveredBlock32PC := 53.
        ].
        recoveredBlock32Step = 48 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 49.
        ].
        recoveredBlock32Step = 49 ifTrue: [
            recoveredBlock32Stack3 := ''.
            recoveredBlock32PC := 51.
        ].
        recoveredBlock32Step = 51 ifTrue: [
            (recoveredBlock32Stack2) add: (recoveredBlock32Stack3).
            recoveredBlock32PC := 53.
        ].
        recoveredBlock32Step = 53 ifTrue: [
            (recoveredBlock32Stack1 isInteger) ifTrue: [(recoveredBlock32Stack1 > 0) ifTrue: [recoveredBlock32Stack1 := recoveredBlock32Stack1 - 1. recoveredBlock32PC := 48] ifFalse: [recoveredBlock32PC := 63]] ifFalse: [recoveredBlock32PC := 56].
        ].
        recoveredBlock32Step = 56 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) + (-1).
            recoveredBlock32PC := 57.
        ].
        recoveredBlock32Step = 57 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Stack1.
            recoveredBlock32PC := 58.
        ].
        recoveredBlock32Step = 58 ifTrue: [
            recoveredBlock32Stack3 := 0.
            recoveredBlock32PC := 60.
        ].
        recoveredBlock32Step = 60 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) >= (recoveredBlock32Stack3).
            recoveredBlock32PC := 61.
        ].
        recoveredBlock32Step = 61 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 48] ifFalse: [recoveredBlock32PC := 63].
        ].
        recoveredBlock32Step = 63 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038803c; bytecode file offset 0xc84918"
!CwColumnList methodsFor: 'recovered'!
replaceRow: recoveredArg1 position: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) lists.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemLists.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) printBlocks.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) replaceItemsPos: (recoveredStack2) position: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := OrderedCollection.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack6 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) replaceFrom: (recoveredStack2) to: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 18] ifFalse: [recoveredLocal1 := nil. recoveredPC := 69]] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 67] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
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

"ASDBase.ic method 0x203a7200; bytecode file offset 0xca3af0"
!CwColumnList methodsFor: 'recovered'!
setCellAt: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) lists.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemLists.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectedPos.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) printBlocks.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) replaceItemsPos: (recoveredStack1) position: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := OrderedCollection.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) replaceFrom: (recoveredStack1) to: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) selectPosition: (recoveredStack1) notify: (recoveredStack2).
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

"ASDBase.ic method 0x203fa780; bytecode file offset 0xcf7060"
!CwColumnList methodsFor: 'recovered'!
updateLists
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemLists.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) lists.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := #().
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack3) selectedItems: (recoveredStack4).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 recoveredBlock37Value3 recoveredBlock37Value4 |
    recoveredBlock37Value0 := (self) printBlocks.
    recoveredBlock37Value1 := recoveredLocal1.
    recoveredBlock37Value2 := (recoveredBlock37Value0) at: (recoveredBlock37Value1).
    recoveredBlock37Value3 := recoveredBlock37Arg1.
    recoveredBlock37Value4 := (recoveredBlock37Value2) value: (recoveredBlock37Value3).
    recoveredBlock37Value4
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack2) items: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 16] ifFalse: [recoveredPC := 87]] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 83] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) fixListDimensions.
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

"ASDBase.ic method 0x203fc3c8; bytecode file offset 0xcf8cc0"
!CwColumnList methodsFor: 'recovered'!
setCellAsyncAt: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) updateProcess.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) updateProcess.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDead.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) lists.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemLists.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := OrderedCollection.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) replaceFrom: (recoveredStack1) to: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectedPos.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) printBlocks.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) replaceItemsPos: (recoveredStack1) position: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 91] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) selectPosition: (recoveredStack1) notify: (recoveredStack2).
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

"ASDBase.ic method 0x204138dc; bytecode file offset 0xd101d8"
!CwColumnList methodsFor: 'recovered'!
browseSelect: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) itemPosition.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    (recoveredBlock14Value0) deselectAllItems.
    recoveredBlock14Value1 := recoveredBlock14Arg1.
    recoveredBlock14Value2 := recoveredLocal3.
    recoveredBlock14Value3 := (recoveredBlock14Value1) selectPos: (recoveredBlock14Value2) notify: (false).
    recoveredBlock14Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := CwColumnListCallbackData.
    recoveredValue5 := (recoveredValue4) new.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := XmBROWSESELECT.
    (recoveredValue6) reason: (recoveredValue7).
    recoveredValue8 := recoveredValue5.
    recoveredValue9 := (self) lists.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue9) indexOf: (recoveredValue10).
    recoveredValue12 := recoveredValue11.
    recoveredLocal1 := recoveredValue12.
    (recoveredValue8) itemXPosition: (recoveredValue11).
    recoveredValue13 := recoveredValue5.
    recoveredValue14 := (self) itemLists.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (recoveredValue14) at: (recoveredValue15).
    recoveredValue17 := recoveredLocal3.
    recoveredValue18 := (recoveredValue16) at: (recoveredValue17).
    (recoveredValue13) item: (recoveredValue18).
    recoveredValue19 := recoveredValue5.
    recoveredValue20 := recoveredLocal3.
    recoveredValue21 := (self) rowAt: (recoveredValue20).
    (recoveredValue19) row: (recoveredValue21).
    recoveredValue22 := recoveredValue5.
    recoveredValue23 := recoveredLocal3.
    (recoveredValue22) itemYPosition: (recoveredValue23).
    recoveredLocal2 := recoveredValue5.
    recoveredValue24 := recoveredLocal2.
    (self) callBrowseSelectionCallback: (recoveredValue24).
    ^self
! !

"ASDBase.ic method 0x20420308; bytecode file offset 0xd1cc00"
!CwColumnList methodsFor: 'recovered'!
fixListDimensions
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dynamicListResize.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) proportionalListSizes.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemLists.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) lists.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32Stack4 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := System.
            recoveredBlock32PC := 40.
        ].
        recoveredBlock32Step = 40 ifTrue: [
            recoveredBlock32Stack2 := 'CW'.
            recoveredBlock32PC := 42.
        ].
        recoveredBlock32Step = 42 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) subsystemType: (recoveredBlock32Stack2).
            recoveredBlock32PC := 44.
        ].
        recoveredBlock32Step = 44 ifTrue: [
            recoveredBlock32Stack2 := 'MOTIF'.
            recoveredBlock32PC := 46.
        ].
        recoveredBlock32Step = 46 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) = (recoveredBlock32Stack2).
            recoveredBlock32PC := 47.
        ].
        recoveredBlock32Step = 47 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 50] ifFalse: [recoveredBlock32PC := 56].
        ].
        recoveredBlock32Step = 50 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 51.
        ].
        recoveredBlock32Step = 51 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) width.
            recoveredBlock32PC := 53.
        ].
        recoveredBlock32Step = 53 ifTrue: [
            recoveredBlock32PC := 61.
        ].
        recoveredBlock32Step = 56 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 57.
        ].
        recoveredBlock32Step = 57 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) preferredExtent.
            recoveredBlock32PC := 59.
        ].
        recoveredBlock32Step = 59 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) x.
            recoveredBlock32PC := 61.
        ].
        recoveredBlock32Step = 61 ifTrue: [
            recoveredLocal3 := recoveredBlock32Stack1.
            recoveredBlock32PC := 64.
        ].
        recoveredBlock32Step = 64 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal4.
            recoveredBlock32PC := 67.
        ].
        recoveredBlock32Step = 67 ifTrue: [
            recoveredBlock32Stack2 := recoveredLocal3.
            recoveredBlock32PC := 70.
        ].
        recoveredBlock32Step = 70 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) + (recoveredBlock32Stack2).
            recoveredBlock32PC := 71.
        ].
        recoveredBlock32Step = 71 ifTrue: [
            recoveredLocal4 := recoveredBlock32Stack1.
            recoveredBlock32PC := 74.
        ].
        recoveredBlock32Step = 74 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 75.
        ].
        recoveredBlock32Step = 75 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Stack1.
            recoveredBlock32PC := 76.
        ].
        recoveredBlock32Step = 76 ifTrue: [
            recoveredBlock32Stack3 := recoveredLocal3.
            recoveredBlock32PC := 79.
        ].
        recoveredBlock32Step = 79 ifTrue: [
            (recoveredBlock32Stack2) width: (recoveredBlock32Stack3).
            recoveredBlock32PC := 81.
        ].
        recoveredBlock32Step = 81 ifTrue: [
            recoveredBlock32Stack2 := recoveredLocal2.
            recoveredBlock32PC := 84.
        ].
        recoveredBlock32Step = 84 ifTrue: [
            recoveredBlock32Stack3 := 1.
            recoveredBlock32PC := 86.
        ].
        recoveredBlock32Step = 86 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) max: (recoveredBlock32Stack3).
            recoveredBlock32PC := 88.
        ].
        recoveredBlock32Step = 88 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) visibleItemCount: (recoveredBlock32Stack2).
            recoveredBlock32PC := 90.
        ].
        recoveredBlock32Step = 90 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) width: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20425874; bytecode file offset 0xd22178"
!CwColumnList methodsFor: 'recovered'!
initialize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initialize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) columns: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) lists: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := OrderedCollection.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := OrderedCollection.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := (recoveredStack4) new.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) itemLists: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := CwFontList.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := CgFontStruct.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) default.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) fontStruct: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) fontList: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := [:block280fca8cArg1 | 
    | block280fca8cStack0 block280fca8cStack1 block280fca8cStack2 block280fca8cPC block280fca8cStep block280fca8cDone block280fca8cResult |
    block280fca8cStack0 := self.
    block280fca8cPC := 4.
    block280fca8cDone := false.
    [block280fca8cDone not] whileTrue: [
        block280fca8cStep := block280fca8cPC.
        block280fca8cStep = 4 ifTrue: [
            block280fca8cStack1 := block280fca8cArg1.
            block280fca8cPC := 5.
        ].
        block280fca8cStep = 5 ifTrue: [
            block280fca8cStack1 := (block280fca8cStack1) isString.
            block280fca8cPC := 7.
        ].
        block280fca8cStep = 7 ifTrue: [
            (block280fca8cStack1) ifTrue: [block280fca8cPC := 10] ifFalse: [block280fca8cPC := 14].
        ].
        block280fca8cStep = 10 ifTrue: [
            block280fca8cStack1 := block280fca8cArg1.
            block280fca8cPC := 11.
        ].
        block280fca8cStep = 11 ifTrue: [
            block280fca8cPC := 17.
        ].
        block280fca8cStep = 14 ifTrue: [
            block280fca8cStack1 := block280fca8cArg1.
            block280fca8cPC := 15.
        ].
        block280fca8cStep = 15 ifTrue: [
            block280fca8cStack1 := (block280fca8cStack1) printString.
            block280fca8cPC := 17.
        ].
        block280fca8cStep = 17 ifTrue: [
            block280fca8cResult := block280fca8cStack1.
            block280fca8cDone := true.
        ].
    ].
    block280fca8cResult
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := [:block280fcab0Arg1 | 
    | block280fcab0Stack0 block280fcab0Stack1 block280fcab0Stack2 block280fcab0PC block280fcab0Step block280fcab0Done block280fcab0Result |
    block280fcab0Stack0 := self.
    block280fcab0PC := 4.
    block280fcab0Done := false.
    [block280fcab0Done not] whileTrue: [
        block280fcab0Step := block280fcab0PC.
        block280fcab0Step = 4 ifTrue: [
            block280fcab0Stack1 := block280fcab0Arg1.
            block280fcab0PC := 5.
        ].
        block280fcab0Step = 5 ifTrue: [
            block280fcab0Stack1 := (block280fcab0Stack1) isString.
            block280fcab0PC := 7.
        ].
        block280fcab0Step = 7 ifTrue: [
            (block280fcab0Stack1) ifTrue: [block280fcab0PC := 10] ifFalse: [block280fcab0PC := 14].
        ].
        block280fcab0Step = 10 ifTrue: [
            block280fcab0Stack1 := block280fcab0Arg1.
            block280fcab0PC := 11.
        ].
        block280fcab0Step = 11 ifTrue: [
            block280fcab0PC := 17.
        ].
        block280fcab0Step = 14 ifTrue: [
            block280fcab0Stack1 := block280fcab0Arg1.
            block280fcab0PC := 15.
        ].
        block280fcab0Step = 15 ifTrue: [
            block280fcab0Stack1 := (block280fcab0Stack1) printString.
            block280fcab0PC := 17.
        ].
        block280fcab0Step = 17 ifTrue: [
            block280fcab0Result := block280fcab0Stack1.
            block280fcab0Done := true.
        ].
    ].
    block280fcab0Result
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) printBlocks: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) dynamicListResize: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) scrolled: (recoveredStack1).
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

"ASDBase.ic method 0x2042ed98; bytecode file offset 0xd2b68c"
!CwColumnList methodsFor: 'recovered'!
selectPosition: recoveredArg1 notify: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) lists.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) selectPos: (recoveredBlock5Value1) notify: (false).
    recoveredBlock5Value2
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 103].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := CwColumnListCallbackData.
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
            recoveredStack2 := XmBROWSESELECT.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) reason: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) itemXPosition: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) itemLists.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) itemLists.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) item: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) itemYPosition: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) rowAt: (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) row: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) callBrowseSelectionCallback: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20465014; bytecode file offset 0xd618f8"
!CwColumnList methodsFor: 'recovered'!
addRow: recoveredArg1 position: recoveredArg2 selected: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) lists.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemLists.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) printBlocks.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack2) addItem: (recoveredStack3) position: (recoveredStack4).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) selectPos: (recoveredStack2) notify: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) printBlocks.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) addItemUnselected: (recoveredStack2) position: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) beforeIndex: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 18] ifFalse: [recoveredLocal1 := nil. recoveredPC := 113]] ifFalse: [recoveredPC := 103].
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 111] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) fixListDimensions.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a2c9c; bytecode file offset 0xd9f59c"
!CwColumnList methodsFor: 'recovered'!
preferredExtent
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) lists.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 17.
        ].
        recoveredBlock10Step = 17 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) items.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Stack2 := [:recoveredBlock10Block18Arg1 | 
    | recoveredBlock10Block18Value0 recoveredBlock10Block18Value1 recoveredBlock10Block18Value2 recoveredBlock10Block18Value3 |
    recoveredBlock10Block18Value0 := (self) fontList.
    recoveredBlock10Block18Value1 := (recoveredBlock10Block18Value0) fontStruct.
    recoveredBlock10Block18Value2 := recoveredBlock10Block18Arg1.
    recoveredBlock10Block18Value3 := (recoveredBlock10Block18Value1) textWidth: (recoveredBlock10Block18Value2).
    recoveredBlock10Block18Value3
].
            recoveredBlock10PC := 30.
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) collect: (recoveredBlock10Stack2).
            recoveredBlock10PC := 32.
        ].
        recoveredBlock10Step = 32 ifTrue: [
            recoveredBlock10Stack2 := [:block281047c4Arg1 :block281047c4Arg2 | 
    | block281047c4Value0 block281047c4Value1 block281047c4Value2 |
    block281047c4Value0 := block281047c4Arg1.
    block281047c4Value1 := block281047c4Arg2.
    block281047c4Value2 := (block281047c4Value0) > (block281047c4Value1).
    block281047c4Value2
].
            recoveredBlock10PC := 34.
        ].
        recoveredBlock10Step = 34 ifTrue: [
            recoveredBlock10PC := 42.
        ].
        recoveredBlock10Step = 42 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) asSortedCollection: (recoveredBlock10Stack2).
            recoveredBlock10PC := 44.
        ].
        recoveredBlock10Step = 44 ifTrue: [
            recoveredLocal2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 47.
        ].
        recoveredBlock10Step = 47 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal4.
            recoveredBlock10PC := 50.
        ].
        recoveredBlock10Step = 50 ifTrue: [
            recoveredBlock10Stack2 := recoveredLocal2.
            recoveredBlock10PC := 53.
        ].
        recoveredBlock10Step = 53 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) isEmpty.
            recoveredBlock10PC := 55.
        ].
        recoveredBlock10Step = 55 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 58] ifFalse: [recoveredBlock10PC := 64].
        ].
        recoveredBlock10Step = 58 ifTrue: [
            recoveredBlock10Stack2 := 0.
            recoveredBlock10PC := 60.
        ].
        recoveredBlock10Step = 60 ifTrue: [
            recoveredBlock10PC := 69.
        ].
        recoveredBlock10Step = 64 ifTrue: [
            recoveredBlock10Stack2 := recoveredLocal2.
            recoveredBlock10PC := 67.
        ].
        recoveredBlock10Step = 67 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) first.
            recoveredBlock10PC := 69.
        ].
        recoveredBlock10Step = 69 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) + (recoveredBlock10Stack2).
            recoveredBlock10PC := 70.
        ].
        recoveredBlock10Step = 70 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 71.
        ].
        recoveredBlock10Step = 71 ifTrue: [
            recoveredLocal4 := recoveredBlock10Stack2.
            recoveredBlock10PC := 74.
        ].
        recoveredBlock10Step = 74 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontList.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontStruct.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := 'CW'.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) subsystemType: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := 'MAC'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 105].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
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
            recoveredStack0 := (recoveredStack0) lists.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemCount.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := 5.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := (recoveredStack2) lists.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205da7b0; bytecode file offset 0xed7108"
!CwColumnList methodsFor: 'recovered'!
createPrimaryWidget: recoveredArg1 parent: recoveredArg2 argBlock: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) preprocessItemLists.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) proportionalListSizes.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) proportionalListSizes.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 recoveredBlock33Value3 |
    recoveredBlock33Value0 := recoveredLocal3.
    recoveredBlock33Value1 := recoveredBlock33Arg1.
    recoveredBlock33Value2 := (recoveredBlock33Value0) + (recoveredBlock33Value1).
    recoveredBlock33Value3 := recoveredBlock33Value2.
    recoveredLocal3 := recoveredBlock33Value3.
    recoveredBlock33Value2
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 100.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) proportionalListSizes.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemLists.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) proportionalListSizes.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) proportionalListSizes: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) columns.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 329.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := 'list'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack4 := [:recoveredBlock117Arg1 | 
    | recoveredBlock117Stack0 recoveredBlock117Stack1 recoveredBlock117Stack2 recoveredBlock117Stack3 recoveredBlock117Stack4 recoveredBlock117Stack5 recoveredBlock117PC recoveredBlock117Step recoveredBlock117Done recoveredBlock117Result |
    recoveredBlock117Stack0 := self.
    recoveredBlock117PC := 124.
    recoveredBlock117Done := false.
    [recoveredBlock117Done not] whileTrue: [
        recoveredBlock117Step := recoveredBlock117PC.
        recoveredBlock117Step = 124 ifTrue: [
            recoveredBlock117Stack1 := recoveredBlock117Arg1.
            recoveredBlock117PC := 125.
        ].
        recoveredBlock117Step = 125 ifTrue: [
            recoveredBlock117Stack2 := recoveredBlock117Stack1.
            recoveredBlock117PC := 126.
        ].
        recoveredBlock117Step = 126 ifTrue: [
            recoveredBlock117Stack3 := self.
            recoveredBlock117PC := 127.
        ].
        recoveredBlock117Step = 127 ifTrue: [
            recoveredBlock117Stack3 := (recoveredBlock117Stack3) itemLists.
            recoveredBlock117PC := 129.
        ].
        recoveredBlock117Step = 129 ifTrue: [
            recoveredBlock117Stack4 := recoveredLocal1.
            recoveredBlock117PC := 132.
        ].
        recoveredBlock117Step = 132 ifTrue: [
            recoveredBlock117Stack3 := (recoveredBlock117Stack3) at: (recoveredBlock117Stack4).
            recoveredBlock117PC := 134.
        ].
        recoveredBlock117Step = 134 ifTrue: [
            recoveredBlock117Stack4 := [:recoveredBlock117Block134Arg1 | 
    | recoveredBlock117Block134Value0 recoveredBlock117Block134Value1 recoveredBlock117Block134Value2 recoveredBlock117Block134Value3 recoveredBlock117Block134Value4 |
    recoveredBlock117Block134Value0 := (self) printBlocks.
    recoveredBlock117Block134Value1 := recoveredLocal1.
    recoveredBlock117Block134Value2 := (recoveredBlock117Block134Value0) at: (recoveredBlock117Block134Value1).
    recoveredBlock117Block134Value3 := recoveredBlock117Block134Arg1.
    recoveredBlock117Block134Value4 := (recoveredBlock117Block134Value2) value: (recoveredBlock117Block134Value3).
    recoveredBlock117Block134Value4
].
            recoveredBlock117PC := 151.
        ].
        recoveredBlock117Step = 151 ifTrue: [
            recoveredBlock117Stack3 := (recoveredBlock117Stack3) collect: (recoveredBlock117Stack4).
            recoveredBlock117PC := 153.
        ].
        recoveredBlock117Step = 153 ifTrue: [
            recoveredBlock117Stack4 := recoveredBlock117Stack3.
            recoveredBlock117PC := 154.
        ].
        recoveredBlock117Step = 154 ifTrue: [
            recoveredLocal5 := recoveredBlock117Stack4.
            recoveredBlock117PC := 157.
        ].
        recoveredBlock117Step = 157 ifTrue: [
            (recoveredBlock117Stack2) items: (recoveredBlock117Stack3).
            recoveredBlock117Stack2 := recoveredBlock117Stack1.
            recoveredBlock117PC := 160.
        ].
        recoveredBlock117Step = 160 ifTrue: [
            recoveredBlock117Stack3 := 1.
            recoveredBlock117PC := 162.
        ].
        recoveredBlock117Step = 162 ifTrue: [
            (recoveredBlock117Stack2) borderWidth: (recoveredBlock117Stack3).
            recoveredBlock117Stack2 := recoveredBlock117Stack1.
            recoveredBlock117PC := 165.
        ].
        recoveredBlock117Step = 165 ifTrue: [
            recoveredBlock117Stack3 := XmBROWSESELECT.
            recoveredBlock117PC := 167.
        ].
        recoveredBlock117Step = 167 ifTrue: [
            (recoveredBlock117Stack2) selectionPolicy: (recoveredBlock117Stack3).
            recoveredBlock117PC := 169.
        ].
        recoveredBlock117Step = 169 ifTrue: [
            recoveredBlock117Stack2 := recoveredLocal5.
            recoveredBlock117PC := 172.
        ].
        recoveredBlock117Step = 172 ifTrue: [
            recoveredBlock117Stack2 := (recoveredBlock117Stack2) size.
            recoveredBlock117PC := 174.
        ].
        recoveredBlock117Step = 174 ifTrue: [
            recoveredBlock117Stack3 := 1.
            recoveredBlock117PC := 176.
        ].
        recoveredBlock117Step = 176 ifTrue: [
            recoveredBlock117Stack2 := (recoveredBlock117Stack2) max: (recoveredBlock117Stack3).
            recoveredBlock117PC := 178.
        ].
        recoveredBlock117Step = 178 ifTrue: [
            (recoveredBlock117Stack1) visibleItemCount: (recoveredBlock117Stack2).
            recoveredBlock117PC := 180.
        ].
        recoveredBlock117Step = 180 ifTrue: [
            recoveredBlock117Stack1 := nil.
            recoveredBlock117PC := 181.
        ].
        recoveredBlock117Step = 181 ifTrue: [
            recoveredBlock117Stack2 := self.
            recoveredBlock117PC := 182.
        ].
        recoveredBlock117Step = 182 ifTrue: [
            recoveredBlock117Stack2 := (recoveredBlock117Stack2) fontList.
            recoveredBlock117PC := 184.
        ].
        recoveredBlock117Step = 184 ifTrue: [
            recoveredBlock117Stack2 := (recoveredBlock117Stack2) fontStruct.
            recoveredBlock117PC := 186.
        ].
        recoveredBlock117Step = 186 ifTrue: [
            recoveredBlock117Stack3 := CgFontStruct.
            recoveredBlock117PC := 188.
        ].
        recoveredBlock117Step = 188 ifTrue: [
            recoveredBlock117Stack3 := (recoveredBlock117Stack3) default.
            recoveredBlock117PC := 190.
        ].
        recoveredBlock117Step = 190 ifTrue: [
            (recoveredBlock117Stack2 == recoveredBlock117Stack3) ifTrue: [recoveredBlock117PC := 201] ifFalse: [recoveredBlock117PC := 194].
        ].
        recoveredBlock117Step = 194 ifTrue: [
            recoveredBlock117PC := 195.
        ].
        recoveredBlock117Step = 195 ifTrue: [
            recoveredBlock117Stack1 := recoveredBlock117Arg1.
            recoveredBlock117PC := 196.
        ].
        recoveredBlock117Step = 196 ifTrue: [
            recoveredBlock117Stack2 := self.
            recoveredBlock117PC := 197.
        ].
        recoveredBlock117Step = 197 ifTrue: [
            recoveredBlock117Stack2 := (recoveredBlock117Stack2) fontList.
            recoveredBlock117PC := 199.
        ].
        recoveredBlock117Step = 199 ifTrue: [
            recoveredBlock117Stack1 := (recoveredBlock117Stack1) fontList: (recoveredBlock117Stack2).
            recoveredBlock117PC := 201.
        ].
        recoveredBlock117Step = 201 ifTrue: [
            recoveredBlock117Result := recoveredBlock117Stack1.
            recoveredBlock117Done := true.
        ].
    ].
    recoveredBlock117Result
].
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := (recoveredStack2) createList: (recoveredStack3) argBlock: (recoveredStack4).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := (recoveredStack2) manageChild.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack3 := [:recoveredBlock212Arg1 | 
    | recoveredBlock212Stack0 recoveredBlock212Stack1 recoveredBlock212Stack2 recoveredBlock212Stack3 recoveredBlock212Stack4 recoveredBlock212PC recoveredBlock212Step recoveredBlock212Done recoveredBlock212Result |
    recoveredBlock212Stack0 := self.
    recoveredBlock212PC := 218.
    recoveredBlock212Done := false.
    [recoveredBlock212Done not] whileTrue: [
        recoveredBlock212Step := recoveredBlock212PC.
        recoveredBlock212Step = 218 ifTrue: [
            recoveredBlock212Stack1 := recoveredLocal7.
            recoveredBlock212PC := 221.
        ].
        recoveredBlock212Step = 221 ifTrue: [
            (recoveredBlock212Stack1 ~~ nil) ifTrue: [recoveredBlock212PC := 232] ifFalse: [recoveredBlock212PC := 224].
        ].
        recoveredBlock212Step = 224 ifTrue: [
            recoveredBlock212Stack1 := recoveredBlock212Arg1.
            recoveredBlock212PC := 225.
        ].
        recoveredBlock212Step = 225 ifTrue: [
            recoveredBlock212Stack2 := XmATTACHFORM.
            recoveredBlock212PC := 227.
        ].
        recoveredBlock212Step = 227 ifTrue: [
            (recoveredBlock212Stack1) leftAttachment: (recoveredBlock212Stack2).
            recoveredBlock212PC := 229.
        ].
        recoveredBlock212Step = 229 ifTrue: [
            recoveredBlock212PC := 243.
        ].
        recoveredBlock212Step = 232 ifTrue: [
            recoveredBlock212Stack1 := recoveredBlock212Arg1.
            recoveredBlock212PC := 233.
        ].
        recoveredBlock212Step = 233 ifTrue: [
            recoveredBlock212Stack2 := recoveredBlock212Stack1.
            recoveredBlock212PC := 234.
        ].
        recoveredBlock212Step = 234 ifTrue: [
            recoveredBlock212Stack3 := XmATTACHWIDGET.
            recoveredBlock212PC := 236.
        ].
        recoveredBlock212Step = 236 ifTrue: [
            (recoveredBlock212Stack2) leftAttachment: (recoveredBlock212Stack3).
            recoveredBlock212PC := 238.
        ].
        recoveredBlock212Step = 238 ifTrue: [
            recoveredBlock212Stack2 := recoveredLocal7.
            recoveredBlock212PC := 241.
        ].
        recoveredBlock212Step = 241 ifTrue: [
            (recoveredBlock212Stack1) leftWidget: (recoveredBlock212Stack2).
            recoveredBlock212PC := 243.
        ].
        recoveredBlock212Step = 243 ifTrue: [
            recoveredBlock212Stack1 := recoveredLocal1.
            recoveredBlock212PC := 246.
        ].
        recoveredBlock212Step = 246 ifTrue: [
            recoveredBlock212Stack2 := self.
            recoveredBlock212PC := 247.
        ].
        recoveredBlock212Step = 247 ifTrue: [
            recoveredBlock212Stack2 := (recoveredBlock212Stack2) columns.
            recoveredBlock212PC := 249.
        ].
        recoveredBlock212Step = 249 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) = (recoveredBlock212Stack2).
            recoveredBlock212PC := 250.
        ].
        recoveredBlock212Step = 250 ifTrue: [
            (recoveredBlock212Stack1) ifTrue: [recoveredBlock212PC := 254] ifFalse: [recoveredBlock212PC := 262].
        ].
        recoveredBlock212Step = 254 ifTrue: [
            recoveredBlock212Stack1 := recoveredBlock212Arg1.
            recoveredBlock212PC := 255.
        ].
        recoveredBlock212Step = 255 ifTrue: [
            recoveredBlock212Stack2 := XmATTACHFORM.
            recoveredBlock212PC := 257.
        ].
        recoveredBlock212Step = 257 ifTrue: [
            (recoveredBlock212Stack1) rightAttachment: (recoveredBlock212Stack2).
            recoveredBlock212PC := 259.
        ].
        recoveredBlock212Step = 259 ifTrue: [
            recoveredBlock212PC := 302.
        ].
        recoveredBlock212Step = 262 ifTrue: [
            recoveredBlock212Stack1 := recoveredLocal4.
            recoveredBlock212PC := 265.
        ].
        recoveredBlock212Step = 265 ifTrue: [
            (recoveredBlock212Stack1 ~~ nil) ifTrue: [recoveredBlock212PC := 276] ifFalse: [recoveredBlock212PC := 268].
        ].
        recoveredBlock212Step = 268 ifTrue: [
            recoveredBlock212Stack1 := recoveredBlock212Arg1.
            recoveredBlock212PC := 269.
        ].
        recoveredBlock212Step = 269 ifTrue: [
            recoveredBlock212Stack2 := XmATTACHNONE.
            recoveredBlock212PC := 271.
        ].
        recoveredBlock212Step = 271 ifTrue: [
            (recoveredBlock212Stack1) rightAttachment: (recoveredBlock212Stack2).
            recoveredBlock212PC := 273.
        ].
        recoveredBlock212Step = 273 ifTrue: [
            recoveredBlock212PC := 302.
        ].
        recoveredBlock212Step = 276 ifTrue: [
            recoveredBlock212Stack1 := recoveredLocal2.
            recoveredBlock212PC := 279.
        ].
        recoveredBlock212Step = 279 ifTrue: [
            recoveredBlock212Stack2 := recoveredLocal4.
            recoveredBlock212PC := 282.
        ].
        recoveredBlock212Step = 282 ifTrue: [
            recoveredBlock212Stack3 := recoveredLocal1.
            recoveredBlock212PC := 285.
        ].
        recoveredBlock212Step = 285 ifTrue: [
            recoveredBlock212Stack2 := (recoveredBlock212Stack2) at: (recoveredBlock212Stack3).
            recoveredBlock212PC := 287.
        ].
        recoveredBlock212Step = 287 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) + (recoveredBlock212Stack2).
            recoveredBlock212PC := 288.
        ].
        recoveredBlock212Step = 288 ifTrue: [
            recoveredLocal2 := recoveredBlock212Stack1.
            recoveredBlock212PC := 291.
        ].
        recoveredBlock212Step = 291 ifTrue: [
            recoveredBlock212Stack1 := recoveredBlock212Arg1.
            recoveredBlock212PC := 292.
        ].
        recoveredBlock212Step = 292 ifTrue: [
            recoveredBlock212Stack2 := recoveredBlock212Stack1.
            recoveredBlock212PC := 293.
        ].
        recoveredBlock212Step = 293 ifTrue: [
            recoveredBlock212Stack3 := XmATTACHPOSITION.
            recoveredBlock212PC := 295.
        ].
        recoveredBlock212Step = 295 ifTrue: [
            (recoveredBlock212Stack2) rightAttachment: (recoveredBlock212Stack3).
            recoveredBlock212PC := 297.
        ].
        recoveredBlock212Step = 297 ifTrue: [
            recoveredBlock212Stack2 := recoveredLocal2.
            recoveredBlock212PC := 300.
        ].
        recoveredBlock212Step = 300 ifTrue: [
            (recoveredBlock212Stack1) rightPosition: (recoveredBlock212Stack2).
            recoveredBlock212PC := 302.
        ].
        recoveredBlock212Step = 302 ifTrue: [
            recoveredBlock212Stack1 := recoveredBlock212Arg1.
            recoveredBlock212PC := 303.
        ].
        recoveredBlock212Step = 303 ifTrue: [
            recoveredBlock212Stack2 := recoveredBlock212Stack1.
            recoveredBlock212PC := 304.
        ].
        recoveredBlock212Step = 304 ifTrue: [
            recoveredBlock212Stack3 := XmATTACHFORM.
            recoveredBlock212PC := 306.
        ].
        recoveredBlock212Step = 306 ifTrue: [
            (recoveredBlock212Stack2) topAttachment: (recoveredBlock212Stack3).
            recoveredBlock212PC := 308.
        ].
        recoveredBlock212Step = 308 ifTrue: [
            recoveredBlock212Stack2 := XmATTACHFORM.
            recoveredBlock212PC := 310.
        ].
        recoveredBlock212Step = 310 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) bottomAttachment: (recoveredBlock212Stack2).
            recoveredBlock212PC := 312.
        ].
        recoveredBlock212Step = 312 ifTrue: [
            recoveredBlock212Result := recoveredBlock212Stack1.
            recoveredBlock212Done := true.
        ].
    ].
    recoveredBlock212Result
].
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            (recoveredStack2) setValuesBlock: (recoveredStack3).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredLocal7 := recoveredStack2.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack2 := (recoveredStack2) lists.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 102] ifFalse: [recoveredPC := 360]] ifFalse: [recoveredPC := 333].
        ].
        recoveredStep = 333 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 356] ifFalse: [recoveredPC := 350].
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredPC := 105.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205e08ec; bytecode file offset 0xedd230"
!CwColumnList methodsFor: 'recovered'!
updateListsAsync
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) updateProcess.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) updateProcess.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) terminate.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) updateProcess: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := Processor.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) activeProcess.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock24Local1 recoveredBlock24Local2 recoveredBlock24Local3 recoveredBlock24Local4 recoveredBlock24Local5 recoveredBlock24Local6 recoveredBlock24Local7 recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) itemLists.
            recoveredBlock24PC := 32.
        ].
        recoveredBlock24Step = 32 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Stack0.
            recoveredBlock24PC := 33.
        ].
        recoveredBlock24Step = 33 ifTrue: [
            recoveredBlock24Local7 := recoveredBlock24Stack1.
            recoveredBlock24PC := 36.
        ].
        recoveredBlock24Step = 36 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) size.
            recoveredBlock24PC := 38.
        ].
        recoveredBlock24Step = 38 ifTrue: [
            recoveredBlock24Stack1 := 0.
            recoveredBlock24PC := 40.
        ].
        recoveredBlock24Step = 40 ifTrue: [
            recoveredBlock24PC := 167.
        ].
        recoveredBlock24Step = 44 ifTrue: [
            recoveredBlock24Local1 := recoveredBlock24Stack2.
            recoveredBlock24PC := 47.
        ].
        recoveredBlock24Step = 47 ifTrue: [
            recoveredBlock24Stack2 := self.
            recoveredBlock24PC := 48.
        ].
        recoveredBlock24Step = 48 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) lists.
            recoveredBlock24PC := 50.
        ].
        recoveredBlock24Step = 50 ifTrue: [
            recoveredBlock24Stack3 := recoveredBlock24Local1.
            recoveredBlock24PC := 53.
        ].
        recoveredBlock24Step = 53 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) at: (recoveredBlock24Stack3).
            recoveredBlock24PC := 55.
        ].
        recoveredBlock24Step = 55 ifTrue: [
            recoveredBlock24Local4 := recoveredBlock24Stack2.
            recoveredBlock24PC := 58.
        ].
        recoveredBlock24Step = 58 ifTrue: [
            recoveredBlock24Stack2 := CwAppContext.
            recoveredBlock24PC := 60.
        ].
        recoveredBlock24Step = 60 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) default.
            recoveredBlock24PC := 62.
        ].
        recoveredBlock24Step = 62 ifTrue: [
            recoveredBlock24Stack3 := [
    | recoveredBlock24Block62Stack0 recoveredBlock24Block62Stack1 recoveredBlock24Block62Stack2 recoveredBlock24Block62Stack3 recoveredBlock24Block62Stack4 recoveredBlock24Block62PC recoveredBlock24Block62Step recoveredBlock24Block62Done recoveredBlock24Block62Result |
    recoveredBlock24Block62Stack0 := self.
    recoveredBlock24Block62PC := 68.
    recoveredBlock24Block62Done := false.
    [recoveredBlock24Block62Done not] whileTrue: [
        recoveredBlock24Block62Step := recoveredBlock24Block62PC.
        recoveredBlock24Block62Step = 68 ifTrue: [
            recoveredBlock24Block62Stack1 := nil.
            recoveredBlock24Block62PC := 69.
        ].
        recoveredBlock24Block62Step = 69 ifTrue: [
            recoveredBlock24Block62Stack2 := recoveredLocal1.
            recoveredBlock24Block62PC := 72.
        ].
        recoveredBlock24Block62Step = 72 ifTrue: [
            recoveredBlock24Block62Stack2 := (recoveredBlock24Block62Stack2) isDead.
            recoveredBlock24Block62PC := 74.
        ].
        recoveredBlock24Block62Step = 74 ifTrue: [
            (recoveredBlock24Block62Stack2) ifTrue: [recoveredBlock24Block62PC := 97] ifFalse: [recoveredBlock24Block62PC := 78].
        ].
        recoveredBlock24Block62Step = 78 ifTrue: [
            recoveredBlock24Block62Stack2 := self.
            recoveredBlock24Block62PC := 79.
        ].
        recoveredBlock24Block62Step = 79 ifTrue: [
            recoveredBlock24Block62Stack2 := (recoveredBlock24Block62Stack2) isDestroyed.
            recoveredBlock24Block62PC := 81.
        ].
        recoveredBlock24Block62Step = 81 ifTrue: [
            (recoveredBlock24Block62Stack2) ifTrue: [recoveredBlock24Block62PC := 97] ifFalse: [recoveredBlock24Block62PC := 84].
        ].
        recoveredBlock24Block62Step = 84 ifTrue: [
            recoveredBlock24Block62PC := 85.
        ].
        recoveredBlock24Block62Step = 85 ifTrue: [
            recoveredBlock24Block62Stack1 := recoveredBlock24Local4.
            recoveredBlock24Block62PC := 88.
        ].
        recoveredBlock24Block62Step = 88 ifTrue: [
            recoveredBlock24Block62Stack2 := recoveredBlock24Block62Stack1.
            recoveredBlock24Block62PC := 89.
        ].
        recoveredBlock24Block62Step = 89 ifTrue: [
            recoveredBlock24Block62Stack3 := #().
            recoveredBlock24Block62PC := 91.
        ].
        recoveredBlock24Block62Step = 91 ifTrue: [
            (recoveredBlock24Block62Stack2) selectedItems: (recoveredBlock24Block62Stack3).
            recoveredBlock24Block62PC := 93.
        ].
        recoveredBlock24Block62Step = 93 ifTrue: [
            recoveredBlock24Block62Stack2 := #().
            recoveredBlock24Block62PC := 95.
        ].
        recoveredBlock24Block62Step = 95 ifTrue: [
            recoveredBlock24Block62Stack1 := (recoveredBlock24Block62Stack1) items: (recoveredBlock24Block62Stack2).
            recoveredBlock24Block62PC := 97.
        ].
        recoveredBlock24Block62Step = 97 ifTrue: [
            recoveredBlock24Block62Result := recoveredBlock24Block62Stack1.
            recoveredBlock24Block62Done := true.
        ].
    ].
    recoveredBlock24Block62Result
].
            recoveredBlock24PC := 98.
        ].
        recoveredBlock24Step = 98 ifTrue: [
            (recoveredBlock24Stack2) syncExecInUI: (recoveredBlock24Stack3).
            recoveredBlock24PC := 100.
        ].
        recoveredBlock24Step = 100 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Local7.
            recoveredBlock24PC := 103.
        ].
        recoveredBlock24Step = 103 ifTrue: [
            recoveredBlock24Stack3 := recoveredBlock24Local1.
            recoveredBlock24PC := 106.
        ].
        recoveredBlock24Step = 106 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) at: (recoveredBlock24Stack3).
            recoveredBlock24PC := 108.
        ].
        recoveredBlock24Step = 108 ifTrue: [
            recoveredBlock24Stack3 := [:recoveredBlock24Block108Arg1 | 
    | recoveredBlock24Block108Value0 recoveredBlock24Block108Value1 recoveredBlock24Block108Value2 recoveredBlock24Block108Value3 |
    recoveredBlock24Block108Value0 := CwAppContext.
    recoveredBlock24Block108Value1 := (recoveredBlock24Block108Value0) default.
    recoveredBlock24Block108Value2 := [
    | recoveredBlock24Block108Block118Stack0 recoveredBlock24Block108Block118Stack1 recoveredBlock24Block108Block118Stack2 recoveredBlock24Block108Block118Stack3 recoveredBlock24Block108Block118Stack4 recoveredBlock24Block108Block118PC recoveredBlock24Block108Block118Step recoveredBlock24Block108Block118Done recoveredBlock24Block108Block118Result |
    recoveredBlock24Block108Block118Stack0 := self.
    recoveredBlock24Block108Block118PC := 124.
    recoveredBlock24Block108Block118Done := false.
    [recoveredBlock24Block108Block118Done not] whileTrue: [
        recoveredBlock24Block108Block118Step := recoveredBlock24Block108Block118PC.
        recoveredBlock24Block108Block118Step = 124 ifTrue: [
            recoveredBlock24Block108Block118Stack1 := nil.
            recoveredBlock24Block108Block118PC := 125.
        ].
        recoveredBlock24Block108Block118Step = 125 ifTrue: [
            recoveredBlock24Block108Block118Stack2 := recoveredLocal1.
            recoveredBlock24Block108Block118PC := 128.
        ].
        recoveredBlock24Block108Block118Step = 128 ifTrue: [
            recoveredBlock24Block108Block118Stack2 := (recoveredBlock24Block108Block118Stack2) isDead.
            recoveredBlock24Block108Block118PC := 130.
        ].
        recoveredBlock24Block108Block118Step = 130 ifTrue: [
            (recoveredBlock24Block108Block118Stack2) ifTrue: [recoveredBlock24Block108Block118PC := 161] ifFalse: [recoveredBlock24Block108Block118PC := 134].
        ].
        recoveredBlock24Block108Block118Step = 134 ifTrue: [
            recoveredBlock24Block108Block118Stack2 := self.
            recoveredBlock24Block108Block118PC := 135.
        ].
        recoveredBlock24Block108Block118Step = 135 ifTrue: [
            recoveredBlock24Block108Block118Stack2 := (recoveredBlock24Block108Block118Stack2) isDestroyed.
            recoveredBlock24Block108Block118PC := 137.
        ].
        recoveredBlock24Block108Block118Step = 137 ifTrue: [
            (recoveredBlock24Block108Block118Stack2) ifTrue: [recoveredBlock24Block108Block118PC := 161] ifFalse: [recoveredBlock24Block108Block118PC := 140].
        ].
        recoveredBlock24Block108Block118Step = 140 ifTrue: [
            recoveredBlock24Block108Block118PC := 141.
        ].
        recoveredBlock24Block108Block118Step = 141 ifTrue: [
            recoveredBlock24Block108Block118Stack1 := recoveredBlock24Local4.
            recoveredBlock24Block108Block118PC := 144.
        ].
        recoveredBlock24Block108Block118Step = 144 ifTrue: [
            recoveredBlock24Block108Block118Stack2 := self.
            recoveredBlock24Block108Block118PC := 145.
        ].
        recoveredBlock24Block108Block118Step = 145 ifTrue: [
            recoveredBlock24Block108Block118Stack2 := (recoveredBlock24Block108Block118Stack2) printBlocks.
            recoveredBlock24Block108Block118PC := 147.
        ].
        recoveredBlock24Block108Block118Step = 147 ifTrue: [
            recoveredBlock24Block108Block118Stack3 := recoveredBlock24Local1.
            recoveredBlock24Block108Block118PC := 150.
        ].
        recoveredBlock24Block108Block118Step = 150 ifTrue: [
            recoveredBlock24Block108Block118Stack2 := (recoveredBlock24Block108Block118Stack2) at: (recoveredBlock24Block108Block118Stack3).
            recoveredBlock24Block108Block118PC := 152.
        ].
        recoveredBlock24Block108Block118Step = 152 ifTrue: [
            recoveredBlock24Block108Block118Stack3 := recoveredBlock24Block108Arg1.
            recoveredBlock24Block108Block118PC := 155.
        ].
        recoveredBlock24Block108Block118Step = 155 ifTrue: [
            recoveredBlock24Block108Block118Stack2 := (recoveredBlock24Block108Block118Stack2) value: (recoveredBlock24Block108Block118Stack3).
            recoveredBlock24Block108Block118PC := 157.
        ].
        recoveredBlock24Block108Block118Step = 157 ifTrue: [
            recoveredBlock24Block108Block118Stack3 := 0.
            recoveredBlock24Block108Block118PC := 159.
        ].
        recoveredBlock24Block108Block118Step = 159 ifTrue: [
            recoveredBlock24Block108Block118Stack1 := (recoveredBlock24Block108Block118Stack1) addItem: (recoveredBlock24Block108Block118Stack2) position: (recoveredBlock24Block108Block118Stack3).
            recoveredBlock24Block108Block118PC := 161.
        ].
        recoveredBlock24Block108Block118Step = 161 ifTrue: [
            recoveredBlock24Block108Block118Result := recoveredBlock24Block108Block118Stack1.
            recoveredBlock24Block108Block118Done := true.
        ].
    ].
    recoveredBlock24Block108Block118Result
].
    recoveredBlock24Block108Value3 := (recoveredBlock24Block108Value1) syncExecInUI: (recoveredBlock24Block108Value2).
    recoveredBlock24Block108Value3
].
            recoveredBlock24PC := 165.
        ].
        recoveredBlock24Step = 165 ifTrue: [
            (recoveredBlock24Stack2) do: (recoveredBlock24Stack3).
            recoveredBlock24PC := 167.
        ].
        recoveredBlock24Step = 167 ifTrue: [
            (recoveredBlock24Stack0 isInteger and: [recoveredBlock24Stack1 isInteger]) ifTrue: [(recoveredBlock24Stack1 + 1 <= recoveredBlock24Stack0) ifTrue: [recoveredBlock24Stack1 := recoveredBlock24Stack1 + 1. recoveredBlock24Stack2 := recoveredBlock24Stack1. recoveredBlock24PC := 44] ifFalse: [recoveredBlock24PC := 196]] ifFalse: [recoveredBlock24PC := 170].
        ].
        recoveredBlock24Step = 170 ifTrue: [
            recoveredBlock24Local1 := recoveredBlock24Stack1.
            recoveredBlock24PC := 173.
        ].
        recoveredBlock24Step = 173 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Stack0.
            recoveredBlock24PC := 174.
        ].
        recoveredBlock24Step = 174 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Local1.
            recoveredBlock24PC := 177.
        ].
        recoveredBlock24Step = 177 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) + (1).
            recoveredBlock24PC := 178.
        ].
        recoveredBlock24Step = 178 ifTrue: [
            recoveredBlock24Stack3 := recoveredBlock24Stack2.
            recoveredBlock24PC := 179.
        ].
        recoveredBlock24Step = 179 ifTrue: [
            recoveredBlock24Local1 := recoveredBlock24Stack3.
            recoveredBlock24PC := 182.
        ].
        recoveredBlock24Step = 182 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) < (recoveredBlock24Stack2).
            recoveredBlock24PC := 183.
        ].
        recoveredBlock24Step = 183 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 192] ifFalse: [recoveredBlock24PC := 186].
        ].
        recoveredBlock24Step = 186 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Local1.
            recoveredBlock24PC := 189.
        ].
        recoveredBlock24Step = 189 ifTrue: [
            recoveredBlock24PC := 47.
        ].
        recoveredBlock24Step = 192 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 193.
        ].
        recoveredBlock24Step = 193 ifTrue: [
            recoveredBlock24Local1 := recoveredBlock24Stack1.
            recoveredBlock24PC := 196.
        ].
        recoveredBlock24Step = 196 ifTrue: [
            recoveredBlock24PC := 197.
        ].
        recoveredBlock24Step = 197 ifTrue: [
            recoveredBlock24Stack0 := self.
            recoveredBlock24PC := 198.
        ].
        recoveredBlock24Step = 198 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) itemLists.
            recoveredBlock24PC := 200.
        ].
        recoveredBlock24Step = 200 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) first.
            recoveredBlock24PC := 202.
        ].
        recoveredBlock24Step = 202 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) size.
            recoveredBlock24PC := 204.
        ].
        recoveredBlock24Step = 204 ifTrue: [
            recoveredBlock24Local3 := recoveredBlock24Stack0.
            recoveredBlock24PC := 207.
        ].
        recoveredBlock24Step = 207 ifTrue: [
            recoveredBlock24Stack0 := self.
            recoveredBlock24PC := 208.
        ].
        recoveredBlock24Step = 208 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) dynamicListResize.
            recoveredBlock24PC := 210.
        ].
        recoveredBlock24Step = 210 ifTrue: [
            (recoveredBlock24Stack0) ifTrue: [recoveredBlock24PC := 214] ifFalse: [recoveredBlock24PC := 362].
        ].
        recoveredBlock24Step = 214 ifTrue: [
            recoveredBlock24Stack0 := self.
            recoveredBlock24PC := 215.
        ].
        recoveredBlock24Step = 215 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) proportionalListSizes.
            recoveredBlock24PC := 217.
        ].
        recoveredBlock24Step = 217 ifTrue: [
            (recoveredBlock24Stack0 ~~ nil) ifTrue: [recoveredBlock24PC := 362] ifFalse: [recoveredBlock24PC := 220].
        ].
        recoveredBlock24Step = 220 ifTrue: [
            recoveredBlock24Stack0 := 0.
            recoveredBlock24PC := 222.
        ].
        recoveredBlock24Step = 222 ifTrue: [
            recoveredBlock24Local6 := recoveredBlock24Stack0.
            recoveredBlock24PC := 225.
        ].
        recoveredBlock24Step = 225 ifTrue: [
            recoveredBlock24Stack0 := self.
            recoveredBlock24PC := 226.
        ].
        recoveredBlock24Step = 226 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) lists.
            recoveredBlock24PC := 228.
        ].
        recoveredBlock24Step = 228 ifTrue: [
            recoveredBlock24Stack1 := [:recoveredBlock24Block228Arg1 | 
    | recoveredBlock24Block228Value0 recoveredBlock24Block228Value1 recoveredBlock24Block228Value2 recoveredBlock24Block228Value3 |
    recoveredBlock24Block228Value0 := CwAppContext.
    recoveredBlock24Block228Value1 := (recoveredBlock24Block228Value0) default.
    recoveredBlock24Block228Value2 := [
    | recoveredBlock24Block228Block238Stack0 recoveredBlock24Block228Block238Stack1 recoveredBlock24Block228Block238Stack2 recoveredBlock24Block228Block238Stack3 recoveredBlock24Block228Block238Stack4 recoveredBlock24Block228Block238PC recoveredBlock24Block228Block238Step recoveredBlock24Block228Block238Done recoveredBlock24Block228Block238Result |
    recoveredBlock24Block228Block238Stack0 := self.
    recoveredBlock24Block228Block238PC := 244.
    recoveredBlock24Block228Block238Done := false.
    [recoveredBlock24Block228Block238Done not] whileTrue: [
        recoveredBlock24Block228Block238Step := recoveredBlock24Block228Block238PC.
        recoveredBlock24Block228Block238Step = 244 ifTrue: [
            recoveredBlock24Block228Block238Stack1 := nil.
            recoveredBlock24Block228Block238PC := 245.
        ].
        recoveredBlock24Block228Block238Step = 245 ifTrue: [
            recoveredBlock24Block228Block238Stack2 := recoveredLocal1.
            recoveredBlock24Block228Block238PC := 248.
        ].
        recoveredBlock24Block228Block238Step = 248 ifTrue: [
            recoveredBlock24Block228Block238Stack2 := (recoveredBlock24Block228Block238Stack2) isDead.
            recoveredBlock24Block228Block238PC := 250.
        ].
        recoveredBlock24Block228Block238Step = 250 ifTrue: [
            (recoveredBlock24Block228Block238Stack2) ifTrue: [recoveredBlock24Block228Block238PC := 320] ifFalse: [recoveredBlock24Block228Block238PC := 254].
        ].
        recoveredBlock24Block228Block238Step = 254 ifTrue: [
            recoveredBlock24Block228Block238Stack2 := self.
            recoveredBlock24Block228Block238PC := 255.
        ].
        recoveredBlock24Block228Block238Step = 255 ifTrue: [
            recoveredBlock24Block228Block238Stack2 := (recoveredBlock24Block228Block238Stack2) isDestroyed.
            recoveredBlock24Block228Block238PC := 257.
        ].
        recoveredBlock24Block228Block238Step = 257 ifTrue: [
            (recoveredBlock24Block228Block238Stack2) ifTrue: [recoveredBlock24Block228Block238PC := 320] ifFalse: [recoveredBlock24Block228Block238PC := 260].
        ].
        recoveredBlock24Block228Block238Step = 260 ifTrue: [
            recoveredBlock24Block228Block238PC := 261.
        ].
        recoveredBlock24Block228Block238Step = 261 ifTrue: [
            recoveredBlock24Block228Block238Stack1 := System.
            recoveredBlock24Block228Block238PC := 263.
        ].
        recoveredBlock24Block228Block238Step = 263 ifTrue: [
            recoveredBlock24Block228Block238Stack2 := 'CW'.
            recoveredBlock24Block228Block238PC := 265.
        ].
        recoveredBlock24Block228Block238Step = 265 ifTrue: [
            recoveredBlock24Block228Block238Stack1 := (recoveredBlock24Block228Block238Stack1) subsystemType: (recoveredBlock24Block228Block238Stack2).
            recoveredBlock24Block228Block238PC := 267.
        ].
        recoveredBlock24Block228Block238Step = 267 ifTrue: [
            recoveredBlock24Block228Block238Stack2 := 'MOTIF'.
            recoveredBlock24Block228Block238PC := 269.
        ].
        recoveredBlock24Block228Block238Step = 269 ifTrue: [
            recoveredBlock24Block228Block238Stack1 := (recoveredBlock24Block228Block238Stack1) = (recoveredBlock24Block228Block238Stack2).
            recoveredBlock24Block228Block238PC := 270.
        ].
        recoveredBlock24Block228Block238Step = 270 ifTrue: [
            (recoveredBlock24Block228Block238Stack1) ifTrue: [recoveredBlock24Block228Block238PC := 274] ifFalse: [recoveredBlock24Block228Block238PC := 282].
        ].
        recoveredBlock24Block228Block238Step = 274 ifTrue: [
            recoveredBlock24Block228Block238Stack1 := recoveredBlock24Block228Arg1.
            recoveredBlock24Block228Block238PC := 277.
        ].
        recoveredBlock24Block228Block238Step = 277 ifTrue: [
            recoveredBlock24Block228Block238Stack1 := (recoveredBlock24Block228Block238Stack1) width.
            recoveredBlock24Block228Block238PC := 279.
        ].
        recoveredBlock24Block228Block238Step = 279 ifTrue: [
            recoveredBlock24Block228Block238PC := 289.
        ].
        recoveredBlock24Block228Block238Step = 282 ifTrue: [
            recoveredBlock24Block228Block238Stack1 := recoveredBlock24Block228Arg1.
            recoveredBlock24Block228Block238PC := 285.
        ].
        recoveredBlock24Block228Block238Step = 285 ifTrue: [
            recoveredBlock24Block228Block238Stack1 := (recoveredBlock24Block228Block238Stack1) preferredExtent.
            recoveredBlock24Block228Block238PC := 287.
        ].
        recoveredBlock24Block228Block238Step = 287 ifTrue: [
            recoveredBlock24Block228Block238Stack1 := (recoveredBlock24Block228Block238Stack1) x.
            recoveredBlock24Block228Block238PC := 289.
        ].
        recoveredBlock24Block228Block238Step = 289 ifTrue: [
            recoveredBlock24Local5 := recoveredBlock24Block228Block238Stack1.
            recoveredBlock24Block228Block238PC := 292.
        ].
        recoveredBlock24Block228Block238Step = 292 ifTrue: [
            recoveredBlock24Block228Block238Stack1 := recoveredBlock24Local6.
            recoveredBlock24Block228Block238PC := 295.
        ].
        recoveredBlock24Block228Block238Step = 295 ifTrue: [
            recoveredBlock24Block228Block238Stack2 := recoveredBlock24Local5.
            recoveredBlock24Block228Block238PC := 298.
        ].
        recoveredBlock24Block228Block238Step = 298 ifTrue: [
            recoveredBlock24Block228Block238Stack1 := (recoveredBlock24Block228Block238Stack1) + (recoveredBlock24Block228Block238Stack2).
            recoveredBlock24Block228Block238PC := 299.
        ].
        recoveredBlock24Block228Block238Step = 299 ifTrue: [
            recoveredBlock24Local6 := recoveredBlock24Block228Block238Stack1.
            recoveredBlock24Block228Block238PC := 302.
        ].
        recoveredBlock24Block228Block238Step = 302 ifTrue: [
            recoveredBlock24Block228Block238Stack1 := recoveredBlock24Block228Arg1.
            recoveredBlock24Block228Block238PC := 305.
        ].
        recoveredBlock24Block228Block238Step = 305 ifTrue: [
            recoveredBlock24Block228Block238Stack2 := recoveredBlock24Block228Block238Stack1.
            recoveredBlock24Block228Block238PC := 306.
        ].
        recoveredBlock24Block228Block238Step = 306 ifTrue: [
            recoveredBlock24Block228Block238Stack3 := recoveredBlock24Local5.
            recoveredBlock24Block228Block238PC := 309.
        ].
        recoveredBlock24Block228Block238Step = 309 ifTrue: [
            (recoveredBlock24Block228Block238Stack2) width: (recoveredBlock24Block228Block238Stack3).
            recoveredBlock24Block228Block238PC := 311.
        ].
        recoveredBlock24Block228Block238Step = 311 ifTrue: [
            recoveredBlock24Block228Block238Stack2 := recoveredBlock24Local3.
            recoveredBlock24Block228Block238PC := 314.
        ].
        recoveredBlock24Block228Block238Step = 314 ifTrue: [
            recoveredBlock24Block228Block238Stack3 := 1.
            recoveredBlock24Block228Block238PC := 316.
        ].
        recoveredBlock24Block228Block238Step = 316 ifTrue: [
            recoveredBlock24Block228Block238Stack2 := (recoveredBlock24Block228Block238Stack2) max: (recoveredBlock24Block228Block238Stack3).
            recoveredBlock24Block228Block238PC := 318.
        ].
        recoveredBlock24Block228Block238Step = 318 ifTrue: [
            recoveredBlock24Block228Block238Stack1 := (recoveredBlock24Block228Block238Stack1) visibleItemCount: (recoveredBlock24Block228Block238Stack2).
            recoveredBlock24Block228Block238PC := 320.
        ].
        recoveredBlock24Block228Block238Step = 320 ifTrue: [
            recoveredBlock24Block228Block238Result := recoveredBlock24Block228Block238Stack1.
            recoveredBlock24Block228Block238Done := true.
        ].
    ].
    recoveredBlock24Block228Block238Result
].
    recoveredBlock24Block228Value3 := (recoveredBlock24Block228Value1) syncExecInUI: (recoveredBlock24Block228Value2).
    recoveredBlock24Block228Value3
].
            recoveredBlock24PC := 324.
        ].
        recoveredBlock24Step = 324 ifTrue: [
            (recoveredBlock24Stack0) do: (recoveredBlock24Stack1).
            recoveredBlock24PC := 326.
        ].
        recoveredBlock24Step = 326 ifTrue: [
            recoveredBlock24Stack0 := CwAppContext.
            recoveredBlock24PC := 328.
        ].
        recoveredBlock24Step = 328 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) default.
            recoveredBlock24PC := 330.
        ].
        recoveredBlock24Step = 330 ifTrue: [
            recoveredBlock24Stack1 := [
    | recoveredBlock24Block330Stack0 recoveredBlock24Block330Stack1 recoveredBlock24Block330Stack2 recoveredBlock24Block330Stack3 recoveredBlock24Block330PC recoveredBlock24Block330Step recoveredBlock24Block330Done recoveredBlock24Block330Result |
    recoveredBlock24Block330Stack0 := self.
    recoveredBlock24Block330PC := 336.
    recoveredBlock24Block330Done := false.
    [recoveredBlock24Block330Done not] whileTrue: [
        recoveredBlock24Block330Step := recoveredBlock24Block330PC.
        recoveredBlock24Block330Step = 336 ifTrue: [
            recoveredBlock24Block330Stack1 := nil.
            recoveredBlock24Block330PC := 337.
        ].
        recoveredBlock24Block330Step = 337 ifTrue: [
            recoveredBlock24Block330Stack2 := recoveredLocal1.
            recoveredBlock24Block330PC := 340.
        ].
        recoveredBlock24Block330Step = 340 ifTrue: [
            recoveredBlock24Block330Stack2 := (recoveredBlock24Block330Stack2) isDead.
            recoveredBlock24Block330PC := 342.
        ].
        recoveredBlock24Block330Step = 342 ifTrue: [
            (recoveredBlock24Block330Stack2) ifTrue: [recoveredBlock24Block330PC := 359] ifFalse: [recoveredBlock24Block330PC := 346].
        ].
        recoveredBlock24Block330Step = 346 ifTrue: [
            recoveredBlock24Block330Stack2 := self.
            recoveredBlock24Block330PC := 347.
        ].
        recoveredBlock24Block330Step = 347 ifTrue: [
            recoveredBlock24Block330Stack2 := (recoveredBlock24Block330Stack2) isDestroyed.
            recoveredBlock24Block330PC := 349.
        ].
        recoveredBlock24Block330Step = 349 ifTrue: [
            (recoveredBlock24Block330Stack2) ifTrue: [recoveredBlock24Block330PC := 359] ifFalse: [recoveredBlock24Block330PC := 352].
        ].
        recoveredBlock24Block330Step = 352 ifTrue: [
            recoveredBlock24Block330PC := 353.
        ].
        recoveredBlock24Block330Step = 353 ifTrue: [
            recoveredBlock24Block330Stack1 := self.
            recoveredBlock24Block330PC := 354.
        ].
        recoveredBlock24Block330Step = 354 ifTrue: [
            recoveredBlock24Block330Stack2 := recoveredBlock24Local6.
            recoveredBlock24Block330PC := 357.
        ].
        recoveredBlock24Block330Step = 357 ifTrue: [
            recoveredBlock24Block330Stack1 := (recoveredBlock24Block330Stack1) width: (recoveredBlock24Block330Stack2).
            recoveredBlock24Block330PC := 359.
        ].
        recoveredBlock24Block330Step = 359 ifTrue: [
            recoveredBlock24Block330Result := recoveredBlock24Block330Stack1.
            recoveredBlock24Block330Done := true.
        ].
    ].
    recoveredBlock24Block330Result
].
            recoveredBlock24PC := 360.
        ].
        recoveredBlock24Step = 360 ifTrue: [
            (recoveredBlock24Stack0) syncExecInUI: (recoveredBlock24Stack1).
            recoveredBlock24PC := 362.
        ].
        recoveredBlock24Step = 362 ifTrue: [
            recoveredBlock24Stack0 := self.
            recoveredBlock24PC := 363.
        ].
        recoveredBlock24Step = 363 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) callUpdateCompleteCallback.
            recoveredBlock24PC := 365.
        ].
        recoveredBlock24Step = 365 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack0.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack1 := (recoveredStack1) forkAt: (recoveredStack2).
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            (recoveredStack0) updateProcess: (recoveredStack1).
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

