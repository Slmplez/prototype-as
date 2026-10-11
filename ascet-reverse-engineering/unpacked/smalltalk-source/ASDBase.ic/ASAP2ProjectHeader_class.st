"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001cf10; bytecode file offset 0x92209c"
!ASAP2ProjectHeader class methodsFor: 'recovered'!
keyWord
    ^'HEADER'
! !

"ASDBase.ic method 0x20021de8; bytecode file offset 0x92209c"
!ASAP2ProjectHeader class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'version:' 'projectNo:')
! !

"ASDBase.ic method 0x20078f6c; bytecode file offset 0x975820"
!ASAP2ProjectHeader class methodsFor: 'recovered'!
emBehaviorId
    ^143
! !

"ASDBase.ic method 0x200b6098; bytecode file offset 0x9b39ac"
!ASAP2ProjectHeader class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('version' 'projectNo' 'asapVersion')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b73f8; bytecode file offset 0x9b3cb4"
!ASAP2ProjectHeader class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2015b710; bytecode file offset 0xa57ff8"
!ASAP2ProjectHeader class methodsFor: 'recovered'!
create: recoveredArg1 longName: recoveredArg2 version: recoveredArg3 projectNo: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) create: (recoveredValue0) longName: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg3.
    (recoveredValue4) version: (recoveredValue5).
    recoveredValue6 := recoveredArg4.
    (recoveredValue3) projectNo: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x202c4c3c; bytecode file offset 0xbc1520"
!ASAP2ProjectHeader class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('VERSION') put: ('getVersion:').
    (recoveredValue0) at: ('PROJECT_NO') put: ('getProjectNo:').
    recoveredValue2 := options.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := Association.
    recoveredValue5 := (recoveredValue4) key: ('VERSION') value: ('putIn:version:').
    (recoveredValue3) add: (recoveredValue5).
    recoveredValue6 := Association.
    recoveredValue7 := (recoveredValue6) key: ('PROJECT_NO') value: ('putIn:projectNo:').
    (recoveredValue2) add: (recoveredValue7).
    ^self
! !

