"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200237a4; bytecode file offset 0x92209c"
!CANDBSignal class methodsFor: 'recovered'!
keyWord
    ^'SG_'
! !

"ASDBase.ic method 0x2003c5e0; bytecode file offset 0x938e9c"
!CANDBSignal class methodsFor: 'recovered'!
createWithbitOffset: recoveredArg1 numberOfBits: recoveredArg2 dataType: recoveredArg3 formula: recoveredArg4 interval: recoveredArg5 unit: recoveredArg6 receiver: recoveredArg7
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b6fc8; bytecode file offset 0x9b39ac"
!CANDBSignal class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('bitOffset' 'numberOfBits' 'byteOrder' 'dataType' 'unit' 'receiver' 'formula' 'interval')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x203070a0; bytecode file offset 0xc0396c"
!CANDBSignal class methodsFor: 'recovered'!
initializeSeparators
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) add: ($ ).
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := (Character value: 9).
    (recoveredValue4) add: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) add: ($|).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) add: ($@).
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) add: ($:).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := Cr.
    (recoveredValue9) add: (recoveredValue10).
    recoveredValue11 := Lf.
    (recoveredValue2) add: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue12) asArray.
    separators := recoveredValue13.
    ^self
! !

"ASDBase.ic method 0x2042115c; bytecode file offset 0xd1da54"
!CANDBSignal class methodsFor: 'recovered'!
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
    (recoveredValue8) at: ('SG_') put: ('return:lastWord:').
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

