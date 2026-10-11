"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001c334; bytecode file offset 0x92209c"
!ASAP2McMessDPBlob class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'bytes:' 'address:' 'sizea:')
! !

"ASDBase.ic method 0x20025e4c; bytecode file offset 0x923928"
!ASAP2McMessDPBlob class methodsFor: 'recovered'!
keyWord
    ^'DP_BLOB'
! !

"ASDBase.ic method 0x200b6cb0; bytecode file offset 0x9b39ac"
!ASAP2McMessDPBlob class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('address' 'sizea')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b725c; bytecode file offset 0x9b3b98"
!ASAP2McMessDPBlob class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (2).
    ^recoveredValue1
! !

