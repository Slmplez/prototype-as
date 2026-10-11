"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001170; bytecode file offset 0x155d58"
!OSCommconfig methodsFor: 'recovered'!
dwSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002eb8; bytecode file offset 0x157170"
!OSCommconfig methodsFor: 'recovered'!
wVersion
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200039cc; bytecode file offset 0x1572b8"
!OSCommconfig methodsFor: 'recovered'!
wReserved
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (6).
    ^recoveredValue0
! !

"psupp.ic method 0x2000708c; bytecode file offset 0x15aa74"
!OSCommconfig methodsFor: 'recovered'!
dwProviderSubType
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (36).
    ^recoveredValue0
! !

"psupp.ic method 0x200072d0; bytecode file offset 0x15ad48"
!OSCommconfig methodsFor: 'recovered'!
dwProviderOffset
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (40).
    ^recoveredValue0
! !

"psupp.ic method 0x200075d0; bytecode file offset 0x15b000"
!OSCommconfig methodsFor: 'recovered'!
dwProviderSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (44).
    ^recoveredValue0
! !

"psupp.ic method 0x2000dbd8; bytecode file offset 0x161514"
!OSCommconfig methodsFor: 'recovered'!
dcb
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSDcb.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e6b0; bytecode file offset 0x161f9c"
!OSCommconfig methodsFor: 'recovered'!
wcProviderData
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt16.
    recoveredValue1 := (self) arrayAt: (48) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200103f4; bytecode file offset 0x165330"
!OSCommconfig methodsFor: 'recovered'!
dwSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012f08; bytecode file offset 0x166e00"
!OSCommconfig methodsFor: 'recovered'!
wVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200136b8; bytecode file offset 0x166f5c"
!OSCommconfig methodsFor: 'recovered'!
wReserved: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (6) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001388c; bytecode file offset 0x1683c0"
!OSCommconfig methodsFor: 'recovered'!
dcb: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001844c; bytecode file offset 0x16bff0"
!OSCommconfig methodsFor: 'recovered'!
dwProviderSubType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018a28; bytecode file offset 0x16c368"
!OSCommconfig methodsFor: 'recovered'!
dwProviderOffset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018c8c; bytecode file offset 0x16c6bc"
!OSCommconfig methodsFor: 'recovered'!
dwProviderSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (44) put: (recoveredValue0).
    ^self
! !

