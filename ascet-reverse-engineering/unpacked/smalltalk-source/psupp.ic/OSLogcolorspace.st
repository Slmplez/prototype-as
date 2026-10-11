"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20000f78; bytecode file offset 0x155d58"
!OSLogcolorspace methodsFor: 'recovered'!
lcsSignature
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002b10; bytecode file offset 0x157170"
!OSLogcolorspace methodsFor: 'recovered'!
lcsVersion
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003f40; bytecode file offset 0x157f64"
!OSLogcolorspace methodsFor: 'recovered'!
lcsSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004bcc; bytecode file offset 0x1589a4"
!OSLogcolorspace methodsFor: 'recovered'!
lcsCSType
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200053fc; bytecode file offset 0x159294"
!OSLogcolorspace methodsFor: 'recovered'!
lcsIntent
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20007cc0; bytecode file offset 0x15b654"
!OSLogcolorspace methodsFor: 'recovered'!
lcsGammaRed
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (56).
    ^recoveredValue0
! !

"psupp.ic method 0x20007f30; bytecode file offset 0x15b7d4"
!OSLogcolorspace methodsFor: 'recovered'!
lcsGammaGreen
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (60).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b250; bytecode file offset 0x15eb84"
!OSLogcolorspace methodsFor: 'recovered'!
lcsGammaBlue
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (64).
    ^recoveredValue0
! !

"psupp.ic method 0x2000e1a8; bytecode file offset 0x161aa4"
!OSLogcolorspace methodsFor: 'recovered'!
lcsEndpoints
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSCiexyztriple.
    recoveredValue1 := (self) structAt: (20) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200112ac; bytecode file offset 0x165330"
!OSLogcolorspace methodsFor: 'recovered'!
lcsSignature: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012638; bytecode file offset 0x166e00"
!OSLogcolorspace methodsFor: 'recovered'!
lcsVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014510; bytecode file offset 0x1683c0"
!OSLogcolorspace methodsFor: 'recovered'!
lcsSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015170; bytecode file offset 0x169290"
!OSLogcolorspace methodsFor: 'recovered'!
lcsCSType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015cf8; bytecode file offset 0x169eb4"
!OSLogcolorspace methodsFor: 'recovered'!
lcsIntent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200167e4; bytecode file offset 0x16a7b4"
!OSLogcolorspace methodsFor: 'recovered'!
lcsEndpoints: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019520; bytecode file offset 0x16ce9c"
!OSLogcolorspace methodsFor: 'recovered'!
lcsGammaRed: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (56) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20019724; bytecode file offset 0x16d088"
!OSLogcolorspace methodsFor: 'recovered'!
lcsGammaGreen: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (60) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001a660; bytecode file offset 0x16e2c4"
!OSLogcolorspace methodsFor: 'recovered'!
createColorSpace
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSHcolorspace.
    recoveredValue1 := CreateColorSpace.
    recoveredValue2 := (recoveredValue1) callWith: (self).
    recoveredValue3 := (recoveredValue0) immediate: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x2001fab8; bytecode file offset 0x173428"
!OSLogcolorspace methodsFor: 'recovered'!
lcsGammaBlue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (64) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200252c4; bytecode file offset 0x178b5c"
!OSLogcolorspace methodsFor: 'recovered'!
lcsFilename
    | recoveredValue0 |
    recoveredValue0 := (self) stringAt: (68) size: (260).
    ^recoveredValue0
! !

"psupp.ic method 0x20029114; bytecode file offset 0x17c9ac"
!OSLogcolorspace methodsFor: 'recovered'!
lcsFilename: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) stringAt: (68) put: (recoveredValue0) size: (260).
    ^self
! !

