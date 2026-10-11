"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20003b8c; bytecode file offset 0x157f64"
!OSEmrcreatepalette methodsFor: 'recovered'!
ihPal
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000cc50; bytecode file offset 0x160b8c"
!OSEmrcreatepalette methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000de3c; bytecode file offset 0x1617e8"
!OSEmrcreatepalette methodsFor: 'recovered'!
lgpl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLogpalette.
    recoveredValue1 := (self) structAt: (12) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010e38; bytecode file offset 0x165330"
!OSEmrcreatepalette methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200142e8; bytecode file offset 0x1683c0"
!OSEmrcreatepalette methodsFor: 'recovered'!
ihPal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015080; bytecode file offset 0x169290"
!OSEmrcreatepalette methodsFor: 'recovered'!
lgpl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (12) put: (recoveredValue0).
    ^self
! !

