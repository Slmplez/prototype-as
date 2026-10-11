"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001c0c4; bytecode file offset 0x92209c"
!ASAP2ChecksumParameter class methodsFor: 'recovered'!
keyWord
    ^'CHECKSUM'
! !

"ASDBase.ic method 0x20026830; bytecode file offset 0x923928"
!ASAP2ChecksumParameter class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'checksumType:')
! !

"ASDBase.ic method 0x20090ea0; bytecode file offset 0x98d9dc"
!ASAP2ChecksumParameter class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b5ba0; bytecode file offset 0x9b39ac"
!ASAP2ChecksumParameter class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('checksumType')).
    ^recoveredValue1
! !

