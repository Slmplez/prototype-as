"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20025718; bytecode file offset 0x92209c"
!MotorolaSRecord class methodsFor: 'recovered'!
members
    ^#('recordType' 'numberOfBytes')
! !

"ASDBase.ic method 0x20072cd8; bytecode file offset 0x96f6d4"
!MotorolaSRecord class methodsFor: 'recovered'!
fixedSize
    ^4
! !

"ASDBase.ic method 0x2007fc04; bytecode file offset 0x97c4b8"
!MotorolaSRecord class methodsFor: 'recovered'!
recordId
    ^$S
! !

"ASDBase.ic method 0x200fccac; bytecode file offset 0x9f956c"
!MotorolaSRecord class methodsFor: 'recovered'!
putRecordIdOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) recordId.
    (recoveredValue1) nextPut: (recoveredValue2).
    recoveredValue3 := (self) recordType.
    (recoveredValue0) nextPut: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20197068; bytecode file offset 0xa93924"
!MotorolaSRecord class methodsFor: 'recovered'!
putCheckSum: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) bitAnd: (255).
    recoveredValue2 := (255) - (recoveredValue1).
    recoveredValue3 := (recoveredValue2) bitAnd: (255).
    recoveredValue4 := recoveredArg2.
    (self) putHexByte: (recoveredValue3) on: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x202087c4; bytecode file offset 0xb0508c"
!MotorolaSRecord class methodsFor: 'recovered'!
putRecordHeader: recoveredArg1 size: recoveredArg2 on: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg3.
    (self) putRecordIdOn: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) addressSize.
    recoveredValue3 := (recoveredValue2) + (2).
    recoveredValue4 := (recoveredValue3) / (2).
    recoveredValue5 := (recoveredValue1) + (recoveredValue4).
    recoveredValue6 := recoveredValue5.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredArg3.
    (self) putHexByte: (recoveredValue5) on: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredArg3.
    recoveredValue11 := (self) putAddress: (recoveredValue9) on: (recoveredValue10).
    recoveredValue12 := (recoveredValue8) + (recoveredValue11).
    ^recoveredValue12
! !

