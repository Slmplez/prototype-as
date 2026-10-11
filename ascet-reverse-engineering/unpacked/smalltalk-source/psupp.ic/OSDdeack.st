"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20026e04; bytecode file offset 0x17a6a0"
!OSDdeack methodsFor: 'recovered'!
bAppReturnCode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint16At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (0) bitWidth: (8).
    ^recoveredValue1
! !

"psupp.ic method 0x20026fd4; bytecode file offset 0x17a870"
!OSDdeack methodsFor: 'recovered'!
reserved
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint16At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (8) bitWidth: (6).
    ^recoveredValue1
! !

"psupp.ic method 0x200270d4; bytecode file offset 0x17a970"
!OSDdeack methodsFor: 'recovered'!
fBusy
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint16At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (14) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x20027134; bytecode file offset 0x17aa00"
!OSDdeack methodsFor: 'recovered'!
fAck
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uint16At: (0).
    recoveredValue1 := (self) bitFieldExtract: (recoveredValue0) bitOffset: (15) bitWidth: (1).
    ^recoveredValue1
! !

"psupp.ic method 0x2002d604; bytecode file offset 0x180eb8"
!OSDdeack methodsFor: 'recovered'!
bAppReturnCode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (0) bitWidth: (8).
    (self) uint16At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002d890; bytecode file offset 0x181130"
!OSDdeack methodsFor: 'recovered'!
reserved: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (8) bitWidth: (6).
    (self) uint16At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002d9e0; bytecode file offset 0x181280"
!OSDdeack methodsFor: 'recovered'!
fBusy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (14) bitWidth: (1).
    (self) uint16At: (0) put: (recoveredValue2).
    ^self
! !

"psupp.ic method 0x2002da88; bytecode file offset 0x18133c"
!OSDdeack methodsFor: 'recovered'!
fAck: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint16At: (0).
    recoveredValue2 := (self) bitFieldMerge: (recoveredValue0) with: (recoveredValue1) bitOffset: (15) bitWidth: (1).
    (self) uint16At: (0) put: (recoveredValue2).
    ^self
! !

