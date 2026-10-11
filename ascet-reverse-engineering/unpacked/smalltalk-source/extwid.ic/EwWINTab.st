"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20002428; bytecode file offset 0x531f0"
!EwWINTab methodsFor: 'recovered'!
bevelMargin
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) height.
    recoveredValue1 := (recoveredValue0) // (5).
    ^recoveredValue1
! !

"extwid.ic method 0x20002efc; bytecode file offset 0x53da8"
!EwWINTab methodsFor: 'recovered'!
endOfRow
    | recoveredValue0 |
    recoveredValue0 := endOfRow.
    ^recoveredValue0
! !

"extwid.ic method 0x200040e8; bytecode file offset 0x54ecc"
!EwWINTab methodsFor: 'recovered'!
outlineMargin
    ^1
! !

"extwid.ic method 0x20004148; bytecode file offset 0x54f1c"
!EwWINTab methodsFor: 'recovered'!
defaultMargin
    ^3
! !

"extwid.ic method 0x20006af8; bytecode file offset 0x578dc"
!EwWINTab methodsFor: 'recovered'!
endOfRow: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    endOfRow := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20007ec8; bytecode file offset 0x58c94"
!EwWINTab methodsFor: 'recovered'!
initialize
    super initialize.
    endOfRow := false.
    ^self
! !

"extwid.ic method 0x200090c0; bytecode file offset 0x59e90"
!EwWINTab methodsFor: 'recovered'!
insetBox
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) origin.
    recoveredValue1 := (recoveredValue0) + (5).
    recoveredValue2 := (self) corner.
    recoveredValue3 := (recoveredValue2) - (4).
    recoveredValue4 := (recoveredValue1) corner: (recoveredValue3).
    ^recoveredValue4
! !

"extwid.ic method 0x2000d2e4; bytecode file offset 0x5e0b4"
!EwWINTab methodsFor: 'recovered'!
widthOfLabel: recoveredArg1 using: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) ewWidthUsing: (recoveredValue1).
    recoveredValue3 := (self) bevelMargin.
    recoveredValue4 := (2) * (recoveredValue3).
    recoveredValue5 := (recoveredValue2) + (recoveredValue4).
    recoveredValue6 := (self) outlineMargin.
    recoveredValue7 := (2) * (recoveredValue6).
    recoveredValue8 := (recoveredValue5) + (recoveredValue7).
    ^recoveredValue8
! !

"extwid.ic method 0x20016518; bytecode file offset 0x672f8"
!EwWINTab methodsFor: 'recovered'!
drawSelectedFocusUsing: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) drawable.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) gc.
    recoveredValue4 := (self) x.
    recoveredValue5 := (recoveredValue4) + (5).
    recoveredValue6 := (self) y.
    recoveredValue7 := (recoveredValue6) + (5).
    recoveredValue8 := (self) width.
    recoveredValue9 := (recoveredValue8) - (9).
    recoveredValue10 := (self) height.
    recoveredValue11 := (recoveredValue10) - (6).
    (recoveredValue1) drawRectangle: (recoveredValue3) x: (recoveredValue5) y: (recoveredValue7) width: (recoveredValue9) height: (recoveredValue11).
    ^self
! !

"extwid.ic method 0x200168a4; bytecode file offset 0x67688"
!EwWINTab methodsFor: 'recovered'!
clearTabOn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := (self) defaultMargin.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) drawable.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) gc.
    recoveredValue5 := (self) x.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue5) + (recoveredValue6).
    recoveredValue8 := (self) y.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue8) + (recoveredValue9).
    recoveredValue11 := (self) width.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue11) - (recoveredValue12).
    recoveredValue14 := (self) height.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (recoveredValue14) - (recoveredValue15).
    (recoveredValue2) fillRectangle: (recoveredValue4) x: (recoveredValue7) y: (recoveredValue10) width: (recoveredValue13) height: (recoveredValue16).
    ^self
! !

"extwid.ic method 0x20019314; bytecode file offset 0x6a0f8"
!EwWINTab methodsFor: 'recovered'!
drawRightOutlineUsing: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := (self) x.
    recoveredValue1 := (self) width.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    recoveredValue3 := (recoveredValue2) + (1).
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := (self) y.
    recoveredValue5 := (self) bevelMargin.
    recoveredValue6 := (recoveredValue4) + (recoveredValue5).
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := (self) y.
    recoveredValue8 := (self) height.
    recoveredValue9 := (recoveredValue7) + (recoveredValue8).
    recoveredValue10 := (recoveredValue9) + (-1).
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) drawable.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) gc.
    recoveredValue15 := recoveredLocal3.
    recoveredValue16 := recoveredLocal2.
    recoveredValue17 := recoveredLocal3.
    recoveredValue18 := recoveredLocal1.
    (recoveredValue12) drawLine: (recoveredValue14) x1: (recoveredValue15) y1: (recoveredValue16) x2: (recoveredValue17) y2: (recoveredValue18).
    ^self
! !

"extwid.ic method 0x200290d4; bytecode file offset 0x79ed0"
!EwWINTab methodsFor: 'recovered'!
drawShadingUsing: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 |
    recoveredValue0 := (self) bevelMargin.
    recoveredLocal5 := recoveredValue0.
    recoveredValue1 := (self) x.
    recoveredValue2 := (self) width.
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := (self) y.
    recoveredValue5 := (self) outlineMargin.
    recoveredValue6 := (recoveredValue4) + (recoveredValue5).
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := (self) y.
    recoveredValue8 := (self) height.
    recoveredValue9 := (recoveredValue7) + (recoveredValue8).
    recoveredValue10 := (self) outlineMargin.
    recoveredValue11 := (recoveredValue9) - (recoveredValue10).
    recoveredValue12 := (recoveredValue11) + (-1).
    recoveredLocal1 := recoveredValue12.
    recoveredValue13 := Array.
    recoveredValue14 := (recoveredValue13) new: (3).
    recoveredLocal4 := recoveredValue14.
    recoveredValue15 := recoveredLocal4.
    recoveredValue16 := recoveredValue15.
    recoveredValue17 := recoveredLocal3.
    recoveredValue18 := recoveredLocal5.
    recoveredValue19 := (recoveredValue17) - (recoveredValue18).
    recoveredValue20 := (recoveredValue19) + (1).
    recoveredValue21 := recoveredLocal2.
    recoveredValue22 := (recoveredValue20) @ (recoveredValue21).
    (recoveredValue16) at: (1) put: (recoveredValue22).
    recoveredValue23 := recoveredValue15.
    recoveredValue24 := recoveredLocal3.
    recoveredValue25 := (self) y.
    recoveredValue26 := recoveredLocal5.
    recoveredValue27 := (recoveredValue25) + (recoveredValue26).
    recoveredValue28 := (recoveredValue24) @ (recoveredValue27).
    (recoveredValue23) at: (2) put: (recoveredValue28).
    recoveredValue29 := recoveredLocal3.
    recoveredValue30 := recoveredLocal1.
    recoveredValue31 := (recoveredValue29) @ (recoveredValue30).
    (recoveredValue15) at: (3) put: (recoveredValue31).
    recoveredValue32 := recoveredArg1.
    recoveredValue33 := (recoveredValue32) drawable.
    recoveredValue34 := recoveredArg1.
    recoveredValue35 := (recoveredValue34) gc.
    recoveredValue36 := recoveredLocal4.
    recoveredValue37 := CoordModeOrigin.
    (recoveredValue33) drawLines: (recoveredValue35) points: (recoveredValue36) mode: (recoveredValue37).
    ^self
! !

"extwid.ic method 0x2002dde0; bytecode file offset 0x7ebdc"
!EwWINTab methodsFor: 'recovered'!
drawHighlightUsing: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 |
    recoveredValue0 := (self) bevelMargin.
    recoveredLocal7 := recoveredValue0.
    recoveredValue1 := (self) outlineMargin.
    recoveredLocal6 := recoveredValue1.
    recoveredValue2 := (self) x.
    recoveredValue3 := recoveredLocal6.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    recoveredLocal5 := recoveredValue4.
    recoveredValue5 := (self) x.
    recoveredValue6 := (self) width.
    recoveredValue7 := (recoveredValue5) + (recoveredValue6).
    recoveredValue8 := recoveredLocal7.
    recoveredValue9 := (recoveredValue7) - (recoveredValue8).
    recoveredLocal4 := recoveredValue9.
    recoveredValue10 := (self) y.
    recoveredValue11 := (self) height.
    recoveredValue12 := (recoveredValue10) + (recoveredValue11).
    recoveredValue13 := recoveredLocal6.
    recoveredValue14 := (recoveredValue12) - (recoveredValue13).
    recoveredLocal3 := recoveredValue14.
    recoveredValue15 := (self) y.
    recoveredValue16 := recoveredLocal6.
    recoveredValue17 := (recoveredValue15) + (recoveredValue16).
    recoveredLocal2 := recoveredValue17.
    recoveredValue18 := Array.
    recoveredValue19 := (recoveredValue18) new: (4).
    recoveredLocal1 := recoveredValue19.
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := recoveredValue20.
    recoveredValue22 := recoveredLocal5.
    recoveredValue23 := recoveredLocal3.
    recoveredValue24 := (recoveredValue22) @ (recoveredValue23).
    (recoveredValue21) at: (1) put: (recoveredValue24).
    recoveredValue25 := recoveredValue20.
    recoveredValue26 := recoveredLocal5.
    recoveredValue27 := (self) y.
    recoveredValue28 := recoveredLocal7.
    recoveredValue29 := (recoveredValue27) + (recoveredValue28).
    recoveredValue30 := (recoveredValue26) @ (recoveredValue29).
    (recoveredValue25) at: (2) put: (recoveredValue30).
    recoveredValue31 := recoveredValue20.
    recoveredValue32 := (self) x.
    recoveredValue33 := recoveredLocal7.
    recoveredValue34 := (recoveredValue32) + (recoveredValue33).
    recoveredValue35 := recoveredLocal2.
    recoveredValue36 := (recoveredValue34) @ (recoveredValue35).
    (recoveredValue31) at: (3) put: (recoveredValue36).
    recoveredValue37 := recoveredLocal4.
    recoveredValue38 := recoveredLocal2.
    recoveredValue39 := (recoveredValue37) @ (recoveredValue38).
    (recoveredValue20) at: (4) put: (recoveredValue39).
    recoveredValue40 := recoveredArg1.
    recoveredValue41 := (recoveredValue40) drawable.
    recoveredValue42 := recoveredArg1.
    recoveredValue43 := (recoveredValue42) gc.
    recoveredValue44 := recoveredLocal1.
    recoveredValue45 := CoordModeOrigin.
    (recoveredValue41) drawLines: (recoveredValue43) points: (recoveredValue44) mode: (recoveredValue45).
    ^self
! !

"extwid.ic method 0x2002e3dc; bytecode file offset 0x7f1dc"
!EwWINTab methodsFor: 'recovered'!
drawOutlineUsing: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) bevelMargin.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 5.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := 5.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawable.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) gc.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := CoordModeOrigin.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) drawLines: (recoveredStack1) points: (recoveredStack2) mode: (recoveredStack3).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) endOfRow.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 115].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) drawRightOutlineUsing: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20032b98; bytecode file offset 0x8399c"
!EwWINTab methodsFor: 'recovered'!
drawSelectedShadingUsing: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) bevelMargin.
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
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) outlineMargin.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) endOfRow.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := 6.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := 6.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawable.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := (recoveredStack2) gc.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack4 := CoordModeOrigin.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) drawLines: (recoveredStack2) points: (recoveredStack3) mode: (recoveredStack4).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) gc.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack6 := recoveredLocal5.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (recoveredStack6).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (-1).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) drawLine: (recoveredStack1) x1: (recoveredStack2) y1: (recoveredStack3) x2: (recoveredStack4) y2: (recoveredStack5).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20035c28; bytecode file offset 0x86a28"
!EwWINTab methodsFor: 'recovered'!
drawSelectedHighlightUsing: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 |
    recoveredValue0 := (self) bevelMargin.
    recoveredLocal7 := recoveredValue0.
    recoveredValue1 := (self) outlineMargin.
    recoveredLocal6 := recoveredValue1.
    recoveredValue2 := (self) x.
    recoveredValue3 := recoveredLocal6.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    recoveredLocal4 := recoveredValue4.
    recoveredValue5 := (self) x.
    recoveredValue6 := (self) width.
    recoveredValue7 := (recoveredValue5) + (recoveredValue6).
    recoveredValue8 := recoveredLocal7.
    recoveredValue9 := (recoveredValue7) - (recoveredValue8).
    recoveredLocal3 := recoveredValue9.
    recoveredValue10 := (self) y.
    recoveredValue11 := recoveredLocal6.
    recoveredValue12 := (recoveredValue10) + (recoveredValue11).
    recoveredLocal2 := recoveredValue12.
    recoveredValue13 := (self) y.
    recoveredValue14 := (self) height.
    recoveredValue15 := (recoveredValue13) + (recoveredValue14).
    recoveredLocal1 := recoveredValue15.
    recoveredValue16 := Array.
    recoveredValue17 := (recoveredValue16) new: (8).
    recoveredLocal5 := recoveredValue17.
    recoveredValue18 := recoveredLocal5.
    recoveredValue19 := recoveredValue18.
    recoveredValue20 := recoveredLocal4.
    recoveredValue21 := recoveredLocal1.
    recoveredValue22 := (recoveredValue20) @ (recoveredValue21).
    (recoveredValue19) at: (1) put: (recoveredValue22).
    recoveredValue23 := recoveredValue18.
    recoveredValue24 := recoveredLocal4.
    recoveredValue25 := (self) y.
    recoveredValue26 := recoveredLocal7.
    recoveredValue27 := (recoveredValue25) + (recoveredValue26).
    recoveredValue28 := (recoveredValue24) @ (recoveredValue27).
    (recoveredValue23) at: (2) put: (recoveredValue28).
    recoveredValue29 := recoveredValue18.
    recoveredValue30 := recoveredLocal4.
    recoveredValue31 := recoveredLocal7.
    recoveredValue32 := (recoveredValue30) + (recoveredValue31).
    recoveredValue33 := (recoveredValue32) + (-1).
    recoveredValue34 := recoveredLocal2.
    recoveredValue35 := (recoveredValue33) @ (recoveredValue34).
    (recoveredValue29) at: (3) put: (recoveredValue35).
    recoveredValue36 := recoveredValue18.
    recoveredValue37 := recoveredLocal3.
    recoveredValue38 := recoveredLocal2.
    recoveredValue39 := (recoveredValue37) @ (recoveredValue38).
    (recoveredValue36) at: (4) put: (recoveredValue39).
    recoveredValue40 := recoveredValue18.
    recoveredValue41 := recoveredLocal3.
    recoveredValue42 := (recoveredValue41) + (-1).
    recoveredValue43 := recoveredLocal2.
    recoveredValue44 := (recoveredValue43) + (1).
    recoveredValue45 := (recoveredValue42) @ (recoveredValue44).
    (recoveredValue40) at: (5) put: (recoveredValue45).
    recoveredValue46 := recoveredValue18.
    recoveredValue47 := recoveredLocal4.
    recoveredValue48 := recoveredLocal7.
    recoveredValue49 := (recoveredValue47) + (recoveredValue48).
    recoveredValue50 := recoveredLocal2.
    recoveredValue51 := (recoveredValue50) + (1).
    recoveredValue52 := (recoveredValue49) @ (recoveredValue51).
    (recoveredValue46) at: (6) put: (recoveredValue52).
    recoveredValue53 := recoveredValue18.
    recoveredValue54 := recoveredLocal4.
    recoveredValue55 := (recoveredValue54) + (1).
    recoveredValue56 := (self) y.
    recoveredValue57 := recoveredLocal7.
    recoveredValue58 := (recoveredValue56) + (recoveredValue57).
    recoveredValue59 := (recoveredValue58) + (1).
    recoveredValue60 := (recoveredValue55) @ (recoveredValue59).
    (recoveredValue53) at: (7) put: (recoveredValue60).
    recoveredValue61 := recoveredLocal4.
    recoveredValue62 := (recoveredValue61) + (1).
    recoveredValue63 := recoveredLocal1.
    recoveredValue64 := (recoveredValue63) + (1).
    recoveredValue65 := (recoveredValue62) @ (recoveredValue64).
    (recoveredValue18) at: (8) put: (recoveredValue65).
    recoveredValue66 := recoveredArg1.
    recoveredValue67 := (recoveredValue66) drawable.
    recoveredValue68 := recoveredValue67.
    recoveredValue69 := recoveredArg1.
    recoveredValue70 := (recoveredValue69) gc.
    recoveredValue71 := recoveredLocal5.
    recoveredValue72 := CoordModeOrigin.
    (recoveredValue68) drawLines: (recoveredValue70) points: (recoveredValue71) mode: (recoveredValue72).
    recoveredValue73 := recoveredArg1.
    recoveredValue74 := (recoveredValue73) gc.
    recoveredValue75 := recoveredLocal4.
    recoveredValue76 := (recoveredValue75) + (1).
    recoveredValue77 := (self) y.
    recoveredValue78 := recoveredLocal7.
    recoveredValue79 := (recoveredValue77) + (recoveredValue78).
    recoveredValue80 := recoveredLocal4.
    recoveredValue81 := recoveredLocal7.
    recoveredValue82 := (recoveredValue80) + (recoveredValue81).
    recoveredValue83 := (recoveredValue82) + (-1).
    recoveredValue84 := recoveredLocal2.
    recoveredValue85 := (recoveredValue84) + (1).
    (recoveredValue67) drawLine: (recoveredValue74) x1: (recoveredValue76) y1: (recoveredValue79) x2: (recoveredValue83) y2: (recoveredValue85).
    ^self
! !

"extwid.ic method 0x20035d28; bytecode file offset 0x86b44"
!EwWINTab methodsFor: 'recovered'!
drawBackgroundUsing: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) gc.
    recoveredValue2 := GCForeground.
    recoveredValue3 := CgGCValues.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := recoveredValue4.
    recoveredLocal5 := recoveredValue5.
    (recoveredValue1) getGCValues: (recoveredValue2) valuesReturn: (recoveredValue4).
    recoveredValue6 := recoveredLocal5.
    recoveredValue7 := (recoveredValue6) foreground.
    recoveredLocal6 := recoveredValue7.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) gc.
    recoveredValue10 := GCForeground.
    recoveredValue11 := CgGCValues.
    recoveredValue12 := (recoveredValue11) new.
    recoveredValue13 := (self) colorPixel.
    recoveredValue14 := (recoveredValue12) foreground: (recoveredValue13).
    (recoveredValue9) changeGC: (recoveredValue10) values: (recoveredValue14).
    recoveredValue15 := (self) bevelMargin.
    recoveredLocal4 := recoveredValue15.
    recoveredValue16 := (self) x.
    recoveredValue17 := (self) width.
    recoveredValue18 := (recoveredValue16) + (recoveredValue17).
    recoveredLocal3 := recoveredValue18.
    recoveredValue19 := (self) y.
    recoveredValue20 := (self) height.
    recoveredValue21 := (recoveredValue19) + (recoveredValue20).
    recoveredValue22 := (recoveredValue21) + (2).
    recoveredLocal2 := recoveredValue22.
    recoveredValue23 := Array.
    recoveredValue24 := (recoveredValue23) new: (7).
    recoveredLocal1 := recoveredValue24.
    recoveredValue25 := recoveredLocal1.
    recoveredValue26 := recoveredValue25.
    recoveredValue27 := (self) x.
    recoveredValue28 := recoveredLocal2.
    recoveredValue29 := (recoveredValue27) @ (recoveredValue28).
    (recoveredValue26) at: (1) put: (recoveredValue29).
    recoveredValue30 := recoveredValue25.
    recoveredValue31 := (self) x.
    recoveredValue32 := (self) y.
    recoveredValue33 := recoveredLocal4.
    recoveredValue34 := (recoveredValue32) + (recoveredValue33).
    recoveredValue35 := (recoveredValue31) @ (recoveredValue34).
    (recoveredValue30) at: (2) put: (recoveredValue35).
    recoveredValue36 := recoveredValue25.
    recoveredValue37 := (self) x.
    recoveredValue38 := recoveredLocal4.
    recoveredValue39 := (recoveredValue37) + (recoveredValue38).
    recoveredValue40 := (self) y.
    recoveredValue41 := (recoveredValue39) @ (recoveredValue40).
    (recoveredValue36) at: (3) put: (recoveredValue41).
    recoveredValue42 := recoveredValue25.
    recoveredValue43 := recoveredLocal3.
    recoveredValue44 := recoveredLocal4.
    recoveredValue45 := (recoveredValue43) - (recoveredValue44).
    recoveredValue46 := (recoveredValue45) + (1).
    recoveredValue47 := (self) y.
    recoveredValue48 := (recoveredValue46) @ (recoveredValue47).
    (recoveredValue42) at: (4) put: (recoveredValue48).
    recoveredValue49 := recoveredValue25.
    recoveredValue50 := recoveredLocal3.
    recoveredValue51 := (self) y.
    recoveredValue52 := recoveredLocal4.
    recoveredValue53 := (recoveredValue51) + (recoveredValue52).
    recoveredValue54 := (recoveredValue53) + (-1).
    recoveredValue55 := (recoveredValue50) @ (recoveredValue54).
    (recoveredValue49) at: (5) put: (recoveredValue55).
    recoveredValue56 := recoveredValue25.
    recoveredValue57 := recoveredLocal3.
    recoveredValue58 := recoveredLocal2.
    recoveredValue59 := (recoveredValue57) @ (recoveredValue58).
    (recoveredValue56) at: (6) put: (recoveredValue59).
    recoveredValue60 := (self) x.
    recoveredValue61 := recoveredLocal2.
    recoveredValue62 := (recoveredValue60) @ (recoveredValue61).
    (recoveredValue25) at: (7) put: (recoveredValue62).
    recoveredValue63 := recoveredArg1.
    recoveredValue64 := (recoveredValue63) drawable.
    recoveredValue65 := recoveredArg1.
    recoveredValue66 := (recoveredValue65) gc.
    recoveredValue67 := recoveredLocal1.
    recoveredValue68 := Convex.
    recoveredValue69 := CoordModeOrigin.
    (recoveredValue64) fillPolygon: (recoveredValue66) points: (recoveredValue67) shape: (recoveredValue68) mode: (recoveredValue69).
    recoveredValue70 := recoveredArg1.
    recoveredValue71 := (recoveredValue70) gc.
    recoveredValue72 := GCForeground.
    recoveredValue73 := CgGCValues.
    recoveredValue74 := (recoveredValue73) new.
    recoveredValue75 := recoveredLocal6.
    recoveredValue76 := (recoveredValue74) foreground: (recoveredValue75).
    (recoveredValue71) changeGC: (recoveredValue72) values: (recoveredValue76).
    ^self
! !

