"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x200003fc; bytecode file offset 0x5132c"
!EwTableHeadingListNode methodsFor: 'recovered'!
areAnyCellsSelected
    | recoveredValue0 |
    recoveredValue0 := (self) areItemCellsSelected.
    ^recoveredValue0
! !

"extwid.ic method 0x20000b88; bytecode file offset 0x52154"
!EwTableHeadingListNode methodsFor: 'recovered'!
visualStyle
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := (recoveredValue0) headingVisualStyle.
    ^recoveredValue1
! !

"extwid.ic method 0x20000de8; bytecode file offset 0x52154"
!EwTableHeadingListNode methodsFor: 'recovered'!
areAnyCellsUnselected
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := (recoveredValue0) unselectedColumnExists.
    ^recoveredValue1
! !

"extwid.ic method 0x20000ed8; bytecode file offset 0x52154"
!EwTableHeadingListNode methodsFor: 'recovered'!
rowSeparatorHeight
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := (recoveredValue0) headingSeparatorThickness.
    ^recoveredValue1
! !

"extwid.ic method 0x200013f4; bytecode file offset 0x52228"
!EwTableHeadingListNode methodsFor: 'recovered'!
isItemSelectedInColumn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) selected.
    ^recoveredValue1
! !

"extwid.ic method 0x20001454; bytecode file offset 0x52228"
!EwTableHeadingListNode methodsFor: 'recovered'!
leftClipForColumn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) leftClip.
    ^recoveredValue1
! !

"extwid.ic method 0x20001460; bytecode file offset 0x52228"
!EwTableHeadingListNode methodsFor: 'recovered'!
horizontalAlignmentFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) horizontalHeadingAlignment.
    ^recoveredValue1
! !

"extwid.ic method 0x20004300; bytecode file offset 0x5512c"
!EwTableHeadingListNode methodsFor: 'recovered'!
isHeadingNode
    ^true
! !

"extwid.ic method 0x200050e8; bytecode file offset 0x56094"
!EwTableHeadingListNode methodsFor: 'recovered'!
drawHorizontalSeparatorUsing: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) drawHorizontalHeadingSeparatorUsing: (recoveredValue1).
    ^self
! !

"extwid.ic method 0x2000b9ac; bytecode file offset 0x5c77c"
!EwTableHeadingListNode methodsFor: 'recovered'!
areItemCellsSelected
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := itemCellsSelectedFlag.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) widget.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectedColumnExists.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) itemCellsSelectedFlag: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := itemCellsSelectedFlag.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x2000f730; bytecode file offset 0x60514"
!EwTableHeadingListNode methodsFor: 'recovered'!
drawUnselectedForColumn: recoveredArg1 using: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isItemSelectedInColumn: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) drawBackgroundFor: (recoveredStack1) column: (recoveredStack2) using: (recoveredStack3) selected: (recoveredStack4).
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

"extwid.ic method 0x2000f770; bytecode file offset 0x60554"
!EwTableHeadingListNode methodsFor: 'recovered'!
drawSelectedForColumn: recoveredArg1 using: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isItemSelectedInColumn: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) drawBackgroundFor: (recoveredStack1) column: (recoveredStack2) using: (recoveredStack3) selected: (recoveredStack4).
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

"extwid.ic method 0x200167f0; bytecode file offset 0x675e4"
!EwTableHeadingListNode methodsFor: 'recovered'!
headingHeight
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal1 := 0.
    recoveredValue0 := (self) cells.
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 recoveredBlock10Value5 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := (recoveredBlock10Value1) extent.
    recoveredBlock10Value3 := (recoveredBlock10Value2) y.
    recoveredBlock10Value4 := (recoveredBlock10Value0) max: (recoveredBlock10Value3).
    recoveredBlock10Value5 := recoveredBlock10Value4.
    recoveredLocal1 := recoveredBlock10Value5.
    recoveredBlock10Value4
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"extwid.ic method 0x200186dc; bytecode file offset 0x694e0"
!EwTableHeadingListNode methodsFor: 'recovered'!
etchShadingForColumn: recoveredArg1 using: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) shouldEtchHeading.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
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
            recoveredStack0 := (recoveredStack0) isItemSelectedInColumn: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) shouldEtchHeadingLeft.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) etchTopLeftUsing: (recoveredStack1) left: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) shouldEtchHeadingRight.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) etchRightBottomUsing: (recoveredStack1) right: (recoveredStack2).
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

"extwid.ic method 0x20018794; bytecode file offset 0x69574"
!EwTableHeadingListNode methodsFor: 'recovered'!
etchHighlightForColumn: recoveredArg1 using: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) shouldEtchHeading.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
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
            recoveredStack0 := (recoveredStack0) isItemSelectedInColumn: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) shouldEtchHeadingLeft.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) etchTopLeftUsing: (recoveredStack1) left: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) shouldEtchHeadingRight.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) etchRightBottomUsing: (recoveredStack1) right: (recoveredStack2).
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

"extwid.ic method 0x2002c2bc; bytecode file offset 0x7d09c"
!EwTableHeadingListNode methodsFor: 'recovered'!
drawSelectedItemUsing: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) height.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) rowSeparatorHeight.
    recoveredValue4 := (recoveredValue2) - (recoveredValue3).
    recoveredLocal3 := recoveredValue4.
    recoveredValue5 := recoveredLocal3.
    recoveredValue6 := (self) totalEmphasis.
    recoveredValue7 := (recoveredValue6) // (2).
    recoveredValue8 := (recoveredValue5) - (recoveredValue7).
    recoveredLocal2 := recoveredValue8.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredLocal3.
    (recoveredValue9) height: (recoveredValue10).
    recoveredValue11 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 |
    recoveredBlock40Value0 := recoveredBlock40Arg1.
    recoveredBlock40Value1 := recoveredArg1.
    recoveredBlock40Value2 := (self) drawSelectedForColumn: (recoveredBlock40Value0) using: (recoveredBlock40Value1).
    recoveredBlock40Value2
].
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := recoveredArg2.
    (self) exposedColumnsDo: (recoveredValue11) using: (recoveredValue12) clip: (false) damaged: (recoveredValue13).
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := recoveredLocal2.
    (recoveredValue14) height: (recoveredValue15).
    recoveredValue16 := [:recoveredBlock72Arg1 | 
    | recoveredBlock72Value0 recoveredBlock72Value1 recoveredBlock72Value2 |
    recoveredBlock72Value0 := recoveredBlock72Arg1.
    recoveredBlock72Value1 := recoveredArg1.
    recoveredBlock72Value2 := (self) drawSelectedValueForColumn: (recoveredBlock72Value0) using: (recoveredBlock72Value1).
    recoveredBlock72Value2
].
    recoveredValue17 := recoveredArg1.
    recoveredValue18 := recoveredArg2.
    (self) exposedColumnsDo: (recoveredValue16) using: (recoveredValue17) clip: (true) damaged: (recoveredValue18).
    recoveredValue19 := recoveredArg1.
    recoveredValue20 := recoveredLocal1.
    (recoveredValue19) height: (recoveredValue20).
    ^self
! !

"extwid.ic method 0x2002c370; bytecode file offset 0x7d150"
!EwTableHeadingListNode methodsFor: 'recovered'!
drawUnselectedItemUsing: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) height.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := recoveredLocal3.
    recoveredValue3 := (self) rowSeparatorHeight.
    recoveredValue4 := (recoveredValue2) - (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (self) totalEmphasis.
    recoveredValue7 := (recoveredValue6) // (2).
    recoveredValue8 := (recoveredValue5) - (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredLocal2.
    (recoveredValue9) height: (recoveredValue10).
    recoveredValue11 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 |
    recoveredBlock40Value0 := recoveredBlock40Arg1.
    recoveredBlock40Value1 := recoveredArg1.
    recoveredBlock40Value2 := (self) drawUnselectedForColumn: (recoveredBlock40Value0) using: (recoveredBlock40Value1).
    recoveredBlock40Value2
].
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := recoveredArg2.
    (self) exposedColumnsDo: (recoveredValue11) using: (recoveredValue12) clip: (false) damaged: (recoveredValue13).
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := recoveredLocal1.
    (recoveredValue14) height: (recoveredValue15).
    recoveredValue16 := [:recoveredBlock72Arg1 | 
    | recoveredBlock72Value0 recoveredBlock72Value1 recoveredBlock72Value2 |
    recoveredBlock72Value0 := recoveredBlock72Arg1.
    recoveredBlock72Value1 := recoveredArg1.
    recoveredBlock72Value2 := (self) drawUnselectedValueForColumn: (recoveredBlock72Value0) using: (recoveredBlock72Value1).
    recoveredBlock72Value2
].
    recoveredValue17 := recoveredArg1.
    recoveredValue18 := recoveredArg2.
    (self) exposedColumnsDo: (recoveredValue16) using: (recoveredValue17) clip: (true) damaged: (recoveredValue18).
    recoveredValue19 := recoveredArg1.
    recoveredValue20 := recoveredLocal3.
    (recoveredValue19) height: (recoveredValue20).
    ^self
! !

"extwid.ic method 0x200374a4; bytecode file offset 0x882bc"
!EwTableHeadingListNode methodsFor: 'recovered'!
calculateHeadingSize
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) rc.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) initializeRC.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) rc.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHeadingFontDifferent.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) headingFontList.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) fontStruct: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHeadingHeightSpecified.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) cells.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := [:recoveredBlock59Arg1 | 
    | recoveredBlock59Local1 recoveredBlock59Local2 recoveredBlock59Value0 recoveredBlock59Value1 recoveredBlock59Value2 recoveredBlock59Value3 recoveredBlock59Value4 recoveredBlock59Value5 recoveredBlock59Value6 recoveredBlock59Value7 recoveredBlock59Value8 recoveredBlock59Value9 recoveredBlock59Value10 |
    recoveredBlock59Value0 := (self) widget.
    recoveredBlock59Value1 := (recoveredBlock59Value0) headingHeight.
    recoveredBlock59Local2 := recoveredBlock59Value1.
    recoveredBlock59Value2 := recoveredBlock59Arg1.
    recoveredBlock59Value3 := (recoveredBlock59Value2) value.
    recoveredBlock59Value4 := recoveredLocal1.
    recoveredBlock59Value5 := (recoveredBlock59Value3) ewWidthUsing: (recoveredBlock59Value4).
    recoveredBlock59Local1 := recoveredBlock59Value5.
    recoveredBlock59Value6 := recoveredBlock59Arg1.
    recoveredBlock59Value7 := recoveredBlock59Local1.
    recoveredBlock59Value8 := recoveredBlock59Local2.
    recoveredBlock59Value9 := (recoveredBlock59Value7) @ (recoveredBlock59Value8).
    recoveredBlock59Value10 := (recoveredBlock59Value6) extent: (recoveredBlock59Value9).
    recoveredBlock59Value10
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) headingHeight.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) totalEmphasis.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := (recoveredStack2) widget.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := (recoveredStack2) headingSeparatorThickness.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredPC := 184.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) cells.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := [:recoveredBlock111Arg1 | 
    | recoveredBlock111Local1 recoveredBlock111Local2 recoveredBlock111Value0 recoveredBlock111Value1 recoveredBlock111Value2 recoveredBlock111Value3 recoveredBlock111Value4 recoveredBlock111Value5 recoveredBlock111Value6 recoveredBlock111Value7 recoveredBlock111Value8 recoveredBlock111Value9 recoveredBlock111Value10 recoveredBlock111Value11 recoveredBlock111Value12 recoveredBlock111Value13 recoveredBlock111Value14 recoveredBlock111Value15 |
    recoveredBlock111Value0 := recoveredBlock111Arg1.
    recoveredBlock111Value1 := (recoveredBlock111Value0) value.
    recoveredBlock111Value2 := recoveredLocal1.
    recoveredBlock111Value3 := (recoveredBlock111Value1) ewHeightUsing: (recoveredBlock111Value2).
    recoveredBlock111Local2 := recoveredBlock111Value3.
    recoveredBlock111Value4 := recoveredLocal2.
    recoveredBlock111Value5 := recoveredBlock111Local2.
    recoveredBlock111Value6 := (recoveredBlock111Value4) max: (recoveredBlock111Value5).
    recoveredLocal2 := recoveredBlock111Value6.
    recoveredBlock111Value7 := recoveredBlock111Arg1.
    recoveredBlock111Value8 := (recoveredBlock111Value7) value.
    recoveredBlock111Value9 := recoveredLocal1.
    recoveredBlock111Value10 := (recoveredBlock111Value8) ewWidthUsing: (recoveredBlock111Value9).
    recoveredBlock111Local1 := recoveredBlock111Value10.
    recoveredBlock111Value11 := recoveredBlock111Arg1.
    recoveredBlock111Value12 := recoveredBlock111Local1.
    recoveredBlock111Value13 := recoveredBlock111Local2.
    recoveredBlock111Value14 := (recoveredBlock111Value12) @ (recoveredBlock111Value13).
    recoveredBlock111Value15 := (recoveredBlock111Value11) extent: (recoveredBlock111Value14).
    recoveredBlock111Value15
].
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 164].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredPC := 182.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := (recoveredStack2) totalEmphasis.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := (recoveredStack2) widget.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := (recoveredStack2) headingSeparatorThickness.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 207] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHeadingFontDifferent.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 196] ifFalse: [recoveredPC := 207].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontList.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            (recoveredStack0) fontStruct: (recoveredStack1).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

