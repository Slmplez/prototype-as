"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002004; bytecode file offset 0x155d58"
!OSEnhmetaheader methodsFor: 'recovered'!
iType
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200031ac; bytecode file offset 0x157170"
!OSEnhmetaheader methodsFor: 'recovered'!
nSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200073d8; bytecode file offset 0x15ad48"
!OSEnhmetaheader methodsFor: 'recovered'!
dSignature
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (40).
    ^recoveredValue0
! !

"psupp.ic method 0x200075ac; bytecode file offset 0x15b000"
!OSEnhmetaheader methodsFor: 'recovered'!
nVersion
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (44).
    ^recoveredValue0
! !

"psupp.ic method 0x20007920; bytecode file offset 0x15b29c"
!OSEnhmetaheader methodsFor: 'recovered'!
nBytes
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (48).
    ^recoveredValue0
! !

"psupp.ic method 0x20007bc8; bytecode file offset 0x15b490"
!OSEnhmetaheader methodsFor: 'recovered'!
nRecords
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (52).
    ^recoveredValue0
! !

"psupp.ic method 0x20007db0; bytecode file offset 0x15b654"
!OSEnhmetaheader methodsFor: 'recovered'!
nHandles
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (56).
    ^recoveredValue0
! !

"psupp.ic method 0x20007df0; bytecode file offset 0x15b6b8"
!OSEnhmetaheader methodsFor: 'recovered'!
sReserved
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (58).
    ^recoveredValue0
! !

"psupp.ic method 0x20007ef4; bytecode file offset 0x15b7d4"
!OSEnhmetaheader methodsFor: 'recovered'!
nDescription
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (60).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b244; bytecode file offset 0x15eb84"
!OSEnhmetaheader methodsFor: 'recovered'!
offDescription
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (64).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b3dc; bytecode file offset 0x15ecb0"
!OSEnhmetaheader methodsFor: 'recovered'!
nPalEntries
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (68).
    ^recoveredValue0
! !

"psupp.ic method 0x2000da58; bytecode file offset 0x161514"
!OSEnhmetaheader methodsFor: 'recovered'!
rclBounds
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRectl.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e314; bytecode file offset 0x161c00"
!OSEnhmetaheader methodsFor: 'recovered'!
rclFrame
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRectl.
    recoveredValue1 := (self) structAt: (24) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fad0; bytecode file offset 0x165330"
!OSEnhmetaheader methodsFor: 'recovered'!
iType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200131fc; bytecode file offset 0x166e00"
!OSEnhmetaheader methodsFor: 'recovered'!
nSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200147c8; bytecode file offset 0x1683c0"
!OSEnhmetaheader methodsFor: 'recovered'!
rclBounds: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200174b0; bytecode file offset 0x16afe8"
!OSEnhmetaheader methodsFor: 'recovered'!
rclFrame: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018830; bytecode file offset 0x16c368"
!OSEnhmetaheader methodsFor: 'recovered'!
dSignature: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018c50; bytecode file offset 0x16c6bc"
!OSEnhmetaheader methodsFor: 'recovered'!
nVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (44) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018fc8; bytecode file offset 0x16c9d4"
!OSEnhmetaheader methodsFor: 'recovered'!
nBytes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (48) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001931c; bytecode file offset 0x16cc74"
!OSEnhmetaheader methodsFor: 'recovered'!
nRecords: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (52) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019598; bytecode file offset 0x16ce9c"
!OSEnhmetaheader methodsFor: 'recovered'!
nHandles: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (56) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019670; bytecode file offset 0x16cf14"
!OSEnhmetaheader methodsFor: 'recovered'!
sReserved: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (58) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200196e8; bytecode file offset 0x16d088"
!OSEnhmetaheader methodsFor: 'recovered'!
nDescription: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (60) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001f238; bytecode file offset 0x172af4"
!OSEnhmetaheader methodsFor: 'recovered'!
szlDevice
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSSizel.
    recoveredValue1 := (self) structAt: (72) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001f2b8; bytecode file offset 0x172b54"
!OSEnhmetaheader methodsFor: 'recovered'!
szlMillimeters
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSSizel.
    recoveredValue1 := (self) structAt: (80) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001fb24; bytecode file offset 0x173428"
!OSEnhmetaheader methodsFor: 'recovered'!
offDescription: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (64) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001fcfc; bytecode file offset 0x1735ac"
!OSEnhmetaheader methodsFor: 'recovered'!
nPalEntries: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (68) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001fd80; bytecode file offset 0x1736cc"
!OSEnhmetaheader methodsFor: 'recovered'!
szlDevice: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (72) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ffe8; bytecode file offset 0x173898"
!OSEnhmetaheader methodsFor: 'recovered'!
szlMillimeters: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (80) put: (recoveredValue0).
    ^self
! !

