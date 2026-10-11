"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20018488; bytecode file offset 0x92209c"
!FamosText class methodsFor: 'recovered'!
keyWord
    ^'CT'
! !

"ASDBase.ic method 0x200b6cc8; bytecode file offset 0x9b39ac"
!FamosText class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('textLength' 'text')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201bedd8; bytecode file offset 0xabb6a0"
!FamosText class methodsFor: 'recovered'!
create: recoveredArg1 name: recoveredArg2 comment: recoveredArg3 text: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) create: (recoveredValue0) name: (recoveredValue1) comment: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := (recoveredValue6) size.
    (recoveredValue5) textLength: (recoveredValue7).
    recoveredValue8 := recoveredValue4.
    recoveredValue9 := recoveredArg4.
    (recoveredValue8) text: (recoveredValue9).
    (recoveredValue4) getKeyBytes.
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

