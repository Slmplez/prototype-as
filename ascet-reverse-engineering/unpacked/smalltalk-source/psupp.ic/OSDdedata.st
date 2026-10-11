"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200026a4; bytecode file offset 0x1561c4"
!OSDdedata methodsFor: 'recovered'!
cfFormat
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x2000c028; bytecode file offset 0x15fa24"
!OSDdedata methodsFor: 'recovered'!
Value: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000d5b4; bytecode file offset 0x160f90"
!OSDdedata methodsFor: 'recovered'!
Value
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011c18; bytecode file offset 0x1657d4"
!OSDdedata methodsFor: 'recovered'!
cfFormat: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20026e24; bytecode file offset 0x17a6d0"
!OSDdedata methodsFor: 'recovered'!
unused
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint16At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (0) bitWidth: (12).
    ^recoveredValue1
! !

"psupp.ic method 0x20027004; bytecode file offset 0x17a8a0"
!OSDdedata methodsFor: 'recovered'!
fResponse
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint16At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (12) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x20027034; bytecode file offset 0x17a8f0"
!OSDdedata methodsFor: 'recovered'!
fRelease
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint16At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (13) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x200270b4; bytecode file offset 0x17a970"
!OSDdedata methodsFor: 'recovered'!
reserved
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint16At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (14) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x20027154; bytecode file offset 0x17aa00"
!OSDdedata methodsFor: 'recovered'!
fAckReq
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint16At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (15) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x2002d658; bytecode file offset 0x180ef8"
!OSDdedata methodsFor: 'recovered'!
unused: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (0) bitWidth: (12).
    (self) uint16At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002d8d0; bytecode file offset 0x181170"
!OSDdedata methodsFor: 'recovered'!
fResponse: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (12) bitWidth: (1).
    (self) uint16At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002d8fc; bytecode file offset 0x1811d8"
!OSDdedata methodsFor: 'recovered'!
fRelease: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (13) bitWidth: (1).
    (self) uint16At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002d990; bytecode file offset 0x181280"
!OSDdedata methodsFor: 'recovered'!
reserved: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (14) bitWidth: (1).
    (self) uint16At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002da60; bytecode file offset 0x18133c"
!OSDdedata methodsFor: 'recovered'!
fAckReq: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (15) bitWidth: (1).
    (self) uint16At: (0) put: (recoveredValue2).
    ^self
! !

