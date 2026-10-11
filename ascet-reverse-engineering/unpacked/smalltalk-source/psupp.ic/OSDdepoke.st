"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002848; bytecode file offset 0x1561c4"
!OSDdepoke methodsFor: 'recovered'!
cfFormat
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x2000c0e8; bytecode file offset 0x15fa24"
!OSDdepoke methodsFor: 'recovered'!
Value: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000d4b4; bytecode file offset 0x160f90"
!OSDdepoke methodsFor: 'recovered'!
Value
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011e64; bytecode file offset 0x1657d4"
!OSDdepoke methodsFor: 'recovered'!
cfFormat: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20026e64; bytecode file offset 0x17a700"
!OSDdepoke methodsFor: 'recovered'!
unused
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint16At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (0) bitWidth: (13).
    ^recoveredValue1
! !

"psupp.ic method 0x20027044; bytecode file offset 0x17a8f0"
!OSDdepoke methodsFor: 'recovered'!
fRelease
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint16At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (13) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x200270f4; bytecode file offset 0x17a990"
!OSDdepoke methodsFor: 'recovered'!
fReserved
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint16At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (14) bitWidth: (2).
    ^recoveredValue1
! !

"psupp.ic method 0x2002d698; bytecode file offset 0x180f38"
!OSDdepoke methodsFor: 'recovered'!
unused: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (0) bitWidth: (13).
    (self) uint16At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002d924; bytecode file offset 0x1811d8"
!OSDdepoke methodsFor: 'recovered'!
fRelease: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (13) bitWidth: (1).
    (self) uint16At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002da0c; bytecode file offset 0x1812ac"
!OSDdepoke methodsFor: 'recovered'!
fReserved: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (14) bitWidth: (2).
    (self) uint16At: (0) put: (recoveredValue2).
    ^self
! !

