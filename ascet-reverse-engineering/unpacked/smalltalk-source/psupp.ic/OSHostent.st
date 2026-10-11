"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20004444; bytecode file offset 0x157f64"
!OSHostent methodsFor: 'recovered'!
hAddrtype
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004754; bytecode file offset 0x1580a0"
!OSHostent methodsFor: 'recovered'!
hLength
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (10).
    ^recoveredValue0
! !

"psupp.ic method 0x20010e14; bytecode file offset 0x165330"
!OSHostent methodsFor: 'recovered'!
hName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012338; bytecode file offset 0x166e00"
!OSHostent methodsFor: 'recovered'!
hAliases: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013880; bytecode file offset 0x1683c0"
!OSHostent methodsFor: 'recovered'!
hAddrtype: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int16At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014c84; bytecode file offset 0x168528"
!OSHostent methodsFor: 'recovered'!
hLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int16At: (10) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015548; bytecode file offset 0x169290"
!OSHostent methodsFor: 'recovered'!
hAddrList: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ab7c; bytecode file offset 0x16ea70"
!OSHostent methodsFor: 'recovered'!
hName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSChar8.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20029eb0; bytecode file offset 0x17d79c"
!OSHostent methodsFor: 'recovered'!
hAliases
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSObjectPointer.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := OSChar8.
    recoveredValue3 := (recoveredValue0) address: (recoveredValue1) itemType: (recoveredValue2) indirectionLevel: (2).
    ^recoveredValue3
! !

"psupp.ic method 0x20029f98; bytecode file offset 0x17d83c"
!OSHostent methodsFor: 'recovered'!
hAddrList
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSObjectPointer.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := OSChar8.
    recoveredValue3 := (recoveredValue0) address: (recoveredValue1) itemType: (recoveredValue2) indirectionLevel: (2).
    ^recoveredValue3
! !

