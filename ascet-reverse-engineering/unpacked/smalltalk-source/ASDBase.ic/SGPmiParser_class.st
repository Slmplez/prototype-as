"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20053f9c; bytecode file offset 0x951190"
!SGPmiParser class methodsFor: 'recovered'!
debug: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    Debug := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ae868; bytecode file offset 0x9ab128"
!SGPmiParser class methodsFor: 'recovered'!
createOn: recoveredArg1 ifFail: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) parsePMI: (recoveredValue3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20105158; bytecode file offset 0xa01a28"
!SGPmiParser class methodsFor: 'recovered'!
debug
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Debug.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            Debug := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := Debug.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

