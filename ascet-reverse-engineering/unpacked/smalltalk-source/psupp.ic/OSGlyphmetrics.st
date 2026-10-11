"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000228c; bytecode file offset 0x155d58"
!OSGlyphmetrics methodsFor: 'recovered'!
gmBlackBoxX
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002b04; bytecode file offset 0x157170"
!OSGlyphmetrics methodsFor: 'recovered'!
gmBlackBoxY
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20005510; bytecode file offset 0x159294"
!OSGlyphmetrics methodsFor: 'recovered'!
gmCellIncX
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005a90; bytecode file offset 0x159358"
!OSGlyphmetrics methodsFor: 'recovered'!
gmCellIncY
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (18).
    ^recoveredValue0
! !

"psupp.ic method 0x2000da48; bytecode file offset 0x161514"
!OSGlyphmetrics methodsFor: 'recovered'!
gmptGlyphOrigin
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPoint.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011480; bytecode file offset 0x165330"
!OSGlyphmetrics methodsFor: 'recovered'!
gmBlackBoxX: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012668; bytecode file offset 0x166e00"
!OSGlyphmetrics methodsFor: 'recovered'!
gmBlackBoxY: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014aa4; bytecode file offset 0x1683c0"
!OSGlyphmetrics methodsFor: 'recovered'!
gmptGlyphOrigin: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200162b0; bytecode file offset 0x169eb4"
!OSGlyphmetrics methodsFor: 'recovered'!
gmCellIncX: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int16At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200166f4; bytecode file offset 0x169f98"
!OSGlyphmetrics methodsFor: 'recovered'!
gmCellIncY: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int16At: (18) put: (recoveredValue0).
    ^self
! !

