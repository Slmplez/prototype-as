"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002423c; bytecode file offset 0x92209c"
!ASAP2PageBuffer class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'page:' 'address:' 'length:')
! !

"ASDBase.ic method 0x200b68d8; bytecode file offset 0x9b39ac"
!ASAP2PageBuffer class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('page' 'address' 'length')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7318; bytecode file offset 0x9b3cb4"
!ASAP2PageBuffer class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (3).
    ^recoveredValue1
! !

