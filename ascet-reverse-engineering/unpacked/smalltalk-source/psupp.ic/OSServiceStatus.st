"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20000fd8; bytecode file offset 0x155d58"
!OSServiceStatus methodsFor: 'recovered'!
dwServiceType
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002aec; bytecode file offset 0x157170"
!OSServiceStatus methodsFor: 'recovered'!
dwCurrentState
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004210; bytecode file offset 0x157f64"
!OSServiceStatus methodsFor: 'recovered'!
dwControlsAccepted
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004a70; bytecode file offset 0x1589a4"
!OSServiceStatus methodsFor: 'recovered'!
dwWin32ExitCode
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200054b0; bytecode file offset 0x159294"
!OSServiceStatus methodsFor: 'recovered'!
dwServiceSpecificExitCode
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005fbc; bytecode file offset 0x159974"
!OSServiceStatus methodsFor: 'recovered'!
dwCheckPoint
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x2000642c; bytecode file offset 0x159f34"
!OSServiceStatus methodsFor: 'recovered'!
dwWaitHint
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x200116fc; bytecode file offset 0x165330"
!OSServiceStatus methodsFor: 'recovered'!
dwServiceType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200131d8; bytecode file offset 0x166e00"
!OSServiceStatus methodsFor: 'recovered'!
dwCurrentState: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013ab4; bytecode file offset 0x1683c0"
!OSServiceStatus methodsFor: 'recovered'!
dwControlsAccepted: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200150b0; bytecode file offset 0x169290"
!OSServiceStatus methodsFor: 'recovered'!
dwWin32ExitCode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016580; bytecode file offset 0x169eb4"
!OSServiceStatus methodsFor: 'recovered'!
dwServiceSpecificExitCode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016d90; bytecode file offset 0x16a7b4"
!OSServiceStatus methodsFor: 'recovered'!
dwCheckPoint: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200171e0; bytecode file offset 0x16afe8"
!OSServiceStatus methodsFor: 'recovered'!
dwWaitHint: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

