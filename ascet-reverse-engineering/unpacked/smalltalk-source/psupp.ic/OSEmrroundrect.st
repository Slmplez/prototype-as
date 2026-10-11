"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000c990; bytecode file offset 0x160b8c"
!OSEmrroundrect methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000dae8; bytecode file offset 0x161514"
!OSEmrroundrect methodsFor: 'recovered'!
rclBox
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRectl.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e264; bytecode file offset 0x161c00"
!OSEmrroundrect methodsFor: 'recovered'!
szlCorner
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSSizel.
    recoveredValue1 := (self) structAt: (24) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010f64; bytecode file offset 0x165330"
!OSEmrroundrect methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200141b0; bytecode file offset 0x1683c0"
!OSEmrroundrect methodsFor: 'recovered'!
rclBox: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017150; bytecode file offset 0x16afe8"
!OSEmrroundrect methodsFor: 'recovered'!
szlCorner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (24) put: (recoveredValue0).
    ^self
! !

