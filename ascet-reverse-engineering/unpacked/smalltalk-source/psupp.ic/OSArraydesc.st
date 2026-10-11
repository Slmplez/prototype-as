"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200042ac; bytecode file offset 0x157f64"
!OSArraydesc methodsFor: 'recovered'!
cDims
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d120; bytecode file offset 0x160b8c"
!OSArraydesc methodsFor: 'recovered'!
tdescElem
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSTypedesc.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000dedc; bytecode file offset 0x1617e8"
!OSArraydesc methodsFor: 'recovered'!
rgbounds
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSSafearraybound.
    recoveredValue1 := (self) arrayAt: (12) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010958; bytecode file offset 0x165330"
!OSArraydesc methodsFor: 'recovered'!
tdescElem: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013b20; bytecode file offset 0x1683c0"
!OSArraydesc methodsFor: 'recovered'!
cDims: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (8) put: (recoveredValue0).
    ^self
! !

