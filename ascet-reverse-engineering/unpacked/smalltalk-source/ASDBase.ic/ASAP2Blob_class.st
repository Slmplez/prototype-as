"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20023bdc; bytecode file offset 0x92209c"
!ASAP2Blob class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'bytes:')
! !

"ASDBase.ic method 0x20090f20; bytecode file offset 0x98d9dc"
!ASAP2Blob class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b6dd0; bytecode file offset 0x9b39ac"
!ASAP2Blob class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('bytes')).
    ^recoveredValue1
! !

