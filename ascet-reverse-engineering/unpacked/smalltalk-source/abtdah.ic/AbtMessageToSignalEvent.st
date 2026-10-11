"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x20000a3c; bytecode file offset 0x10a7c"
!AbtMessageToSignalEvent methodsFor: 'recovered'!
target
    | recoveredValue0 |
    recoveredValue0 := receiver.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000a54; bytecode file offset 0x10a7c"
!AbtMessageToSignalEvent methodsFor: 'recovered'!
receiver
    | recoveredValue0 |
    recoveredValue0 := receiver.
    ^recoveredValue0
! !

"abtdah.ic method 0x20001254; bytecode file offset 0x11288"
!AbtMessageToSignalEvent methodsFor: 'recovered'!
abrSendWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ExceptionalEvent.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    recoveredValue3 := (self) abrSendWithArguments: (recoveredValue2).
    ^recoveredValue3
! !

"abtdah.ic method 0x200019c4; bytecode file offset 0x119ec"
!AbtMessageToSignalEvent methodsFor: 'recovered'!
receiver: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    receiver := recoveredValue0.
    ^self
! !

"abtdah.ic method 0x200019d8; bytecode file offset 0x11a28"
!AbtMessageToSignalEvent methodsFor: 'recovered'!
event: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    event := recoveredValue0.
    ^self
! !

"abtdah.ic method 0x20001c88; bytecode file offset 0x11cc8"
!AbtMessageToSignalEvent methodsFor: 'recovered'!
send
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := receiver.
    recoveredValue1 := event.
    recoveredValue2 := (recoveredValue0) perform: ('signalPrimitiveEvent:') with: (recoveredValue1).
    ^recoveredValue2
! !

"abtdah.ic method 0x20001c98; bytecode file offset 0x11cc8"
!AbtMessageToSignalEvent methodsFor: 'recovered'!
abrSend
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := receiver.
    recoveredValue1 := event.
    recoveredValue2 := (recoveredValue0) perform: ('signalPrimitiveEvent:') with: (recoveredValue1).
    ^recoveredValue2
! !

"abtdah.ic method 0x20002a08; bytecode file offset 0x12a40"
!AbtMessageToSignalEvent methodsFor: 'recovered'!
abrSendWithArguments: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := receiver.
    recoveredValue1 := ExceptionalEvent.
    recoveredValue2 := event.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) perform: ('signalPrimitiveEvent:withArguments:') withArguments: (recoveredValue4).
    ^recoveredValue5
! !

"abtdah.ic method 0x20002a90; bytecode file offset 0x12ab8"
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

