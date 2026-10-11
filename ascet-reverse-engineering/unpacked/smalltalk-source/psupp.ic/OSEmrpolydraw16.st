"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200062f4; bytecode file offset 0x159f34"
!OSEmrpolydraw16 methodsFor: 'recovered'!
cpts
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x2000bff8; bytecode file offset 0x15fa24"
!OSEmrpolydraw16 methodsFor: 'recovered'!
apts: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000c118; bytecode file offset 0x15fa24"
!OSEmrpolydraw16 methodsFor: 'recovered'!
abTypes: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000cc70; bytecode file offset 0x160b8c"
!OSEmrpolydraw16 methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000d818; bytecode file offset 0x161514"
!OSEmrpolydraw16 methodsFor: 'recovered'!
rclBounds
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRectl.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e3f8; bytecode file offset 0x161d04"
!OSEmrpolydraw16 methodsFor: 'recovered'!
apts
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPoints.
    recoveredValue1 := (self) arrayAt: (28) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e520; bytecode file offset 0x161e0c"
!OSEmrpolydraw16 methodsFor: 'recovered'!
abTypes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (32) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010190; bytecode file offset 0x165330"
!OSEmrpolydraw16 methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200147a4; bytecode file offset 0x1683c0"
!OSEmrpolydraw16 methodsFor: 'recovered'!
rclBounds: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001703c; bytecode file offset 0x16afe8"
!OSEmrpolydraw16 methodsFor: 'recovered'!
cpts: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

