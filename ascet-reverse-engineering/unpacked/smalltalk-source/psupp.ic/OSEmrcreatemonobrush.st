"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20004564; bytecode file offset 0x157f64"
!OSEmrcreatemonobrush methodsFor: 'recovered'!
ihBrush
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004890; bytecode file offset 0x1589a4"
!OSEmrcreatemonobrush methodsFor: 'recovered'!
iUsage
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005540; bytecode file offset 0x159294"
!OSEmrcreatemonobrush methodsFor: 'recovered'!
offBmi
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005f20; bytecode file offset 0x159974"
!OSEmrcreatemonobrush methodsFor: 'recovered'!
cbBmi
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x2000630c; bytecode file offset 0x159f34"
!OSEmrcreatemonobrush methodsFor: 'recovered'!
offBits
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x200069ec; bytecode file offset 0x15a428"
!OSEmrcreatemonobrush methodsFor: 'recovered'!
cbBits
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d0d0; bytecode file offset 0x160b8c"
!OSEmrcreatemonobrush methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010ba4; bytecode file offset 0x165330"
!OSEmrcreatemonobrush methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013e68; bytecode file offset 0x1683c0"
!OSEmrcreatemonobrush methodsFor: 'recovered'!
ihBrush: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014db0; bytecode file offset 0x169290"
!OSEmrcreatemonobrush methodsFor: 'recovered'!
iUsage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200164b4; bytecode file offset 0x169eb4"
!OSEmrcreatemonobrush methodsFor: 'recovered'!
offBmi: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016eb0; bytecode file offset 0x16a7b4"
!OSEmrcreatemonobrush methodsFor: 'recovered'!
cbBmi: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200172a0; bytecode file offset 0x16afe8"
!OSEmrcreatemonobrush methodsFor: 'recovered'!
offBits: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017c3c; bytecode file offset 0x16b690"
!OSEmrcreatemonobrush methodsFor: 'recovered'!
cbBits: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

