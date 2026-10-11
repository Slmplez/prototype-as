"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200018b4; bytecode file offset 0x7daa8"
!CgJPEGFrameHeader methodsFor: 'recovered'!
samplePrecision
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (4).
    ^recoveredValue0
! !

"winsys.ic method 0x2000198c; bytecode file offset 0x7db50"
!CgJPEGFrameHeader methodsFor: 'recovered'!
numberOfImageComponents
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (9).
    ^recoveredValue0
! !

"winsys.ic method 0x20003008; bytecode file offset 0x7f220"
!CgJPEGFrameHeader methodsFor: 'recovered'!
componentParameters
    | recoveredValue0 |
    recoveredValue0 := componentParameters.
    ^recoveredValue0
! !

"winsys.ic method 0x20003140; bytecode file offset 0x7f418"
!CgJPEGFrameHeader methodsFor: 'recovered'!
maxHFactor
    | recoveredValue0 |
    recoveredValue0 := maxHFactor.
    ^recoveredValue0
! !

"winsys.ic method 0x20003330; bytecode file offset 0x7f5b8"
!CgJPEGFrameHeader methodsFor: 'recovered'!
maxVFactor
    | recoveredValue0 |
    recoveredValue0 := maxVFactor.
    ^recoveredValue0
! !

"winsys.ic method 0x2000658c; bytecode file offset 0x8278c"
!CgJPEGFrameHeader methodsFor: 'recovered'!
samplePrecision: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (4) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x20006670; bytecode file offset 0x82834"
!CgJPEGFrameHeader methodsFor: 'recovered'!
numberOfImageComponents: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (9) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x200075e4; bytecode file offset 0x838d4"
!CgJPEGFrameHeader methodsFor: 'recovered'!
componentParameters: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    componentParameters := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007784; bytecode file offset 0x83a6c"
!CgJPEGFrameHeader methodsFor: 'recovered'!
maxHFactor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    maxHFactor := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007920; bytecode file offset 0x83bb0"
!CgJPEGFrameHeader methodsFor: 'recovered'!
maxVFactor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    maxVFactor := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000b1ec; bytecode file offset 0x873ac"
!CgJPEGFrameHeader methodsFor: 'recovered'!
roundUp: recoveredArg1 toMultipleOf: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    recoveredValue3 := (recoveredValue2) + (-1).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue5) \\ (recoveredValue6).
    recoveredValue8 := (recoveredValue4) - (recoveredValue7).
    ^recoveredValue8
! !

"winsys.ic method 0x2000c2d0; bytecode file offset 0x88494"
!CgJPEGFrameHeader methodsFor: 'recovered'!
numberOfLines
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) uint8At: (5).
    recoveredValue1 := (recoveredValue0) * (256).
    recoveredValue2 := (self) uint8At: (6).
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    ^recoveredValue3
! !

"winsys.ic method 0x2000c2f0; bytecode file offset 0x884b4"
!CgJPEGFrameHeader methodsFor: 'recovered'!
samplesPerLine
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) uint8At: (7).
    recoveredValue1 := (recoveredValue0) * (256).
    recoveredValue2 := (self) uint8At: (8).
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    ^recoveredValue3
! !

"winsys.ic method 0x20014f7c; bytecode file offset 0x91140"
!CgJPEGFrameHeader methodsFor: 'recovered'!
numberOfLines: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) // (256).
    (self) uint8At: (5) put: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) \\ (256).
    (self) uint8At: (6) put: (recoveredValue3).
    ^self
! !

"winsys.ic method 0x20014fa4; bytecode file offset 0x91168"
!CgJPEGFrameHeader methodsFor: 'recovered'!
samplesPerLine: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) // (256).
    (self) uint8At: (7) put: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) \\ (256).
    (self) uint8At: (8) put: (recoveredValue3).
    ^self
! !

"winsys.ic method 0x2002802c; bytecode file offset 0xa4210"
!CgJPEGFrameHeader methodsFor: 'recovered'!
verify
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) segmentMarker.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := SOF0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) >= (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := SOF3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) <= (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := SOF9.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) >= (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := SOF11.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) <= (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := SOF5.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) >= (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := SOF7.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) <= (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := SOF13.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) >= (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 71].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := SOF15.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x20036afc; bytecode file offset 0xb2d08"
!CgJPEGFrameHeader methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 |
    recoveredValue0 := (self) componentParameters.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) name.
    (recoveredValue2) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) nextPut: (${).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) segmentMarker.
    recoveredValue8 := (recoveredValue7) printStringRadix: (16).
    (recoveredValue6) nextPutAll: (recoveredValue8).
    recoveredValue9 := recoveredValue1.
    (recoveredValue9) nextPutAll: (' ').
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) segmentLength.
    recoveredValue12 := (recoveredValue11) printStringRadix: (16).
    (recoveredValue10) nextPutAll: (recoveredValue12).
    recoveredValue13 := recoveredValue1.
    recoveredValue14 := LineDelimiter.
    (recoveredValue13) nextPutAll: (recoveredValue14).
    recoveredValue15 := MxCGa4.
    (recoveredValue1) nextPutAll: (recoveredValue15).
    recoveredValue16 := (self) samplePrecision.
    recoveredValue17 := recoveredArg1.
    (recoveredValue16) printOn: (recoveredValue17).
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := recoveredValue18.
    recoveredValue20 := LineDelimiter.
    (recoveredValue19) nextPutAll: (recoveredValue20).
    (recoveredValue18) nextPutAll: ('X: ').
    recoveredValue21 := (self) samplesPerLine.
    recoveredValue22 := recoveredArg1.
    (recoveredValue21) printOn: (recoveredValue22).
    recoveredValue23 := recoveredArg1.
    recoveredValue24 := recoveredValue23.
    recoveredValue25 := LineDelimiter.
    (recoveredValue24) nextPutAll: (recoveredValue25).
    (recoveredValue23) nextPutAll: ('Y: ').
    recoveredValue26 := (self) numberOfLines.
    recoveredValue27 := recoveredArg1.
    (recoveredValue26) printOn: (recoveredValue27).
    recoveredValue28 := recoveredArg1.
    recoveredValue29 := recoveredValue28.
    recoveredValue30 := LineDelimiter.
    (recoveredValue29) nextPutAll: (recoveredValue30).
    recoveredValue31 := recoveredValue28.
    recoveredValue32 := MxCGa5.
    (recoveredValue31) nextPutAll: (recoveredValue32).
    recoveredValue33 := LineDelimiter.
    (recoveredValue28) nextPutAll: (recoveredValue33).
    recoveredValue34 := recoveredLocal1.
    recoveredValue35 := [:recoveredBlock126Arg1 | 
    | recoveredBlock126Value0 recoveredBlock126Value1 recoveredBlock126Value2 recoveredBlock126Value3 recoveredBlock126Value4 |
    recoveredBlock126Value0 := recoveredBlock126Arg1.
    recoveredBlock126Value1 := recoveredArg1.
    (recoveredBlock126Value0) printOn: (recoveredBlock126Value1).
    recoveredBlock126Value2 := recoveredArg1.
    recoveredBlock126Value3 := LineDelimiter.
    recoveredBlock126Value4 := (recoveredBlock126Value2) nextPutAll: (recoveredBlock126Value3).
    recoveredBlock126Value4
].
    (recoveredValue34) associationsDo: (recoveredValue35).
    recoveredValue36 := recoveredArg1.
    (recoveredValue36) nextPut: ($}).
    ^self
! !

"winsys.ic method 0x200441c4; bytecode file offset 0xc03c0"
!CgJPEGFrameHeader methodsFor: 'recovered'!
initializeComponentParameters
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) numberOfImageComponents.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal13 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal14 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 197.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal7 := recoveredStack2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) uint8At: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) uint8At: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) uint8At: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) \\ (recoveredStack3).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) uint8At: (recoveredStack3).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal12 := recoveredStack2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal11 := recoveredStack2.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredLocal6 := recoveredStack3.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredLocal5 := recoveredStack3.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 38] ifFalse: [recoveredPC := 228]] ifFalse: [recoveredPC := 201].
        ].
        recoveredStep = 201 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredLocal7 := recoveredStack3.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 224] ifFalse: [recoveredPC := 218].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := (recoveredStack0) samplesPerLine.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := (recoveredStack0) numberOfLines.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := #(8 16 24 32).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := [:recoveredBlock249Arg1 | 
    | recoveredBlock249Local1 recoveredBlock249Local2 recoveredBlock249Local3 recoveredBlock249Local4 recoveredBlock249Local5 recoveredBlock249Local6 recoveredBlock249Value0 recoveredBlock249Value1 recoveredBlock249Value2 recoveredBlock249Value3 recoveredBlock249Value4 recoveredBlock249Value5 recoveredBlock249Value6 recoveredBlock249Value7 recoveredBlock249Value8 recoveredBlock249Value9 recoveredBlock249Value10 recoveredBlock249Value11 recoveredBlock249Value12 recoveredBlock249Value13 recoveredBlock249Value14 recoveredBlock249Value15 recoveredBlock249Value16 recoveredBlock249Value17 recoveredBlock249Value18 recoveredBlock249Value19 recoveredBlock249Value20 recoveredBlock249Value21 recoveredBlock249Value22 recoveredBlock249Value23 recoveredBlock249Value24 recoveredBlock249Value25 recoveredBlock249Value26 recoveredBlock249Value27 recoveredBlock249Value28 recoveredBlock249Value29 recoveredBlock249Value30 recoveredBlock249Value31 recoveredBlock249Value32 recoveredBlock249Value33 recoveredBlock249Value34 |
    recoveredBlock249Value0 := recoveredBlock249Arg1.
    recoveredBlock249Value1 := (recoveredBlock249Value0) at: (2).
    recoveredBlock249Local6 := recoveredBlock249Value1.
    recoveredBlock249Value2 := recoveredBlock249Arg1.
    recoveredBlock249Value3 := (recoveredBlock249Value2) at: (3).
    recoveredBlock249Local5 := recoveredBlock249Value3.
    recoveredBlock249Value4 := recoveredLocal10.
    recoveredBlock249Value5 := recoveredBlock249Local6.
    recoveredBlock249Value6 := (recoveredBlock249Value4) * (recoveredBlock249Value5).
    recoveredBlock249Value7 := recoveredLocal12.
    recoveredBlock249Value8 := (recoveredBlock249Value6) + (recoveredBlock249Value7).
    recoveredBlock249Value9 := (recoveredBlock249Value8) + (-1).
    recoveredBlock249Value10 := recoveredLocal12.
    recoveredBlock249Value11 := (recoveredBlock249Value9) // (recoveredBlock249Value10).
    recoveredBlock249Local4 := recoveredBlock249Value11.
    recoveredBlock249Value12 := recoveredLocal9.
    recoveredBlock249Value13 := recoveredBlock249Local5.
    recoveredBlock249Value14 := (recoveredBlock249Value12) * (recoveredBlock249Value13).
    recoveredBlock249Value15 := recoveredLocal11.
    recoveredBlock249Value16 := (recoveredBlock249Value14) + (recoveredBlock249Value15).
    recoveredBlock249Value17 := (recoveredBlock249Value16) + (-1).
    recoveredBlock249Value18 := recoveredLocal11.
    recoveredBlock249Value19 := (recoveredBlock249Value17) // (recoveredBlock249Value18).
    recoveredBlock249Local3 := recoveredBlock249Value19.
    recoveredBlock249Value20 := recoveredBlock249Local4.
    recoveredBlock249Value21 := recoveredLocal8.
    recoveredBlock249Value22 := recoveredBlock249Local6.
    recoveredBlock249Value23 := (recoveredBlock249Value21) at: (recoveredBlock249Value22).
    recoveredBlock249Value24 := (self) roundUp: (recoveredBlock249Value20) toMultipleOf: (recoveredBlock249Value23).
    recoveredBlock249Local2 := recoveredBlock249Value24.
    recoveredBlock249Value25 := recoveredBlock249Local3.
    recoveredBlock249Value26 := recoveredLocal8.
    recoveredBlock249Value27 := recoveredBlock249Local5.
    recoveredBlock249Value28 := (recoveredBlock249Value26) at: (recoveredBlock249Value27).
    recoveredBlock249Value29 := (self) roundUp: (recoveredBlock249Value25) toMultipleOf: (recoveredBlock249Value28).
    recoveredBlock249Local1 := recoveredBlock249Value29.
    recoveredBlock249Value30 := recoveredBlock249Arg1.
    recoveredBlock249Value31 := recoveredBlock249Value30.
    recoveredBlock249Value32 := recoveredBlock249Local2.
    (recoveredBlock249Value31) at: (4) put: (recoveredBlock249Value32).
    recoveredBlock249Value33 := recoveredBlock249Local1.
    recoveredBlock249Value34 := (recoveredBlock249Value30) at: (5) put: (recoveredBlock249Value33).
    recoveredBlock249Value34
].
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            (recoveredStack1) maxHFactor: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            (recoveredStack1) maxVFactor: (recoveredStack2).
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            (recoveredStack0) componentParameters: (recoveredStack1).
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20045100; bytecode file offset 0xc1304"
!CgJPEGFrameHeader methodsFor: 'recovered'!
initializeContents
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := CgJPEGFileFormat.
    recoveredBlock4Value1 := (recoveredBlock4Value0) exception.
    recoveredBlock4Value2 := (recoveredBlock4Value1) signalWith: (12).
    ^recoveredBlock4Value2
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) numberOfImageComponents.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal11 := recoveredStack3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) componentParameters.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) ifTrue: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal9 := recoveredStack2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) componentParameters.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 224.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack2) ifTrue: (recoveredStack3).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack2) uint8At: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack5 := 16.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack4 := (recoveredStack4) * (recoveredStack5).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack2) uint8At: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack2) uint8At: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 186] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredLocal10 := recoveredStack2.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 208].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredLocal9 := recoveredStack2.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 72] ifFalse: [recoveredPC := 256]] ifFalse: [recoveredPC := 229].
        ].
        recoveredStep = 229 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredLocal5 := recoveredStack3.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 252] ifFalse: [recoveredPC := 246].
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack0 := (recoveredStack0) samplesPerLine.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := (recoveredStack0) numberOfLines.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack0 := #(8 16 24 32).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := [:recoveredBlock277Arg1 | 
    | recoveredBlock277Local1 recoveredBlock277Local2 recoveredBlock277Local3 recoveredBlock277Local4 recoveredBlock277Local5 recoveredBlock277Local6 recoveredBlock277Value0 recoveredBlock277Value1 recoveredBlock277Value2 recoveredBlock277Value3 recoveredBlock277Value4 recoveredBlock277Value5 recoveredBlock277Value6 recoveredBlock277Value7 recoveredBlock277Value8 recoveredBlock277Value9 recoveredBlock277Value10 recoveredBlock277Value11 recoveredBlock277Value12 recoveredBlock277Value13 recoveredBlock277Value14 recoveredBlock277Value15 recoveredBlock277Value16 recoveredBlock277Value17 recoveredBlock277Value18 recoveredBlock277Value19 recoveredBlock277Value20 recoveredBlock277Value21 recoveredBlock277Value22 recoveredBlock277Value23 recoveredBlock277Value24 recoveredBlock277Value25 recoveredBlock277Value26 recoveredBlock277Value27 recoveredBlock277Value28 recoveredBlock277Value29 recoveredBlock277Value30 recoveredBlock277Value31 recoveredBlock277Value32 recoveredBlock277Value33 recoveredBlock277Value34 |
    recoveredBlock277Value0 := recoveredBlock277Arg1.
    recoveredBlock277Value1 := (recoveredBlock277Value0) at: (2).
    recoveredBlock277Local6 := recoveredBlock277Value1.
    recoveredBlock277Value2 := recoveredBlock277Arg1.
    recoveredBlock277Value3 := (recoveredBlock277Value2) at: (3).
    recoveredBlock277Local5 := recoveredBlock277Value3.
    recoveredBlock277Value4 := recoveredLocal8.
    recoveredBlock277Value5 := recoveredBlock277Local6.
    recoveredBlock277Value6 := (recoveredBlock277Value4) * (recoveredBlock277Value5).
    recoveredBlock277Value7 := recoveredLocal10.
    recoveredBlock277Value8 := (recoveredBlock277Value6) + (recoveredBlock277Value7).
    recoveredBlock277Value9 := (recoveredBlock277Value8) + (-1).
    recoveredBlock277Value10 := recoveredLocal10.
    recoveredBlock277Value11 := (recoveredBlock277Value9) // (recoveredBlock277Value10).
    recoveredBlock277Local4 := recoveredBlock277Value11.
    recoveredBlock277Value12 := recoveredLocal7.
    recoveredBlock277Value13 := recoveredBlock277Local5.
    recoveredBlock277Value14 := (recoveredBlock277Value12) * (recoveredBlock277Value13).
    recoveredBlock277Value15 := recoveredLocal9.
    recoveredBlock277Value16 := (recoveredBlock277Value14) + (recoveredBlock277Value15).
    recoveredBlock277Value17 := (recoveredBlock277Value16) + (-1).
    recoveredBlock277Value18 := recoveredLocal9.
    recoveredBlock277Value19 := (recoveredBlock277Value17) // (recoveredBlock277Value18).
    recoveredBlock277Local3 := recoveredBlock277Value19.
    recoveredBlock277Value20 := recoveredBlock277Local4.
    recoveredBlock277Value21 := recoveredLocal6.
    recoveredBlock277Value22 := recoveredBlock277Local6.
    recoveredBlock277Value23 := (recoveredBlock277Value21) at: (recoveredBlock277Value22).
    recoveredBlock277Value24 := (self) roundUp: (recoveredBlock277Value20) toMultipleOf: (recoveredBlock277Value23).
    recoveredBlock277Local2 := recoveredBlock277Value24.
    recoveredBlock277Value25 := recoveredBlock277Local3.
    recoveredBlock277Value26 := recoveredLocal6.
    recoveredBlock277Value27 := recoveredBlock277Local5.
    recoveredBlock277Value28 := (recoveredBlock277Value26) at: (recoveredBlock277Value27).
    recoveredBlock277Value29 := (self) roundUp: (recoveredBlock277Value25) toMultipleOf: (recoveredBlock277Value28).
    recoveredBlock277Local1 := recoveredBlock277Value29.
    recoveredBlock277Value30 := recoveredBlock277Arg1.
    recoveredBlock277Value31 := recoveredBlock277Value30.
    recoveredBlock277Value32 := recoveredBlock277Local2.
    (recoveredBlock277Value31) at: (4) put: (recoveredBlock277Value32).
    recoveredBlock277Value33 := recoveredBlock277Local1.
    recoveredBlock277Value34 := (recoveredBlock277Value30) at: (5) put: (recoveredBlock277Value33).
    recoveredBlock277Value34
].
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            (recoveredStack1) maxHFactor: (recoveredStack2).
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            (recoveredStack0) maxVFactor: (recoveredStack1).
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

