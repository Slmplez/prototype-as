"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000210; bytecode file offset 0x6147c"
!SstSocketDemultiplexor class methodsFor: 'recovered'!
attemptInstallation
    ^self
! !

"xxx_dyn.ic method 0x20000f14; bytecode file offset 0x6209c"
!SstSocketDemultiplexor class methodsFor: 'recovered'!
demultiplexorClass
    | recoveredValue0 |
    recoveredValue0 := DemultiplexorClass.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000294c; bytecode file offset 0x63b1c"
!SstSocketDemultiplexor class methodsFor: 'recovered'!
setupAfterLoad
    (self) attemptInstallation.
    ^self
! !

"xxx_dyn.ic method 0x20002bf0; bytecode file offset 0x63cb8"
!SstSocketDemultiplexor class methodsFor: 'recovered'!
demultiplexorClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    DemultiplexorClass := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20005770; bytecode file offset 0x66a34"
!SstSocketDemultiplexor class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000aa14; bytecode file offset 0x6bae0"
!SstSocketDemultiplexor class methodsFor: 'recovered'!
cleanUpBeforeRemove
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) demultiplexorClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) demultiplexorClass: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2000bc28; bytecode file offset 0x6ccf8"
!SstSocketDemultiplexor class methodsFor: 'recovered'!
newDemultiplexor
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := DemultiplexorClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SstSimpleSocketDemultiplexor.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := DemultiplexorClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

