"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200018c0; bytecode file offset 0x155d58"
!OSBitmapv4header methodsFor: 'recovered'!
bV4Size
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003440; bytecode file offset 0x157170"
!OSBitmapv4header methodsFor: 'recovered'!
bV4Width
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004000; bytecode file offset 0x157f64"
!OSBitmapv4header methodsFor: 'recovered'!
bV4Height
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20005010; bytecode file offset 0x1589a4"
!OSBitmapv4header methodsFor: 'recovered'!
bV4Planes
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2000514c; bytecode file offset 0x158aa4"
!OSBitmapv4header methodsFor: 'recovered'!
bV4BitCount
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (14).
    ^recoveredValue0
! !

"psupp.ic method 0x20005498; bytecode file offset 0x159294"
!OSBitmapv4header methodsFor: 'recovered'!
bV4V4Compression
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005c68; bytecode file offset 0x159974"
!OSBitmapv4header methodsFor: 'recovered'!
bV4SizeImage
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x20006504; bytecode file offset 0x159f34"
!OSBitmapv4header methodsFor: 'recovered'!
bV4XPelsPerMeter
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20006a58; bytecode file offset 0x15a428"
!OSBitmapv4header methodsFor: 'recovered'!
bV4YPelsPerMeter
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20006e7c; bytecode file offset 0x15a780"
!OSBitmapv4header methodsFor: 'recovered'!
bV4ClrUsed
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x200070e0; bytecode file offset 0x15aa74"
!OSBitmapv4header methodsFor: 'recovered'!
bV4ClrImportant
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (36).
    ^recoveredValue0
! !

"psupp.ic method 0x200074a4; bytecode file offset 0x15ad48"
!OSBitmapv4header methodsFor: 'recovered'!
bV4RedMask
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (40).
    ^recoveredValue0
! !

"psupp.ic method 0x20007720; bytecode file offset 0x15b000"
!OSBitmapv4header methodsFor: 'recovered'!
bV4GreenMask
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (44).
    ^recoveredValue0
! !

"psupp.ic method 0x200078e4; bytecode file offset 0x15b29c"
!OSBitmapv4header methodsFor: 'recovered'!
bV4BlueMask
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (48).
    ^recoveredValue0
! !

"psupp.ic method 0x20007bf8; bytecode file offset 0x15b490"
!OSBitmapv4header methodsFor: 'recovered'!
bV4AlphaMask
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (52).
    ^recoveredValue0
! !

"psupp.ic method 0x20007d2c; bytecode file offset 0x15b654"
!OSBitmapv4header methodsFor: 'recovered'!
bV4CSType
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (56).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b7e4; bytecode file offset 0x15f0a0"
!OSBitmapv4header methodsFor: 'recovered'!
bV4GammaRed
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (96).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b868; bytecode file offset 0x15f124"
!OSBitmapv4header methodsFor: 'recovered'!
bV4GammaGreen
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (100).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b934; bytecode file offset 0x15f1d8"
!OSBitmapv4header methodsFor: 'recovered'!
bV4GammaBlue
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (104).
    ^recoveredValue0
! !

"psupp.ic method 0x2000e7b4; bytecode file offset 0x162070"
!OSBitmapv4header methodsFor: 'recovered'!
bV4Endpoints
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSCiexyztriple.
    recoveredValue1 := (self) structAt: (60) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200109a0; bytecode file offset 0x165330"
!OSBitmapv4header methodsFor: 'recovered'!
bV4Size: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012ce0; bytecode file offset 0x166e00"
!OSBitmapv4header methodsFor: 'recovered'!
bV4Width: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013e8c; bytecode file offset 0x1683c0"
!OSBitmapv4header methodsFor: 'recovered'!
bV4Height: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200155a8; bytecode file offset 0x169290"
!OSBitmapv4header methodsFor: 'recovered'!
bV4Planes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015ae8; bytecode file offset 0x169398"
!OSBitmapv4header methodsFor: 'recovered'!
bV4BitCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (14) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016604; bytecode file offset 0x169eb4"
!OSBitmapv4header methodsFor: 'recovered'!
bV4V4Compression: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016754; bytecode file offset 0x16a7b4"
!OSBitmapv4header methodsFor: 'recovered'!
bV4SizeImage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017468; bytecode file offset 0x16afe8"
!OSBitmapv4header methodsFor: 'recovered'!
bV4XPelsPerMeter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200178ac; bytecode file offset 0x16b690"
!OSBitmapv4header methodsFor: 'recovered'!
bV4YPelsPerMeter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017ef4; bytecode file offset 0x16bb70"
!OSBitmapv4header methodsFor: 'recovered'!
bV4ClrUsed: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200185f0; bytecode file offset 0x16bff0"
!OSBitmapv4header methodsFor: 'recovered'!
bV4ClrImportant: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001886c; bytecode file offset 0x16c368"
!OSBitmapv4header methodsFor: 'recovered'!
bV4RedMask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (40) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018d7c; bytecode file offset 0x16c6bc"
!OSBitmapv4header methodsFor: 'recovered'!
bV4GreenMask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (44) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019004; bytecode file offset 0x16c9d4"
!OSBitmapv4header methodsFor: 'recovered'!
bV4BlueMask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (48) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019280; bytecode file offset 0x16cc74"
!OSBitmapv4header methodsFor: 'recovered'!
bV4AlphaMask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (52) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019514; bytecode file offset 0x16ce9c"
!OSBitmapv4header methodsFor: 'recovered'!
bV4CSType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (56) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019718; bytecode file offset 0x16d088"
!OSBitmapv4header methodsFor: 'recovered'!
bV4Endpoints: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (60) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200202d0; bytecode file offset 0x173b74"
!OSBitmapv4header methodsFor: 'recovered'!
bV4GammaRed: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (96) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200202f8; bytecode file offset 0x173c20"
!OSBitmapv4header methodsFor: 'recovered'!
bV4GammaGreen: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (100) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200203cc; bytecode file offset 0x173cdc"
!OSBitmapv4header methodsFor: 'recovered'!
bV4GammaBlue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (104) put: (recoveredValue0).
    ^self
! !

