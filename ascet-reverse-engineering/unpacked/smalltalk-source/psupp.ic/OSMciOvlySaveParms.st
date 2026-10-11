"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000153c; bytecode file offset 0x155d58"
!OSMciOvlySaveParms methodsFor: 'recovered'!
dwCallback
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000db38; bytecode file offset 0x161514"
!OSMciOvlySaveParms methodsFor: 'recovered'!
rc
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRect.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010f34; bytecode file offset 0x165330"
!OSMciOvlySaveParms methodsFor: 'recovered'!
dwCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012ee4; bytecode file offset 0x166e00"
!OSMciOvlySaveParms methodsFor: 'recovered'!
lpfilename: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014858; bytecode file offset 0x1683c0"
!OSMciOvlySaveParms methodsFor: 'recovered'!
rc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b40c; bytecode file offset 0x16f1fc"
!OSMciOvlySaveParms methodsFor: 'recovered'!
lpfilename
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

