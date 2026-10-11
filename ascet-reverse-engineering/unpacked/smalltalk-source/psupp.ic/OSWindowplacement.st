"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200018fc; bytecode file offset 0x155d58"
!OSWindowplacement methodsFor: 'recovered'!
length
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002ee8; bytecode file offset 0x157170"
!OSWindowplacement methodsFor: 'recovered'!
flags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200040d8; bytecode file offset 0x157f64"
!OSWindowplacement methodsFor: 'recovered'!
showCmd
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000de8c; bytecode file offset 0x1617e8"
!OSWindowplacement methodsFor: 'recovered'!
ptMinPosition
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPoint.
    recoveredValue1 := (self) structAt: (12) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e1e8; bytecode file offset 0x161aa4"
!OSWindowplacement methodsFor: 'recovered'!
ptMaxPosition
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPoint.
    recoveredValue1 := (self) structAt: (20) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e438; bytecode file offset 0x161d04"
!OSWindowplacement methodsFor: 'recovered'!
rcNormalPosition
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRect.
    recoveredValue1 := (self) structAt: (28) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200119fc; bytecode file offset 0x165330"
!OSWindowplacement methodsFor: 'recovered'!
length: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012794; bytecode file offset 0x166e00"
!OSWindowplacement methodsFor: 'recovered'!
flags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200145f4; bytecode file offset 0x1683c0"
!OSWindowplacement methodsFor: 'recovered'!
showCmd: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001559c; bytecode file offset 0x169290"
!OSWindowplacement methodsFor: 'recovered'!
ptMinPosition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200169f4; bytecode file offset 0x16a7b4"
!OSWindowplacement methodsFor: 'recovered'!
ptMaxPosition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017dd4; bytecode file offset 0x16b690"
!OSWindowplacement methodsFor: 'recovered'!
rcNormalPosition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (28) put: (recoveredValue0).
    ^self
! !

