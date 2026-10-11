"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002099c; bytecode file offset 0x92209c"
!MDFFileId class methodsFor: 'recovered'!
id
    ^''
! !

"ASDBase.ic method 0x200805d8; bytecode file offset 0x97cf3c"
!MDFFileId class methodsFor: 'recovered'!
fixedSize
    ^64
! !

"ASDBase.ic method 0x200b69f8; bytecode file offset 0x9b39ac"
!MDFFileId class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('fileId' 'format' 'formatVersion' 'programId' 'byteOrder' 'floatType')).
    ^recoveredValue1
! !

