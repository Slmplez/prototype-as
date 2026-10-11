"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20055200; bytecode file offset 0x952a9c"
!SGMdEventTask methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) eventTask: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006eb9c; bytecode file offset 0x96b8a0"
!SGMdEventTask methodsFor: 'recovered'!
event
    | recoveredValue0 |
    recoveredValue0 := event.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f298; bytecode file offset 0x96bc1c"
!SGMdEventTask methodsFor: 'recovered'!
minPeriod
    | recoveredValue0 |
    recoveredValue0 := minPeriod.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074ed4; bytecode file offset 0x9757c8"
!SGMdEventTask methodsFor: 'recovered'!
isMdlEventTask
    ^true
! !

"ASDBase.ic method 0x200c54c0; bytecode file offset 0x9c1f64"
!SGMdEventTask methodsFor: 'recovered'!
event: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    event := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c585c; bytecode file offset 0x9c22c8"
!SGMdEventTask methodsFor: 'recovered'!
minPeriod: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    minPeriod := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2011c7b8; bytecode file offset 0xa19078"
!SGMdEventTask methodsFor: 'recovered'!
initialize
    super initialize.
    event := ''.
    minPeriod := nil.
    ^self
! !

