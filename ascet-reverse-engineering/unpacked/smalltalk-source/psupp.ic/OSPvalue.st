"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002b4c; bytecode file offset 0x157170"
!OSPvalue methodsFor: 'recovered'!
pvValuelen
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004378; bytecode file offset 0x157f64"
!OSPvalue methodsFor: 'recovered'!
pvValueContext
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000492c; bytecode file offset 0x1589a4"
!OSPvalue methodsFor: 'recovered'!
pvType
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20010cb8; bytecode file offset 0x165330"
!OSPvalue methodsFor: 'recovered'!
pvValuename: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012854; bytecode file offset 0x166e00"
!OSPvalue methodsFor: 'recovered'!
pvValuelen: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014888; bytecode file offset 0x1683c0"
!OSPvalue methodsFor: 'recovered'!
pvValueContext: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014d8c; bytecode file offset 0x169290"
!OSPvalue methodsFor: 'recovered'!
pvType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001af3c; bytecode file offset 0x16ea70"
!OSPvalue methodsFor: 'recovered'!
pvValuename
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

