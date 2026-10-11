"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20019ee0; bytecode file offset 0x92209c"
!CANDBMessage class methodsFor: 'recovered'!
keyWord
    ^'BO_'
! !

"ASDBase.ic method 0x2003c4c0; bytecode file offset 0x938dbc"
!CANDBMessage class methodsFor: 'recovered'!
createWithid: recoveredArg1 numberOfBytes: recoveredArg2 sender: recoveredArg3 signals: recoveredArg4
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b6758; bytecode file offset 0x9b39ac"
!CANDBMessage class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('id' 'numberOfBytes' 'sender' 'signals')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201d524c; bytecode file offset 0xad1b10"
!CANDBMessage class methodsFor: 'recovered'!
initializeSeparators
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := (Character value: 9).
    recoveredValue2 := Cr.
    recoveredValue3 := Lf.
    recoveredValue4 := (recoveredValue0) with: ($ ) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: ($:).
    separators := recoveredValue4.
    ^self
! !

"ASDBase.ic method 0x20421210; bytecode file offset 0xd1db0c"
!CANDBMessage class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    keyWords := recoveredValue1.
    recoveredValue2 := keyWords.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('NS_') put: ('return:lastWord:').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: ('BS_') put: ('return:lastWord:').
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: ('BU_') put: ('return:lastWord:').
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) at: ('BO_') put: ('return:lastWord:').
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: ('CM_') put: ('return:lastWord:').
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) at: ('SG_') put: ('getSignal:').
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) at: ('VAL_') put: ('return:lastWord:').
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) at: ('CAT_') put: ('return:lastWord:').
    recoveredValue11 := recoveredValue2.
    (recoveredValue11) at: ('CAT_DEF_') put: ('return:lastWord:').
    recoveredValue12 := recoveredValue2.
    (recoveredValue12) at: ('FILTER') put: ('return:lastWord:').
    recoveredValue13 := recoveredValue2.
    (recoveredValue13) at: ('BA_') put: ('return:lastWord:').
    recoveredValue14 := recoveredValue2.
    (recoveredValue14) at: ('BA_DEF_') put: ('return:lastWord:').
    (recoveredValue2) at: ('BA_DEF_DEF_') put: ('return:lastWord:').
    ^self
! !

