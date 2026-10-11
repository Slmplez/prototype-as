"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013998; bytecode file offset 0x912098"
!DateAndTime class methodsFor: 'recovered'!
untitledConverterClass
    | recoveredValue0 |
    recoveredValue0 := AbtDateAndTimeConverter.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007681c; bytecode file offset 0x9757c8"
!DateAndTime class methodsFor: 'recovered'!
abtCanBeDateAndTime
    ^true
! !

"ASDBase.ic method 0x20076dec; bytecode file offset 0x9757c8"
!DateAndTime class methodsFor: 'recovered'!
abrInstancesAreImmutable
    ^true
! !

"ASDBase.ic method 0x2007843c; bytecode file offset 0x9757c8"
!DateAndTime class methodsFor: 'recovered'!
abtCanBeDate
    ^true
! !

"ASDBase.ic method 0x200787c4; bytecode file offset 0x9757c8"
!DateAndTime class methodsFor: 'recovered'!
abtCanBeTime
    ^true
! !

"ASDBase.ic method 0x20173f94; bytecode file offset 0xa70860"
!DateAndTime class methodsFor: 'recovered'!
fromMilliseconds: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Date.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) // (86400).
    recoveredValue3 := (recoveredValue0) fromDays: (recoveredValue2).
    recoveredValue4 := Time.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) \\ (86400).
    recoveredValue7 := (recoveredValue4) fromSeconds: (recoveredValue6).
    recoveredValue8 := (self) date: (recoveredValue3) time: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x203a3470; bytecode file offset 0xc9fd4c"
!DateAndTime class methodsFor: 'recovered'!
abtXmlMillisecondsFrom: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) peekFor: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:block280f4a4cArg1 | 
    | block280f4a4cValue0 block280f4a4cValue1 block280f4a4cValue2 |
    block280f4a4cValue0 := block280f4a4cArg1.
    block280f4a4cValue1 := (block280f4a4cValue0) isDigit.
    block280f4a4cValue2 := (block280f4a4cValue1) not.
    block280f4a4cValue2
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) abrUpUntil: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := '000'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) replaceFrom: (recoveredStack2) to: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtAsInteger.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20461c00; bytecode file offset 0xd5e4e4"
!DateAndTime class methodsFor: 'recovered'!
abtXmlTimeZoneOffsetFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := #($- $+).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) peek.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) next.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := $-.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := $:.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) upTo: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtAsInteger.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := $:.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) upTo: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtAsInteger.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := $:.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) peekFor: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) next: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtAsInteger.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := Duration.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) days: (recoveredStack2) hours: (recoveredStack3) minutes: (recoveredStack4) seconds: (recoveredStack5).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 117.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := $Z.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) peekFor: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := Duration.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) zero.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredPC := 117.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) systemOffset.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204fe4a8; bytecode file offset 0xdfada0"
!DateAndTime class methodsFor: 'recovered'!
abtXmlFromString: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 recoveredBlock4Value8 recoveredBlock4Value9 recoveredBlock4Value10 recoveredBlock4Value11 recoveredBlock4Value12 recoveredBlock4Value13 recoveredBlock4Value14 recoveredBlock4Value15 recoveredBlock4Value16 recoveredBlock4Value17 recoveredBlock4Value18 recoveredBlock4Value19 recoveredBlock4Value20 recoveredBlock4Value21 recoveredBlock4Value22 recoveredBlock4Value23 recoveredBlock4Value24 recoveredBlock4Value25 recoveredBlock4Value26 recoveredBlock4Value27 recoveredBlock4Value28 recoveredBlock4Value29 recoveredBlock4Value30 recoveredBlock4Value31 recoveredBlock4Value32 recoveredBlock4Value33 recoveredBlock4Value34 recoveredBlock4Value35 |
    recoveredBlock4Value0 := ReadStream.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := (recoveredBlock4Value1) trimBlanks.
    recoveredBlock4Value3 := (recoveredBlock4Value0) on: (recoveredBlock4Value2).
    recoveredLocal14 := recoveredBlock4Value3.
    recoveredBlock4Value4 := recoveredLocal14.
    recoveredBlock4Value5 := (recoveredBlock4Value4) upTo: ($-).
    recoveredBlock4Value6 := (recoveredBlock4Value5) abtAsInteger.
    recoveredLocal13 := recoveredBlock4Value6.
    recoveredBlock4Value7 := recoveredLocal14.
    recoveredBlock4Value8 := (recoveredBlock4Value7) upTo: ($-).
    recoveredBlock4Value9 := (recoveredBlock4Value8) abtAsInteger.
    recoveredLocal12 := recoveredBlock4Value9.
    recoveredBlock4Value10 := recoveredLocal14.
    recoveredBlock4Value11 := (recoveredBlock4Value10) upTo: ($T).
    recoveredBlock4Value12 := (recoveredBlock4Value11) abtAsInteger.
    recoveredLocal11 := recoveredBlock4Value12.
    recoveredBlock4Value13 := recoveredLocal14.
    recoveredBlock4Value14 := (recoveredBlock4Value13) upTo: ($:).
    recoveredBlock4Value15 := (recoveredBlock4Value14) abtAsInteger.
    recoveredLocal10 := recoveredBlock4Value15.
    recoveredBlock4Value16 := recoveredLocal14.
    recoveredBlock4Value17 := (recoveredBlock4Value16) upTo: ($:).
    recoveredBlock4Value18 := (recoveredBlock4Value17) abtAsInteger.
    recoveredLocal9 := recoveredBlock4Value18.
    recoveredBlock4Value19 := recoveredLocal14.
    recoveredBlock4Value20 := (recoveredBlock4Value19) next: (2).
    recoveredBlock4Value21 := (recoveredBlock4Value20) abtAsInteger.
    recoveredLocal8 := recoveredBlock4Value21.
    recoveredBlock4Value22 := recoveredLocal14.
    recoveredBlock4Value23 := (self) abtXmlMillisecondsFrom: (recoveredBlock4Value22).
    recoveredLocal7 := recoveredBlock4Value23.
    recoveredBlock4Value24 := recoveredLocal14.
    recoveredBlock4Value25 := (self) abtXmlTimeZoneOffsetFrom: (recoveredBlock4Value24).
    recoveredLocal6 := recoveredBlock4Value25.
    recoveredBlock4Value26 := recoveredLocal13.
    recoveredBlock4Value27 := recoveredLocal12.
    recoveredBlock4Value28 := recoveredLocal11.
    recoveredBlock4Value29 := recoveredLocal10.
    recoveredBlock4Value30 := recoveredLocal9.
    recoveredBlock4Value31 := recoveredLocal8.
    recoveredBlock4Value32 := recoveredLocal7.
    recoveredBlock4Value33 := recoveredLocal6.
    recoveredBlock4Value34 := (self) year: (recoveredBlock4Value26) month: (recoveredBlock4Value27) day: (recoveredBlock4Value28) hour: (recoveredBlock4Value29) minute: (recoveredBlock4Value30) second: (recoveredBlock4Value31) millisecond: (recoveredBlock4Value32) offset: (recoveredBlock4Value33).
    recoveredBlock4Value35 := recoveredBlock4Value34.
    recoveredLocal1 := recoveredBlock4Value35.
    recoveredBlock4Value34
].
    recoveredValue1 := ExError.
    recoveredValue2 := [:recoveredBlock144Arg1 | 
    | recoveredBlock144Value0 recoveredBlock144Value1 recoveredBlock144Value2 recoveredBlock144Value3 recoveredBlock144Value4 |
    recoveredBlock144Value0 := AbtXmlMappingError.
    recoveredBlock144Value1 := recoveredArg1.
    recoveredBlock144Value2 := (recoveredBlock144Value0) code: ('InvalidDateFormat') text: ('Invalid DateAndTime format >> %1') with: (recoveredBlock144Value1).
    (recoveredBlock144Value2) signalExceptionIfEnabled.
    recoveredBlock144Value3 := recoveredBlock144Arg1.
    recoveredBlock144Value4 := (recoveredBlock144Value3) exitWith: (nil).
    recoveredBlock144Value4
].
    (recoveredValue0) when: (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2052f0cc; bytecode file offset 0xe2b9dc"
!DateAndTime class methodsFor: 'recovered'!
abtXmlFromTimeString: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4Stack5 recoveredBlock4Stack6 recoveredBlock4Stack7 recoveredBlock4Stack8 recoveredBlock4Stack9 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := ReadStream.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) trimBlanks.
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) on: (recoveredBlock4Stack2).
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredLocal8 := recoveredBlock4Stack1.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal8.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack2 := $:.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) upTo: (recoveredBlock4Stack2).
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) abtAsInteger.
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredLocal7 := recoveredBlock4Stack1.
            recoveredBlock4PC := 32.
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal8.
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            recoveredBlock4Stack2 := $:.
            recoveredBlock4PC := 38.
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) upTo: (recoveredBlock4Stack2).
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) abtAsInteger.
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            recoveredLocal6 := recoveredBlock4Stack1.
            recoveredBlock4PC := 44.
        ].
        recoveredBlock4Step = 44 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal8.
            recoveredBlock4PC := 47.
        ].
        recoveredBlock4Step = 47 ifTrue: [
            recoveredBlock4Stack2 := 2.
            recoveredBlock4PC := 49.
        ].
        recoveredBlock4Step = 49 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) next: (recoveredBlock4Stack2).
            recoveredBlock4PC := 51.
        ].
        recoveredBlock4Step = 51 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) abtAsInteger.
            recoveredBlock4PC := 53.
        ].
        recoveredBlock4Step = 53 ifTrue: [
            recoveredLocal5 := recoveredBlock4Stack1.
            recoveredBlock4PC := 56.
        ].
        recoveredBlock4Step = 56 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal7.
            recoveredBlock4PC := 59.
        ].
        recoveredBlock4Step = 59 ifTrue: [
            recoveredBlock4Stack2 := 0.
            recoveredBlock4PC := 61.
        ].
        recoveredBlock4Step = 61 ifTrue: [
            recoveredBlock4Stack3 := 23.
            recoveredBlock4PC := 63.
        ].
        recoveredBlock4Step = 63 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) between: (recoveredBlock4Stack2) and: (recoveredBlock4Stack3).
            recoveredBlock4PC := 64.
        ].
        recoveredBlock4Step = 64 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 72] ifFalse: [recoveredBlock4PC := 68].
        ].
        recoveredBlock4Step = 68 ifTrue: [
            recoveredBlock4Stack1 := ExError.
            recoveredBlock4PC := 70.
        ].
        recoveredBlock4Step = 70 ifTrue: [
            (recoveredBlock4Stack1) signal.
            recoveredBlock4PC := 72.
        ].
        recoveredBlock4Step = 72 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal6.
            recoveredBlock4PC := 75.
        ].
        recoveredBlock4Step = 75 ifTrue: [
            recoveredBlock4Stack2 := 0.
            recoveredBlock4PC := 77.
        ].
        recoveredBlock4Step = 77 ifTrue: [
            recoveredBlock4Stack3 := 59.
            recoveredBlock4PC := 79.
        ].
        recoveredBlock4Step = 79 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) between: (recoveredBlock4Stack2) and: (recoveredBlock4Stack3).
            recoveredBlock4PC := 80.
        ].
        recoveredBlock4Step = 80 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 88] ifFalse: [recoveredBlock4PC := 84].
        ].
        recoveredBlock4Step = 84 ifTrue: [
            recoveredBlock4Stack1 := ExError.
            recoveredBlock4PC := 86.
        ].
        recoveredBlock4Step = 86 ifTrue: [
            (recoveredBlock4Stack1) signal.
            recoveredBlock4PC := 88.
        ].
        recoveredBlock4Step = 88 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal5.
            recoveredBlock4PC := 91.
        ].
        recoveredBlock4Step = 91 ifTrue: [
            recoveredBlock4Stack2 := 0.
            recoveredBlock4PC := 93.
        ].
        recoveredBlock4Step = 93 ifTrue: [
            recoveredBlock4Stack3 := 59.
            recoveredBlock4PC := 95.
        ].
        recoveredBlock4Step = 95 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) between: (recoveredBlock4Stack2) and: (recoveredBlock4Stack3).
            recoveredBlock4PC := 96.
        ].
        recoveredBlock4Step = 96 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 104] ifFalse: [recoveredBlock4PC := 100].
        ].
        recoveredBlock4Step = 100 ifTrue: [
            recoveredBlock4Stack1 := ExError.
            recoveredBlock4PC := 102.
        ].
        recoveredBlock4Step = 102 ifTrue: [
            (recoveredBlock4Stack1) signal.
            recoveredBlock4PC := 104.
        ].
        recoveredBlock4Step = 104 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal8.
            recoveredBlock4PC := 107.
        ].
        recoveredBlock4Step = 107 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) abtXmlMillisecondsFrom: (recoveredBlock4Stack1).
            recoveredBlock4PC := 109.
        ].
        recoveredBlock4Step = 109 ifTrue: [
            recoveredLocal4 := recoveredBlock4Stack0.
            recoveredBlock4PC := 112.
        ].
        recoveredBlock4Step = 112 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 113.
        ].
        recoveredBlock4Step = 113 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal8.
            recoveredBlock4PC := 116.
        ].
        recoveredBlock4Step = 116 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) abtXmlTimeZoneOffsetFrom: (recoveredBlock4Stack1).
            recoveredBlock4PC := 118.
        ].
        recoveredBlock4Step = 118 ifTrue: [
            recoveredLocal3 := recoveredBlock4Stack0.
            recoveredBlock4PC := 121.
        ].
        recoveredBlock4Step = 121 ifTrue: [
            recoveredBlock4Stack0 := Date.
            recoveredBlock4PC := 123.
        ].
        recoveredBlock4Step = 123 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) today.
            recoveredBlock4PC := 125.
        ].
        recoveredBlock4Step = 125 ifTrue: [
            recoveredLocal2 := recoveredBlock4Stack0.
            recoveredBlock4PC := 128.
        ].
        recoveredBlock4Step = 128 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 129.
        ].
        recoveredBlock4Step = 129 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal2.
            recoveredBlock4PC := 132.
        ].
        recoveredBlock4Step = 132 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) year.
            recoveredBlock4PC := 134.
        ].
        recoveredBlock4Step = 134 ifTrue: [
            recoveredBlock4Stack2 := recoveredLocal2.
            recoveredBlock4PC := 137.
        ].
        recoveredBlock4Step = 137 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) monthIndex.
            recoveredBlock4PC := 139.
        ].
        recoveredBlock4Step = 139 ifTrue: [
            recoveredBlock4Stack3 := recoveredLocal2.
            recoveredBlock4PC := 142.
        ].
        recoveredBlock4Step = 142 ifTrue: [
            recoveredBlock4Stack3 := (recoveredBlock4Stack3) dayOfMonth.
            recoveredBlock4PC := 144.
        ].
        recoveredBlock4Step = 144 ifTrue: [
            recoveredBlock4Stack4 := recoveredLocal7.
            recoveredBlock4PC := 147.
        ].
        recoveredBlock4Step = 147 ifTrue: [
            recoveredBlock4Stack5 := recoveredLocal6.
            recoveredBlock4PC := 150.
        ].
        recoveredBlock4Step = 150 ifTrue: [
            recoveredBlock4Stack6 := recoveredLocal5.
            recoveredBlock4PC := 153.
        ].
        recoveredBlock4Step = 153 ifTrue: [
            recoveredBlock4Stack7 := recoveredLocal4.
            recoveredBlock4PC := 156.
        ].
        recoveredBlock4Step = 156 ifTrue: [
            recoveredBlock4Stack8 := recoveredLocal3.
            recoveredBlock4PC := 159.
        ].
        recoveredBlock4Step = 159 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) year: (recoveredBlock4Stack1) month: (recoveredBlock4Stack2) day: (recoveredBlock4Stack3) hour: (recoveredBlock4Stack4) minute: (recoveredBlock4Stack5) second: (recoveredBlock4Stack6) millisecond: (recoveredBlock4Stack7) offset: (recoveredBlock4Stack8).
            recoveredBlock4PC := 162.
        ].
        recoveredBlock4Step = 162 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 163.
        ].
        recoveredBlock4Step = 163 ifTrue: [
            recoveredLocal1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 166.
        ].
        recoveredBlock4Step = 166 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    recoveredValue1 := ExError.
    recoveredValue2 := [:recoveredBlock169Arg1 | 
    | recoveredBlock169Value0 recoveredBlock169Value1 recoveredBlock169Value2 recoveredBlock169Value3 recoveredBlock169Value4 |
    recoveredBlock169Value0 := AbtXmlMappingError.
    recoveredBlock169Value1 := recoveredArg1.
    recoveredBlock169Value2 := (recoveredBlock169Value0) code: ('InvalidTimeFormat') text: ('Invalid Time format >> %1') with: (recoveredBlock169Value1).
    (recoveredBlock169Value2) signalExceptionIfEnabled.
    recoveredBlock169Value3 := recoveredBlock169Arg1.
    recoveredBlock169Value4 := (recoveredBlock169Value3) exitWith: (nil).
    recoveredBlock169Value4
].
    (recoveredValue0) when: (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x205ecc68; bytecode file offset 0xee9570"
!DateAndTime class methodsFor: 'recovered'!
from: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 25.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
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
            recoveredStack1 := ReadStream.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := Space.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) next.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := Space.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) upTo: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal18 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) trimBlanks.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := ReadStream.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal18.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := $T.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) upTo: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredLocal17.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) next.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) peek.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := $-.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 117] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) peek.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := $+.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 117] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) upToEnd.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := ReadStream.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredLocal16.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := $-.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) next.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredPC := 156.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := $-.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) upTo: (recoveredStack2).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtAsInteger.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := $-.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) upTo: (recoveredStack2).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := (recoveredStack1) asScaledDecimal.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack3 := 12.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 196] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := (recoveredStack1) upToEnd.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) asScaledDecimal.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack3 := 31.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 216].
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := ReadStream.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := recoveredLocal15.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := (recoveredStack1) peek.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDigit.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 238] ifFalse: [recoveredPC := 234].
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack1) next.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack2 := $:.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := (recoveredStack1) upTo: (recoveredStack2).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := (recoveredStack1) asScaledDecimal.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := $:.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := (recoveredStack1) upTo: (recoveredStack2).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := (recoveredStack1) asScaledDecimal.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := (recoveredStack1) upTo: (recoveredStack2).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := (recoveredStack1) asScaledDecimal.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := (recoveredStack1) upToEnd.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := (recoveredStack1) asScaledDecimal.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := ReadStream.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := (recoveredStack1) peek.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDigit.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 306] ifFalse: [recoveredPC := 312].
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredPC := 332.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := (recoveredStack1) next.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack2 := $-.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 324] ifFalse: [recoveredPC := 330].
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredPC := 332.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack2 := $:.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := (recoveredStack1) upTo: (recoveredStack2).
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtAsInteger.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack2 := $:.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := (recoveredStack1) upTo: (recoveredStack2).
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := (recoveredStack1) asScaledDecimal.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack1 := (recoveredStack1) upToEnd.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack1 := (recoveredStack1) asScaledDecimal.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack1 := Duration.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack1 := (recoveredStack1) days: (recoveredStack2) hours: (recoveredStack3) minutes: (recoveredStack4) seconds: (recoveredStack5).
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack1 := DateAndTime.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack4 := recoveredLocal11.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack5 := recoveredLocal10.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack6 := recoveredLocal9.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack7 := recoveredLocal8.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack8 := recoveredLocal7.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack9 := recoveredLocal4.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack1 := (recoveredStack1) year: (recoveredStack2) month: (recoveredStack3) day: (recoveredStack4) hour: (recoveredStack5) minute: (recoveredStack6) second: (recoveredStack7) millisecond: (recoveredStack8) offset: (recoveredStack9).
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

