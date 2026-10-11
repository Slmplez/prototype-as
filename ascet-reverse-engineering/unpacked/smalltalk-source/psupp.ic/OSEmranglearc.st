"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20005390; bytecode file offset 0x159294"
!OSEmranglearc methodsFor: 'recovered'!
nRadius
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005ef0; bytecode file offset 0x159974"
!OSEmranglearc methodsFor: 'recovered'!
eStartAngle
    | recoveredValue0 |
    recoveredValue0 := (self) float32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x20006570; bytecode file offset 0x159f34"
!OSEmranglearc methodsFor: 'recovered'!
eSweepAngle
    | recoveredValue0 |
    recoveredValue0 := (self) float32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x2000cf80; bytecode file offset 0x160b8c"
!OSEmranglearc methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000da38; bytecode file offset 0x161514"
!OSEmranglearc methodsFor: 'recovered'!
ptlCenter
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPointl.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011a74; bytecode file offset 0x165330"
!OSEmranglearc methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013934; bytecode file offset 0x1683c0"
!OSEmranglearc methodsFor: 'recovered'!
ptlCenter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001655c; bytecode file offset 0x169eb4"
!OSEmranglearc methodsFor: 'recovered'!
nRadius: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016e44; bytecode file offset 0x16a7b4"
!OSEmranglearc methodsFor: 'recovered'!
eStartAngle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) float32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017504; bytecode file offset 0x16afe8"
!OSEmranglearc methodsFor: 'recovered'!
eSweepAngle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) float32At: (24) put: (recoveredValue0).
    ^self
! !

