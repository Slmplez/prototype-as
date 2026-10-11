"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001ed04; bytecode file offset 0x92209c"
!FamosFormat class methodsFor: 'recovered'!
keyWord
    ^'CF'
! !

"ASDBase.ic method 0x200b6b78; bytecode file offset 0x9b39ac"
!FamosFormat class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('processor' 'keyGroup' 'binaries' 'bufferDefinitions')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2016b9ec; bytecode file offset 0xa682b0"
!FamosFormat class methodsFor: 'recovered'!
create
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) keyLength: (1).
    (recoveredValue1) processor: (1).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

