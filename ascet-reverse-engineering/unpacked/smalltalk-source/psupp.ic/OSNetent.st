"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20003e38; bytecode file offset 0x157f64"
!OSNetent methodsFor: 'recovered'!
nAddrtype
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004dd0; bytecode file offset 0x1589a4"
!OSNetent methodsFor: 'recovered'!
nNet
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20011600; bytecode file offset 0x165330"
!OSNetent methodsFor: 'recovered'!
nName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012cec; bytecode file offset 0x166e00"
!OSNetent methodsFor: 'recovered'!
nAliases: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001451c; bytecode file offset 0x1683c0"
!OSNetent methodsFor: 'recovered'!
nAddrtype: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int16At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015704; bytecode file offset 0x169290"
!OSNetent methodsFor: 'recovered'!
nNet: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ad84; bytecode file offset 0x16ea70"
!OSNetent methodsFor: 'recovered'!
nName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSChar8.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20029e50; bytecode file offset 0x17d79c"
!OSNetent methodsFor: 'recovered'!
nAliases
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSObjectPointer.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := OSChar8.
    recoveredValue3 := (recoveredValue0) address: (recoveredValue1) itemType: (recoveredValue2) indirectionLevel: (2).
    ^recoveredValue3
! !

