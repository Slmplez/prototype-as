"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016094; bytecode file offset 0x92209c"
!ASAP2FNCValues class methodsFor: 'recovered'!
keyWord
    ^'FNC_VALUES'
! !

"ASDBase.ic method 0x200184dc; bytecode file offset 0x92209c"
!ASAP2FNCValues class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'position:' 'dataType:' 'indexMode:' 'addressType:')
! !

"ASDBase.ic method 0x20071d30; bytecode file offset 0x96e60c"
!ASAP2FNCValues class methodsFor: 'recovered'!
emBehaviorId
    ^128
! !

"ASDBase.ic method 0x200b6650; bytecode file offset 0x9b39ac"
!ASAP2FNCValues class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('position' 'dataType' 'indexMode' 'addressType')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b74b4; bytecode file offset 0x9b3da0"
!ASAP2FNCValues class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (4).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201de200; bytecode file offset 0xadaafc"
!ASAP2FNCValues class methodsFor: 'recovered'!
createFileDefaults
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) dataType: ('FLOAT64_IEEE').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) position: (1).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) indexMode: ('COLUMN_DIR').
    (recoveredValue1) addressType: ('DIRECT').
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20216504; bytecode file offset 0xb12dd0"
!ASAP2FNCValues class methodsFor: 'recovered'!
create: recoveredArg1 longName: recoveredArg2 position: recoveredArg3 dataType: recoveredArg4 indexMode: recoveredArg5 addressType: recoveredArg6
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super create: (recoveredValue0) longName: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg3.
    (recoveredValue4) position: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := recoveredArg4.
    (recoveredValue6) dataType: (recoveredValue7).
    recoveredValue8 := recoveredValue3.
    recoveredValue9 := recoveredArg5.
    (recoveredValue8) indexMode: (recoveredValue9).
    recoveredValue10 := recoveredArg6.
    (recoveredValue3) addressType: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

