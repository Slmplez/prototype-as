"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20020d8c; bytecode file offset 0x92209c"
!ASAP2CanParameter class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'frequency:' 'bitTimingRegister1:' 'bitTimingRegister2:')
! !

"ASDBase.ic method 0x200254c0; bytecode file offset 0x92209c"
!ASAP2CanParameter class methodsFor: 'recovered'!
keyWord
    ^'CAN_PARAM'
! !

"ASDBase.ic method 0x200b6a10; bytecode file offset 0x9b39ac"
!ASAP2CanParameter class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('frequency' 'bitTimingRegister1' 'bitTimingRegister2')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b73c8; bytecode file offset 0x9b3cb4"
!ASAP2CanParameter class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (3).
    ^recoveredValue1
! !

