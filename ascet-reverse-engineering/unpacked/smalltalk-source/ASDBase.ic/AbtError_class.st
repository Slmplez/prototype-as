"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20054644; bytecode file offset 0x951190"
!AbtError class methodsFor: 'recovered'!
displayDebug: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    DisplayDebug := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d7c88; bytecode file offset 0x9d4540"
!AbtError class methodsFor: 'recovered'!
errorText: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) in: (nil) locus: (nil) rc: (0) errorText: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201052cc; bytecode file offset 0xa01b84"
!AbtError class methodsFor: 'recovered'!
displayDebug
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := DisplayDebug.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            DisplayDebug := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := DisplayDebug.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a9448; bytecode file offset 0xaa5d18"
!AbtError class methodsFor: 'recovered'!
in: recoveredArg1 locus: recoveredArg2 rc: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) origin: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) locus: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) rc: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := Date.
    recoveredValue9 := (recoveredValue8) dateAndTimeNow.
    (recoveredValue7) dateAndTime: (recoveredValue9).
    ^recoveredValue0
! !

"ASDBase.ic method 0x201eaf90; bytecode file offset 0xae7864"
!AbtError class methodsFor: 'recovered'!
in: recoveredArg1 locus: recoveredArg2 rc: recoveredArg3 errorText: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) origin: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) locus: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) rc: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := Date.
    recoveredValue9 := (recoveredValue8) dateAndTimeNow.
    (recoveredValue7) dateAndTime: (recoveredValue9).
    recoveredValue10 := recoveredValue0.
    recoveredValue11 := recoveredArg4.
    (recoveredValue10) errorText: (recoveredValue11).
    ^recoveredValue0
! !

