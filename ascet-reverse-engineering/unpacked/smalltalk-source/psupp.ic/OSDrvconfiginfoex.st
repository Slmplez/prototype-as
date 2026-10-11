"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200022bc; bytecode file offset 0x155d58"
!OSDrvconfiginfoex methodsFor: 'recovered'!
dwDCISize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20004cb0; bytecode file offset 0x1589a4"
!OSDrvconfiginfoex methodsFor: 'recovered'!
dnDevNode
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200102d4; bytecode file offset 0x165330"
!OSDrvconfiginfoex methodsFor: 'recovered'!
dwDCISize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013490; bytecode file offset 0x166e00"
!OSDrvconfiginfoex methodsFor: 'recovered'!
lpszDCISectionName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013ec8; bytecode file offset 0x1683c0"
!OSDrvconfiginfoex methodsFor: 'recovered'!
lpszDCIAliasName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200154e8; bytecode file offset 0x169290"
!OSDrvconfiginfoex methodsFor: 'recovered'!
dnDevNode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b59c; bytecode file offset 0x16f1fc"
!OSDrvconfiginfoex methodsFor: 'recovered'!
lpszDCISectionName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt16.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bdf0; bytecode file offset 0x16f8e8"
!OSDrvconfiginfoex methodsFor: 'recovered'!
lpszDCIAliasName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt16.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

