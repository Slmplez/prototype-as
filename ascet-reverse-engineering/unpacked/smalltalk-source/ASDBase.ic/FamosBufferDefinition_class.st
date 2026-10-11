"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20017d14; bytecode file offset 0x92209c"
!FamosBufferDefinition class methodsFor: 'recovered'!
keyWord
    ^'Cb'
! !

"ASDBase.ic method 0x200b6ad0; bytecode file offset 0x9b39ac"
!FamosBufferDefinition class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('noOfBuffers' 'userInfoSize' 'buffers')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2018c1ac; bytecode file offset 0xa88a74"
!FamosBufferDefinition class methodsFor: 'recovered'!
create: recoveredArg1 userInfoSize: recoveredArg2 buffers: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) noOfBuffers: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) userInfoSize: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) buffers: (recoveredValue7).
    (recoveredValue1) getKeyBytes.
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

