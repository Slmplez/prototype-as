"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000204c; bytecode file offset 0x155d58"
!OSHighcontrast methodsFor: 'recovered'!
cbSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002a8c; bytecode file offset 0x157170"
!OSHighcontrast methodsFor: 'recovered'!
dwFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20011054; bytecode file offset 0x165330"
!OSHighcontrast methodsFor: 'recovered'!
cbSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012674; bytecode file offset 0x166e00"
!OSHighcontrast methodsFor: 'recovered'!
dwFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200146b4; bytecode file offset 0x1683c0"
!OSHighcontrast methodsFor: 'recovered'!
lpszDefaultScheme: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b9f4; bytecode file offset 0x16f8e8"
!OSHighcontrast methodsFor: 'recovered'!
lpszDefaultScheme
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

