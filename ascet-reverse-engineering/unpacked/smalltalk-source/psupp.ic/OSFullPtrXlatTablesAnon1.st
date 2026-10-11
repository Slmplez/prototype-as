"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20003f64; bytecode file offset 0x157f64"
!OSFullPtrXlatTablesAnon1 methodsFor: 'recovered'!
NumberOfEntries
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20010964; bytecode file offset 0x165330"
!OSFullPtrXlatTablesAnon1 methodsFor: 'recovered'!
XlatTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001337c; bytecode file offset 0x166e00"
!OSFullPtrXlatTablesAnon1 methodsFor: 'recovered'!
StateTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200141c8; bytecode file offset 0x1683c0"
!OSFullPtrXlatTablesAnon1 methodsFor: 'recovered'!
NumberOfEntries: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b268; bytecode file offset 0x16f1fc"
!OSFullPtrXlatTablesAnon1 methodsFor: 'recovered'!
StateTable
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20029dac; bytecode file offset 0x17d6b0"
!OSFullPtrXlatTablesAnon1 methodsFor: 'recovered'!
XlatTable
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSObjectPointer.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := OSVoid.
    recoveredValue3 := (recoveredValue0) address: (recoveredValue1) itemType: (recoveredValue2) indirectionLevel: (2).
    ^recoveredValue3
! !

