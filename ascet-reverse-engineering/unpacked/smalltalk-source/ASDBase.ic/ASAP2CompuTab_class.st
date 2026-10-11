"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20019c7c; bytecode file offset 0x92209c"
!ASAP2CompuTab class methodsFor: 'recovered'!
keyWord
    ^'COMPU_TAB'
! !

"ASDBase.ic method 0x20024848; bytecode file offset 0x92209c"
!ASAP2CompuTab class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'type:' 'noValues:' 'values:' 'defaultValue:')
! !

"ASDBase.ic method 0x2008024c; bytecode file offset 0x97cb00"
!ASAP2CompuTab class methodsFor: 'recovered'!
emBehaviorId
    ^46
! !

"ASDBase.ic method 0x200b6728; bytecode file offset 0x9b39ac"
!ASAP2CompuTab class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('defaultValue')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b763c; bytecode file offset 0x9b3f08"
!ASAP2CompuTab class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (6).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201ad134; bytecode file offset 0xaa99f8"
!ASAP2CompuTab class methodsFor: 'recovered'!
create: recoveredArg1 longName: recoveredArg2 type: recoveredArg3 noValues: recoveredArg4 values: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) create: (recoveredValue0) longName: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg3.
    (recoveredValue4) type: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := recoveredArg4.
    (recoveredValue6) noValues: (recoveredValue7).
    recoveredValue8 := recoveredArg5.
    (recoveredValue3) values: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x201d5e34; bytecode file offset 0xad2700"
!ASAP2CompuTab class methodsFor: 'recovered'!
createDefault
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) with: (0) with: (0).
    recoveredValue3 := (recoveredValue0) with: (recoveredValue2).
    recoveredValue4 := (self) create: ('') longName: ('') type: ('TAB_INTP') noValues: (1) values: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201ffae0; bytecode file offset 0xafc3bc"
!ASAP2CompuTab class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    (recoveredValue0) at: ('DEFAULT_VALUE') put: ('getDefaultValue:').
    recoveredValue1 := (self) options.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) key: ('DEFAULT_VALUE') value: ('putIn:defaultValue:').
    (recoveredValue1) add: (recoveredValue3).
    ^self
! !

