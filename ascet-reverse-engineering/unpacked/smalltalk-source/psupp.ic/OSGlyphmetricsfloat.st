"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001404; bytecode file offset 0x155d58"
!OSGlyphmetricsfloat methodsFor: 'recovered'!
gmfBlackBoxX
    | recoveredValue0 |
    recoveredValue0 := (self) float32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003068; bytecode file offset 0x157170"
!OSGlyphmetricsfloat methodsFor: 'recovered'!
gmfBlackBoxY
    | recoveredValue0 |
    recoveredValue0 := (self) float32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000569c; bytecode file offset 0x159294"
!OSGlyphmetricsfloat methodsFor: 'recovered'!
gmfCellIncX
    | recoveredValue0 |
    recoveredValue0 := (self) float32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005f38; bytecode file offset 0x159974"
!OSGlyphmetricsfloat methodsFor: 'recovered'!
gmfCellIncY
    | recoveredValue0 |
    recoveredValue0 := (self) float32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d898; bytecode file offset 0x161514"
!OSGlyphmetricsfloat methodsFor: 'recovered'!
gmfptGlyphOrigin
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPointfloat.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fe30; bytecode file offset 0x165330"
!OSGlyphmetricsfloat methodsFor: 'recovered'!
gmfBlackBoxX: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) float32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001250c; bytecode file offset 0x166e00"
!OSGlyphmetricsfloat methodsFor: 'recovered'!
gmfBlackBoxY: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) float32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013928; bytecode file offset 0x1683c0"
!OSGlyphmetricsfloat methodsFor: 'recovered'!
gmfptGlyphOrigin: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015cec; bytecode file offset 0x169eb4"
!OSGlyphmetricsfloat methodsFor: 'recovered'!
gmfCellIncX: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) float32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016eec; bytecode file offset 0x16a7b4"
!OSGlyphmetricsfloat methodsFor: 'recovered'!
gmfCellIncY: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) float32At: (20) put: (recoveredValue0).
    ^self
! !

