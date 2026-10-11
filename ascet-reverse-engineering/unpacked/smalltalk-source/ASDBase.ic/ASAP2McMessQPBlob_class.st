"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20023cd8; bytecode file offset 0x92209c"
!ASAP2McMessQPBlob class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'bytes:' 'samplingType:' 'maxSize:')
! !

"ASDBase.ic method 0x200b6a88; bytecode file offset 0x9b39ac"
!ASAP2McMessQPBlob class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('samplingType' 'maxSize')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b729c; bytecode file offset 0x9b3b98"
!ASAP2McMessQPBlob class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (2).
    ^recoveredValue1
! !

