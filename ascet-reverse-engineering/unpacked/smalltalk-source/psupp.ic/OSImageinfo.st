"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000469c; bytecode file offset 0x157f64"
!OSImageinfo methodsFor: 'recovered'!
Unused1
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004c68; bytecode file offset 0x1589a4"
!OSImageinfo methodsFor: 'recovered'!
Unused2
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2000e09c; bytecode file offset 0x161938"
!OSImageinfo methodsFor: 'recovered'!
rcImage
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRect.
    recoveredValue1 := (self) structAt: (16) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200114d4; bytecode file offset 0x165330"
!OSImageinfo methodsFor: 'recovered'!
hbmImage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013028; bytecode file offset 0x166e00"
!OSImageinfo methodsFor: 'recovered'!
hbmMask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014420; bytecode file offset 0x1683c0"
!OSImageinfo methodsFor: 'recovered'!
Unused1: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014e40; bytecode file offset 0x169290"
!OSImageinfo methodsFor: 'recovered'!
Unused2: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015c20; bytecode file offset 0x169eb4"
!OSImageinfo methodsFor: 'recovered'!
rcImage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ad5c; bytecode file offset 0x16ea70"
!OSImageinfo methodsFor: 'recovered'!
hbmImage
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHbitmap.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b948; bytecode file offset 0x16f1fc"
!OSImageinfo methodsFor: 'recovered'!
hbmMask
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHbitmap.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

