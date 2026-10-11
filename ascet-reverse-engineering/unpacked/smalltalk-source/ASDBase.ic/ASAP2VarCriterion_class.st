"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001a8c4; bytecode file offset 0x92209c"
!ASAP2VarCriterion class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'value:' 'measurement:' 'selectionCharacterisitic:')
! !

"ASDBase.ic method 0x2001fa0c; bytecode file offset 0x92209c"
!ASAP2VarCriterion class methodsFor: 'recovered'!
keyWord
    ^'VAR_CRITERION'
! !

"ASDBase.ic method 0x2007490c; bytecode file offset 0x9711c0"
!ASAP2VarCriterion class methodsFor: 'recovered'!
emBehaviorId
    ^142
! !

"ASDBase.ic method 0x200b6c20; bytecode file offset 0x9b39ac"
!ASAP2VarCriterion class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('value' 'measurement' 'selectionCharacteristic')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7398; bytecode file offset 0x9b3cb4"
!ASAP2VarCriterion class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2015b738; bytecode file offset 0xa57ff8"
!ASAP2VarCriterion class methodsFor: 'recovered'!
create: recoveredArg1 longName: recoveredArg2 value: recoveredArg3 measurement: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) create: (recoveredValue0) longName: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg3.
    (recoveredValue4) value: (recoveredValue5).
    recoveredValue6 := recoveredArg4.
    (recoveredValue3) measurement: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x202c4c04; bytecode file offset 0xbc1520"
!ASAP2VarCriterion class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('VAR_MEASUREMENT') put: ('getVarMeasurement:').
    (recoveredValue0) at: ('VAR_SELECTION_CHARACTERISTIC') put: ('getVarSelectionCharacteristic:').
    recoveredValue2 := options.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := Association.
    recoveredValue5 := (recoveredValue4) key: ('VAR_MEASUREMENT') value: ('putIn:varMeasurement:').
    (recoveredValue3) add: (recoveredValue5).
    recoveredValue6 := Association.
    recoveredValue7 := (recoveredValue6) key: ('VAR_SELECTION_CHARACTERISTIC') value: ('putIn:varSelectionCharacteristic:').
    (recoveredValue2) add: (recoveredValue7).
    ^self
! !

