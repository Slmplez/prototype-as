"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001950; bytecode file offset 0x155d58"
!OSOleuiviewprops methodsFor: 'recovered'!
cbStruct
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003038; bytecode file offset 0x157170"
!OSOleuiviewprops methodsFor: 'recovered'!
dwFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000584c; bytecode file offset 0x159294"
!OSOleuiviewprops methodsFor: 'recovered'!
lpfnHook
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005b0c; bytecode file offset 0x159974"
!OSOleuiviewprops methodsFor: 'recovered'!
lCustData
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x200073a8; bytecode file offset 0x15ad48"
!OSOleuiviewprops methodsFor: 'recovered'!
nScaleMin
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (40).
    ^recoveredValue0
! !

"psupp.ic method 0x20007600; bytecode file offset 0x15b000"
!OSOleuiviewprops methodsFor: 'recovered'!
nScaleMax
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (44).
    ^recoveredValue0
! !

"psupp.ic method 0x2000ffd4; bytecode file offset 0x165330"
!OSOleuiviewprops methodsFor: 'recovered'!
cbStruct: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200124e8; bytecode file offset 0x166e00"
!OSOleuiviewprops methodsFor: 'recovered'!
dwFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016280; bytecode file offset 0x169eb4"
!OSOleuiviewprops methodsFor: 'recovered'!
lpfnHook: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200169ac; bytecode file offset 0x16a7b4"
!OSOleuiviewprops methodsFor: 'recovered'!
lCustData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018440; bytecode file offset 0x16bff0"
!OSOleuiviewprops methodsFor: 'recovered'!
lpOP: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200188cc; bytecode file offset 0x16c368"
!OSOleuiviewprops methodsFor: 'recovered'!
nScaleMin: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018d40; bytecode file offset 0x16c6bc"
!OSOleuiviewprops methodsFor: 'recovered'!
nScaleMax: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (44) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001d338; bytecode file offset 0x170d40"
!OSOleuiviewprops methodsFor: 'recovered'!
lpOP
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSOleuiobjectprops.
    recoveredValue1 := (self) uint32At: (36).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20022118; bytecode file offset 0x1759c4"
!OSOleuiviewprops methodsFor: 'recovered'!
dwReserved1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) arrayAt: (8) size: (2) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20022318; bytecode file offset 0x175bd4"
!OSOleuiviewprops methodsFor: 'recovered'!
dwReserved2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) arrayAt: (24) size: (3) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200239b4; bytecode file offset 0x177258"
!OSOleuiviewprops methodsFor: 'recovered'!
dwReserved1: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (8) put: (recoveredValue0) size: (2).
    ^self
! !

"psupp.ic method 0x20023c14; bytecode file offset 0x1774d0"
!OSOleuiviewprops methodsFor: 'recovered'!
dwReserved2: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (24) put: (recoveredValue0) size: (3).
    ^self
! !

