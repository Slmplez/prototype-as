"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200045a0; bytecode file offset 0x157f64"
!OSHdHittestinfo methodsFor: 'recovered'!
flags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20005058; bytecode file offset 0x1589a4"
!OSHdHittestinfo methodsFor: 'recovered'!
iItem
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d0b0; bytecode file offset 0x160b8c"
!OSHdHittestinfo methodsFor: 'recovered'!
pt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPoint.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001193c; bytecode file offset 0x165330"
!OSHdHittestinfo methodsFor: 'recovered'!
pt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001400c; bytecode file offset 0x1683c0"
!OSHdHittestinfo methodsFor: 'recovered'!
flags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015830; bytecode file offset 0x169290"
!OSHdHittestinfo methodsFor: 'recovered'!
iItem: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (12) put: (recoveredValue0).
    ^self
! !

