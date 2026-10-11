"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000dab8; bytecode file offset 0x161514"
!OSEnumServiceStatus methodsFor: 'recovered'!
ServiceStatus
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSServiceStatus.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fb6c; bytecode file offset 0x165330"
!OSEnumServiceStatus methodsFor: 'recovered'!
lpServiceName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200128a8; bytecode file offset 0x166e00"
!OSEnumServiceStatus methodsFor: 'recovered'!
lpDisplayName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014234; bytecode file offset 0x1683c0"
!OSEnumServiceStatus methodsFor: 'recovered'!
ServiceStatus: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ad34; bytecode file offset 0x16ea70"
!OSEnumServiceStatus methodsFor: 'recovered'!
lpServiceName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b7a4; bytecode file offset 0x16f1fc"
!OSEnumServiceStatus methodsFor: 'recovered'!
lpDisplayName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

