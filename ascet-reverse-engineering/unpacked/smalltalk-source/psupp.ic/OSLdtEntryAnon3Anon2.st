"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20026df4; bytecode file offset 0x17a6a0"
!OSLdtEntryAnon3Anon2 methodsFor: 'recovered'!
BaseMid
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint32At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (0) bitWidth: (8).
    ^recoveredValue1
! !

"psupp.ic method 0x20026fb4; bytecode file offset 0x17a850"
!OSLdtEntryAnon3Anon2 methodsFor: 'recovered'!
Type
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint32At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (8) bitWidth: (5).
    ^recoveredValue1
! !

"psupp.ic method 0x20027074; bytecode file offset 0x17a910"
!OSLdtEntryAnon3Anon2 methodsFor: 'recovered'!
Dpl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint32At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (13) bitWidth: (2).
    ^recoveredValue1
! !

"psupp.ic method 0x20027164; bytecode file offset 0x17aa00"
!OSLdtEntryAnon3Anon2 methodsFor: 'recovered'!
Pres
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint32At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (15) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x20027184; bytecode file offset 0x17aa20"
!OSLdtEntryAnon3Anon2 methodsFor: 'recovered'!
LimitHi
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint32At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (16) bitWidth: (4).
    ^recoveredValue1
! !

"psupp.ic method 0x200271a4; bytecode file offset 0x17aa40"
!OSLdtEntryAnon3Anon2 methodsFor: 'recovered'!
Sys
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint32At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (20) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x200271c4; bytecode file offset 0x17aa60"
!OSLdtEntryAnon3Anon2 methodsFor: 'recovered'!
Reserved0
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint32At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (21) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x200271e4; bytecode file offset 0x17aa80"
!OSLdtEntryAnon3Anon2 methodsFor: 'recovered'!
DefaultBig
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint32At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (22) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x20027204; bytecode file offset 0x17aaa0"
!OSLdtEntryAnon3Anon2 methodsFor: 'recovered'!
Granularity
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint32At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (23) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x20027224; bytecode file offset 0x17aac0"
!OSLdtEntryAnon3Anon2 methodsFor: 'recovered'!
BaseHi
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint32At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (24) bitWidth: (8).
    ^recoveredValue1
! !

"psupp.ic method 0x2002d618; bytecode file offset 0x180eb8"
!OSLdtEntryAnon3Anon2 methodsFor: 'recovered'!
BaseMid: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (0) bitWidth: (8).
    (self) uint32At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002d864; bytecode file offset 0x181104"
!OSLdtEntryAnon3Anon2 methodsFor: 'recovered'!
Type: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (8) bitWidth: (5).
    (self) uint32At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002d964; bytecode file offset 0x181204"
!OSLdtEntryAnon3Anon2 methodsFor: 'recovered'!
Dpl: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (13) bitWidth: (2).
    (self) uint32At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002da4c; bytecode file offset 0x18133c"
!OSLdtEntryAnon3Anon2 methodsFor: 'recovered'!
Pres: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (15) bitWidth: (1).
    (self) uint32At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002dac8; bytecode file offset 0x181368"
!OSLdtEntryAnon3Anon2 methodsFor: 'recovered'!
LimitHi: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (16) bitWidth: (4).
    (self) uint32At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002daf4; bytecode file offset 0x181394"
!OSLdtEntryAnon3Anon2 methodsFor: 'recovered'!
Sys: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (20) bitWidth: (1).
    (self) uint32At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002db20; bytecode file offset 0x1813c0"
!OSLdtEntryAnon3Anon2 methodsFor: 'recovered'!
Reserved0: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (21) bitWidth: (1).
    (self) uint32At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002db4c; bytecode file offset 0x1813ec"
!OSLdtEntryAnon3Anon2 methodsFor: 'recovered'!
DefaultBig: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (22) bitWidth: (1).
    (self) uint32At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002db78; bytecode file offset 0x181418"
!OSLdtEntryAnon3Anon2 methodsFor: 'recovered'!
Granularity: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (23) bitWidth: (1).
    (self) uint32At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002dba4; bytecode file offset 0x181444"
!OSLdtEntryAnon3Anon2 methodsFor: 'recovered'!
BaseHi: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (24) bitWidth: (8).
    (self) uint32At: (0) put: (recoveredValue2).
    ^self
! !

