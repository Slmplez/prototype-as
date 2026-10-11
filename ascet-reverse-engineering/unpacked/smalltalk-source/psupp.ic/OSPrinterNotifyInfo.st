"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001c38; bytecode file offset 0x155d58"
!OSPrinterNotifyInfo methodsFor: 'recovered'!
Version
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002e58; bytecode file offset 0x157170"
!OSPrinterNotifyInfo methodsFor: 'recovered'!
Flags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004594; bytecode file offset 0x157f64"
!OSPrinterNotifyInfo methodsFor: 'recovered'!
Count
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000dd9c; bytecode file offset 0x1617e8"
!OSPrinterNotifyInfo methodsFor: 'recovered'!
aData
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPrinterNotifyInfoData.
    recoveredValue1 := (self) arrayAt: (12) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000f9c8; bytecode file offset 0x165330"
!OSPrinterNotifyInfo methodsFor: 'recovered'!
Version: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012e00; bytecode file offset 0x166e00"
!OSPrinterNotifyInfo methodsFor: 'recovered'!
Flags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014a98; bytecode file offset 0x1683c0"
!OSPrinterNotifyInfo methodsFor: 'recovered'!
Count: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

