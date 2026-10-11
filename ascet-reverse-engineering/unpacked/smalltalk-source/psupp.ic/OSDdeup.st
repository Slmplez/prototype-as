"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200025b4; bytecode file offset 0x1561c4"
!OSDdeup methodsFor: 'recovered'!
cfFormat
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x2000bf58; bytecode file offset 0x15fa24"
!OSDdeup methodsFor: 'recovered'!
rgb: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000d6e4; bytecode file offset 0x160f90"
!OSDdeup methodsFor: 'recovered'!
rgb
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011c90; bytecode file offset 0x1657d4"
!OSDdeup methodsFor: 'recovered'!
cfFormat: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20026e34; bytecode file offset 0x17a6d0"
!OSDdeup methodsFor: 'recovered'!
unused
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint16At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (0) bitWidth: (12).
    ^recoveredValue1
! !

"psupp.ic method 0x20026ff4; bytecode file offset 0x17a8a0"
!OSDdeup methodsFor: 'recovered'!
fAck
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint16At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (12) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x20027024; bytecode file offset 0x17a8f0"
!OSDdeup methodsFor: 'recovered'!
fRelease
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint16At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (13) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x200270c4; bytecode file offset 0x17a970"
!OSDdeup methodsFor: 'recovered'!
fReserved
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint16At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (14) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x20027124; bytecode file offset 0x17aa00"
!OSDdeup methodsFor: 'recovered'!
fAckReq
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint16At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (15) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x2002d644; bytecode file offset 0x180ef8"
!OSDdeup methodsFor: 'recovered'!
unused: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (0) bitWidth: (12).
    (self) uint16At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002d8bc; bytecode file offset 0x181170"
!OSDdeup methodsFor: 'recovered'!
fAck: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (12) bitWidth: (1).
    (self) uint16At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002d938; bytecode file offset 0x1811d8"
!OSDdeup methodsFor: 'recovered'!
fRelease: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (13) bitWidth: (1).
    (self) uint16At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002d9a4; bytecode file offset 0x181280"
!OSDdeup methodsFor: 'recovered'!
fReserved: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (14) bitWidth: (1).
    (self) uint16At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002da38; bytecode file offset 0x18133c"
!OSDdeup methodsFor: 'recovered'!
fAckReq: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (15) bitWidth: (1).
    (self) uint16At: (0) put: (recoveredValue2).
    ^self
! !

