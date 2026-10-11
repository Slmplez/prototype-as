"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20006684; bytecode file offset 0x159f34"
!OSEmrpolylineto16 methodsFor: 'recovered'!
cpts
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x2000bf18; bytecode file offset 0x15fa24"
!OSEmrpolylineto16 methodsFor: 'recovered'!
apts: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000d190; bytecode file offset 0x160b8c"
!OSEmrpolylineto16 methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000d958; bytecode file offset 0x161514"
!OSEmrpolylineto16 methodsFor: 'recovered'!
rclBounds
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRectl.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e3c8; bytecode file offset 0x161d04"
!OSEmrpolylineto16 methodsFor: 'recovered'!
apts
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPoints.
    recoveredValue1 := (self) arrayAt: (28) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010424; bytecode file offset 0x165330"
!OSEmrpolylineto16 methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200145b8; bytecode file offset 0x1683c0"
!OSEmrpolylineto16 methodsFor: 'recovered'!
rclBounds: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200174d4; bytecode file offset 0x16afe8"
!OSEmrpolylineto16 methodsFor: 'recovered'!
cpts: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

