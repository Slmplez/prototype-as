"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002840; bytecode file offset 0x8ffcfc"
!EwLinearList methodsFor: 'recovered'!
widgetInfoForTypeAhead
    ^self
! !

"ASDBase.ic method 0x20005930; bytecode file offset 0x902744"
!EwLinearList methodsFor: 'recovered'!
expandPos: recoveredArg1 notify: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20038334; bytecode file offset 0x934c18"
!EwLinearList methodsFor: 'recovered'!
getExpandOffset: recoveredArg1
    ^0
! !

"ASDBase.ic method 0x2003cc18; bytecode file offset 0x93bf94"
!EwLinearList methodsFor: 'recovered'!
determineExpandedPositions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200bb980; bytecode file offset 0x9b823c"
!EwLinearList methodsFor: 'recovered'!
selectedItemsWithNotify: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) selectedItems: (recoveredValue0).
    (self) triggerSelectionCallback.
    ^self
! !

"ASDBase.ic method 0x20104b88; bytecode file offset 0xa01584"
!EwLinearList methodsFor: 'recovered'!
returnCurrentListState
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := RBListState.
    recoveredValue1 := (self) topItemPosition.
    recoveredValue2 := (self) getSelectedPos.
    recoveredValue3 := (self) determineExpandedPositions.
    recoveredValue4 := (recoveredValue0) createByTopPosition: (recoveredValue1) selectedPositions: (recoveredValue2) expandedPositions: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2011c308; bytecode file offset 0xa18bcc"
!EwLinearList methodsFor: 'recovered'!
highlightedItems
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) highlightedItemIndexes.
    recoveredValue1 := (recoveredValue0) asOrderedCollection.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (self) itemAt: (recoveredBlock6Value0).
    recoveredBlock6Value1
].
    recoveredValue3 := (recoveredValue1) collect: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2014783c; bytecode file offset 0xa44100"
!EwLinearList methodsFor: 'recovered'!
indexOfItem: recoveredArg1 equalMethod: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) startPositionForSearch.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (recoveredValue2) - (recoveredValue4).
    recoveredValue6 := (recoveredValue5) + (1).
    recoveredValue7 := (recoveredValue6) max: (0).
    recoveredValue8 := (self) indexOfItem: (recoveredValue0) equalMethod: (recoveredValue1) startingAt: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x20150fd4; bytecode file offset 0xa4d894"
!EwLinearList methodsFor: 'recovered'!
startPositionForSearch
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItemIndexes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItemIndexes.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) someElement.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20185f64; bytecode file offset 0xa82828"
!EwLinearList methodsFor: 'recovered'!
selectIndexInList: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) usingSingleItemSelection.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) deselectAllItems.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) cursorItem: (recoveredStack1) forceFullyVisible: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) highlightIndex: (recoveredStack1) commit: (recoveredStack2).
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

"ASDBase.ic method 0x20186850; bytecode file offset 0xa83114"
!EwLinearList methodsFor: 'recovered'!
selectFirstItemNotify: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
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
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) items.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) selectItem: (recoveredStack1) notify: (recoveredStack2).
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

"ASDBase.ic method 0x201d5030; bytecode file offset 0xad18ec"
!EwLinearList methodsFor: 'recovered'!
indexOfItem: recoveredArg1 equalMethod: recoveredArg2 matchCase: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) cursoredItemIndex.
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
            recoveredStack1 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := 1.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOfItem: (recoveredStack1) equalMethod: (recoveredStack2) startingAt: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201eda90; bytecode file offset 0xaea354"
!EwLinearList methodsFor: 'recovered'!
findFirstVisibleItem: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) haveNodesDrawn.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) visibleItemNodes.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) findFirst: (recoveredStack1).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) topItemPosition.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f7218; bytecode file offset 0xaf3ae4"
!EwLinearList methodsFor: 'recovered'!
getMatchString: recoveredArg1 equalMethod: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBlock.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) widgetInfoForTypeAhead.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSymbol.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) perform: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20224880; bytecode file offset 0xb21148"
!EwLinearList methodsFor: 'recovered'!
haveNodesDrawn
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
            recoveredStack2 := (recoveredStack2) visibleItemNodes.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) visibleItemNodes.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 18].
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
            recoveredStack2 := (recoveredStack2) visibleItemNodes.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) notEmpty.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) visibleItemNodes.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) top.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20309494; bytecode file offset 0xc05d88"
!EwLinearList methodsFor: 'recovered'!
selectItem: recoveredArg1 equalMethodSimple: recoveredArg2 notify: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOfItem: (recoveredStack1) equalMethodSimple: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := '#'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) selectIndexInList: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) inputMapper.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) anchor: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) triggerSelectionCallback.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203094b8; bytecode file offset 0xc05d88"
!EwLinearList methodsFor: 'recovered'!
selectItem: recoveredArg1 equalMethod: recoveredArg2 notify: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOfItem: (recoveredStack1) equalMethod: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := '#'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) selectIndexInList: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) inputMapper.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) anchor: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) triggerSelectionCallback.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203130e4; bytecode file offset 0xc0f9a8"
!EwLinearList methodsFor: 'recovered'!
indexOfItem: recoveredArg1 equalMethod: recoveredArg2 startingAt: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) items.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookupFrom: (recoveredStack1) to: (recoveredStack2) equalMethod: (recoveredStack3) pattern: (recoveredStack4).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookupFrom: (recoveredStack1) to: (recoveredStack2) equalMethod: (recoveredStack3) pattern: (recoveredStack4).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) getExpandOffset: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20328140; bytecode file offset 0xc24a10"
!EwLinearList methodsFor: 'recovered'!
selectItem: recoveredArg1 equalMethod: recoveredArg2 notify: recoveredArg3 matchCase: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOfItem: (recoveredStack1) equalMethod: (recoveredStack2) matchCase: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := '#'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack1 := 0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) selectIndexInList: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) inputMapper.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) anchor: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) triggerSelectionCallback.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203316e4; bytecode file offset 0xc2dfac"
!EwLinearList methodsFor: 'recovered'!
selectedItemsSorted: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 |
    (self) deselectAllItems.
    recoveredLocal1 := 1.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) items.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal1.
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) indexOf: (recoveredBlock14Stack1) startingAt: (recoveredBlock14Stack2).
            recoveredBlock14PC := 27.
        ].
        recoveredBlock14Step = 27 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack0.
            recoveredBlock14PC := 30.
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14Stack0 := nil.
            recoveredBlock14PC := 31.
        ].
        recoveredBlock14Step = 31 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 34.
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14Stack2 := 0.
            recoveredBlock14PC := 36.
        ].
        recoveredBlock14Step = 36 ifTrue: [
            (recoveredBlock14Stack1 == recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 55] ifFalse: [recoveredBlock14PC := 40].
        ].
        recoveredBlock14Step = 40 ifTrue: [
            recoveredBlock14PC := 41.
        ].
        recoveredBlock14Step = 41 ifTrue: [
            recoveredBlock14Stack0 := self.
            recoveredBlock14PC := 42.
        ].
        recoveredBlock14Step = 42 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 45.
        ].
        recoveredBlock14Step = 45 ifTrue: [
            recoveredBlock14Stack2 := true.
            recoveredBlock14PC := 46.
        ].
        recoveredBlock14Step = 46 ifTrue: [
            (recoveredBlock14Stack0) highlightIndex: (recoveredBlock14Stack1) commit: (recoveredBlock14Stack2).
            recoveredBlock14PC := 48.
        ].
        recoveredBlock14Step = 48 ifTrue: [
            recoveredBlock14Stack0 := recoveredLocal2.
            recoveredBlock14PC := 51.
        ].
        recoveredBlock14Step = 51 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Stack0.
            recoveredBlock14PC := 52.
        ].
        recoveredBlock14Step = 52 ifTrue: [
            recoveredLocal1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 55.
        ].
        recoveredBlock14Step = 55 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack0.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2036dcc8; bytecode file offset 0xc6a594"
!EwLinearList methodsFor: 'recovered'!
specialDBLabelProxySelectedItemsSorted: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 |
    (self) deselectAllItems.
    recoveredLocal1 := 1.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) items.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal1.
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            recoveredBlock14Stack3 := [
    0
].
            recoveredBlock14PC := 27.
        ].
        recoveredBlock14Step = 27 ifTrue: [
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) specialDBLabelProxyIndexOf: (recoveredBlock14Stack1) startingAt: (recoveredBlock14Stack2) ifAbsent: (recoveredBlock14Stack3).
            recoveredBlock14PC := 36.
        ].
        recoveredBlock14Step = 36 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack0.
            recoveredBlock14PC := 39.
        ].
        recoveredBlock14Step = 39 ifTrue: [
            recoveredBlock14Stack0 := nil.
            recoveredBlock14PC := 40.
        ].
        recoveredBlock14Step = 40 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 43.
        ].
        recoveredBlock14Step = 43 ifTrue: [
            recoveredBlock14Stack2 := 0.
            recoveredBlock14PC := 45.
        ].
        recoveredBlock14Step = 45 ifTrue: [
            (recoveredBlock14Stack1 == recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 63] ifFalse: [recoveredBlock14PC := 48].
        ].
        recoveredBlock14Step = 48 ifTrue: [
            recoveredBlock14PC := 49.
        ].
        recoveredBlock14Step = 49 ifTrue: [
            recoveredBlock14Stack0 := self.
            recoveredBlock14PC := 50.
        ].
        recoveredBlock14Step = 50 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 53.
        ].
        recoveredBlock14Step = 53 ifTrue: [
            recoveredBlock14Stack2 := true.
            recoveredBlock14PC := 54.
        ].
        recoveredBlock14Step = 54 ifTrue: [
            (recoveredBlock14Stack0) highlightIndex: (recoveredBlock14Stack1) commit: (recoveredBlock14Stack2).
            recoveredBlock14PC := 56.
        ].
        recoveredBlock14Step = 56 ifTrue: [
            recoveredBlock14Stack0 := recoveredLocal2.
            recoveredBlock14PC := 59.
        ].
        recoveredBlock14Step = 59 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Stack0.
            recoveredBlock14PC := 60.
        ].
        recoveredBlock14Step = 60 ifTrue: [
            recoveredLocal1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 63.
        ].
        recoveredBlock14Step = 63 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack0.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2036e510; bytecode file offset 0xc6addc"
!EwLinearList methodsFor: 'recovered'!
lookupFrom: recoveredArg1 to: recoveredArg2 equalMethod: recoveredArg3 pattern: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) items.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) getMatchString: (recoveredStack3) equalMethod: (recoveredStack4).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexOf: (recoveredStack3) matchCase: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) notEmpty.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack1) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 14] ifFalse: [recoveredLocal2 := nil. recoveredPC := 64]] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203d273c; bytecode file offset 0xccf010"
!EwLinearList methodsFor: 'recovered'!
updateFromListState: recoveredArg1 notify: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expandedPositions.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) itemCount.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredLocal1 := recoveredBlock8Stack0.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack0 := nil.
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 20.
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8Stack2 := recoveredLocal1.
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) <= (recoveredBlock8Stack2).
            recoveredBlock8PC := 24.
        ].
        recoveredBlock8Step = 24 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 28] ifFalse: [recoveredBlock8PC := 36].
        ].
        recoveredBlock8Step = 28 ifTrue: [
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 30.
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg2.
            recoveredBlock8PC := 34.
        ].
        recoveredBlock8Step = 34 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) expandPos: (recoveredBlock8Stack1) notify: (recoveredBlock8Stack2).
            recoveredBlock8PC := 36.
        ].
        recoveredBlock8Step = 36 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack0.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := (self) itemCount.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) selectedPositions.
    recoveredValue6 := [:recoveredBlock48Arg1 | 
    | recoveredBlock48Stack0 recoveredBlock48Stack1 recoveredBlock48Stack2 recoveredBlock48Stack3 recoveredBlock48Stack4 recoveredBlock48PC recoveredBlock48Step recoveredBlock48Done recoveredBlock48Result |
    recoveredBlock48Stack0 := self.
    recoveredBlock48PC := 54.
    recoveredBlock48Done := false.
    [recoveredBlock48Done not] whileTrue: [
        recoveredBlock48Step := recoveredBlock48PC.
        recoveredBlock48Step = 54 ifTrue: [
            recoveredBlock48Stack1 := nil.
            recoveredBlock48PC := 55.
        ].
        recoveredBlock48Step = 55 ifTrue: [
            recoveredBlock48Stack2 := recoveredBlock48Arg1.
            recoveredBlock48PC := 56.
        ].
        recoveredBlock48Step = 56 ifTrue: [
            recoveredBlock48Stack3 := recoveredLocal1.
            recoveredBlock48PC := 59.
        ].
        recoveredBlock48Step = 59 ifTrue: [
            recoveredBlock48Stack2 := (recoveredBlock48Stack2) <= (recoveredBlock48Stack3).
            recoveredBlock48PC := 60.
        ].
        recoveredBlock48Step = 60 ifTrue: [
            (recoveredBlock48Stack2) ifTrue: [recoveredBlock48PC := 64] ifFalse: [recoveredBlock48PC := 72].
        ].
        recoveredBlock48Step = 64 ifTrue: [
            recoveredBlock48PC := 65.
        ].
        recoveredBlock48Step = 65 ifTrue: [
            recoveredBlock48Stack1 := self.
            recoveredBlock48PC := 66.
        ].
        recoveredBlock48Step = 66 ifTrue: [
            recoveredBlock48Stack2 := recoveredBlock48Arg1.
            recoveredBlock48PC := 67.
        ].
        recoveredBlock48Step = 67 ifTrue: [
            recoveredBlock48Stack3 := recoveredArg2.
            recoveredBlock48PC := 70.
        ].
        recoveredBlock48Step = 70 ifTrue: [
            recoveredBlock48Stack1 := (recoveredBlock48Stack1) selectPos: (recoveredBlock48Stack2) notify: (recoveredBlock48Stack3).
            recoveredBlock48PC := 72.
        ].
        recoveredBlock48Step = 72 ifTrue: [
            recoveredBlock48Result := recoveredBlock48Stack1.
            recoveredBlock48Done := true.
        ].
    ].
    recoveredBlock48Result
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) topPosition.
    (self) topItemPosition: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x20599774; bytecode file offset 0xe960c4"
!EwLinearList methodsFor: 'recovered'!
addHoverSupport
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_85235'.
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
            recoveredStack1 := EtasXMLDefinedOptions.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'ShowTooltips'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := 'ETASInternal'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) getOption: (recoveredStack2) fromCategory: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) focusProxy.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := KeyPressMask.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := [:recoveredBlock38Arg1 :recoveredBlock38Arg2 :recoveredBlock38Arg3 | 
    | recoveredBlock38Stack0 recoveredBlock38Stack1 recoveredBlock38Stack2 recoveredBlock38Stack3 recoveredBlock38Stack4 recoveredBlock38PC recoveredBlock38Step recoveredBlock38Done recoveredBlock38Result |
    recoveredBlock38Stack0 := self.
    recoveredBlock38PC := 44.
    recoveredBlock38Done := false.
    [recoveredBlock38Done not] whileTrue: [
        recoveredBlock38Step := recoveredBlock38PC.
        recoveredBlock38Step = 44 ifTrue: [
            recoveredBlock38Stack1 := [
    | recoveredBlock38Block44Value0 |
    recoveredBlock38Block44Value0 := (self) stsHoverHelpWindowHide.
    recoveredBlock38Block44Value0
].
            recoveredBlock38PC := 53.
        ].
        recoveredBlock38Step = 53 ifTrue: [
            recoveredBlock38Stack2 := ExAll.
            recoveredBlock38PC := 55.
        ].
        recoveredBlock38Step = 55 ifTrue: [
            recoveredBlock38Stack3 := [:block28115048Arg1 | 
    | block28115048Value0 block28115048Value1 block28115048Value2 block28115048Value3 block28115048Value4 block28115048Value5 block28115048Value6 |
    block28115048Value0 := System.
    block28115048Value1 := block28115048Arg1.
    block28115048Value2 := (block28115048Value1) argument.
    block28115048Value3 := (block28115048Value2) asString.
    block28115048Value4 := ('Error in Hover Support: ') , (block28115048Value3).
    (block28115048Value0) logError: (block28115048Value4).
    block28115048Value5 := block28115048Arg1.
    block28115048Value6 := (block28115048Value5) exitWith: (nil).
    block28115048Value6
].
            recoveredBlock38PC := 57.
        ].
        recoveredBlock38Step = 57 ifTrue: [
            recoveredBlock38PC := 78.
        ].
        recoveredBlock38Step = 78 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) when: (recoveredBlock38Stack2) do: (recoveredBlock38Stack3).
            recoveredBlock38PC := 80.
        ].
        recoveredBlock38Step = 80 ifTrue: [
            recoveredBlock38Result := recoveredBlock38Stack1.
            recoveredBlock38Done := true.
        ].
    ].
    recoveredBlock38Result
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := 'value:value:value:'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) addEventHandler: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicWidget.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := PointerMotionMask.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := [:recoveredBlock93Arg1 :recoveredBlock93Arg2 :recoveredBlock93Arg3 | 
    | recoveredBlock93Local1 recoveredBlock93Local2 recoveredBlock93Local3 recoveredBlock93Local4 recoveredBlock93Local5 recoveredBlock93Local6 recoveredBlock93Stack0 recoveredBlock93Stack1 recoveredBlock93Stack2 recoveredBlock93Stack3 recoveredBlock93Stack4 recoveredBlock93PC recoveredBlock93Step recoveredBlock93Done recoveredBlock93Result |
    recoveredBlock93Stack0 := self.
    recoveredBlock93PC := 100.
    recoveredBlock93Done := false.
    [recoveredBlock93Done not] whileTrue: [
        recoveredBlock93Step := recoveredBlock93PC.
        recoveredBlock93Step = 100 ifTrue: [
            recoveredBlock93Stack1 := [
    | recoveredBlock93Block100Stack0 recoveredBlock93Block100Stack1 recoveredBlock93Block100Stack2 recoveredBlock93Block100Stack3 recoveredBlock93Block100Stack4 recoveredBlock93Block100Stack5 recoveredBlock93Block100PC recoveredBlock93Block100Step recoveredBlock93Block100Done recoveredBlock93Block100Result |
    recoveredBlock93Block100Stack0 := self.
    recoveredBlock93Block100PC := 106.
    recoveredBlock93Block100Done := false.
    [recoveredBlock93Block100Done not] whileTrue: [
        recoveredBlock93Block100Step := recoveredBlock93Block100PC.
        recoveredBlock93Block100Step = 106 ifTrue: [
            recoveredBlock93Block100Stack1 := recoveredBlock93Arg3.
            recoveredBlock93Block100PC := 109.
        ].
        recoveredBlock93Block100Step = 109 ifTrue: [
            recoveredBlock93Block100Stack1 := (recoveredBlock93Block100Stack1) point.
            recoveredBlock93Block100PC := 111.
        ].
        recoveredBlock93Block100Step = 111 ifTrue: [
            recoveredBlock93Block100Stack2 := horizontalScrollOffset.
            recoveredBlock93Block100PC := 113.
        ].
        recoveredBlock93Block100Step = 113 ifTrue: [
            recoveredBlock93Block100Stack3 := 0.
            recoveredBlock93Block100PC := 115.
        ].
        recoveredBlock93Block100Step = 115 ifTrue: [
            recoveredBlock93Block100Stack2 := (recoveredBlock93Block100Stack2) @ (recoveredBlock93Block100Stack3).
            recoveredBlock93Block100PC := 117.
        ].
        recoveredBlock93Block100Step = 117 ifTrue: [
            recoveredBlock93Block100Stack1 := (recoveredBlock93Block100Stack1) + (recoveredBlock93Block100Stack2).
            recoveredBlock93Block100PC := 118.
        ].
        recoveredBlock93Block100Step = 118 ifTrue: [
            recoveredBlock93Local1 := recoveredBlock93Block100Stack1.
            recoveredBlock93Block100PC := 121.
        ].
        recoveredBlock93Block100Step = 121 ifTrue: [
            recoveredBlock93Block100Stack1 := self.
            recoveredBlock93Block100PC := 122.
        ].
        recoveredBlock93Block100Step = 122 ifTrue: [
            recoveredBlock93Block100Stack2 := recoveredBlock93Local1.
            recoveredBlock93Block100PC := 125.
        ].
        recoveredBlock93Block100Step = 125 ifTrue: [
            recoveredBlock93Block100Stack0 := (recoveredBlock93Block100Stack0) stsItemPointFor: (recoveredBlock93Block100Stack1) visibleAt: (recoveredBlock93Block100Stack2).
            recoveredBlock93Block100PC := 127.
        ].
        recoveredBlock93Block100Step = 127 ifTrue: [
            recoveredBlock93Block100Stack1 := recoveredBlock93Block100Stack0.
            recoveredBlock93Block100PC := 128.
        ].
        recoveredBlock93Block100Step = 128 ifTrue: [
            recoveredBlock93Local4 := recoveredBlock93Block100Stack1.
            recoveredBlock93Block100PC := 131.
        ].
        recoveredBlock93Block100Step = 131 ifTrue: [
            (recoveredBlock93Block100Stack0 == nil) ifTrue: [recoveredBlock93Block100PC := 244] ifFalse: [recoveredBlock93Block100PC := 134].
        ].
        recoveredBlock93Block100Step = 134 ifTrue: [
            recoveredBlock93Block100Stack0 := recoveredBlock93Local4.
            recoveredBlock93Block100PC := 137.
        ].
        recoveredBlock93Block100Step = 137 ifTrue: [
            recoveredBlock93Block100Stack1 := 0.
            recoveredBlock93Block100PC := 139.
        ].
        recoveredBlock93Block100Step = 139 ifTrue: [
            recoveredBlock93Block100Stack2 := 0.
            recoveredBlock93Block100PC := 141.
        ].
        recoveredBlock93Block100Step = 141 ifTrue: [
            recoveredBlock93Block100Stack1 := (recoveredBlock93Block100Stack1) @ (recoveredBlock93Block100Stack2).
            recoveredBlock93Block100PC := 143.
        ].
        recoveredBlock93Block100Step = 143 ifTrue: [
            recoveredBlock93Block100Stack0 := (recoveredBlock93Block100Stack0) >= (recoveredBlock93Block100Stack1).
            recoveredBlock93Block100PC := 144.
        ].
        recoveredBlock93Block100Step = 144 ifTrue: [
            (recoveredBlock93Block100Stack0) ifTrue: [recoveredBlock93Block100PC := 148] ifFalse: [recoveredBlock93Block100PC := 244].
        ].
        recoveredBlock93Block100Step = 148 ifTrue: [
            recoveredBlock93Block100Stack0 := nil.
            recoveredBlock93Block100PC := 149.
        ].
        recoveredBlock93Block100Step = 149 ifTrue: [
            recoveredBlock93Block100Stack1 := self.
            recoveredBlock93Block100PC := 150.
        ].
        recoveredBlock93Block100Step = 150 ifTrue: [
            recoveredBlock93Block100Stack2 := recoveredBlock93Arg3.
            recoveredBlock93Block100PC := 153.
        ].
        recoveredBlock93Block100Step = 153 ifTrue: [
            recoveredBlock93Block100Stack2 := (recoveredBlock93Block100Stack2) point.
            recoveredBlock93Block100PC := 155.
        ].
        recoveredBlock93Block100Step = 155 ifTrue: [
            recoveredBlock93Block100Stack1 := (recoveredBlock93Block100Stack1) indexAtPoint: (recoveredBlock93Block100Stack2).
            recoveredBlock93Block100PC := 157.
        ].
        recoveredBlock93Block100Step = 157 ifTrue: [
            recoveredBlock93Block100Stack2 := recoveredBlock93Block100Stack1.
            recoveredBlock93Block100PC := 158.
        ].
        recoveredBlock93Block100Step = 158 ifTrue: [
            recoveredBlock93Local5 := recoveredBlock93Block100Stack2.
            recoveredBlock93Block100PC := 161.
        ].
        recoveredBlock93Block100Step = 161 ifTrue: [
            (recoveredBlock93Block100Stack1 == nil) ifTrue: [recoveredBlock93Block100PC := 241] ifFalse: [recoveredBlock93Block100PC := 164].
        ].
        recoveredBlock93Block100Step = 164 ifTrue: [
            recoveredBlock93Block100Stack1 := self.
            recoveredBlock93Block100PC := 165.
        ].
        recoveredBlock93Block100Step = 165 ifTrue: [
            recoveredBlock93Block100Stack2 := recoveredBlock93Local5.
            recoveredBlock93Block100PC := 168.
        ].
        recoveredBlock93Block100Step = 168 ifTrue: [
            recoveredBlock93Block100Stack1 := (recoveredBlock93Block100Stack1) itemAt: (recoveredBlock93Block100Stack2).
            recoveredBlock93Block100PC := 170.
        ].
        recoveredBlock93Block100Step = 170 ifTrue: [
            recoveredBlock93Block100Stack2 := recoveredBlock93Block100Stack1.
            recoveredBlock93Block100PC := 171.
        ].
        recoveredBlock93Block100Step = 171 ifTrue: [
            recoveredBlock93Local6 := recoveredBlock93Block100Stack2.
            recoveredBlock93Block100PC := 174.
        ].
        recoveredBlock93Block100Step = 174 ifTrue: [
            (recoveredBlock93Block100Stack1 == nil) ifTrue: [recoveredBlock93Block100PC := 241] ifFalse: [recoveredBlock93Block100PC := 178].
        ].
        recoveredBlock93Block100Step = 178 ifTrue: [
            recoveredBlock93Block100PC := 179.
        ].
        recoveredBlock93Block100Step = 179 ifTrue: [
            recoveredBlock93Block100Stack0 := self.
            recoveredBlock93Block100PC := 180.
        ].
        recoveredBlock93Block100Step = 180 ifTrue: [
            recoveredBlock93Block100Stack0 := (recoveredBlock93Block100Stack0) stsHoverHelpWindow.
            recoveredBlock93Block100PC := 182.
        ].
        recoveredBlock93Block100Step = 182 ifTrue: [
            recoveredBlock93Block100Stack1 := [:recoveredBlock93Block100Block182Arg1 | 
    | recoveredBlock93Block100Block182Stack0 recoveredBlock93Block100Block182Stack1 recoveredBlock93Block100Block182Stack2 recoveredBlock93Block100Block182Stack3 recoveredBlock93Block100Block182Stack4 recoveredBlock93Block100Block182Stack5 recoveredBlock93Block100Block182PC recoveredBlock93Block100Block182Step recoveredBlock93Block100Block182Done recoveredBlock93Block100Block182Result |
    recoveredBlock93Block100Block182Stack0 := self.
    recoveredBlock93Block100Block182PC := 188.
    recoveredBlock93Block100Block182Done := false.
    [recoveredBlock93Block100Block182Done not] whileTrue: [
        recoveredBlock93Block100Block182Step := recoveredBlock93Block100Block182PC.
        recoveredBlock93Block100Block182Step = 188 ifTrue: [
            recoveredBlock93Block100Block182Stack1 := nil.
            recoveredBlock93Block100Block182PC := 189.
        ].
        recoveredBlock93Block100Block182Step = 189 ifTrue: [
            recoveredBlock93Block100Block182Stack2 := recoveredBlock93Block100Block182Arg1.
            recoveredBlock93Block100Block182PC := 190.
        ].
        recoveredBlock93Block100Block182Step = 190 ifTrue: [
            recoveredBlock93Block100Block182Stack2 := (recoveredBlock93Block100Block182Stack2) x.
            recoveredBlock93Block100Block182PC := 192.
        ].
        recoveredBlock93Block100Block182Step = 192 ifTrue: [
            recoveredBlock93Block100Block182Stack3 := recoveredBlock93Block100Block182Arg1.
            recoveredBlock93Block100Block182PC := 193.
        ].
        recoveredBlock93Block100Block182Step = 193 ifTrue: [
            recoveredBlock93Block100Block182Stack3 := (recoveredBlock93Block100Block182Stack3) y.
            recoveredBlock93Block100Block182PC := 195.
        ].
        recoveredBlock93Block100Block182Step = 195 ifTrue: [
            recoveredBlock93Block100Block182Stack2 := (recoveredBlock93Block100Block182Stack2) @ (recoveredBlock93Block100Block182Stack3).
            recoveredBlock93Block100Block182PC := 197.
        ].
        recoveredBlock93Block100Block182Step = 197 ifTrue: [
            recoveredBlock93Block100Block182Stack3 := self.
            recoveredBlock93Block100Block182PC := 198.
        ].
        recoveredBlock93Block100Block182Step = 198 ifTrue: [
            recoveredBlock93Block100Block182Stack4 := recoveredBlock93Local4.
            recoveredBlock93Block100Block182PC := 201.
        ].
        recoveredBlock93Block100Block182Step = 201 ifTrue: [
            recoveredBlock93Block100Block182Stack3 := (recoveredBlock93Block100Block182Stack3) translateCoords: (recoveredBlock93Block100Block182Stack4).
            recoveredBlock93Block100Block182PC := 203.
        ].
        recoveredBlock93Block100Block182Step = 203 ifTrue: [
            recoveredBlock93Block100Block182Stack2 := (recoveredBlock93Block100Block182Stack2) ~= (recoveredBlock93Block100Block182Stack3).
            recoveredBlock93Block100Block182PC := 204.
        ].
        recoveredBlock93Block100Block182Step = 204 ifTrue: [
            (recoveredBlock93Block100Block182Stack2) ifTrue: [recoveredBlock93Block100Block182PC := 208] ifFalse: [recoveredBlock93Block100Block182PC := 212].
        ].
        recoveredBlock93Block100Block182Step = 208 ifTrue: [
            recoveredBlock93Block100Block182PC := 209.
        ].
        recoveredBlock93Block100Block182Step = 209 ifTrue: [
            recoveredBlock93Block100Block182Stack1 := self.
            recoveredBlock93Block100Block182PC := 210.
        ].
        recoveredBlock93Block100Block182Step = 210 ifTrue: [
            recoveredBlock93Block100Block182Stack1 := (recoveredBlock93Block100Block182Stack1) stsHoverHelpWindowHide.
            recoveredBlock93Block100Block182PC := 212.
        ].
        recoveredBlock93Block100Block182Step = 212 ifTrue: [
            recoveredBlock93Block100Block182Result := recoveredBlock93Block100Block182Stack1.
            recoveredBlock93Block100Block182Done := true.
        ].
    ].
    recoveredBlock93Block100Block182Result
].
            recoveredBlock93Block100PC := 213.
        ].
        recoveredBlock93Block100Step = 213 ifTrue: [
            (recoveredBlock93Block100Stack0) ifNotNil: (recoveredBlock93Block100Stack1).
            recoveredBlock93Block100PC := 215.
        ].
        recoveredBlock93Block100Step = 215 ifTrue: [
            recoveredBlock93Block100Stack0 := self.
            recoveredBlock93Block100PC := 216.
        ].
        recoveredBlock93Block100Step = 216 ifTrue: [
            recoveredBlock93Block100Stack1 := recoveredBlock93Block100Stack0.
            recoveredBlock93Block100PC := 217.
        ].
        recoveredBlock93Block100Step = 217 ifTrue: [
            recoveredBlock93Block100Stack2 := self.
            recoveredBlock93Block100PC := 218.
        ].
        recoveredBlock93Block100Step = 218 ifTrue: [
            (recoveredBlock93Block100Stack1) stsHoverHelpWidget: (recoveredBlock93Block100Stack2).
            recoveredBlock93Block100PC := 220.
        ].
        recoveredBlock93Block100Step = 220 ifTrue: [
            recoveredBlock93Block100Stack1 := self.
            recoveredBlock93Block100PC := 221.
        ].
        recoveredBlock93Block100Step = 221 ifTrue: [
            recoveredBlock93Block100Stack2 := recoveredBlock93Local6.
            recoveredBlock93Block100PC := 224.
        ].
        recoveredBlock93Block100Step = 224 ifTrue: [
            recoveredBlock93Block100Stack3 := recoveredBlock93Local5.
            recoveredBlock93Block100PC := 227.
        ].
        recoveredBlock93Block100Step = 227 ifTrue: [
            recoveredBlock93Block100Stack4 := recoveredBlock93Local1.
            recoveredBlock93Block100PC := 230.
        ].
        recoveredBlock93Block100Step = 230 ifTrue: [
            recoveredBlock93Block100Stack1 := (recoveredBlock93Block100Stack1) getHoverInfoFor: (recoveredBlock93Block100Stack2) position: (recoveredBlock93Block100Stack3) point: (recoveredBlock93Block100Stack4).
            recoveredBlock93Block100PC := 233.
        ].
        recoveredBlock93Block100Step = 233 ifTrue: [
            recoveredBlock93Block100Stack2 := self.
            recoveredBlock93Block100PC := 234.
        ].
        recoveredBlock93Block100Step = 234 ifTrue: [
            recoveredBlock93Block100Stack3 := recoveredBlock93Local4.
            recoveredBlock93Block100PC := 237.
        ].
        recoveredBlock93Block100Step = 237 ifTrue: [
            recoveredBlock93Block100Stack2 := (recoveredBlock93Block100Stack2) translateCoords: (recoveredBlock93Block100Stack3).
            recoveredBlock93Block100PC := 239.
        ].
        recoveredBlock93Block100Step = 239 ifTrue: [
            recoveredBlock93Block100Stack0 := (recoveredBlock93Block100Stack0) stsHoverHelpWindowShow: (recoveredBlock93Block100Stack1) at: (recoveredBlock93Block100Stack2).
            recoveredBlock93Block100PC := 241.
        ].
        recoveredBlock93Block100Step = 241 ifTrue: [
            recoveredBlock93Block100PC := 247.
        ].
        recoveredBlock93Block100Step = 244 ifTrue: [
            recoveredBlock93Block100Stack0 := self.
            recoveredBlock93Block100PC := 245.
        ].
        recoveredBlock93Block100Step = 245 ifTrue: [
            recoveredBlock93Block100Stack0 := (recoveredBlock93Block100Stack0) stsHoverHelpWindowHide.
            recoveredBlock93Block100PC := 247.
        ].
        recoveredBlock93Block100Step = 247 ifTrue: [
            recoveredBlock93Block100Result := recoveredBlock93Block100Stack0.
            recoveredBlock93Block100Done := true.
        ].
    ].
    recoveredBlock93Block100Result
].
            recoveredBlock93PC := 248.
        ].
        recoveredBlock93Step = 248 ifTrue: [
            recoveredBlock93Stack2 := ExError.
            recoveredBlock93PC := 250.
        ].
        recoveredBlock93Step = 250 ifTrue: [
            recoveredBlock93Stack3 := [:block2811506cArg1 | 
    | block2811506cValue0 block2811506cValue1 block2811506cValue2 block2811506cValue3 block2811506cValue4 block2811506cValue5 block2811506cValue6 |
    block2811506cValue0 := System.
    block2811506cValue1 := block2811506cArg1.
    block2811506cValue2 := (block2811506cValue1) argument.
    block2811506cValue3 := (block2811506cValue2) asString.
    block2811506cValue4 := ('Error in Hover Support: ') , (block2811506cValue3).
    (block2811506cValue0) logError: (block2811506cValue4).
    block2811506cValue5 := block2811506cArg1.
    block2811506cValue6 := (block2811506cValue5) exitWith: (nil).
    block2811506cValue6
].
            recoveredBlock93PC := 252.
        ].
        recoveredBlock93Step = 252 ifTrue: [
            recoveredBlock93PC := 274.
        ].
        recoveredBlock93Step = 274 ifTrue: [
            recoveredBlock93Stack1 := (recoveredBlock93Stack1) when: (recoveredBlock93Stack2) do: (recoveredBlock93Stack3).
            recoveredBlock93PC := 276.
        ].
        recoveredBlock93Step = 276 ifTrue: [
            recoveredBlock93Result := recoveredBlock93Stack1.
            recoveredBlock93Done := true.
        ].
    ].
    recoveredBlock93Result
].
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack4 := 'value:value:value:'.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            (recoveredStack1) addEventHandler: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

