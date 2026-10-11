"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000302c; bytecode file offset 0x157170"
!OSFullPtrXlatTablesAnon2 methodsFor: 'recovered'!
NumberOfBuckets
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200043c0; bytecode file offset 0x157f64"
!OSFullPtrXlatTablesAnon2 methodsFor: 'recovered'!
HashMask
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fac4; bytecode file offset 0x165330"
!OSFullPtrXlatTablesAnon2 methodsFor: 'recovered'!
XlatTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012f38; bytecode file offset 0x166e00"
!OSFullPtrXlatTablesAnon2 methodsFor: 'recovered'!
NumberOfBuckets: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200137cc; bytecode file offset 0x1683c0"
!OSFullPtrXlatTablesAnon2 methodsFor: 'recovered'!
HashMask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20029dc4; bytecode file offset 0x17d6b0"
!OSFullPtrXlatTablesAnon2 methodsFor: 'recovered'!
XlatTable
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSObjectPointer.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := OSFullPtrToRefidElement.
    recoveredValue3 := (recoveredValue0) address: (recoveredValue1) itemType: (recoveredValue2) indirectionLevel: (2).
    ^recoveredValue3
! !

