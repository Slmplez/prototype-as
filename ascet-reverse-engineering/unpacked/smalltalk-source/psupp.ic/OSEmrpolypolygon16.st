"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20006348; bytecode file offset 0x159f34"
!OSEmrpolypolygon16 methodsFor: 'recovered'!
nPolys
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x2000692c; bytecode file offset 0x15a428"
!OSEmrpolypolygon16 methodsFor: 'recovered'!
cpts
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x2000bf38; bytecode file offset 0x15fa24"
!OSEmrpolypolygon16 methodsFor: 'recovered'!
aPolyCounts: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000c0c8; bytecode file offset 0x15fa24"
!OSEmrpolypolygon16 methodsFor: 'recovered'!
apts: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000cb00; bytecode file offset 0x160b8c"
!OSEmrpolypolygon16 methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000da68; bytecode file offset 0x161514"
!OSEmrpolypolygon16 methodsFor: 'recovered'!
rclBounds
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRectl.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e4c0; bytecode file offset 0x161e0c"
!OSEmrpolypolygon16 methodsFor: 'recovered'!
aPolyCounts
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) arrayAt: (32) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e59c; bytecode file offset 0x161e88"
!OSEmrpolypolygon16 methodsFor: 'recovered'!
apts
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPoints.
    recoveredValue1 := (self) arrayAt: (36) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000f9d4; bytecode file offset 0x165330"
!OSEmrpolypolygon16 methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013e74; bytecode file offset 0x1683c0"
!OSEmrpolypolygon16 methodsFor: 'recovered'!
rclBounds: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017114; bytecode file offset 0x16afe8"
!OSEmrpolypolygon16 methodsFor: 'recovered'!
nPolys: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017b7c; bytecode file offset 0x16b690"
!OSEmrpolypolygon16 methodsFor: 'recovered'!
cpts: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

