"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200063e4; bytecode file offset 0x159f34"
!OSEmrpolylineto methodsFor: 'recovered'!
cptl
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x2000c008; bytecode file offset 0x15fa24"
!OSEmrpolylineto methodsFor: 'recovered'!
aptl: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000d140; bytecode file offset 0x160b8c"
!OSEmrpolylineto methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000dc28; bytecode file offset 0x161514"
!OSEmrpolylineto methodsFor: 'recovered'!
rclBounds
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRectl.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e408; bytecode file offset 0x161d04"
!OSEmrpolylineto methodsFor: 'recovered'!
aptl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPointl.
    recoveredValue1 := (self) arrayAt: (28) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200118d0; bytecode file offset 0x165330"
!OSEmrpolylineto methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001454c; bytecode file offset 0x1683c0"
!OSEmrpolylineto methodsFor: 'recovered'!
rclBounds: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200173f0; bytecode file offset 0x16afe8"
!OSEmrpolylineto methodsFor: 'recovered'!
cptl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

