"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004488; bytecode file offset 0x90206c"
!CTreeSearchObjectRecordN32 methodsFor: 'recovered'!
hashName: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20071a5c; bytecode file offset 0x96e578"
!CTreeSearchObjectRecordN32 methodsFor: 'recovered'!
hashName
    ^0
! !

"ASDBase.ic method 0x2008e2f0; bytecode file offset 0x98abb4"
!CTreeSearchObjectRecordN32 methodsFor: 'recovered'!
version
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (104).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008e32c; bytecode file offset 0x98ac08"
!CTreeSearchObjectRecordN32 methodsFor: 'recovered'!
objectState
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (108).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008e380; bytecode file offset 0x98ac5c"
!CTreeSearchObjectRecordN32 methodsFor: 'recovered'!
referenceState
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (112).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008e434; bytecode file offset 0x98acec"
!CTreeSearchObjectRecordN32 methodsFor: 'recovered'!
blobSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (122).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d8124; bytecode file offset 0x9d49dc"
!CTreeSearchObjectRecordN32 methodsFor: 'recovered'!
blobSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (122) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200f50e8; bytecode file offset 0x9f19a0"
!CTreeSearchObjectRecordN32 methodsFor: 'recovered'!
baseName
    | recoveredValue0 |
    recoveredValue0 := (self) copyPSZStringFrom: (71) to: (103).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2016e5d8; bytecode file offset 0xa6ae98"
!CTreeSearchObjectRecordN32 methodsFor: 'recovered'!
transactionId
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (recoveredValue0) new: (2).
    recoveredValue2 := (recoveredValue1) replaceFrom: (1) to: (2) with: (self) startingAt: (120).
    ^recoveredValue2
! !

