"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200018e4; bytecode file offset 0x155d58"
!OSLogcolorspacew methodsFor: 'recovered'!
lcsSignature
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000341c; bytecode file offset 0x157170"
!OSLogcolorspacew methodsFor: 'recovered'!
lcsVersion
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200043a8; bytecode file offset 0x157f64"
!OSLogcolorspacew methodsFor: 'recovered'!
lcsSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004d28; bytecode file offset 0x1589a4"
!OSLogcolorspacew methodsFor: 'recovered'!
lcsCSType
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005348; bytecode file offset 0x159294"
!OSLogcolorspacew methodsFor: 'recovered'!
lcsIntent
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20007d5c; bytecode file offset 0x15b654"
!OSLogcolorspacew methodsFor: 'recovered'!
lcsGammaRed
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (56).
    ^recoveredValue0
! !

"psupp.ic method 0x20007e64; bytecode file offset 0x15b7d4"
!OSLogcolorspacew methodsFor: 'recovered'!
lcsGammaGreen
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (60).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b2bc; bytecode file offset 0x15eb84"
!OSLogcolorspacew methodsFor: 'recovered'!
lcsGammaBlue
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (64).
    ^recoveredValue0
! !

"psupp.ic method 0x2000e128; bytecode file offset 0x161aa4"
!OSLogcolorspacew methodsFor: 'recovered'!
lcsEndpoints
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSCiexyztriple.
    recoveredValue1 := (self) structAt: (20) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001100c; bytecode file offset 0x165330"
!OSLogcolorspacew methodsFor: 'recovered'!
lcsSignature: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200133e8; bytecode file offset 0x166e00"
!OSLogcolorspacew methodsFor: 'recovered'!
lcsVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001385c; bytecode file offset 0x1683c0"
!OSLogcolorspacew methodsFor: 'recovered'!
lcsSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015230; bytecode file offset 0x169290"
!OSLogcolorspacew methodsFor: 'recovered'!
lcsCSType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015e0c; bytecode file offset 0x169eb4"
!OSLogcolorspacew methodsFor: 'recovered'!
lcsIntent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016cd0; bytecode file offset 0x16a7b4"
!OSLogcolorspacew methodsFor: 'recovered'!
lcsEndpoints: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019484; bytecode file offset 0x16ce9c"
!OSLogcolorspacew methodsFor: 'recovered'!
lcsGammaRed: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (56) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019790; bytecode file offset 0x16d088"
!OSLogcolorspacew methodsFor: 'recovered'!
lcsGammaGreen: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (60) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001a900; bytecode file offset 0x16e2c4"
!OSLogcolorspacew methodsFor: 'recovered'!
createColorSpace
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSHcolorspace.
    recoveredValue1 := CreateColorSpaceW.
    recoveredValue2 := (recoveredValue1) callWith: (self).
    recoveredValue3 := (recoveredValue0) immediate: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x2001fad0; bytecode file offset 0x173428"
!OSLogcolorspacew methodsFor: 'recovered'!
lcsGammaBlue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (64) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20029108; bytecode file offset 0x17c9ac"
!OSLogcolorspacew methodsFor: 'recovered'!
lcsFilename: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (68) put: (recoveredValue0) size: (260).
    ^self
! !

"psupp.ic method 0x2002a2d4; bytecode file offset 0x17db70"
!OSLogcolorspacew methodsFor: 'recovered'!
lcsFilename
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt16.
    recoveredValue1 := (self) arrayAt: (68) size: (260) type: (recoveredValue0).
    ^recoveredValue1
! !

