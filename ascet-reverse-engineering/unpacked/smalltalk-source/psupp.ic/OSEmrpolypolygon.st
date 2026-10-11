"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000660c; bytecode file offset 0x159f34"
!OSEmrpolypolygon methodsFor: 'recovered'!
nPolys
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x20006974; bytecode file offset 0x15a428"
!OSEmrpolypolygon methodsFor: 'recovered'!
cptl
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x2000c158; bytecode file offset 0x15fa24"
!OSEmrpolypolygon methodsFor: 'recovered'!
aptl: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000c168; bytecode file offset 0x15fa24"
!OSEmrpolypolygon methodsFor: 'recovered'!
aPolyCounts: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000cb90; bytecode file offset 0x160b8c"
!OSEmrpolypolygon methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000db78; bytecode file offset 0x161514"
!OSEmrpolypolygon methodsFor: 'recovered'!
rclBounds
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRectl.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e4e0; bytecode file offset 0x161e0c"
!OSEmrpolypolygon methodsFor: 'recovered'!
aPolyCounts
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) arrayAt: (32) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e5cc; bytecode file offset 0x161e88"
!OSEmrpolypolygon methodsFor: 'recovered'!
aptl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPointl.
    recoveredValue1 := (self) arrayAt: (36) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010ce8; bytecode file offset 0x165330"
!OSEmrpolypolygon methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014b04; bytecode file offset 0x1683c0"
!OSEmrpolypolygon methodsFor: 'recovered'!
rclBounds: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017048; bytecode file offset 0x16afe8"
!OSEmrpolypolygon methodsFor: 'recovered'!
nPolys: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200179cc; bytecode file offset 0x16b690"
!OSEmrpolypolygon methodsFor: 'recovered'!
cptl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

