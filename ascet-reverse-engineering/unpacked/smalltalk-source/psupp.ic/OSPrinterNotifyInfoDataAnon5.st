"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000cee0; bytecode file offset 0x160b8c"
!OSPrinterNotifyInfoDataAnon5 methodsFor: 'recovered'!
Data
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPrinterNotifyInfoDataAnon5Anon2.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010130; bytecode file offset 0x165330"
!OSPrinterNotifyInfoDataAnon5 methodsFor: 'recovered'!
Data: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20021e78; bytecode file offset 0x175714"
!OSPrinterNotifyInfoDataAnon5 methodsFor: 'recovered'!
adwData
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (self) arrayAt: (0) size: (2) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20023734; bytecode file offset 0x176fd8"
!OSPrinterNotifyInfoDataAnon5 methodsFor: 'recovered'!
adwData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (0) put: (recoveredValue0) size: (2).
    ^self
! !

