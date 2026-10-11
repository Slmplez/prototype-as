"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001d6b4; bytecode file offset 0x92209c"
!IntelHexChecksumRecord class methodsFor: 'recovered'!
members
    ^#()
! !

"ASDBase.ic method 0x20072120; bytecode file offset 0x96ee04"
!IntelHexChecksumRecord class methodsFor: 'recovered'!
recordType
    ^1
! !

"ASDBase.ic method 0x20074728; bytecode file offset 0x97102c"
!IntelHexChecksumRecord class methodsFor: 'recovered'!
fixedSize
    ^11
! !

"ASDBase.ic method 0x20284048; bytecode file offset 0xb8090c"
!IntelHexChecksumRecord class methodsFor: 'recovered'!
putRecordOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    (self) putRecordIdOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putHexByte: (0) on: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putHexByte: (0) on: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putHexByte: (0) on: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) putRecordTypeOn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) putHexByte: (255) on: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (recoveredValue6) cr.
    ^self
! !

