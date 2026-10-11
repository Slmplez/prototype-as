"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200124bc; bytecode file offset 0x912098"
!ETASWinDelay class methodsFor: 'recovered'!
event
    | recoveredValue0 |
    recoveredValue0 := Event.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003be14; bytecode file offset 0x9387a0"
!ETASWinDelay class methodsFor: 'recovered'!
createWithmsec: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20053f30; bytecode file offset 0x951190"
!ETASWinDelay class methodsFor: 'recovered'!
event: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    Event := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201282f8; bytecode file offset 0xa24bb4"
!ETASWinDelay class methodsFor: 'recovered'!
exiting
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Event.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Event.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) closeHandle.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            Event := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2019b9b0; bytecode file offset 0xa9827c"
!ETASWinDelay class methodsFor: 'recovered'!
forMilliSeconds: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) msec: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := OSHandle.
    recoveredValue5 := (self) name.
    recoveredValue6 := (recoveredValue4) createEvent: (true) fInitialState: (false) lpszEventName: (recoveredValue5).
    (recoveredValue3) event: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

