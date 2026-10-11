"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000cd00; bytecode file offset 0x160b8c"
!OSEmrsetbrushorgex methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000dc58; bytecode file offset 0x161514"
!OSEmrsetbrushorgex methodsFor: 'recovered'!
ptlOrigin
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPointl.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200111d4; bytecode file offset 0x165330"
!OSEmrsetbrushorgex methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013df0; bytecode file offset 0x1683c0"
!OSEmrsetbrushorgex methodsFor: 'recovered'!
ptlOrigin: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

