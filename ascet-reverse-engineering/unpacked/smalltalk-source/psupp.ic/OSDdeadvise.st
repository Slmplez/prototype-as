"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000292c; bytecode file offset 0x1561c4"
!OSDdeadvise methodsFor: 'recovered'!
cfFormat
    | recoveredValue0 |
    recoveredValue0 := (self) int16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x20011d08; bytecode file offset 0x1657d4"
!OSDdeadvise methodsFor: 'recovered'!
cfFormat: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20026e84; bytecode file offset 0x17a720"
!OSDdeadvise methodsFor: 'recovered'!
reserved
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint16At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (0) bitWidth: (14).
    ^recoveredValue1
! !

"psupp.ic method 0x200270a4; bytecode file offset 0x17a970"
!OSDdeadvise methodsFor: 'recovered'!
fDeferUpd
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint16At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (14) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x20027144; bytecode file offset 0x17aa00"
!OSDdeadvise methodsFor: 'recovered'!
fAckReq
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint16At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (15) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x2002d6c4; bytecode file offset 0x180f64"
!OSDdeadvise methodsFor: 'recovered'!
reserved: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (0) bitWidth: (14).
    (self) uint16At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002d9b8; bytecode file offset 0x181280"
!OSDdeadvise methodsFor: 'recovered'!
fDeferUpd: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (14) bitWidth: (1).
    (self) uint16At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002da9c; bytecode file offset 0x18133c"
!OSDdeadvise methodsFor: 'recovered'!
fAckReq: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (15) bitWidth: (1).
    (self) uint16At: (0) put: (recoveredValue2).
    ^self
! !

