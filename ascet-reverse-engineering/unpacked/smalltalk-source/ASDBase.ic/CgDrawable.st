"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20040fcc; bytecode file offset 0x93d880"
!CgDrawable methodsFor: 'recovered'!
isValidPixmap
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := handle.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200765a4; bytecode file offset 0x9757c8"
!CgDrawable methodsFor: 'recovered'!
wbIsCgDrawable
    ^true
! !

"ASDBase.ic method 0x2007d404; bytecode file offset 0x97c330"
!CgDrawable methodsFor: 'recovered'!
isPostscript
    ^false
! !

"ASDBase.ic method 0x2015ea8c; bytecode file offset 0xa5b34c"
!CgDrawable methodsFor: 'recovered'!
abtIsWidgetMapped
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'CAB'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) widget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMapped.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201f82c4; bytecode file offset 0xaf4b88"
!CgDrawable methodsFor: 'recovered'!
drawStringRotated: recoveredArg1 x: recoveredArg2 y: recoveredArg3 string: recoveredArg4 angle: recoveredArg5
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := server.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) beginRequest.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) prepareForDrawable: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := recoveredArg5.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) drawStringRotated: (recoveredStack2) y: (recoveredStack3) string: (recoveredStack4) angle: (recoveredStack5).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := server.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) endRequest.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20208b3c; bytecode file offset 0xb0540c"
!CgDrawable methodsFor: 'recovered'!
createPixmap: recoveredArg1 width: recoveredArg2 height: recoveredArg3 depth: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := server.
    (recoveredValue0) beginRequest.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) screen.
    recoveredValue3 := (recoveredValue1) screen: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) display.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := recoveredArg4.
    recoveredValue9 := (recoveredValue5) compatibleWith: (self) width: (recoveredValue6) height: (recoveredValue7) depth: (recoveredValue8).
    (recoveredValue4) reportIfError: (recoveredValue9).
    recoveredValue10 := server.
    (recoveredValue10) endRequest.
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

"ASDBase.ic method 0x202e41f4; bytecode file offset 0xbe0ac8"
!CgDrawable methodsFor: 'recovered'!
drawLinesWithoutRequest: recoveredArg1 points: recoveredArg2 mode: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := CoordModeOrigin.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := CoordModePrevious.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) prepareForDrawable: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) drawLines: (recoveredStack2) mode: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) display.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := BadValue.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) reportError: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ebcd0; bytecode file offset 0xce85a8"
!CgDrawable methodsFor: 'recovered'!
drawCurve: recoveredArg1 from: recoveredArg2 to: recoveredArg3 towards: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Local1 recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 recoveredBlock16Value4 recoveredBlock16Value5 recoveredBlock16Value6 recoveredBlock16Value7 recoveredBlock16Value8 recoveredBlock16Value9 recoveredBlock16Value10 recoveredBlock16Value11 recoveredBlock16Value12 recoveredBlock16Value13 recoveredBlock16Value14 recoveredBlock16Value15 recoveredBlock16Value16 recoveredBlock16Value17 recoveredBlock16Value18 recoveredBlock16Value19 recoveredBlock16Value20 recoveredBlock16Value21 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := (1) - (recoveredBlock16Value0).
    recoveredBlock16Local1 := recoveredBlock16Value1.
    recoveredBlock16Value2 := recoveredLocal1.
    recoveredBlock16Value3 := recoveredBlock16Local1.
    recoveredBlock16Value4 := (recoveredBlock16Value3) squared.
    recoveredBlock16Value5 := recoveredArg2.
    recoveredBlock16Value6 := (recoveredBlock16Value4) * (recoveredBlock16Value5).
    recoveredBlock16Value7 := recoveredBlock16Arg1.
    recoveredBlock16Value8 := (2) * (recoveredBlock16Value7).
    recoveredBlock16Value9 := recoveredBlock16Local1.
    recoveredBlock16Value10 := (recoveredBlock16Value8) * (recoveredBlock16Value9).
    recoveredBlock16Value11 := recoveredArg4.
    recoveredBlock16Value12 := (recoveredBlock16Value10) * (recoveredBlock16Value11).
    recoveredBlock16Value13 := (recoveredBlock16Value6) + (recoveredBlock16Value12).
    recoveredBlock16Value14 := recoveredBlock16Arg1.
    recoveredBlock16Value15 := (recoveredBlock16Value14) squared.
    recoveredBlock16Value16 := recoveredArg3.
    recoveredBlock16Value17 := (recoveredBlock16Value15) * (recoveredBlock16Value16).
    recoveredBlock16Value18 := (recoveredBlock16Value13) + (recoveredBlock16Value17).
    recoveredBlock16Value19 := (recoveredBlock16Value18) rounded.
    recoveredBlock16Value20 := (recoveredBlock16Value2) copyWith: (recoveredBlock16Value19).
    recoveredBlock16Value21 := recoveredBlock16Value20.
    recoveredLocal1 := recoveredBlock16Value21.
    recoveredBlock16Value20
].
    (0) to: (1) by: (#[184 30 133 235 81 184 174 63]) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue3) copyWith: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := CoordModeOrigin.
    (self) drawLines: (recoveredValue6) points: (recoveredValue7) mode: (recoveredValue8).
    ^self
! !

