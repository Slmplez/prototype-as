"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200017e8; bytecode file offset 0x155d58"
!OSBitmapfileheader methodsFor: 'recovered'!
bfType
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002734; bytecode file offset 0x1561c4"
!OSBitmapfileheader methodsFor: 'recovered'!
bfSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x200039b4; bytecode file offset 0x1572b8"
!OSBitmapfileheader methodsFor: 'recovered'!
bfReserved1
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (6).
    ^recoveredValue0
! !

"psupp.ic method 0x20004480; bytecode file offset 0x157f64"
!OSBitmapfileheader methodsFor: 'recovered'!
bfReserved2
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004784; bytecode file offset 0x1580a0"
!OSBitmapfileheader methodsFor: 'recovered'!
bfOffBits
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (10).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fa88; bytecode file offset 0x165330"
!OSBitmapfileheader methodsFor: 'recovered'!
bfType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011ea0; bytecode file offset 0x1657d4"
!OSBitmapfileheader methodsFor: 'recovered'!
bfSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013670; bytecode file offset 0x166f5c"
!OSBitmapfileheader methodsFor: 'recovered'!
bfReserved1: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (6) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200139f4; bytecode file offset 0x1683c0"
!OSBitmapfileheader methodsFor: 'recovered'!
bfReserved2: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014c18; bytecode file offset 0x168528"
!OSBitmapfileheader methodsFor: 'recovered'!
bfOffBits: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (10) put: (recoveredValue0).
    ^self
! !

