"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20003c88; bytecode file offset 0x157f64"
!OSPrinterInfo5 methodsFor: 'recovered'!
Attributes
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004cf8; bytecode file offset 0x1589a4"
!OSPrinterInfo5 methodsFor: 'recovered'!
DeviceNotSelectedTimeout
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200053d8; bytecode file offset 0x159294"
!OSPrinterInfo5 methodsFor: 'recovered'!
TransmissionRetryTimeout
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20010610; bytecode file offset 0x165330"
!OSPrinterInfo5 methodsFor: 'recovered'!
pPrinterName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012b18; bytecode file offset 0x166e00"
!OSPrinterInfo5 methodsFor: 'recovered'!
pPortName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200140cc; bytecode file offset 0x1683c0"
!OSPrinterInfo5 methodsFor: 'recovered'!
Attributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014e70; bytecode file offset 0x169290"
!OSPrinterInfo5 methodsFor: 'recovered'!
DeviceNotSelectedTimeout: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200163d0; bytecode file offset 0x169eb4"
!OSPrinterInfo5 methodsFor: 'recovered'!
TransmissionRetryTimeout: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001af78; bytecode file offset 0x16ea70"
!OSPrinterInfo5 methodsFor: 'recovered'!
pPrinterName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b498; bytecode file offset 0x16f1fc"
!OSPrinterInfo5 methodsFor: 'recovered'!
pPortName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

