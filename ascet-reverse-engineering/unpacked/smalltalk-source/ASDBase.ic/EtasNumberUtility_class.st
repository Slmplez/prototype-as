"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200d7aa8; bytecode file offset 0x9d4364"
!EtasNumberUtility class methodsFor: 'recovered'!
digit0For: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) \\ (10).
    recoveredValue2 := (recoveredValue1) + (1).
    recoveredValue3 := ('0123456789') at: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20148414; bytecode file offset 0xa44cd0"
!EtasNumberUtility class methodsFor: 'recovered'!
put2digitValue: recoveredArg1 at: recoveredArg2 into: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) + (1).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) * (2).
    recoveredValue6 := (recoveredValue5) + (1).
    recoveredValue7 := (recoveredValue0) replaceFrom: (recoveredValue1) to: (recoveredValue3) with: ('00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899') startingAt: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20148bec; bytecode file offset 0xa454ac"
!EtasNumberUtility class methodsFor: 'recovered'!
timeStringSeparator: recoveredArg1 hours: recoveredArg2 minutes: recoveredArg3 seconds: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := String.
    recoveredValue5 := (recoveredValue4) new: (8).
    recoveredValue6 := (self) timeStringSeparator: (recoveredValue0) hours: (recoveredValue1) minutes: (recoveredValue2) seconds: (recoveredValue3) into: (recoveredValue5) behind: (0).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20148c14; bytecode file offset 0xa454d4"
!EtasNumberUtility class methodsFor: 'recovered'!
dateStringSeparator: recoveredArg1 year: recoveredArg2 month: recoveredArg3 day: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := String.
    recoveredValue5 := (recoveredValue4) new: (10).
    recoveredValue6 := (self) dateStringSeparator: (recoveredValue0) year: (recoveredValue1) month: (recoveredValue2) day: (recoveredValue3) into: (recoveredValue5) behind: (0).
    ^recoveredValue6
! !

"ASDBase.ic method 0x202224f8; bytecode file offset 0xb1edb0"
!EtasNumberUtility class methodsFor: 'recovered'!
put4digitValue: recoveredArg1 at: recoveredArg2 into: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) // (100).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    (self) put2digitValue: (recoveredValue2) at: (recoveredValue3) into: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) * (100).
    recoveredValue8 := (recoveredValue5) - (recoveredValue7).
    recoveredValue9 := recoveredArg2.
    recoveredValue10 := (recoveredValue9) + (2).
    recoveredValue11 := recoveredArg3.
    recoveredValue12 := (self) put2digitValue: (recoveredValue8) at: (recoveredValue10) into: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x202e4698; bytecode file offset 0xbe0f54"
!EtasNumberUtility class methodsFor: 'recovered'!
timeStringSeparator: recoveredArg1 hours: recoveredArg2 minutes: recoveredArg3 seconds: recoveredArg4 into: recoveredArg5 behind: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg6.
    recoveredValue2 := (recoveredValue1) + (1).
    recoveredValue3 := recoveredArg5.
    (self) put2digitValue: (recoveredValue0) at: (recoveredValue2) into: (recoveredValue3).
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg6.
    recoveredValue6 := (recoveredValue5) + (4).
    recoveredValue7 := recoveredArg5.
    (self) put2digitValue: (recoveredValue4) at: (recoveredValue6) into: (recoveredValue7).
    recoveredValue8 := recoveredArg4.
    recoveredValue9 := recoveredArg6.
    recoveredValue10 := (recoveredValue9) + (7).
    recoveredValue11 := recoveredArg5.
    (self) put2digitValue: (recoveredValue8) at: (recoveredValue10) into: (recoveredValue11).
    recoveredValue12 := recoveredArg5.
    recoveredValue13 := recoveredValue12.
    recoveredValue14 := recoveredArg6.
    recoveredValue15 := (recoveredValue14) + (3).
    recoveredValue16 := recoveredArg1.
    (recoveredValue13) at: (recoveredValue15) put: (recoveredValue16).
    recoveredValue17 := recoveredValue12.
    recoveredValue18 := recoveredArg6.
    recoveredValue19 := (recoveredValue18) + (6).
    recoveredValue20 := recoveredArg1.
    (recoveredValue17) at: (recoveredValue19) put: (recoveredValue20).
    ^recoveredValue12
! !

"ASDBase.ic method 0x202e46dc; bytecode file offset 0xbe0f9c"
!EtasNumberUtility class methodsFor: 'recovered'!
dateStringSeparator: recoveredArg1 year: recoveredArg2 month: recoveredArg3 day: recoveredArg4 into: recoveredArg5 behind: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg6.
    recoveredValue2 := (recoveredValue1) + (1).
    recoveredValue3 := recoveredArg5.
    (self) put4digitValue: (recoveredValue0) at: (recoveredValue2) into: (recoveredValue3).
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg6.
    recoveredValue6 := (recoveredValue5) + (6).
    recoveredValue7 := recoveredArg5.
    (self) put2digitValue: (recoveredValue4) at: (recoveredValue6) into: (recoveredValue7).
    recoveredValue8 := recoveredArg4.
    recoveredValue9 := recoveredArg6.
    recoveredValue10 := (recoveredValue9) + (9).
    recoveredValue11 := recoveredArg5.
    (self) put2digitValue: (recoveredValue8) at: (recoveredValue10) into: (recoveredValue11).
    recoveredValue12 := recoveredArg5.
    recoveredValue13 := recoveredValue12.
    recoveredValue14 := recoveredArg6.
    recoveredValue15 := (recoveredValue14) + (5).
    recoveredValue16 := recoveredArg1.
    (recoveredValue13) at: (recoveredValue15) put: (recoveredValue16).
    recoveredValue17 := recoveredValue12.
    recoveredValue18 := recoveredArg6.
    recoveredValue19 := (recoveredValue18) + (8).
    recoveredValue20 := recoveredArg1.
    (recoveredValue17) at: (recoveredValue19) put: (recoveredValue20).
    ^recoveredValue12
! !

"ASDBase.ic method 0x2041b2bc; bytecode file offset 0xd17b8c"
!EtasNumberUtility class methodsFor: 'recovered'!
dateStringSeparator: recoveredArg1 year: recoveredArg2 month: recoveredArg3 day: recoveredArg4 timeLeadIn: recoveredArg5 separator: recoveredArg6 hours: recoveredArg7 minutes: recoveredArg8 seconds: recoveredArg9
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := String.
    recoveredValue1 := recoveredArg5.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (10) + (recoveredValue2).
    recoveredValue4 := (recoveredValue3) + (8).
    recoveredValue5 := (recoveredValue0) new: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := recoveredArg3.
    recoveredValue9 := recoveredArg4.
    recoveredValue10 := recoveredLocal2.
    (self) dateStringSeparator: (recoveredValue6) year: (recoveredValue7) month: (recoveredValue8) day: (recoveredValue9) into: (recoveredValue10) behind: (0).
    recoveredLocal1 := 10.
    recoveredValue11 := recoveredArg5.
    recoveredValue12 := [:recoveredBlock48Arg1 | 
    | recoveredBlock48Value0 recoveredBlock48Value1 recoveredBlock48Value2 recoveredBlock48Value3 recoveredBlock48Value4 recoveredBlock48Value5 |
    recoveredBlock48Value0 := recoveredLocal1.
    recoveredBlock48Value1 := (recoveredBlock48Value0) + (1).
    recoveredLocal1 := recoveredBlock48Value1.
    recoveredBlock48Value2 := recoveredLocal2.
    recoveredBlock48Value3 := recoveredLocal1.
    recoveredBlock48Value4 := recoveredBlock48Arg1.
    recoveredBlock48Value5 := (recoveredBlock48Value2) at: (recoveredBlock48Value3) put: (recoveredBlock48Value4).
    recoveredBlock48Value5
].
    (recoveredValue11) do: (recoveredValue12).
    recoveredValue13 := recoveredArg7.
    recoveredValue14 := recoveredArg8.
    recoveredValue15 := recoveredArg9.
    recoveredValue16 := recoveredLocal2.
    recoveredValue17 := recoveredLocal1.
    (self) timeStringSeparator: ($:) hours: (recoveredValue13) minutes: (recoveredValue14) seconds: (recoveredValue15) into: (recoveredValue16) behind: (recoveredValue17).
    recoveredValue18 := recoveredLocal2.
    ^recoveredValue18
! !

"ASDBase.ic method 0x204e6df0; bytecode file offset 0xde36cc"
!EtasNumberUtility class methodsFor: 'recovered'!
printInteger: recoveredArg1 paddedTo: recoveredArg2 padChar: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) negated.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) atAllPut: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack1.
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
            recoveredStack3 := $0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 130.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := $0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := 100.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) \\ (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) put2digitValue: (recoveredStack2) at: (recoveredStack3) into: (recoveredStack4).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := 100.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredPC := 130.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := (recoveredStack3) digit0For: (recoveredStack4).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 153].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := $-.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

