"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200011e8; bytecode file offset 0x155d58"
!OSPrinterNotifyInfoData methodsFor: 'recovered'!
Type
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002860; bytecode file offset 0x1561c4"
!OSPrinterNotifyInfoData methodsFor: 'recovered'!
Field
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x20002e40; bytecode file offset 0x157170"
!OSPrinterNotifyInfoData methodsFor: 'recovered'!
Reserved
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003b74; bytecode file offset 0x157f64"
!OSPrinterNotifyInfoData methodsFor: 'recovered'!
Id
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000deac; bytecode file offset 0x1617e8"
!OSPrinterNotifyInfoData methodsFor: 'recovered'!
NotifyData
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPrinterNotifyInfoDataAnon5.
    recoveredValue1 := (self) structAt: (12) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fae8; bytecode file offset 0x165330"
!OSPrinterNotifyInfoData methodsFor: 'recovered'!
Type: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011eac; bytecode file offset 0x1657d4"
!OSPrinterNotifyInfoData methodsFor: 'recovered'!
Field: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012a34; bytecode file offset 0x166e00"
!OSPrinterNotifyInfoData methodsFor: 'recovered'!
Reserved: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013b5c; bytecode file offset 0x1683c0"
!OSPrinterNotifyInfoData methodsFor: 'recovered'!
Id: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200155fc; bytecode file offset 0x169290"
!OSPrinterNotifyInfoData methodsFor: 'recovered'!
NotifyData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (12) put: (recoveredValue0).
    ^self
! !

