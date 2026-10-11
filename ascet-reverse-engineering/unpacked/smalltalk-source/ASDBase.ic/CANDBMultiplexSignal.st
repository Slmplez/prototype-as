"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002b1d4; bytecode file offset 0x934580"
!CANDBMultiplexSignal methodsFor: 'recovered'!
multiplexSignal
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) parent.
    recoveredValue1 := (recoveredValue0) multiplexSignal.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006ecb4; bytecode file offset 0x96b8a0"
!CANDBMultiplexSignal methodsFor: 'recovered'!
multiplexId
    | recoveredValue0 |
    recoveredValue0 := multiplexId.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077d3c; bytecode file offset 0x9757c8"
!CANDBMultiplexSignal methodsFor: 'recovered'!
isMultiplexSignal
    ^true
! !

"ASDBase.ic method 0x200c5280; bytecode file offset 0x9c1f64"
!CANDBMultiplexSignal methodsFor: 'recovered'!
multiplexId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    multiplexId := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200fdba8; bytecode file offset 0x9fa490"
!CANDBMultiplexSignal methodsFor: 'recovered'!
getDescriptionFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) getMultiplexId: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    super getDescriptionFrom: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20185644; bytecode file offset 0xa81f04"
!CANDBMultiplexSignal methodsFor: 'recovered'!
getMultiplexId: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) peek.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := $m.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) next.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) getInteger: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            multiplexId := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

