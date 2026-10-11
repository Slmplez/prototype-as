"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20003cd0; bytecode file offset 0x157f64"
!OSServent methodsFor: 'recovered'!
sPort
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fd70; bytecode file offset 0x165330"
!OSServent methodsFor: 'recovered'!
sName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200125b4; bytecode file offset 0x166e00"
!OSServent methodsFor: 'recovered'!
sAliases: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013f58; bytecode file offset 0x1683c0"
!OSServent methodsFor: 'recovered'!
sPort: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int16At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015848; bytecode file offset 0x169290"
!OSServent methodsFor: 'recovered'!
sProto: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001aed8; bytecode file offset 0x16ea70"
!OSServent methodsFor: 'recovered'!
sName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSChar8.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c3d8; bytecode file offset 0x16fe44"
!OSServent methodsFor: 'recovered'!
sProto
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSChar8.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20029ec8; bytecode file offset 0x17d79c"
!OSServent methodsFor: 'recovered'!
sAliases
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSObjectPointer.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := OSChar8.
    recoveredValue3 := (recoveredValue0) address: (recoveredValue1) itemType: (recoveredValue2) indirectionLevel: (2).
    ^recoveredValue3
! !

