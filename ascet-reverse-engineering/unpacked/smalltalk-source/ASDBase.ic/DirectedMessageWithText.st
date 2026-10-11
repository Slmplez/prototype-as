"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20069f98; bytecode file offset 0x966bdc"
!DirectedMessageWithText methodsFor: 'recovered'!
text
    | recoveredValue0 |
    recoveredValue0 := text.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c0d98; bytecode file offset 0x9bdf14"
!DirectedMessageWithText methodsFor: 'recovered'!
text: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    text := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20194c6c; bytecode file offset 0xa9152c"
!DirectedMessageWithText methodsFor: 'recovered'!
isMemberOf: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := super isMemberOf: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := DirectedMessage.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203bf694; bytecode file offset 0xcbbf80"
!DirectedMessageWithText methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) name.
    (recoveredValue1) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) space.
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) cr.
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) space.
    (recoveredValue0) nextPutAll: ('selector: ').
    recoveredValue7 := (self) selector.
    recoveredValue8 := recoveredArg1.
    (recoveredValue7) printOn: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredValue9.
    (recoveredValue10) cr.
    recoveredValue11 := recoveredValue9.
    (recoveredValue11) space.
    (recoveredValue9) nextPutAll: ('arguments: ').
    recoveredValue12 := (self) arguments.
    recoveredValue13 := recoveredArg1.
    (recoveredValue12) printOn: (recoveredValue13).
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := recoveredValue14.
    (recoveredValue15) cr.
    recoveredValue16 := recoveredValue14.
    (recoveredValue16) space.
    (recoveredValue14) nextPutAll: ('receiver: ').
    recoveredValue17 := (self) receiver.
    recoveredValue18 := recoveredArg1.
    (recoveredValue17) printOn: (recoveredValue18).
    recoveredValue19 := recoveredArg1.
    recoveredValue20 := recoveredValue19.
    (recoveredValue20) cr.
    recoveredValue21 := recoveredValue19.
    (recoveredValue21) space.
    (recoveredValue19) nextPutAll: ('text ').
    recoveredValue22 := (self) text.
    recoveredValue23 := recoveredArg1.
    (recoveredValue22) printOn: (recoveredValue23).
    ^self
! !

