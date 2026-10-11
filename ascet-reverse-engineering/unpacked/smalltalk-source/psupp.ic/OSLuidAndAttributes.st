"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20004450; bytecode file offset 0x157f64"
!OSLuidAndAttributes methodsFor: 'recovered'!
Attributes
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000ce40; bytecode file offset 0x160b8c"
!OSLuidAndAttributes methodsFor: 'recovered'!
Luid
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLuid.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001013c; bytecode file offset 0x165330"
!OSLuidAndAttributes methodsFor: 'recovered'!
Luid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014264; bytecode file offset 0x1683c0"
!OSLuidAndAttributes methodsFor: 'recovered'!
Attributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

