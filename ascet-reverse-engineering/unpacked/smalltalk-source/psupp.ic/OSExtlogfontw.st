"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000b028; bytecode file offset 0x15e8c0"
!OSExtlogfontw methodsFor: 'recovered'!
elfVersion
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (284).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b070; bytecode file offset 0x15e908"
!OSExtlogfontw methodsFor: 'recovered'!
elfStyleSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (288).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b0b8; bytecode file offset 0x15e950"
!OSExtlogfontw methodsFor: 'recovered'!
elfMatch
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (292).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b10c; bytecode file offset 0x15e9a4"
!OSExtlogfontw methodsFor: 'recovered'!
elfReserved
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (296).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b160; bytecode file offset 0x15e9f8"
!OSExtlogfontw methodsFor: 'recovered'!
elfCulture
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (304).
    ^recoveredValue0
! !

"psupp.ic method 0x2000ce70; bytecode file offset 0x160b8c"
!OSExtlogfontw methodsFor: 'recovered'!
elfLogFont
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLogfontw.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010838; bytecode file offset 0x165330"
!OSExtlogfontw methodsFor: 'recovered'!
elfLogFont: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001f17c; bytecode file offset 0x172a18"
!OSExtlogfontw methodsFor: 'recovered'!
elfPanose
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPanose.
    recoveredValue1 := (self) structAt: (308) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001f80c; bytecode file offset 0x1730a4"
!OSExtlogfontw methodsFor: 'recovered'!
elfVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (284) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001f868; bytecode file offset 0x173100"
!OSExtlogfontw methodsFor: 'recovered'!
elfStyleSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (288) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001f8c4; bytecode file offset 0x17315c"
!OSExtlogfontw methodsFor: 'recovered'!
elfMatch: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (292) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001f920; bytecode file offset 0x1731b8"
!OSExtlogfontw methodsFor: 'recovered'!
elfReserved: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (296) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001f98c; bytecode file offset 0x173224"
!OSExtlogfontw methodsFor: 'recovered'!
elfCulture: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (304) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001f9dc; bytecode file offset 0x173274"
!OSExtlogfontw methodsFor: 'recovered'!
elfPanose: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (308) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20027634; bytecode file offset 0x17aed0"
!OSExtlogfontw methodsFor: 'recovered'!
elfVendorId
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (300) size: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200276d4; bytecode file offset 0x17af70"
!OSExtlogfontw methodsFor: 'recovered'!
elfStyle
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt16.
    recoveredValue1 := (self) arrayAt: (220) size: (32) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20027aa0; bytecode file offset 0x17b338"
!OSExtlogfontw methodsFor: 'recovered'!
elfVendorId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (300) put: (recoveredValue0) size: (4).
    ^self
! !

"psupp.ic method 0x20027b48; bytecode file offset 0x17b3e0"
!OSExtlogfontw methodsFor: 'recovered'!
elfStyle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (220) put: (recoveredValue0) size: (32).
    ^self
! !

"psupp.ic method 0x20029134; bytecode file offset 0x17c9cc"
!OSExtlogfontw methodsFor: 'recovered'!
elfFullName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (92) put: (recoveredValue0) size: (64).
    ^self
! !

"psupp.ic method 0x2002a2f8; bytecode file offset 0x17db94"
!OSExtlogfontw methodsFor: 'recovered'!
elfFullName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt16.
    recoveredValue1 := (self) arrayAt: (92) size: (64) type: (recoveredValue0).
    ^recoveredValue1
! !

