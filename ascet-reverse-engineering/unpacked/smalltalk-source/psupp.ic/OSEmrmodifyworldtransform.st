"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20006eac; bytecode file offset 0x15a780"
!OSEmrmodifyworldtransform methodsFor: 'recovered'!
iMode
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x2000cd80; bytecode file offset 0x160b8c"
!OSEmrmodifyworldtransform methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000d828; bytecode file offset 0x161514"
!OSEmrmodifyworldtransform methodsFor: 'recovered'!
xform
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSXform.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fc68; bytecode file offset 0x165330"
!OSEmrmodifyworldtransform methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200138c8; bytecode file offset 0x1683c0"
!OSEmrmodifyworldtransform methodsFor: 'recovered'!
xform: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017e58; bytecode file offset 0x16bb70"
!OSEmrmodifyworldtransform methodsFor: 'recovered'!
iMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

