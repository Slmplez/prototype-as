"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20020f30; bytecode file offset 0x92209c"
!ASAP2AddressMapping class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'originalAddress:' 'mappingAddress:' 'length:')
! !

"ASDBase.ic method 0x200243e0; bytecode file offset 0x92209c"
!ASAP2AddressMapping class methodsFor: 'recovered'!
keyWord
    ^'ADDRESS_MAPPING'
! !

"ASDBase.ic method 0x20080044; bytecode file offset 0x97c8f8"
!ASAP2AddressMapping class methodsFor: 'recovered'!
emBehaviorId
    ^165
! !

"ASDBase.ic method 0x200b6ed8; bytecode file offset 0x9b39ac"
!ASAP2AddressMapping class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('originalAddress' 'mappingAddress' 'length')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7388; bytecode file offset 0x9b3cb4"
!ASAP2AddressMapping class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (3).
    ^recoveredValue1
! !

