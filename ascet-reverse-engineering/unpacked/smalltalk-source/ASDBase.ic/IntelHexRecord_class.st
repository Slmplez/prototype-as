"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001871c; bytecode file offset 0x92209c"
!IntelHexRecord class methodsFor: 'recovered'!
members
    ^#('numberOfBytes' 'address' 'recordType' 'recordClass')
! !

"ASDBase.ic method 0x200aa3cc; bytecode file offset 0x9a6c84"
!IntelHexRecord class methodsFor: 'recovered'!
putRecordIdOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPut: ($:).
    ^self
! !

"ASDBase.ic method 0x200b9810; bytecode file offset 0x9b60cc"
!IntelHexRecord class methodsFor: 'recovered'!
putRecordTypeOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) recordType.
    recoveredValue1 := recoveredArg1.
    (self) putHexByte: (recoveredValue0) on: (recoveredValue1).
    recoveredValue2 := (self) recordType.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20197040; bytecode file offset 0xa938fc"
!IntelHexRecord class methodsFor: 'recovered'!
putCheckSum: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) bitAnd: (255).
    recoveredValue2 := (256) - (recoveredValue1).
    recoveredValue3 := (recoveredValue2) bitAnd: (255).
    recoveredValue4 := recoveredArg2.
    (self) putHexByte: (recoveredValue3) on: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x203042e8; bytecode file offset 0xc00bc4"
!IntelHexRecord class methodsFor: 'recovered'!
initializeClass
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (16).
    RecordClasses := recoveredValue1.
    recoveredValue2 := RecordClasses.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := IntelHexBytesRecord.
    (recoveredValue3) at: (1) put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := IntelHexChecksumRecord.
    (recoveredValue5) at: (2) put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := IntelHexExtendedSegmentRecord.
    (recoveredValue7) at: (3) put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := IntelHexStartSegmentRecord.
    (recoveredValue9) at: (4) put: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := IntelHexLinearOffsetRecord.
    (recoveredValue11) at: (5) put: (recoveredValue12).
    recoveredValue13 := IntelHexLinearStartAddressRecord.
    (recoveredValue2) at: (6) put: (recoveredValue13).
    ^self
! !

