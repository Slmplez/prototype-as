"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20004060; bytecode file offset 0x157f64"
!OSEmrresizepalette methodsFor: 'recovered'!
ihPal
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004d34; bytecode file offset 0x1589a4"
!OSEmrresizepalette methodsFor: 'recovered'!
cEntries
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2000ca30; bytecode file offset 0x160b8c"
!OSEmrresizepalette methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fd04; bytecode file offset 0x165330"
!OSEmrresizepalette methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014168; bytecode file offset 0x1683c0"
!OSEmrresizepalette methodsFor: 'recovered'!
ihPal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014ccc; bytecode file offset 0x169290"
!OSEmrresizepalette methodsFor: 'recovered'!
cEntries: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

