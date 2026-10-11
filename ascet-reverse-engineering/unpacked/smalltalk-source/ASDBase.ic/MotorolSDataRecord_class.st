"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200817d8; bytecode file offset 0x97e234"
!MotorolSDataRecord class methodsFor: 'recovered'!
putHeaderOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := MotorolSHeaderRecord.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) putRecordOn: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20098314; bytecode file offset 0x995850"
!MotorolSDataRecord class methodsFor: 'recovered'!
putTerminationRecordOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) terminationClass.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) putRecordOn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ac624; bytecode file offset 0x9a8ef0"
!MotorolSDataRecord class methodsFor: 'recovered'!
putRecordCount: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := MotorolaSCountRecord.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) putRecordCount: (recoveredValue1) on: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b5b70; bytecode file offset 0x9b39ac"
!MotorolSDataRecord class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('address' 'bytes' 'asBinary' 'checksum' 'checksumOffset')).
    ^recoveredValue1
! !

