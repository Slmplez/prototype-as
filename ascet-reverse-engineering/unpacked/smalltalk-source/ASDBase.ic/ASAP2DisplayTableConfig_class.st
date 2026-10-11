"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20017198; bytecode file offset 0x92209c"
!ASAP2DisplayTableConfig class methodsFor: 'recovered'!
keyWord
    ^'DISTAB_CFG'
! !

"ASDBase.ic method 0x2002024c; bytecode file offset 0x92209c"
!ASAP2DisplayTableConfig class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'displayTableType:' 'dataMode:' 'byteOrder:' 'triggerSegmentAddress:' 'triggerConfig:' 'triggerMode:')
! !

"ASDBase.ic method 0x200b6de8; bytecode file offset 0x9b39ac"
!ASAP2DisplayTableConfig class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('displayTableType' 'dataMode' 'byteOrder' 'triggerSegmentAddress' 'triggerConfig' 'triggerMode')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b75fc; bytecode file offset 0x9b3f08"
!ASAP2DisplayTableConfig class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (6).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201f2e8c; bytecode file offset 0xaef814"
!ASAP2DisplayTableConfig class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    (recoveredValue0) at: ('TRG_MOD') put: ('getTriggerMode:').
    recoveredValue1 := options.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) key: ('TRG_MOD') value: ('putIn:triggerMode:').
    (recoveredValue1) add: (recoveredValue3).
    ^self
! !

