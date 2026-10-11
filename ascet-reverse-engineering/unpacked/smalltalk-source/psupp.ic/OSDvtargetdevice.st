"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002040; bytecode file offset 0x155d58"
!OSDvtargetdevice methodsFor: 'recovered'!
tdSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002fc0; bytecode file offset 0x157170"
!OSDvtargetdevice methodsFor: 'recovered'!
tdDriverNameOffset
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003930; bytecode file offset 0x1572b8"
!OSDvtargetdevice methodsFor: 'recovered'!
tdDeviceNameOffset
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (6).
    ^recoveredValue0
! !

"psupp.ic method 0x200041c8; bytecode file offset 0x157f64"
!OSDvtargetdevice methodsFor: 'recovered'!
tdPortNameOffset
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000476c; bytecode file offset 0x1580a0"
!OSDvtargetdevice methodsFor: 'recovered'!
tdExtDevmodeOffset
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (10).
    ^recoveredValue0
! !

"psupp.ic method 0x2000ddfc; bytecode file offset 0x1617e8"
!OSDvtargetdevice methodsFor: 'recovered'!
tdData
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (12) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011180; bytecode file offset 0x165330"
!OSDvtargetdevice methodsFor: 'recovered'!
tdSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012704; bytecode file offset 0x166e00"
!OSDvtargetdevice methodsFor: 'recovered'!
tdDriverNameOffset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200135e0; bytecode file offset 0x166f5c"
!OSDvtargetdevice methodsFor: 'recovered'!
tdDeviceNameOffset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (6) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013e14; bytecode file offset 0x1683c0"
!OSDvtargetdevice methodsFor: 'recovered'!
tdPortNameOffset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014c00; bytecode file offset 0x168528"
!OSDvtargetdevice methodsFor: 'recovered'!
tdExtDevmodeOffset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (10) put: (recoveredValue0).
    ^self
! !

