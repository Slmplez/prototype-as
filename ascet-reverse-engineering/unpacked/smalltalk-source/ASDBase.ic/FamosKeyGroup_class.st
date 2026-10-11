"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20021110; bytecode file offset 0x92209c"
!FamosKeyGroup class methodsFor: 'recovered'!
keyWord
    ^'CK'
! !

"ASDBase.ic method 0x20026ba8; bytecode file offset 0x923928"
!FamosKeyGroup class methodsFor: 'recovered'!
nextKeySection
    ^#('CK')
! !

"ASDBase.ic method 0x200b7070; bytecode file offset 0x9b39ac"
!FamosKeyGroup class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('readyFlag' 'dataFieldDefinitions' 'groupDefinitions')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20159b14; bytecode file offset 0xa563d8"
!FamosKeyGroup class methodsFor: 'recovered'!
create
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) keyLength: (3).
    (recoveredValue1) readyFlag: (false).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

