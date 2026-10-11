"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20003d48; bytecode file offset 0x157f64"
!OSLvHittestinfo methodsFor: 'recovered'!
flags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004b00; bytecode file offset 0x1589a4"
!OSLvHittestinfo methodsFor: 'recovered'!
iItem
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2000ca80; bytecode file offset 0x160b8c"
!OSLvHittestinfo methodsFor: 'recovered'!
pt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPoint.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fba8; bytecode file offset 0x165330"
!OSLvHittestinfo methodsFor: 'recovered'!
pt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013bec; bytecode file offset 0x1683c0"
!OSLvHittestinfo methodsFor: 'recovered'!
flags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014e58; bytecode file offset 0x169290"
!OSLvHittestinfo methodsFor: 'recovered'!
iItem: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (12) put: (recoveredValue0).
    ^self
! !

