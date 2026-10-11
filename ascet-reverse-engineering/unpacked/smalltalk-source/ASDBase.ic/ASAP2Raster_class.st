"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001a1e0; bytecode file offset 0x92209c"
!ASAP2Raster class methodsFor: 'recovered'!
keyWord
    ^'RASTER'
! !

"ASDBase.ic method 0x20021d64; bytecode file offset 0x92209c"
!ASAP2Raster class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'rasterID:' 'periodUnit:' 'period:')
! !

"ASDBase.ic method 0x200b6620; bytecode file offset 0x9b39ac"
!ASAP2Raster class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('rasterID' 'periodUnit' 'period')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b74d4; bytecode file offset 0x9b3da0"
!ASAP2Raster class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (4).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201f2c7c; bytecode file offset 0xaef814"
!ASAP2Raster class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    (recoveredValue0) at: ('EXCLUSIVE') put: ('getExclusive:').
    recoveredValue1 := options.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) key: ('EXCLUSIVE') value: ('putIn:exclusive:').
    (recoveredValue1) add: (recoveredValue3).
    ^self
! !

