"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200056b4; bytecode file offset 0x159294"
!OSTypeattr methodsFor: 'recovered'!
lcid
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005c08; bytecode file offset 0x159974"
!OSTypeattr methodsFor: 'recovered'!
dwReserved
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x200064f8; bytecode file offset 0x159f34"
!OSTypeattr methodsFor: 'recovered'!
memidConstructor
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20006b60; bytecode file offset 0x15a428"
!OSTypeattr methodsFor: 'recovered'!
memidDestructor
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20007098; bytecode file offset 0x15aa74"
!OSTypeattr methodsFor: 'recovered'!
cbSizeInstance
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (36).
    ^recoveredValue0
! !

"psupp.ic method 0x200072c4; bytecode file offset 0x15ad48"
!OSTypeattr methodsFor: 'recovered'!
typekind
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (40).
    ^recoveredValue0
! !

"psupp.ic method 0x2000772c; bytecode file offset 0x15b000"
!OSTypeattr methodsFor: 'recovered'!
cFuncs
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (44).
    ^recoveredValue0
! !

"psupp.ic method 0x20007814; bytecode file offset 0x15b0ac"
!OSTypeattr methodsFor: 'recovered'!
cVars
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (46).
    ^recoveredValue0
! !

"psupp.ic method 0x20007998; bytecode file offset 0x15b29c"
!OSTypeattr methodsFor: 'recovered'!
cImplTypes
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (48).
    ^recoveredValue0
! !

"psupp.ic method 0x20007a5c; bytecode file offset 0x15b348"
!OSTypeattr methodsFor: 'recovered'!
cbSizeVft
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (50).
    ^recoveredValue0
! !

"psupp.ic method 0x20007b8c; bytecode file offset 0x15b490"
!OSTypeattr methodsFor: 'recovered'!
cbAlignment
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (52).
    ^recoveredValue0
! !

"psupp.ic method 0x20007c44; bytecode file offset 0x15b4e8"
!OSTypeattr methodsFor: 'recovered'!
wTypeFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (54).
    ^recoveredValue0
! !

"psupp.ic method 0x20007dbc; bytecode file offset 0x15b654"
!OSTypeattr methodsFor: 'recovered'!
wMajorVerNum
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (56).
    ^recoveredValue0
! !

"psupp.ic method 0x20007de4; bytecode file offset 0x15b6b8"
!OSTypeattr methodsFor: 'recovered'!
wMinorVerNum
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (58).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d040; bytecode file offset 0x160b8c"
!OSTypeattr methodsFor: 'recovered'!
guid
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSGuid.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e7d4; bytecode file offset 0x162070"
!OSTypeattr methodsFor: 'recovered'!
tdescAlias
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSTypedesc.
    recoveredValue1 := (self) structAt: (60) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000feb4; bytecode file offset 0x165330"
!OSTypeattr methodsFor: 'recovered'!
guid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015f44; bytecode file offset 0x169eb4"
!OSTypeattr methodsFor: 'recovered'!
lcid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016a9c; bytecode file offset 0x16a7b4"
!OSTypeattr methodsFor: 'recovered'!
dwReserved: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200174e0; bytecode file offset 0x16afe8"
!OSTypeattr methodsFor: 'recovered'!
memidConstructor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017bb8; bytecode file offset 0x16b690"
!OSTypeattr methodsFor: 'recovered'!
memidDestructor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017f9c; bytecode file offset 0x16bb70"
!OSTypeattr methodsFor: 'recovered'!
lpstrSchema: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018674; bytecode file offset 0x16bff0"
!OSTypeattr methodsFor: 'recovered'!
cbSizeInstance: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018848; bytecode file offset 0x16c368"
!OSTypeattr methodsFor: 'recovered'!
typekind: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018bf0; bytecode file offset 0x16c6bc"
!OSTypeattr methodsFor: 'recovered'!
cFuncs: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (44) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018e90; bytecode file offset 0x16c770"
!OSTypeattr methodsFor: 'recovered'!
cVars: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (46) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019100; bytecode file offset 0x16c9d4"
!OSTypeattr methodsFor: 'recovered'!
cImplTypes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (48) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200191d8; bytecode file offset 0x16ca94"
!OSTypeattr methodsFor: 'recovered'!
cbSizeVft: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (50) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001928c; bytecode file offset 0x16cc74"
!OSTypeattr methodsFor: 'recovered'!
cbAlignment: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (52) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019418; bytecode file offset 0x16cce0"
!OSTypeattr methodsFor: 'recovered'!
wTypeFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (54) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200194c0; bytecode file offset 0x16ce9c"
!OSTypeattr methodsFor: 'recovered'!
wMajorVerNum: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (56) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019640; bytecode file offset 0x16cf14"
!OSTypeattr methodsFor: 'recovered'!
wMinorVerNum: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (58) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019760; bytecode file offset 0x16d088"
!OSTypeattr methodsFor: 'recovered'!
tdescAlias: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (60) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001d1cc; bytecode file offset 0x170b20"
!OSTypeattr methodsFor: 'recovered'!
lpstrSchema
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSOleStringZ.
    recoveredValue1 := (self) uint32At: (32).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001f1dc; bytecode file offset 0x172a98"
!OSTypeattr methodsFor: 'recovered'!
idldescType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSIdldesc.
    recoveredValue1 := (self) structAt: (68) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001fc24; bytecode file offset 0x1735ac"
!OSTypeattr methodsFor: 'recovered'!
idldescType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (68) put: (recoveredValue0).
    ^self
! !

