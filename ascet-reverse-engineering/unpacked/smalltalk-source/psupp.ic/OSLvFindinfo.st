"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001554; bytecode file offset 0x155d58"
!OSLvFindinfo methodsFor: 'recovered'!
flags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20004630; bytecode file offset 0x157f64"
!OSLvFindinfo methodsFor: 'recovered'!
lParam
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20005ba8; bytecode file offset 0x159974"
!OSLvFindinfo methodsFor: 'recovered'!
vkDirection
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x2000defc; bytecode file offset 0x1617e8"
!OSLvFindinfo methodsFor: 'recovered'!
pt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPoint.
    recoveredValue1 := (self) structAt: (12) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010178; bytecode file offset 0x165330"
!OSLvFindinfo methodsFor: 'recovered'!
flags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012b54; bytecode file offset 0x166e00"
!OSLvFindinfo methodsFor: 'recovered'!
psz: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200142d0; bytecode file offset 0x1683c0"
!OSLvFindinfo methodsFor: 'recovered'!
lParam: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014e10; bytecode file offset 0x169290"
!OSLvFindinfo methodsFor: 'recovered'!
pt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200167fc; bytecode file offset 0x16a7b4"
!OSLvFindinfo methodsFor: 'recovered'!
vkDirection: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b628; bytecode file offset 0x16f1fc"
!OSLvFindinfo methodsFor: 'recovered'!
psz
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

