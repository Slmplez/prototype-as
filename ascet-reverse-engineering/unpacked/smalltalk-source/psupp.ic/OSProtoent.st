"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20003df0; bytecode file offset 0x157f64"
!OSProtoent methodsFor: 'recovered'!
pProto
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20010184; bytecode file offset 0x165330"
!OSProtoent methodsFor: 'recovered'!
pName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012a58; bytecode file offset 0x166e00"
!OSProtoent methodsFor: 'recovered'!
pAliases: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014300; bytecode file offset 0x1683c0"
!OSProtoent methodsFor: 'recovered'!
pProto: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int16At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001abf4; bytecode file offset 0x16ea70"
!OSProtoent methodsFor: 'recovered'!
pName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSChar8.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20029e38; bytecode file offset 0x17d79c"
!OSProtoent methodsFor: 'recovered'!
pAliases
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSObjectPointer.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := OSChar8.
    recoveredValue3 := (recoveredValue0) address: (recoveredValue1) itemType: (recoveredValue2) indirectionLevel: (2).
    ^recoveredValue3
! !

