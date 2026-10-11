"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000d1c; bytecode file offset 0x6209c"
!SstWinSockSocketDemultiplexor class methodsFor: 'recovered'!
maximumSelectableSockets
    | recoveredValue0 |
    recoveredValue0 := MaximumSelectableSockets.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20002ba8; bytecode file offset 0x63cb8"
!SstWinSockSocketDemultiplexor class methodsFor: 'recovered'!
maximumSelectableSockets: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    MaximumSelectableSockets := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000a028; bytecode file offset 0x6b0f8"
!SstWinSockSocketDemultiplexor class methodsFor: 'recovered'!
attemptInstallation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EsAsynchronousCallout.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) supported.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) demultiplexorClass: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

