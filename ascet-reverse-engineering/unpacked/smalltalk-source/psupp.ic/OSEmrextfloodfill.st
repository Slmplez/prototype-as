"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20005444; bytecode file offset 0x159294"
!OSEmrextfloodfill methodsFor: 'recovered'!
crColor
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x200060ac; bytecode file offset 0x159974"
!OSEmrextfloodfill methodsFor: 'recovered'!
iMode
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x2000ce30; bytecode file offset 0x160b8c"
!OSEmrextfloodfill methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000da78; bytecode file offset 0x161514"
!OSEmrextfloodfill methodsFor: 'recovered'!
ptlStart
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPointl.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200116f0; bytecode file offset 0x165330"
!OSEmrextfloodfill methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013700; bytecode file offset 0x1683c0"
!OSEmrextfloodfill methodsFor: 'recovered'!
ptlStart: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200161b4; bytecode file offset 0x169eb4"
!OSEmrextfloodfill methodsFor: 'recovered'!
crColor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016a84; bytecode file offset 0x16a7b4"
!OSEmrextfloodfill methodsFor: 'recovered'!
iMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

