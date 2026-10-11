"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20003e50; bytecode file offset 0x157f64"
!OSPrinterDefaults methodsFor: 'recovered'!
DesiredAccess
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fbfc; bytecode file offset 0x165330"
!OSPrinterDefaults methodsFor: 'recovered'!
pDatatype: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013280; bytecode file offset 0x166e00"
!OSPrinterDefaults methodsFor: 'recovered'!
pDevMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200139ac; bytecode file offset 0x1683c0"
!OSPrinterDefaults methodsFor: 'recovered'!
DesiredAccess: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ae88; bytecode file offset 0x16ea70"
!OSPrinterDefaults methodsFor: 'recovered'!
pDatatype
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b790; bytecode file offset 0x16f1fc"
!OSPrinterDefaults methodsFor: 'recovered'!
pDevMode
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSDevmode.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

