"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2007296c; bytecode file offset 0x96f220"
!MotorolSHeaderRecord class methodsFor: 'recovered'!
recordType
    ^$0
! !

"ASDBase.ic method 0x200b64e8; bytecode file offset 0x9b39ac"
!MotorolSHeaderRecord class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('hdr')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011fd10; bytecode file offset 0xa1c5d4"
!MotorolSHeaderRecord class methodsFor: 'recovered'!
putRecordOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putRecordIdOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) nextPutAll: ('0600004844521B').
    (recoveredValue1) cr.
    ^self
! !

