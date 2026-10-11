"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20004138; bytecode file offset 0x157f64"
!OSShnamemapping methodsFor: 'recovered'!
cchOldPath
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004efc; bytecode file offset 0x1589a4"
!OSShnamemapping methodsFor: 'recovered'!
cchNewPath
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2001118c; bytecode file offset 0x165330"
!OSShnamemapping methodsFor: 'recovered'!
pszOldPath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012be4; bytecode file offset 0x166e00"
!OSShnamemapping methodsFor: 'recovered'!
pszNewPath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013cb8; bytecode file offset 0x1683c0"
!OSShnamemapping methodsFor: 'recovered'!
cchOldPath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014ed0; bytecode file offset 0x169290"
!OSShnamemapping methodsFor: 'recovered'!
cchNewPath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001aadc; bytecode file offset 0x16ea70"
!OSShnamemapping methodsFor: 'recovered'!
pszOldPath
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b358; bytecode file offset 0x16f1fc"
!OSShnamemapping methodsFor: 'recovered'!
pszNewPath
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

