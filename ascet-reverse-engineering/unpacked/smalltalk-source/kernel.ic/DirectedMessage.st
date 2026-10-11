"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20003fa0; bytecode file offset 0x4eebc"
!DirectedMessage methodsFor: 'recovered'!
receiver
    | recoveredValue0 |
    recoveredValue0 := receiver.
    ^recoveredValue0
! !

"kernel.ic method 0x20007854; bytecode file offset 0x52760"
!DirectedMessage methodsFor: 'recovered'!
receiver: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    receiver := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20008210; bytecode file offset 0x53120"
!DirectedMessage methodsFor: 'recovered'!
send
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := receiver.
    recoveredValue1 := selector.
    recoveredValue2 := arguments.
    recoveredValue3 := (recoveredValue0) perform: (recoveredValue1) withArguments: (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x200084b8; bytecode file offset 0x533cc"
!DirectedMessage methodsFor: 'recovered'!
hash
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super hash.
    recoveredValue1 := receiver.
    recoveredValue2 := (recoveredValue1) hash.
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x2000da04; bytecode file offset 0x5891c"
!DirectedMessage methodsFor: 'recovered'!
= recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := super = (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) receiver.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2001e4fc; bytecode file offset 0x6942c"
!DirectedMessage methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) name.
    (recoveredValue0) nextPutAll: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) space.
    (recoveredValue3) nextPut: ($().
    recoveredValue5 := (self) receiver.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) printOn: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredValue7.
    (recoveredValue8) nextPut: ($,).
    (recoveredValue7) space.
    recoveredValue9 := (self) selector.
    recoveredValue10 := recoveredArg1.
    (recoveredValue9) printOn: (recoveredValue10).
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := recoveredValue11.
    (recoveredValue12) nextPut: ($,).
    (recoveredValue11) space.
    recoveredValue13 := (self) arguments.
    recoveredValue14 := recoveredArg1.
    (recoveredValue13) printOn: (recoveredValue14).
    recoveredValue15 := recoveredArg1.
    (recoveredValue15) nextPut: ($)).
    ^self
! !

