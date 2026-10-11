"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200041b0; bytecode file offset 0x157f64"
!OSEmrsetmiterlimit methodsFor: 'recovered'!
eMiterLimit
    | recoveredValue0 |
    recoveredValue0 := (self) float32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000cb80; bytecode file offset 0x160b8c"
!OSEmrsetmiterlimit methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200109e8; bytecode file offset 0x165330"
!OSEmrsetmiterlimit methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014ab0; bytecode file offset 0x1683c0"
!OSEmrsetmiterlimit methodsFor: 'recovered'!
eMiterLimit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) float32At: (8) put: (recoveredValue0).
    ^self
! !

