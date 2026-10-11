"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000639c; bytecode file offset 0x159f34"
!OSEmrpolydraw methodsFor: 'recovered'!
cptl
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x2000bf28; bytecode file offset 0x15fa24"
!OSEmrpolydraw methodsFor: 'recovered'!
abTypes: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000c178; bytecode file offset 0x15fa24"
!OSEmrpolydraw methodsFor: 'recovered'!
aptl: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000cdb0; bytecode file offset 0x160b8c"
!OSEmrpolydraw methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000db48; bytecode file offset 0x161514"
!OSEmrpolydraw methodsFor: 'recovered'!
rclBounds
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRectl.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e458; bytecode file offset 0x161d04"
!OSEmrpolydraw methodsFor: 'recovered'!
aptl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPointl.
    recoveredValue1 := (self) arrayAt: (28) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e58c; bytecode file offset 0x161e88"
!OSEmrpolydraw methodsFor: 'recovered'!
abTypes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (36) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200100ac; bytecode file offset 0x165330"
!OSEmrpolydraw methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200139dc; bytecode file offset 0x1683c0"
!OSEmrpolydraw methodsFor: 'recovered'!
rclBounds: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017588; bytecode file offset 0x16afe8"
!OSEmrpolydraw methodsFor: 'recovered'!
cptl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

