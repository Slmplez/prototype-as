"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001d834; bytecode file offset 0x92209c"
!ASAP2VarCharacteristic class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'criterionName:' 'address:')
! !

"ASDBase.ic method 0x2001fc4c; bytecode file offset 0x92209c"
!ASAP2VarCharacteristic class methodsFor: 'recovered'!
keyWord
    ^'VAR_CHARACTERISTIC'
! !

"ASDBase.ic method 0x20079190; bytecode file offset 0x975a44"
!ASAP2VarCharacteristic class methodsFor: 'recovered'!
emBehaviorId
    ^146
! !

"ASDBase.ic method 0x200b6938; bytecode file offset 0x9b39ac"
!ASAP2VarCharacteristic class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('criterionName' 'address')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b723c; bytecode file offset 0x9b3b98"
!ASAP2VarCharacteristic class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (2).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2015b55c; bytecode file offset 0xa57e20"
!ASAP2VarCharacteristic class methodsFor: 'recovered'!
create: recoveredArg1 criterionName: recoveredArg2 address: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) name: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg3.
    (recoveredValue4) address: (recoveredValue5).
    recoveredValue6 := recoveredArg2.
    (recoveredValue1) criterionName: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x201f2d2c; bytecode file offset 0xaef814"
!ASAP2VarCharacteristic class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    (recoveredValue0) at: ('VAR_ADDRESS') put: ('getVarAddress:').
    recoveredValue1 := options.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) key: ('VAR_ADDRESS') value: ('putIn:varAddress:').
    (recoveredValue1) add: (recoveredValue3).
    ^self
! !

