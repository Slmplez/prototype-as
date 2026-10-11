"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20021938; bytecode file offset 0x92209c"
!MDFDataGroup class methodsFor: 'recovered'!
id
    ^'DG'
! !

"ASDBase.ic method 0x2007fad0; bytecode file offset 0x97c3ac"
!MDFDataGroup class methodsFor: 'recovered'!
fixedSize
    ^24
! !

"ASDBase.ic method 0x200b6aa0; bytecode file offset 0x9b39ac"
!MDFDataGroup class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('dgPtr' 'cgPtr' 'trPtr' 'dataPtr' 'noOfCg' 'noOfRecId' 'dataInfo')).
    ^recoveredValue1
! !

