"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200177c8; bytecode file offset 0x92209c"
!FamosChannel class methodsFor: 'recovered'!
nextKeySection
    ^#('CC' 'CG' 'CT' 'CB' 'CN' 'CR' 'Cb')
! !

"ASDBase.ic method 0x2001f9dc; bytecode file offset 0x92209c"
!FamosChannel class methodsFor: 'recovered'!
keyWord
    ^'CN'
! !

"ASDBase.ic method 0x200b6ae8; bytecode file offset 0x9b39ac"
!FamosChannel class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('bitIndex' 'nameLength' 'name' 'commentLength' 'comment')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ddfbc; bytecode file offset 0x9da874"
!FamosChannel class methodsFor: 'recovered'!
create: recoveredArg1 name: recoveredArg2 comment: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) create: (recoveredValue0) bitIndex: (0) name: (recoveredValue1) comment: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2025cc34; bytecode file offset 0xb5950c"
!FamosChannel class methodsFor: 'recovered'!
create: recoveredArg1 bitIndex: recoveredArg2 name: recoveredArg3 comment: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) groupIndex: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) bitIndex: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := (recoveredValue7) size.
    (recoveredValue6) nameLength: (recoveredValue8).
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := recoveredArg3.
    (recoveredValue9) name: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := recoveredArg4.
    recoveredValue13 := (recoveredValue12) size.
    (recoveredValue11) commentLength: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := recoveredArg4.
    (recoveredValue14) comment: (recoveredValue15).
    (recoveredValue1) getKeyBytes.
    recoveredValue16 := recoveredLocal1.
    ^recoveredValue16
! !

