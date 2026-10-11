"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20004588; bytecode file offset 0x157f64"
!OSPrinterInfo4 methodsFor: 'recovered'!
Attributes
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20010388; bytecode file offset 0x165330"
!OSPrinterInfo4 methodsFor: 'recovered'!
pPrinterName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013160; bytecode file offset 0x166e00"
!OSPrinterInfo4 methodsFor: 'recovered'!
pServerName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001394c; bytecode file offset 0x1683c0"
!OSPrinterInfo4 methodsFor: 'recovered'!
Attributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001acbc; bytecode file offset 0x16ea70"
!OSPrinterInfo4 methodsFor: 'recovered'!
pPrinterName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b4d4; bytecode file offset 0x16f1fc"
!OSPrinterInfo4 methodsFor: 'recovered'!
pServerName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

