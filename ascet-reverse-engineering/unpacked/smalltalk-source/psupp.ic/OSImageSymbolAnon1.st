"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000cc30; bytecode file offset 0x160b8c"
!OSImageSymbolAnon1 methodsFor: 'recovered'!
Name
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSImageSymbolAnon1Anon2.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011924; bytecode file offset 0x165330"
!OSImageSymbolAnon1 methodsFor: 'recovered'!
Name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20021f98; bytecode file offset 0x175834"
!OSImageSymbolAnon1 methodsFor: 'recovered'!
ShortName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (0) size: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20023740; bytecode file offset 0x176fd8"
!OSImageSymbolAnon1 methodsFor: 'recovered'!
LongName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (0) put: (recoveredValue0) size: (2).
    ^self
! !

"psupp.ic method 0x20023834; bytecode file offset 0x1770cc"
!OSImageSymbolAnon1 methodsFor: 'recovered'!
ShortName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (0) put: (recoveredValue0) size: (8).
    ^self
! !

"psupp.ic method 0x20029e0c; bytecode file offset 0x17d6b0"
!OSImageSymbolAnon1 methodsFor: 'recovered'!
LongName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSObjectPointer.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := OSUInt8.
    recoveredValue3 := (recoveredValue0) address: (recoveredValue1) itemType: (recoveredValue2) indirectionLevel: (2).
    ^recoveredValue3
! !

