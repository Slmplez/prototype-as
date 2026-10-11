"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20024bb4; bytecode file offset 0x92209c"
!ASAP2EventGroup class methodsFor: 'recovered'!
keyWord
    ^'EVENT_GROUP'
! !

"ASDBase.ic method 0x20025ea0; bytecode file offset 0x923928"
!ASAP2EventGroup class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'raster:')
! !

"ASDBase.ic method 0x20090fe0; bytecode file offset 0x98d9dc"
!ASAP2EventGroup class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b63e0; bytecode file offset 0x9b39ac"
!ASAP2EventGroup class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('raster')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201f2bcc; bytecode file offset 0xaef814"
!ASAP2EventGroup class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    (recoveredValue0) at: ('RASTER') put: ('getRaster:').
    recoveredValue1 := options.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) key: ('RASTER') value: ('putIn:raster:').
    (recoveredValue1) add: (recoveredValue3).
    ^self
! !

