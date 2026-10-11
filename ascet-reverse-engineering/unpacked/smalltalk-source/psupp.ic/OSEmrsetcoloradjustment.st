"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000cd20; bytecode file offset 0x160b8c"
!OSEmrsetcoloradjustment methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000d838; bytecode file offset 0x161514"
!OSEmrsetcoloradjustment methodsFor: 'recovered'!
ColorAdjustment
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSColoradjustment.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001169c; bytecode file offset 0x165330"
!OSEmrsetcoloradjustment methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200145e8; bytecode file offset 0x1683c0"
!OSEmrsetcoloradjustment methodsFor: 'recovered'!
ColorAdjustment: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

