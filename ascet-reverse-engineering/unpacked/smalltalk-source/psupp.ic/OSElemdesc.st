"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000d0a0; bytecode file offset 0x160b8c"
!OSElemdesc methodsFor: 'recovered'!
tdesc
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSTypedesc.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000db98; bytecode file offset 0x161514"
!OSElemdesc methodsFor: 'recovered'!
idldesc
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSIdldesc.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fb90; bytecode file offset 0x165330"
!OSElemdesc methodsFor: 'recovered'!
tdesc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014864; bytecode file offset 0x1683c0"
!OSElemdesc methodsFor: 'recovered'!
idldesc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

