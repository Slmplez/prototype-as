"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200231c8; bytecode file offset 0x92209c"
!FamosUserDefinedKey class methodsFor: 'recovered'!
keyWord
    ^'NU'
! !

"ASDBase.ic method 0x200b62d8; bytecode file offset 0x9b39ac"
!FamosUserDefinedKey class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('idLength' 'id' 'data')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2019c8e4; bytecode file offset 0xa991b0"
!FamosUserDefinedKey class methodsFor: 'recovered'!
create: recoveredArg1 id: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) id: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) size.
    (recoveredValue4) idLength: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := recoveredArg2.
    (recoveredValue7) data: (recoveredValue8).
    (recoveredValue1) getKeyBytes.
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

