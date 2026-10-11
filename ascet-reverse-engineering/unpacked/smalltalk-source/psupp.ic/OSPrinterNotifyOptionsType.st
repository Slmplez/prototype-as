"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200021e4; bytecode file offset 0x155d58"
!OSPrinterNotifyOptionsType methodsFor: 'recovered'!
Type
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200027dc; bytecode file offset 0x1561c4"
!OSPrinterNotifyOptionsType methodsFor: 'recovered'!
Reserved0
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x2000386c; bytecode file offset 0x157170"
!OSPrinterNotifyOptionsType methodsFor: 'recovered'!
Reserved1
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003bbc; bytecode file offset 0x157f64"
!OSPrinterNotifyOptionsType methodsFor: 'recovered'!
Reserved2
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004fd4; bytecode file offset 0x1589a4"
!OSPrinterNotifyOptionsType methodsFor: 'recovered'!
Count
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2001124c; bytecode file offset 0x165330"
!OSPrinterNotifyOptionsType methodsFor: 'recovered'!
Type: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011ccc; bytecode file offset 0x1657d4"
!OSPrinterNotifyOptionsType methodsFor: 'recovered'!
Reserved0: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012344; bytecode file offset 0x166e00"
!OSPrinterNotifyOptionsType methodsFor: 'recovered'!
Reserved1: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013838; bytecode file offset 0x1683c0"
!OSPrinterNotifyOptionsType methodsFor: 'recovered'!
Reserved2: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001574c; bytecode file offset 0x169290"
!OSPrinterNotifyOptionsType methodsFor: 'recovered'!
Count: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016058; bytecode file offset 0x169eb4"
!OSPrinterNotifyOptionsType methodsFor: 'recovered'!
pFields: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001c7a4; bytecode file offset 0x170238"
!OSPrinterNotifyOptionsType methodsFor: 'recovered'!
pFields
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSUInt16.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

