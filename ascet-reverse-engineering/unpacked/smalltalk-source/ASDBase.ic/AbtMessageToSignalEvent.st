"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006597c; bytecode file offset 0x963428"
!AbtMessageToSignalEvent methodsFor: 'recovered'!
receiver
    | recoveredValue0 |
    recoveredValue0 := receiver.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006607c; bytecode file offset 0x963428"
!AbtMessageToSignalEvent methodsFor: 'recovered'!
target
    | recoveredValue0 |
    recoveredValue0 := receiver.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200922b0; bytecode file offset 0x98ebfc"
!AbtMessageToSignalEvent methodsFor: 'recovered'!
abrSendWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    recoveredValue3 := (self) abrSendWithArguments: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200be30c; bytecode file offset 0x9bb178"
!AbtMessageToSignalEvent methodsFor: 'recovered'!
receiver: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    receiver := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bee30; bytecode file offset 0x9bc0b4"
!AbtMessageToSignalEvent methodsFor: 'recovered'!
event: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    event := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cd3b0; bytecode file offset 0x9c9c7c"
!AbtMessageToSignalEvent methodsFor: 'recovered'!
send
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := receiver.
    recoveredValue1 := event.
    recoveredValue2 := (recoveredValue0) perform: ('signalPrimitiveEvent:') with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cd3c0; bytecode file offset 0x9c9c7c"
!AbtMessageToSignalEvent methodsFor: 'recovered'!
abrSend
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := receiver.
    recoveredValue1 := event.
    recoveredValue2 := (recoveredValue0) perform: ('signalPrimitiveEvent:') with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201307f4; bytecode file offset 0xa2d0b8"
!AbtMessageToSignalEvent methodsFor: 'recovered'!
abrSendWithArguments: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := receiver.
    recoveredValue1 := Array.
    recoveredValue2 := event.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) perform: ('signalPrimitiveEvent:withArguments:') withArguments: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201347f8; bytecode file offset 0xa310ac"
!AbtMessageToSignalEvent methodsFor: 'recovered'!
signals: recoveredArg1 of: recoveredArg2
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
            recoveredStack2 := receiver.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := event.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

