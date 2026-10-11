"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001eb90; bytecode file offset 0x92209c"
!MDFText class methodsFor: 'recovered'!
id
    ^'TX'
! !

"ASDBase.ic method 0x200b63f8; bytecode file offset 0x9b39ac"
!MDFText class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('text')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2016ca54; bytecode file offset 0xa6931c"
!MDFText class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initializeDefault.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) text: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) size.
    recoveredValue7 := (recoveredValue6) + (4).
    (recoveredValue2) length: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x201ee8e4; bytecode file offset 0xaeb1b4"
!MDFText class methodsFor: 'recovered'!
create: recoveredArg1 size: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initializeDefault.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) - (4).
    recoveredValue7 := (recoveredValue4) addBlankTo: (recoveredValue6).
    (recoveredValue3) text: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) text.
    recoveredValue10 := (recoveredValue9) size.
    recoveredValue11 := (recoveredValue10) + (4).
    (recoveredValue2) length: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

