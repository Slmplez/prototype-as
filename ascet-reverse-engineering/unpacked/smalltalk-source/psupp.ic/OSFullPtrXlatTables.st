"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20006228; bytecode file offset 0x159f34"
!OSFullPtrXlatTables methodsFor: 'recovered'!
NextRefId
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x200069c8; bytecode file offset 0x15a428"
!OSFullPtrXlatTables methodsFor: 'recovered'!
XlatSide
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x200090d8; bytecode file offset 0x15caa4"
!OSFullPtrXlatTables methodsFor: 'recovered'!
ndrFullPointerXlatFree
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NdrFullPointerXlatFree.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2000cae0; bytecode file offset 0x160b8c"
!OSFullPtrXlatTables methodsFor: 'recovered'!
RefIdToPointer
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSFullPtrXlatTablesAnon1.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000df2c; bytecode file offset 0x1617e8"
!OSFullPtrXlatTables methodsFor: 'recovered'!
PointerToRefId
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSFullPtrXlatTablesAnon2.
    recoveredValue1 := (self) structAt: (12) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000ed0c; bytecode file offset 0x163098"
!OSFullPtrXlatTables methodsFor: 'recovered'!
ndrFullPointerFree: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := NdrFullPointerFree.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000fcec; bytecode file offset 0x165330"
!OSFullPtrXlatTables methodsFor: 'recovered'!
RefIdToPointer: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015140; bytecode file offset 0x169290"
!OSFullPtrXlatTables methodsFor: 'recovered'!
PointerToRefId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017144; bytecode file offset 0x16afe8"
!OSFullPtrXlatTables methodsFor: 'recovered'!
NextRefId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017b4c; bytecode file offset 0x16b690"
!OSFullPtrXlatTables methodsFor: 'recovered'!
XlatSide: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200206cc; bytecode file offset 0x174df8"
!OSFullPtrXlatTables methodsFor: 'recovered'!
ndrFullPointerInsertRefId: recoveredArg1 pPointer: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := NdrFullPointerInsertRefId.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20024308; bytecode file offset 0x1781a4"
!OSFullPtrXlatTables methodsFor: 'recovered'!
ndrFullPointerQueryPointer: recoveredArg1 queryType: recoveredArg2 pRefId: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := NdrFullPointerQueryPointer.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x20024788; bytecode file offset 0x1781a4"
!OSFullPtrXlatTables methodsFor: 'recovered'!
ndrFullPointerQueryRefId: recoveredArg1 queryType: recoveredArg2 ppPointer: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := NdrFullPointerQueryRefId.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

