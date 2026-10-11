"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000178; bytecode file offset 0x6147c"
!SstSocketDemultiplexor methodsFor: 'recovered'!
shutDown
    ^self
! !

"xxx_dyn.ic method 0x200002b8; bytecode file offset 0x6147c"
!SstSocketDemultiplexor methodsFor: 'recovered'!
reset
    ^self
! !

"xxx_dyn.ic method 0x20000570; bytecode file offset 0x619a4"
!SstSocketDemultiplexor methodsFor: 'recovered'!
select
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000594; bytecode file offset 0x619a4"
!SstSocketDemultiplexor methodsFor: 'recovered'!
poll
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000624; bytecode file offset 0x619a4"
!SstSocketDemultiplexor methodsFor: 'recovered'!
nextForWrite
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000063c; bytecode file offset 0x619a4"
!SstSocketDemultiplexor methodsFor: 'recovered'!
readSockets
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000810; bytecode file offset 0x619a4"
!SstSocketDemultiplexor methodsFor: 'recovered'!
nextForExcept
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200008a0; bytecode file offset 0x619a4"
!SstSocketDemultiplexor methodsFor: 'recovered'!
nextForRead
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000a14; bytecode file offset 0x61b9c"
!SstSocketDemultiplexor methodsFor: 'recovered'!
addRead: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000a50; bytecode file offset 0x61b9c"
!SstSocketDemultiplexor methodsFor: 'recovered'!
isReadable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000a5c; bytecode file offset 0x61b9c"
!SstSocketDemultiplexor methodsFor: 'recovered'!
timeout: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000a68; bytecode file offset 0x61b9c"
!SstSocketDemultiplexor methodsFor: 'recovered'!
removeExcept: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000a80; bytecode file offset 0x61b9c"
!SstSocketDemultiplexor methodsFor: 'recovered'!
isExceptional: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000a8c; bytecode file offset 0x61b9c"
!SstSocketDemultiplexor methodsFor: 'recovered'!
isWriteable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000a98; bytecode file offset 0x61b9c"
!SstSocketDemultiplexor methodsFor: 'recovered'!
addWrite: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000abc; bytecode file offset 0x61b9c"
!SstSocketDemultiplexor methodsFor: 'recovered'!
removeWrite: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000ac8; bytecode file offset 0x61b9c"
!SstSocketDemultiplexor methodsFor: 'recovered'!
addExcept: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000ad4; bytecode file offset 0x61b9c"
!SstSocketDemultiplexor methodsFor: 'recovered'!
removeRead: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20001ed4; bytecode file offset 0x63040"
!SstSocketDemultiplexor methodsFor: 'recovered'!
microsecondClockValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Time.
    recoveredValue1 := (recoveredValue0) microsecondClockValue.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000460c; bytecode file offset 0x656d0"
!SstSocketDemultiplexor methodsFor: 'recovered'!
pollingDelay
    ^10
! !

"xxx_dyn.ic method 0x200051f0; bytecode file offset 0x662ec"
!SstSocketDemultiplexor methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SciSocketManager.
    recoveredValue1 := (recoveredValue0) default.
    socketManager := recoveredValue1.
    ^self
! !

"xxx_dyn.ic method 0x20009294; bytecode file offset 0x6a364"
!SstSocketDemultiplexor methodsFor: 'recovered'!
socketFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := socketManager.
    recoveredValue1 := (recoveredValue0) socketTable.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [].
    recoveredValue4 := (recoveredValue1) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x20024068; bytecode file offset 0x8514c"
!SstSocketDemultiplexor methodsFor: 'recovered'!
pollingSelect
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) microsecondClockValue.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) timeout.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) pollingDelay.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) pollingDelay.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 1000.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) min: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := Delay.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) forMilliseconds: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) wait.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) microsecondClockValue.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) poll.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

