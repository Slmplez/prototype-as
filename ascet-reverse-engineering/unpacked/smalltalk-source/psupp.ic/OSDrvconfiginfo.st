"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001e24; bytecode file offset 0x155d58"
!OSDrvconfiginfo methodsFor: 'recovered'!
dwDCISize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20010d84; bytecode file offset 0x165330"
!OSDrvconfiginfo methodsFor: 'recovered'!
dwDCISize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200132c8; bytecode file offset 0x166e00"
!OSDrvconfiginfo methodsFor: 'recovered'!
lpszDCISectionName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200146cc; bytecode file offset 0x1683c0"
!OSDrvconfiginfo methodsFor: 'recovered'!
lpszDCIAliasName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b2b8; bytecode file offset 0x16f1fc"
!OSDrvconfiginfo methodsFor: 'recovered'!
lpszDCISectionName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt16.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bd8c; bytecode file offset 0x16f8e8"
!OSDrvconfiginfo methodsFor: 'recovered'!
lpszDCIAliasName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt16.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

