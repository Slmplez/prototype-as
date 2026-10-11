"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000138c; bytecode file offset 0x155d58"
!OSPrinterNotifyOptions methodsFor: 'recovered'!
Version
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002d08; bytecode file offset 0x157170"
!OSPrinterNotifyOptions methodsFor: 'recovered'!
Flags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004390; bytecode file offset 0x157f64"
!OSPrinterNotifyOptions methodsFor: 'recovered'!
Count
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20010508; bytecode file offset 0x165330"
!OSPrinterNotifyOptions methodsFor: 'recovered'!
Version: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200131cc; bytecode file offset 0x166e00"
!OSPrinterNotifyOptions methodsFor: 'recovered'!
Flags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013fe8; bytecode file offset 0x1683c0"
!OSPrinterNotifyOptions methodsFor: 'recovered'!
Count: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015044; bytecode file offset 0x169290"
!OSPrinterNotifyOptions methodsFor: 'recovered'!
pTypes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001c3ec; bytecode file offset 0x16fe44"
!OSPrinterNotifyOptions methodsFor: 'recovered'!
pTypes
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSPrinterNotifyOptionsType.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

