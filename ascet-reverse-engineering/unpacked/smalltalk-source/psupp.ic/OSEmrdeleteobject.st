"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20003e74; bytecode file offset 0x157f64"
!OSEmrdeleteobject methodsFor: 'recovered'!
ihObject
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000cf60; bytecode file offset 0x160b8c"
!OSEmrdeleteobject methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fecc; bytecode file offset 0x165330"
!OSEmrdeleteobject methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013730; bytecode file offset 0x1683c0"
!OSEmrdeleteobject methodsFor: 'recovered'!
ihObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

