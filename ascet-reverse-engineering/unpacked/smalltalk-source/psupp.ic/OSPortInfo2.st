"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20004f14; bytecode file offset 0x1589a4"
!OSPortInfo2 methodsFor: 'recovered'!
fPortType
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200053b4; bytecode file offset 0x159294"
!OSPortInfo2 methodsFor: 'recovered'!
Reserved
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20010304; bytecode file offset 0x165330"
!OSPortInfo2 methodsFor: 'recovered'!
pPortName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012ddc; bytecode file offset 0x166e00"
!OSPortInfo2 methodsFor: 'recovered'!
pMonitorName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013e2c; bytecode file offset 0x1683c0"
!OSPortInfo2 methodsFor: 'recovered'!
pDescription: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200158a8; bytecode file offset 0x169290"
!OSPortInfo2 methodsFor: 'recovered'!
fPortType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016448; bytecode file offset 0x169eb4"
!OSPortInfo2 methodsFor: 'recovered'!
Reserved: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ae9c; bytecode file offset 0x16ea70"
!OSPortInfo2 methodsFor: 'recovered'!
pPortName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b394; bytecode file offset 0x16f1fc"
!OSPortInfo2 methodsFor: 'recovered'!
pMonitorName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bb70; bytecode file offset 0x16f8e8"
!OSPortInfo2 methodsFor: 'recovered'!
pDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

