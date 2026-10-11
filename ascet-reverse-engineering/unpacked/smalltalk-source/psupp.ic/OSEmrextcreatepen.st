"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20003f88; bytecode file offset 0x157f64"
!OSEmrextcreatepen methodsFor: 'recovered'!
ihPen
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20005100; bytecode file offset 0x1589a4"
!OSEmrextcreatepen methodsFor: 'recovered'!
offBmi
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20005528; bytecode file offset 0x159294"
!OSEmrextcreatepen methodsFor: 'recovered'!
cbBmi
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005fd4; bytecode file offset 0x159974"
!OSEmrextcreatepen methodsFor: 'recovered'!
offBits
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x20006468; bytecode file offset 0x159f34"
!OSEmrextcreatepen methodsFor: 'recovered'!
cbBits
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d2a0; bytecode file offset 0x160b8c"
!OSEmrextcreatepen methodsFor: 'recovered'!
emr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSEmr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e3e8; bytecode file offset 0x161d04"
!OSEmrextcreatepen methodsFor: 'recovered'!
elp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSExtlogpen.
    recoveredValue1 := (self) structAt: (28) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200112f4; bytecode file offset 0x165330"
!OSEmrextcreatepen methodsFor: 'recovered'!
emr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014810; bytecode file offset 0x1683c0"
!OSEmrextcreatepen methodsFor: 'recovered'!
ihPen: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015740; bytecode file offset 0x169290"
!OSEmrextcreatepen methodsFor: 'recovered'!
offBmi: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015fe0; bytecode file offset 0x169eb4"
!OSEmrextcreatepen methodsFor: 'recovered'!
cbBmi: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200168e0; bytecode file offset 0x16a7b4"
!OSEmrextcreatepen methodsFor: 'recovered'!
offBits: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017738; bytecode file offset 0x16afe8"
!OSEmrextcreatepen methodsFor: 'recovered'!
cbBits: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017cd8; bytecode file offset 0x16b690"
!OSEmrextcreatepen methodsFor: 'recovered'!
elp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (28) put: (recoveredValue0).
    ^self
! !

