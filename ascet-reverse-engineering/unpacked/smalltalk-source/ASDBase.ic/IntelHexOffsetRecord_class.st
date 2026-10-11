"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201684ac; bytecode file offset 0xa64d70"
!IntelHexOffsetRecord class methodsFor: 'recovered'!
putRecord: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg2.
    (self) putRecordHeaderOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (self) putAddress: (recoveredValue1) on: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    (self) putChecksum: (recoveredValue3) on: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) segmentStartFor: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20201b24; bytecode file offset 0xafe3e4"
!IntelHexOffsetRecord class methodsFor: 'recovered'!
putRecordHeaderOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    (self) putRecordIdOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putHexByte: (2) on: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putHexByte: (0) on: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putHexByte: (0) on: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) putRecordTypeOn: (recoveredValue4).
    ^self
! !

