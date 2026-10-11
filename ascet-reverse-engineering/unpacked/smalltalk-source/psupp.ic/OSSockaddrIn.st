"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200022c8; bytecode file offset 0x155d58"
!OSSockaddrIn methodsFor: 'recovered'!
sinFamily
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200028b4; bytecode file offset 0x1561c4"
!OSSockaddrIn methodsFor: 'recovered'!
sinPort
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d464; bytecode file offset 0x160f90"
!OSSockaddrIn methodsFor: 'recovered'!
sinAddr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSInAddr.
    recoveredValue1 := (self) structAt: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000dc94; bytecode file offset 0x16152c"
!OSSockaddrIn methodsFor: 'recovered'!
sinZero
    | recoveredValue0 |
    recoveredValue0 := (self) stringAt: (8) size: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x200110b4; bytecode file offset 0x165330"
!OSSockaddrIn methodsFor: 'recovered'!
sinFamily: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011d38; bytecode file offset 0x1657d4"
!OSSockaddrIn methodsFor: 'recovered'!
sinPort: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012c80; bytecode file offset 0x166e00"
!OSSockaddrIn methodsFor: 'recovered'!
sinAddr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200239dc; bytecode file offset 0x177280"
!OSSockaddrIn methodsFor: 'recovered'!
sinZero: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) stringAt: (8) put: (recoveredValue0) size: (8).
    ^self
! !

