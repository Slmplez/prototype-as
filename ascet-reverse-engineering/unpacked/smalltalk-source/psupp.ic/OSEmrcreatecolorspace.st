"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20003f94; bytecode file offset 0x157f64"
!OSEmrcreatecolorspace methodsFor: 'recovered'!
ihCS
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000cce0; bytecode file offset 0x160b8c"
!OSEmrcreatecolorspace methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000ddac; bytecode file offset 0x1617e8"
!OSEmrcreatecolorspace methodsFor: 'recovered'!
lcs
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLogcolorspacew.
    recoveredValue1 := (self) structAt: (12) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200110e4; bytecode file offset 0x165330"
!OSEmrcreatecolorspace methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014054; bytecode file offset 0x1683c0"
!OSEmrcreatecolorspace methodsFor: 'recovered'!
ihCS: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014df8; bytecode file offset 0x169290"
!OSEmrcreatecolorspace methodsFor: 'recovered'!
lcs: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (12) put: (recoveredValue0).
    ^self
! !

