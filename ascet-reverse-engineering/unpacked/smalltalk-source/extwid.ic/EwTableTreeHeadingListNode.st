"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x2000036c; bytecode file offset 0x5132c"
!EwTableTreeHeadingListNode methodsFor: 'recovered'!
areAnyCellsSelected
    | recoveredValue0 |
    recoveredValue0 := (self) areItemCellsSelected.
    ^recoveredValue0
! !

"extwid.ic method 0x20000c38; bytecode file offset 0x52154"
!EwTableTreeHeadingListNode methodsFor: 'recovered'!
areAnyCellsUnselected
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := (recoveredValue0) unselectedColumnExists.
    ^recoveredValue1
! !

"extwid.ic method 0x20000e78; bytecode file offset 0x52154"
!EwTableTreeHeadingListNode methodsFor: 'recovered'!
rowSeparatorHeight
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := (recoveredValue0) headingSeparatorThickness.
    ^recoveredValue1
! !

"extwid.ic method 0x20000f98; bytecode file offset 0x52154"
!EwTableTreeHeadingListNode methodsFor: 'recovered'!
visualStyle
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := (recoveredValue0) headingVisualStyle.
    ^recoveredValue1
! !

"extwid.ic method 0x200013c4; bytecode file offset 0x52228"
!EwTableTreeHeadingListNode methodsFor: 'recovered'!
isItemSelectedInColumn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) selected.
    ^recoveredValue1
! !

"extwid.ic method 0x200013d0; bytecode file offset 0x52228"
!EwTableTreeHeadingListNode methodsFor: 'recovered'!
leftClipForColumn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) leftClip.
    ^recoveredValue1
! !

"extwid.ic method 0x2000140c; bytecode file offset 0x52228"
!EwTableTreeHeadingListNode methodsFor: 'recovered'!
horizontalAlignmentFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) horizontalHeadingAlignment.
    ^recoveredValue1
! !

"extwid.ic method 0x200042d8; bytecode file offset 0x5512c"
!EwTableTreeHeadingListNode methodsFor: 'recovered'!
isHeadingNode
    ^true
! !

"extwid.ic method 0x2000448c; bytecode file offset 0x55268"
!EwTableTreeHeadingListNode methodsFor: 'recovered'!
hasChildren
    ^false
! !

"extwid.ic method 0x200052b8; bytecode file offset 0x56094"
!EwTableTreeHeadingListNode methodsFor: 'recovered'!
drawHorizontalSeparatorUsing: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) drawHorizontalHeadingSeparatorUsing: (recoveredValue1).
    ^self
! !

"extwid.ic method 0x2000b998; bytecode file offset 0x5c77c"
!EwTableTreeHeadingListNode methodsFor: 'recovered'!
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

"extwid.ic method 0x2000f744; bytecode file offset 0x60514"
!EwTableTreeHeadingListNode methodsFor: 'recovered'!
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

"extwid.ic method 0x2000f784; bytecode file offset 0x60554"
!EwTableTreeHeadingListNode methodsFor: 'recovered'!
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

"extwid.ic method 0x2001680c; bytecode file offset 0x675e4"
!EwTableTreeHeadingListNode methodsFor: 'recovered'!
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

"extwid.ic method 0x200186b8; bytecode file offset 0x694e0"
!EwTableTreeHeadingListNode methodsFor: 'recovered'!
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

"extwid.ic method 0x2001874c; bytecode file offset 0x69574"
!EwTableTreeHeadingListNode methodsFor: 'recovered'!
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

"extwid.ic method 0x2002c298; bytecode file offset 0x7d09c"
!EwTableTreeHeadingListNode methodsFor: 'recovered'!
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

"extwid.ic method 0x2002c34c; bytecode file offset 0x7d150"
!EwTableTreeHeadingListNode methodsFor: 'recovered'!
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

"extwid.ic method 0x20035b14; bytecode file offset 0x86928"
!EwTableTreeHeadingListNode methodsFor: 'recovered'!
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
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHeadingFontDifferent.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) headingFontList.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) fontStruct: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHeadingHeightSpecified.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) cells.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Local1 recoveredBlock41Local2 recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 recoveredBlock41Value3 recoveredBlock41Value4 recoveredBlock41Value5 recoveredBlock41Value6 recoveredBlock41Value7 recoveredBlock41Value8 recoveredBlock41Value9 recoveredBlock41Value10 |
    recoveredBlock41Value0 := (self) widget.
    recoveredBlock41Value1 := (recoveredBlock41Value0) headingHeight.
    recoveredBlock41Local2 := recoveredBlock41Value1.
    recoveredBlock41Value2 := recoveredBlock41Arg1.
    recoveredBlock41Value3 := (recoveredBlock41Value2) value.
    recoveredBlock41Value4 := recoveredLocal1.
    recoveredBlock41Value5 := (recoveredBlock41Value3) ewWidthUsing: (recoveredBlock41Value4).
    recoveredBlock41Local1 := recoveredBlock41Value5.
    recoveredBlock41Value6 := recoveredBlock41Arg1.
    recoveredBlock41Value7 := recoveredBlock41Local1.
    recoveredBlock41Value8 := recoveredBlock41Local2.
    recoveredBlock41Value9 := (recoveredBlock41Value7) @ (recoveredBlock41Value8).
    recoveredBlock41Value10 := (recoveredBlock41Value6) extent: (recoveredBlock41Value9).
    recoveredBlock41Value10
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) headingHeight.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) totalEmphasis.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) widget.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) headingSeparatorThickness.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredPC := 166.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) cells.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := [:recoveredBlock93Arg1 | 
    | recoveredBlock93Local1 recoveredBlock93Local2 recoveredBlock93Value0 recoveredBlock93Value1 recoveredBlock93Value2 recoveredBlock93Value3 recoveredBlock93Value4 recoveredBlock93Value5 recoveredBlock93Value6 recoveredBlock93Value7 recoveredBlock93Value8 recoveredBlock93Value9 recoveredBlock93Value10 recoveredBlock93Value11 recoveredBlock93Value12 recoveredBlock93Value13 recoveredBlock93Value14 recoveredBlock93Value15 |
    recoveredBlock93Value0 := recoveredBlock93Arg1.
    recoveredBlock93Value1 := (recoveredBlock93Value0) value.
    recoveredBlock93Value2 := recoveredLocal1.
    recoveredBlock93Value3 := (recoveredBlock93Value1) ewHeightUsing: (recoveredBlock93Value2).
    recoveredBlock93Local2 := recoveredBlock93Value3.
    recoveredBlock93Value4 := recoveredLocal2.
    recoveredBlock93Value5 := recoveredBlock93Local2.
    recoveredBlock93Value6 := (recoveredBlock93Value4) max: (recoveredBlock93Value5).
    recoveredLocal2 := recoveredBlock93Value6.
    recoveredBlock93Value7 := recoveredBlock93Arg1.
    recoveredBlock93Value8 := (recoveredBlock93Value7) value.
    recoveredBlock93Value9 := recoveredLocal1.
    recoveredBlock93Value10 := (recoveredBlock93Value8) ewWidthUsing: (recoveredBlock93Value9).
    recoveredBlock93Local1 := recoveredBlock93Value10.
    recoveredBlock93Value11 := recoveredBlock93Arg1.
    recoveredBlock93Value12 := recoveredBlock93Local1.
    recoveredBlock93Value13 := recoveredBlock93Local2.
    recoveredBlock93Value14 := (recoveredBlock93Value12) @ (recoveredBlock93Value13).
    recoveredBlock93Value15 := (recoveredBlock93Value11) extent: (recoveredBlock93Value14).
    recoveredBlock93Value15
].
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredPC := 164.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := (recoveredStack2) totalEmphasis.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := (recoveredStack2) widget.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := (recoveredStack2) headingSeparatorThickness.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHeadingFontDifferent.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 183].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontList.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack0) fontStruct: (recoveredStack1).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

