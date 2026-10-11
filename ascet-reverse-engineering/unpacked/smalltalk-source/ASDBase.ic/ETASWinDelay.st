"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20066704; bytecode file offset 0x963428"
!ETASWinDelay methodsFor: 'recovered'!
event
    | recoveredValue0 |
    recoveredValue0 := event.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066f24; bytecode file offset 0x9646f8"
!ETASWinDelay methodsFor: 'recovered'!
msec
    | recoveredValue0 |
    recoveredValue0 := msec.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be0c4; bytecode file offset 0x9bb178"
!ETASWinDelay methodsFor: 'recovered'!
event: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    event := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf208; bytecode file offset 0x9bc0b4"
!ETASWinDelay methodsFor: 'recovered'!
msec: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    msec := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f0654; bytecode file offset 0x9ecf24"
!ETASWinDelay methodsFor: 'recovered'!
closeWait
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := event.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := event.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) closeHandle.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d5530; bytecode file offset 0xad1df8"
!ETASWinDelay methodsFor: 'recovered'!
wait
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := event.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := msec.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) waitForSingleObject: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := WinError.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) getLastError.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := event.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) resetEvent.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

