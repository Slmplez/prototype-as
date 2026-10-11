"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200178ac; bytecode file offset 0x92209c"
!ASAP2ModuleCommon class methodsFor: 'recovered'!
keyWord
    ^'MOD_COMMON'
! !

"ASDBase.ic method 0x20017f84; bytecode file offset 0x92209c"
!ASAP2ModuleCommon class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'sRecLayout:' 'deposit:' 'byteOrder:' 'dataSize:' 'alignmentByte:' 'alignmentWord:' 'alignmentDWord:' 'alignmentReal32:' 'alignmentReal64:')
! !

"ASDBase.ic method 0x2007483c; bytecode file offset 0x9710f8"
!ASAP2ModuleCommon class methodsFor: 'recovered'!
emBehaviorId
    ^140
! !

"ASDBase.ic method 0x200b6470; bytecode file offset 0x9b39ac"
!ASAP2ModuleCommon class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('sRecLayout' 'deposit' 'byteOrder' 'dataSize' 'alignmentByte' 'alignmentWord' 'alignmentDWord' 'alignmentReal32' 'alignmentReal64')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b76f0; bytecode file offset 0x9b3fac"
!ASAP2ModuleCommon class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (9).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201fbed4; bytecode file offset 0xaf87d4"
!ASAP2ModuleCommon class methodsFor: 'recovered'!
create: recoveredArg1 longName: recoveredArg2 sRecLayout: recoveredArg3 deposit: recoveredArg4 byteOrder: recoveredArg5 dataSize: recoveredArg6
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) create: (recoveredValue0) longName: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg3.
    (recoveredValue4) sRecLayout: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := recoveredArg4.
    (recoveredValue6) deposit: (recoveredValue7).
    recoveredValue8 := recoveredValue3.
    recoveredValue9 := recoveredArg5.
    (recoveredValue8) byteOrder: (recoveredValue9).
    recoveredValue10 := recoveredArg6.
    (recoveredValue3) dataSize: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

"ASDBase.ic method 0x203da9e4; bytecode file offset 0xcd72e4"
!ASAP2ModuleCommon class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('S_REC_LAYOUT') put: ('getSRecLayout:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('DEPOSIT') put: ('getDeposit:').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('BYTE_ORDER') put: ('getByteOrder:').
    (recoveredValue0) at: ('DATA_SIZE') put: ('getDataSize:').
    recoveredValue4 := options.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := Association.
    recoveredValue7 := (recoveredValue6) key: ('S_REC_LAYOUT') value: ('putIn:sRecLayout:').
    (recoveredValue5) add: (recoveredValue7).
    recoveredValue8 := recoveredValue4.
    recoveredValue9 := Association.
    recoveredValue10 := (recoveredValue9) key: ('DEPOSIT') value: ('putIn:deposit:').
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue4.
    recoveredValue12 := Association.
    recoveredValue13 := (recoveredValue12) key: ('BYTE_ORDER') value: ('putIn:byteOrder:').
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := Association.
    recoveredValue15 := (recoveredValue14) key: ('DATA_SIZE') value: ('putIn:dataSize:').
    (recoveredValue4) add: (recoveredValue15).
    (self) initializeAddAlignmentKeyWords.
    ^self
! !

