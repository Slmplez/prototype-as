"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200b66e0; bytecode file offset 0x9b39ac"
!FamosNamedGroupIndexKey class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('nameLength' 'name' 'commentLength' 'comment')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201d4210; bytecode file offset 0xad0adc"
!FamosNamedGroupIndexKey class methodsFor: 'recovered'!
create: recoveredArg1 name: recoveredArg2 comment: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) create: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) name: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue6) size.
    (recoveredValue5) nameLength: (recoveredValue7).
    recoveredValue8 := recoveredValue2.
    recoveredValue9 := recoveredArg3.
    (recoveredValue8) comment: (recoveredValue9).
    recoveredValue10 := recoveredArg3.
    recoveredValue11 := (recoveredValue10) size.
    (recoveredValue2) commentLength: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

