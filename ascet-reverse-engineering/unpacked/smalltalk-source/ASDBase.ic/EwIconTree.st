"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20099f48; bytecode file offset 0x997194"
!EwIconTree methodsFor: 'recovered'!
indexOfItem: recoveredArg1 equalMethod: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) hierarchy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) indexOf: (recoveredValue1) equalMethod: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009a1f8; bytecode file offset 0x997194"
!EwIconTree methodsFor: 'recovered'!
indexOfItem: recoveredArg1 equalMethodSimple: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) hierarchy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) indexOf: (recoveredValue1) equalMethodSimple: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ca384; bytecode file offset 0x9c7020"
!EwIconTree methodsFor: 'recovered'!
indexOfItem: recoveredArg1 equalMethod: recoveredArg2 matchCase: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) hierarchy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) indexOf: (recoveredValue1) equalMethod: (recoveredValue2) matchCase: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201207fc; bytecode file offset 0xa1d0c4"
!EwIconTree methodsFor: 'recovered'!
hoverIndentNode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super hoverIndentNode: (recoveredValue0).
    recoveredValue2 := (self) hierarchyPolicy.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) depth.
    recoveredValue5 := (recoveredValue2) widthAt: (recoveredValue4).
    recoveredValue6 := (recoveredValue1) + (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2016c8e4; bytecode file offset 0xa691a0"
!EwIconTree methodsFor: 'recovered'!
findFirst: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDeferringRefresh.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) findFirstVisibleItem: (recoveredStack1).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025f7e8; bytecode file offset 0xb5c0b4"
!EwIconTree methodsFor: 'recovered'!
collapseAll
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEditingInProgress.
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
            (recoveredStack0) endEdit.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Local1 recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
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
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) indexOfItem: (recoveredBlock12Stack1).
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Local1 := recoveredBlock12Stack0.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredBlock12Stack0 := nil.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack1 := self.
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Local1.
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) isExpandedPos: (recoveredBlock12Stack2).
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 28] ifFalse: [recoveredBlock12PC := 34].
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Local1.
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredBlock12Stack2 := false.
            recoveredBlock12PC := 32.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) collapsePos: (recoveredBlock12Stack1) notify: (recoveredBlock12Stack2).
            recoveredBlock12PC := 34.
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack0.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) itemsDo: (recoveredStack1).
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

"ASDBase.ic method 0x20294548; bytecode file offset 0xb90e10"
!EwIconTree methodsFor: 'recovered'!
determineExpandedPositions
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemCount.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isExpandedPos: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 16] ifFalse: [recoveredLocal1 := nil. recoveredPC := 40]] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035cf9c; bytecode file offset 0xc5986c"
!EwIconTree methodsFor: 'recovered'!
expandAll
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentIsScrolledWindow.
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
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 |
    recoveredBlock20Value0 := recoveredLocal1.
    recoveredBlock20Value1 := [
    | recoveredBlock20Block29Local1 recoveredBlock20Block29Stack0 recoveredBlock20Block29Stack1 recoveredBlock20Block29Stack2 recoveredBlock20Block29Stack3 recoveredBlock20Block29Stack4 recoveredBlock20Block29PC recoveredBlock20Block29Step recoveredBlock20Block29Done recoveredBlock20Block29Result |
    recoveredBlock20Block29Stack0 := self.
    recoveredBlock20Block29PC := 36.
    recoveredBlock20Block29Done := false.
    [recoveredBlock20Block29Done not] whileTrue: [
        recoveredBlock20Block29Step := recoveredBlock20Block29PC.
        recoveredBlock20Block29Step = 36 ifTrue: [
            recoveredBlock20Block29Stack1 := 1.
            recoveredBlock20Block29PC := 38.
        ].
        recoveredBlock20Block29Step = 38 ifTrue: [
            recoveredBlock20Block29Local1 := recoveredBlock20Block29Stack1.
            recoveredBlock20Block29PC := 39.
        ].
        recoveredBlock20Block29Step = 39 ifTrue: [
            recoveredBlock20Block29PC := 50.
        ].
        recoveredBlock20Block29Step = 42 ifTrue: [
            recoveredBlock20Block29Stack1 := self.
            recoveredBlock20Block29PC := 43.
        ].
        recoveredBlock20Block29Step = 43 ifTrue: [
            recoveredBlock20Block29Stack2 := recoveredBlock20Block29Local1.
            recoveredBlock20Block29PC := 44.
        ].
        recoveredBlock20Block29Step = 44 ifTrue: [
            recoveredBlock20Block29Stack3 := false.
            recoveredBlock20Block29PC := 45.
        ].
        recoveredBlock20Block29Step = 45 ifTrue: [
            (recoveredBlock20Block29Stack1) expandPos: (recoveredBlock20Block29Stack2) notify: (recoveredBlock20Block29Stack3).
            recoveredBlock20Block29PC := 47.
        ].
        recoveredBlock20Block29Step = 47 ifTrue: [
            recoveredBlock20Block29Stack1 := recoveredBlock20Block29Local1.
            recoveredBlock20Block29PC := 48.
        ].
        recoveredBlock20Block29Step = 48 ifTrue: [
            recoveredBlock20Block29Stack1 := (recoveredBlock20Block29Stack1) + (1).
            recoveredBlock20Block29PC := 49.
        ].
        recoveredBlock20Block29Step = 49 ifTrue: [
            recoveredBlock20Block29Local1 := recoveredBlock20Block29Stack1.
            recoveredBlock20Block29PC := 50.
        ].
        recoveredBlock20Block29Step = 50 ifTrue: [
            recoveredBlock20Block29Stack1 := recoveredBlock20Block29Local1.
            recoveredBlock20Block29PC := 51.
        ].
        recoveredBlock20Block29Step = 51 ifTrue: [
            recoveredBlock20Block29Stack2 := self.
            recoveredBlock20Block29PC := 52.
        ].
        recoveredBlock20Block29Step = 52 ifTrue: [
            recoveredBlock20Block29Stack2 := (recoveredBlock20Block29Stack2) itemCount.
            recoveredBlock20Block29PC := 54.
        ].
        recoveredBlock20Block29Step = 54 ifTrue: [
            recoveredBlock20Block29Stack1 := (recoveredBlock20Block29Stack1) <= (recoveredBlock20Block29Stack2).
            recoveredBlock20Block29PC := 55.
        ].
        recoveredBlock20Block29Step = 55 ifTrue: [
            (recoveredBlock20Block29Stack1) ifTrue: [recoveredBlock20Block29PC := 42] ifFalse: [recoveredBlock20Block29PC := 57].
        ].
        recoveredBlock20Block29Step = 57 ifTrue: [
            recoveredBlock20Block29Stack1 := nil.
            recoveredBlock20Block29PC := 58.
        ].
        recoveredBlock20Block29Step = 58 ifTrue: [
            recoveredBlock20Block29Result := recoveredBlock20Block29Stack1.
            recoveredBlock20Block29Done := true.
        ].
    ].
    recoveredBlock20Block29Result
].
    recoveredBlock20Value2 := (recoveredBlock20Value0) deferRedraw: (recoveredBlock20Value1).
    recoveredBlock20Value2
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) showBusyCursorWhile: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203aa4ec; bytecode file offset 0xca6dc8"
!EwIconTree methodsFor: 'recovered'!
expandFirstLevel
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentIsScrolledWindow.
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
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock17Local1 recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 |
    recoveredBlock17Value0 := (self) items.
    recoveredBlock17Value1 := [:recoveredBlock17Block25Arg1 | 
    | recoveredBlock17Block25Local1 recoveredBlock17Block25Stack0 recoveredBlock17Block25Stack1 recoveredBlock17Block25Stack2 recoveredBlock17Block25Stack3 recoveredBlock17Block25Stack4 recoveredBlock17Block25Stack5 recoveredBlock17Block25PC recoveredBlock17Block25Step recoveredBlock17Block25Done recoveredBlock17Block25Result |
    recoveredBlock17Block25Stack0 := self.
    recoveredBlock17Block25PC := 32.
    recoveredBlock17Block25Done := false.
    [recoveredBlock17Block25Done not] whileTrue: [
        recoveredBlock17Block25Step := recoveredBlock17Block25PC.
        recoveredBlock17Block25Step = 32 ifTrue: [
            recoveredBlock17Block25Stack1 := nil.
            recoveredBlock17Block25PC := 33.
        ].
        recoveredBlock17Block25Step = 33 ifTrue: [
            recoveredBlock17Block25Stack2 := self.
            recoveredBlock17Block25PC := 34.
        ].
        recoveredBlock17Block25Step = 34 ifTrue: [
            recoveredBlock17Block25Stack3 := recoveredBlock17Block25Arg1.
            recoveredBlock17Block25PC := 35.
        ].
        recoveredBlock17Block25Step = 35 ifTrue: [
            recoveredBlock17Block25Stack2 := (recoveredBlock17Block25Stack2) getMatchPos: (recoveredBlock17Block25Stack3).
            recoveredBlock17Block25PC := 36.
        ].
        recoveredBlock17Block25Step = 36 ifTrue: [
            recoveredBlock17Block25Stack3 := 1.
            recoveredBlock17Block25PC := 38.
        ].
        recoveredBlock17Block25Step = 38 ifTrue: [
            recoveredBlock17Block25Stack4 := [
    0
].
            recoveredBlock17Block25PC := 40.
        ].
        recoveredBlock17Block25Step = 40 ifTrue: [
            recoveredBlock17Block25PC := 47.
        ].
        recoveredBlock17Block25Step = 47 ifTrue: [
            recoveredBlock17Block25Stack2 := (recoveredBlock17Block25Stack2) at: (recoveredBlock17Block25Stack3) ifAbsent: (recoveredBlock17Block25Stack4).
            recoveredBlock17Block25PC := 49.
        ].
        recoveredBlock17Block25Step = 49 ifTrue: [
            recoveredBlock17Block25Stack3 := recoveredBlock17Block25Stack2.
            recoveredBlock17Block25PC := 50.
        ].
        recoveredBlock17Block25Step = 50 ifTrue: [
            recoveredBlock17Block25Local1 := recoveredBlock17Block25Stack3.
            recoveredBlock17Block25PC := 51.
        ].
        recoveredBlock17Block25Step = 51 ifTrue: [
            recoveredBlock17Block25Stack3 := 0.
            recoveredBlock17Block25PC := 53.
        ].
        recoveredBlock17Block25Step = 53 ifTrue: [
            recoveredBlock17Block25Stack2 := (recoveredBlock17Block25Stack2) = (recoveredBlock17Block25Stack3).
            recoveredBlock17Block25PC := 54.
        ].
        recoveredBlock17Block25Step = 54 ifTrue: [
            (recoveredBlock17Block25Stack2) ifTrue: [recoveredBlock17Block25PC := 64] ifFalse: [recoveredBlock17Block25PC := 58].
        ].
        recoveredBlock17Block25Step = 58 ifTrue: [
            recoveredBlock17Block25PC := 59.
        ].
        recoveredBlock17Block25Step = 59 ifTrue: [
            recoveredBlock17Block25Stack1 := self.
            recoveredBlock17Block25PC := 60.
        ].
        recoveredBlock17Block25Step = 60 ifTrue: [
            recoveredBlock17Block25Stack2 := recoveredBlock17Block25Local1.
            recoveredBlock17Block25PC := 61.
        ].
        recoveredBlock17Block25Step = 61 ifTrue: [
            recoveredBlock17Block25Stack3 := false.
            recoveredBlock17Block25PC := 62.
        ].
        recoveredBlock17Block25Step = 62 ifTrue: [
            recoveredBlock17Block25Stack1 := (recoveredBlock17Block25Stack1) expandPos: (recoveredBlock17Block25Stack2) notify: (recoveredBlock17Block25Stack3).
            recoveredBlock17Block25PC := 64.
        ].
        recoveredBlock17Block25Step = 64 ifTrue: [
            recoveredBlock17Block25Result := recoveredBlock17Block25Stack1.
            recoveredBlock17Block25Done := true.
        ].
    ].
    recoveredBlock17Block25Result
].
    (recoveredBlock17Value0) do: (recoveredBlock17Value1).
    recoveredBlock17Value2 := (self) makeItemVisible: (1) forceFullyVisible: (true).
    recoveredBlock17Value2
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) deferRedraw: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2043c40c; bytecode file offset 0xd38cec"
!EwIconTree methodsFor: 'recovered'!
collapseAllUnselected
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEditingInProgress.
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
            (recoveredStack0) endEdit.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItemIndexes.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
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
            recoveredStack0 := (recoveredStack0) selectedItemIndexes.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) collapseAll.
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
            recoveredStack0 := (recoveredStack0) hierarchy.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) expandedIndexesAt: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Local1 recoveredBlock49Stack0 recoveredBlock49Stack1 recoveredBlock49Stack2 recoveredBlock49Stack3 recoveredBlock49Stack4 recoveredBlock49PC recoveredBlock49Step recoveredBlock49Done recoveredBlock49Result |
    recoveredBlock49Stack0 := self.
    recoveredBlock49PC := 56.
    recoveredBlock49Done := false.
    [recoveredBlock49Done not] whileTrue: [
        recoveredBlock49Step := recoveredBlock49PC.
        recoveredBlock49Step = 56 ifTrue: [
            recoveredBlock49Stack1 := nil.
            recoveredBlock49PC := 57.
        ].
        recoveredBlock49Step = 57 ifTrue: [
            recoveredBlock49Stack2 := self.
            recoveredBlock49PC := 58.
        ].
        recoveredBlock49Step = 58 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) hierarchy.
            recoveredBlock49PC := 60.
        ].
        recoveredBlock49Step = 60 ifTrue: [
            recoveredBlock49Stack3 := recoveredBlock49Arg1.
            recoveredBlock49PC := 61.
        ].
        recoveredBlock49Step = 61 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) expandedIndexesAt: (recoveredBlock49Stack3).
            recoveredBlock49PC := 63.
        ].
        recoveredBlock49Step = 63 ifTrue: [
            recoveredBlock49Stack3 := recoveredBlock49Stack2.
            recoveredBlock49PC := 64.
        ].
        recoveredBlock49Step = 64 ifTrue: [
            recoveredBlock49Local1 := recoveredBlock49Stack3.
            recoveredBlock49PC := 65.
        ].
        recoveredBlock49Step = 65 ifTrue: [
            (recoveredBlock49Stack2 == nil) ifTrue: [recoveredBlock49PC := 103] ifFalse: [recoveredBlock49PC := 68].
        ].
        recoveredBlock49Step = 68 ifTrue: [
            recoveredBlock49PC := 69.
        ].
        recoveredBlock49Step = 69 ifTrue: [
            recoveredBlock49Stack1 := nil.
            recoveredBlock49PC := 70.
        ].
        recoveredBlock49Step = 70 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Local1.
            recoveredBlock49PC := 71.
        ].
        recoveredBlock49Step = 71 ifTrue: [
            recoveredBlock49Stack3 := recoveredLocal2.
            recoveredBlock49PC := 74.
        ].
        recoveredBlock49Step = 74 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) includes: (recoveredBlock49Stack3).
            recoveredBlock49PC := 76.
        ].
        recoveredBlock49Step = 76 ifTrue: [
            (recoveredBlock49Stack2) ifTrue: [recoveredBlock49PC := 103] ifFalse: [recoveredBlock49PC := 80].
        ].
        recoveredBlock49Step = 80 ifTrue: [
            recoveredBlock49PC := 81.
        ].
        recoveredBlock49Step = 81 ifTrue: [
            recoveredBlock49Stack1 := self.
            recoveredBlock49PC := 82.
        ].
        recoveredBlock49Step = 82 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Arg1.
            recoveredBlock49PC := 83.
        ].
        recoveredBlock49Step = 83 ifTrue: [
            recoveredBlock49Stack3 := true.
            recoveredBlock49PC := 84.
        ].
        recoveredBlock49Step = 84 ifTrue: [
            (recoveredBlock49Stack1) collapsePos: (recoveredBlock49Stack2) notify: (recoveredBlock49Stack3).
            recoveredBlock49PC := 86.
        ].
        recoveredBlock49Step = 86 ifTrue: [
            recoveredBlock49Stack1 := nil.
            recoveredBlock49PC := 87.
        ].
        recoveredBlock49Step = 87 ifTrue: [
            recoveredBlock49Stack2 := self.
            recoveredBlock49PC := 88.
        ].
        recoveredBlock49Step = 88 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) selectedItemIndexes.
            recoveredBlock49PC := 89.
        ].
        recoveredBlock49Step = 89 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) notEmpty.
            recoveredBlock49PC := 90.
        ].
        recoveredBlock49Step = 90 ifTrue: [
            (recoveredBlock49Stack2) ifTrue: [recoveredBlock49PC := 94] ifFalse: [recoveredBlock49PC := 103].
        ].
        recoveredBlock49Step = 94 ifTrue: [
            recoveredBlock49PC := 95.
        ].
        recoveredBlock49Step = 95 ifTrue: [
            recoveredBlock49Stack1 := self.
            recoveredBlock49PC := 96.
        ].
        recoveredBlock49Step = 96 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) selectedItemIndexes.
            recoveredBlock49PC := 97.
        ].
        recoveredBlock49Step = 97 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) first.
            recoveredBlock49PC := 99.
        ].
        recoveredBlock49Step = 99 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Stack1.
            recoveredBlock49PC := 100.
        ].
        recoveredBlock49Step = 100 ifTrue: [
            recoveredLocal2 := recoveredBlock49Stack2.
            recoveredBlock49PC := 103.
        ].
        recoveredBlock49Step = 103 ifTrue: [
            recoveredBlock49Result := recoveredBlock49Stack1.
            recoveredBlock49Done := true.
        ].
    ].
    recoveredBlock49Result
].
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x204b177c; bytecode file offset 0xdae05c"
!EwIconTree methodsFor: 'recovered'!
expandPos: recoveredArg1 maxChildrenNumber: recoveredArg2 levels: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getItemPos: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) getHasChildrenFor: (recoveredStack1) position: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 141].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) getChildrenFor: (recoveredStack1) position: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 137] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) expandPos: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := [:recoveredBlock71Arg1 :recoveredBlock71Arg2 | 
    | recoveredBlock71Local1 recoveredBlock71Stack0 recoveredBlock71Stack1 recoveredBlock71Stack2 recoveredBlock71Stack3 recoveredBlock71PC recoveredBlock71Step recoveredBlock71Done recoveredBlock71Result |
    recoveredBlock71Stack0 := self.
    recoveredBlock71PC := 78.
    recoveredBlock71Done := false.
    [recoveredBlock71Done not] whileTrue: [
        recoveredBlock71Step := recoveredBlock71PC.
        recoveredBlock71Step = 78 ifTrue: [
            recoveredBlock71Stack1 := recoveredArg2.
            recoveredBlock71PC := 81.
        ].
        recoveredBlock71Step = 81 ifTrue: [
            (recoveredBlock71Stack1 == nil) ifTrue: [recoveredBlock71PC := 96] ifFalse: [recoveredBlock71PC := 84].
        ].
        recoveredBlock71Step = 84 ifTrue: [
            recoveredBlock71Stack1 := recoveredBlock71Arg2.
            recoveredBlock71PC := 87.
        ].
        recoveredBlock71Step = 87 ifTrue: [
            recoveredBlock71Stack2 := recoveredArg2.
            recoveredBlock71PC := 90.
        ].
        recoveredBlock71Step = 90 ifTrue: [
            recoveredBlock71Stack1 := (recoveredBlock71Stack1) > (recoveredBlock71Stack2).
            recoveredBlock71PC := 91.
        ].
        recoveredBlock71Step = 91 ifTrue: [
            (recoveredBlock71Stack1) ifTrue: [recoveredBlock71PC := 94] ifFalse: [recoveredBlock71PC := 96].
        ].
        recoveredBlock71Step = 94 ifTrue: [
            recoveredBlock71Stack1 := nil.
            recoveredBlock71PC := 95.
        ].
        recoveredBlock71Step = 95 ifTrue: [
            ^recoveredBlock71Stack1
        ].
        recoveredBlock71Step = 96 ifTrue: [
            recoveredBlock71Stack1 := recoveredBlock71Arg1.
            recoveredBlock71PC := 99.
        ].
        recoveredBlock71Step = 99 ifTrue: [
            recoveredBlock71Stack0 := (recoveredBlock71Stack0) getMatchPos: (recoveredBlock71Stack1).
            recoveredBlock71PC := 101.
        ].
        recoveredBlock71Step = 101 ifTrue: [
            recoveredBlock71Stack1 := 1.
            recoveredBlock71PC := 103.
        ].
        recoveredBlock71Step = 103 ifTrue: [
            recoveredBlock71Stack2 := [].
            recoveredBlock71PC := 105.
        ].
        recoveredBlock71Step = 105 ifTrue: [
            recoveredBlock71Stack0 := (recoveredBlock71Stack0) at: (recoveredBlock71Stack1) ifAbsent: (recoveredBlock71Stack2).
            recoveredBlock71PC := 107.
        ].
        recoveredBlock71Step = 107 ifTrue: [
            recoveredBlock71Stack1 := recoveredBlock71Stack0.
            recoveredBlock71PC := 108.
        ].
        recoveredBlock71Step = 108 ifTrue: [
            recoveredBlock71Local1 := recoveredBlock71Stack1.
            recoveredBlock71PC := 111.
        ].
        recoveredBlock71Step = 111 ifTrue: [
            recoveredBlock71Stack1 := [
    | recoveredBlock71Block111Value0 recoveredBlock71Block111Value1 recoveredBlock71Block111Value2 recoveredBlock71Block111Value3 recoveredBlock71Block111Value4 |
    recoveredBlock71Block111Value0 := recoveredBlock71Local1.
    recoveredBlock71Block111Value1 := recoveredArg2.
    recoveredBlock71Block111Value2 := recoveredArg3.
    recoveredBlock71Block111Value3 := (recoveredBlock71Block111Value2) + (-1).
    recoveredBlock71Block111Value4 := (self) expandPos: (recoveredBlock71Block111Value0) maxChildrenNumber: (recoveredBlock71Block111Value1) levels: (recoveredBlock71Block111Value3).
    recoveredBlock71Block111Value4
].
            recoveredBlock71PC := 132.
        ].
        recoveredBlock71Step = 132 ifTrue: [
            recoveredBlock71Stack0 := (recoveredBlock71Stack0) notNil: (recoveredBlock71Stack1).
            recoveredBlock71PC := 134.
        ].
        recoveredBlock71Step = 134 ifTrue: [
            recoveredBlock71Result := recoveredBlock71Stack0.
            recoveredBlock71Done := true.
        ].
    ].
    recoveredBlock71Result
].
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

