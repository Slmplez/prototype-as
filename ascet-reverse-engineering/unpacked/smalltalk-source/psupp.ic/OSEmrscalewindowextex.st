"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000406c; bytecode file offset 0x157f64"
!OSEmrscalewindowextex methodsFor: 'recovered'!
xNum
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004b54; bytecode file offset 0x1589a4"
!OSEmrscalewindowextex methodsFor: 'recovered'!
xDenom
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005918; bytecode file offset 0x159294"
!OSEmrscalewindowextex methodsFor: 'recovered'!
yNum
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005e78; bytecode file offset 0x159974"
!OSEmrscalewindowextex methodsFor: 'recovered'!
yDenom
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x2000ce20; bytecode file offset 0x160b8c"
!OSEmrscalewindowextex methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010a3c; bytecode file offset 0x165330"
!OSEmrscalewindowextex methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001475c; bytecode file offset 0x1683c0"
!OSEmrscalewindowextex methodsFor: 'recovered'!
xNum: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015680; bytecode file offset 0x169290"
!OSEmrscalewindowextex methodsFor: 'recovered'!
xDenom: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200165ec; bytecode file offset 0x169eb4"
!OSEmrscalewindowextex methodsFor: 'recovered'!
yNum: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016880; bytecode file offset 0x16a7b4"
!OSEmrscalewindowextex methodsFor: 'recovered'!
yDenom: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (20) put: (recoveredValue0).
    ^self
! !

