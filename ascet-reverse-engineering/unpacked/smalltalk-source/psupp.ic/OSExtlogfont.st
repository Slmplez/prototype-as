"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000accc; bytecode file offset 0x15e5d8"
!OSExtlogfont methodsFor: 'recovered'!
extCreateFontIndirect
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000aff8; bytecode file offset 0x15e8a8"
!OSExtlogfont methodsFor: 'recovered'!
elfVersion
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (156).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b04c; bytecode file offset 0x15e8f0"
!OSExtlogfont methodsFor: 'recovered'!
elfStyleSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (160).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b088; bytecode file offset 0x15e938"
!OSExtlogfont methodsFor: 'recovered'!
elfMatch
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (164).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b0e8; bytecode file offset 0x15e98c"
!OSExtlogfont methodsFor: 'recovered'!
elfReserved
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (168).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b13c; bytecode file offset 0x15e9e0"
!OSExtlogfont methodsFor: 'recovered'!
elfCulture
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (176).
    ^recoveredValue0
! !

"psupp.ic method 0x2000c9e0; bytecode file offset 0x160b8c"
!OSExtlogfont methodsFor: 'recovered'!
elfLogFont
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLogfont.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200108ec; bytecode file offset 0x165330"
!OSExtlogfont methodsFor: 'recovered'!
elfLogFont: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001f15c; bytecode file offset 0x1729f8"
!OSExtlogfont methodsFor: 'recovered'!
elfPanose
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPanose.
    recoveredValue1 := (self) structAt: (180) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001f7e4; bytecode file offset 0x173088"
!OSExtlogfont methodsFor: 'recovered'!
elfVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (156) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001f834; bytecode file offset 0x1730e4"
!OSExtlogfont methodsFor: 'recovered'!
elfStyleSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (160) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001f884; bytecode file offset 0x173140"
!OSExtlogfont methodsFor: 'recovered'!
elfMatch: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (164) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001f8f8; bytecode file offset 0x17319c"
!OSExtlogfont methodsFor: 'recovered'!
elfReserved: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (168) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001f970; bytecode file offset 0x173208"
!OSExtlogfont methodsFor: 'recovered'!
elfCulture: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (176) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001f9b4; bytecode file offset 0x173258"
!OSExtlogfont methodsFor: 'recovered'!
elfPanose: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (180) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20025788; bytecode file offset 0x179020"
!OSExtlogfont methodsFor: 'recovered'!
elfFullName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (60) put: (recoveredValue0) size: (64).
    ^self
! !

"psupp.ic method 0x20027574; bytecode file offset 0x17ae30"
!OSExtlogfont methodsFor: 'recovered'!
elfFullName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (60) size: (64) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200275f4; bytecode file offset 0x17ae90"
!OSExtlogfont methodsFor: 'recovered'!
elfVendorId
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (172) size: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20027724; bytecode file offset 0x17afd0"
!OSExtlogfont methodsFor: 'recovered'!
elfStyle
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (124) size: (32) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20027a68; bytecode file offset 0x17b300"
!OSExtlogfont methodsFor: 'recovered'!
elfVendorId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (172) put: (recoveredValue0) size: (4).
    ^self
! !

"psupp.ic method 0x20027ba8; bytecode file offset 0x17b44c"
!OSExtlogfont methodsFor: 'recovered'!
elfStyle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (124) put: (recoveredValue0) size: (32).
    ^self
! !

