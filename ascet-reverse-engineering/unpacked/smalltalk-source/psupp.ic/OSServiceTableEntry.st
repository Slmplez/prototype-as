"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000335c; bytecode file offset 0x157170"
!OSServiceTableEntry methodsFor: 'recovered'!
lpServiceProc
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20008988; bytecode file offset 0x15caa4"
!OSServiceTableEntry methodsFor: 'recovered'!
startServiceCtrlDispatcher
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := StartServiceCtrlDispatcher.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x20011888; bytecode file offset 0x165330"
!OSServiceTableEntry methodsFor: 'recovered'!
lpServiceName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012ecc; bytecode file offset 0x166e00"
!OSServiceTableEntry methodsFor: 'recovered'!
lpServiceProc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b0a4; bytecode file offset 0x16ea70"
!OSServiceTableEntry methodsFor: 'recovered'!
lpServiceName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

