"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001b59c; bytecode file offset 0x92209c"
!ASAP2SeedKey class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'seedKeyList:')
! !

"ASDBase.ic method 0x20025aec; bytecode file offset 0x923928"
!ASAP2SeedKey class methodsFor: 'recovered'!
keyWord
    ^'SEED_KEY'
! !

"ASDBase.ic method 0x20080104; bytecode file offset 0x97c9b8"
!ASAP2SeedKey class methodsFor: 'recovered'!
emBehaviorId
    ^168
! !

"ASDBase.ic method 0x20090ff0; bytecode file offset 0x98d9dc"
!ASAP2SeedKey class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b6e30; bytecode file offset 0x9b39ac"
!ASAP2SeedKey class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('seedKeyList')).
    ^recoveredValue1
! !

