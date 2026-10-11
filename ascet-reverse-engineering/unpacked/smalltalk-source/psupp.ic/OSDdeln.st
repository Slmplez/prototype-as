"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000265c; bytecode file offset 0x1561c4"
!OSDdeln methodsFor: 'recovered'!
cfFormat
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x20011c0c; bytecode file offset 0x1657d4"
!OSDdeln methodsFor: 'recovered'!
cfFormat: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20026e54; bytecode file offset 0x17a700"
!OSDdeln methodsFor: 'recovered'!
unused
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint16At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (0) bitWidth: (13).
    ^recoveredValue1
! !

"psupp.ic method 0x20027054; bytecode file offset 0x17a8f0"
!OSDdeln methodsFor: 'recovered'!
fRelease
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint16At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (13) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x20027094; bytecode file offset 0x17a970"
!OSDdeln methodsFor: 'recovered'!
fDeferUpd
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint16At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (14) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x20027114; bytecode file offset 0x17aa00"
!OSDdeln methodsFor: 'recovered'!
fAckReq
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint16At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (15) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x2002d684; bytecode file offset 0x180f38"
!OSDdeln methodsFor: 'recovered'!
unused: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (0) bitWidth: (13).
    (self) uint16At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002d910; bytecode file offset 0x1811d8"
!OSDdeln methodsFor: 'recovered'!
fRelease: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (13) bitWidth: (1).
    (self) uint16At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002d9cc; bytecode file offset 0x181280"
!OSDdeln methodsFor: 'recovered'!
fDeferUpd: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (14) bitWidth: (1).
    (self) uint16At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002da74; bytecode file offset 0x18133c"
!OSDdeln methodsFor: 'recovered'!
fAckReq: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (15) bitWidth: (1).
    (self) uint16At: (0) put: (recoveredValue2).
    ^self
! !

