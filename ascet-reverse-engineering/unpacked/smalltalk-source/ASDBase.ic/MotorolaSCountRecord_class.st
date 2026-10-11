"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2008018c; bytecode file offset 0x97ca40"
!MotorolaSCountRecord class methodsFor: 'recovered'!
recordType
    ^$5
! !

"ASDBase.ic method 0x200b6440; bytecode file offset 0x9b39ac"
!MotorolaSCountRecord class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('count')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2032f56c; bytecode file offset 0xc2be3c"
!MotorolaSCountRecord class methodsFor: 'recovered'!
putRecordCount: recoveredArg1 on: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := recoveredArg2.
    (self) putRecordIdOn: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) nextPut: ($0).
    (recoveredValue1) nextPut: ($3).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    (self) putHexWord: (recoveredValue3) on: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) bitAnd: (255).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) >> (8).
    recoveredValue10 := (recoveredValue9) bitAnd: (255).
    recoveredValue11 := (recoveredValue7) + (recoveredValue10).
    recoveredLocal1 := recoveredValue11.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue12) + (3).
    recoveredLocal1 := recoveredValue13.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := recoveredArg2.
    (self) putCheckSum: (recoveredValue14) on: (recoveredValue15).
    recoveredValue16 := recoveredArg2.
    (recoveredValue16) cr.
    ^self
! !

