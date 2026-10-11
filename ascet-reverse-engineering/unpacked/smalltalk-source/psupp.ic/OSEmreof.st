"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20003d24; bytecode file offset 0x157f64"
!OSEmreof methodsFor: 'recovered'!
nPalEntries
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004c44; bytecode file offset 0x1589a4"
!OSEmreof methodsFor: 'recovered'!
offPalEntries
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2000563c; bytecode file offset 0x159294"
!OSEmreof methodsFor: 'recovered'!
nSizeLast
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x2000cc60; bytecode file offset 0x160b8c"
!OSEmreof methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000f92c; bytecode file offset 0x165330"
!OSEmreof methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013de4; bytecode file offset 0x1683c0"
!OSEmreof methodsFor: 'recovered'!
nPalEntries: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200150d4; bytecode file offset 0x169290"
!OSEmreof methodsFor: 'recovered'!
offPalEntries: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016214; bytecode file offset 0x169eb4"
!OSEmreof methodsFor: 'recovered'!
nSizeLast: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

