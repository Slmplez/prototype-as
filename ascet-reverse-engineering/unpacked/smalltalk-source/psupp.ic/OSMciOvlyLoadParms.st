"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001734; bytecode file offset 0x155d58"
!OSMciOvlyLoadParms methodsFor: 'recovered'!
dwCallback
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000db28; bytecode file offset 0x161514"
!OSMciOvlyLoadParms methodsFor: 'recovered'!
rc
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRect.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000ff8c; bytecode file offset 0x165330"
!OSMciOvlyLoadParms methodsFor: 'recovered'!
dwCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012f14; bytecode file offset 0x166e00"
!OSMciOvlyLoadParms methodsFor: 'recovered'!
lpfilename: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014660; bytecode file offset 0x1683c0"
!OSMciOvlyLoadParms methodsFor: 'recovered'!
rc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b45c; bytecode file offset 0x16f1fc"
!OSMciOvlyLoadParms methodsFor: 'recovered'!
lpfilename
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

