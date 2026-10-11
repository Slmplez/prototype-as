"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016730; bytecode file offset 0x92209c"
!ASAP2KWP2000Can class methodsFor: 'recovered'!
members
    ^#('canId')
! !

"ASDBase.ic method 0x2001e1ac; bytecode file offset 0x92209c"
!ASAP2KWP2000Can class methodsFor: 'recovered'!
keyWord
    ^'CAN'
! !

"ASDBase.ic method 0x200721a0; bytecode file offset 0x96ee04"
!ASAP2KWP2000Can class methodsFor: 'recovered'!
fixedSize
    ^1
! !

"ASDBase.ic method 0x201ffd98; bytecode file offset 0xafc77c"
!ASAP2KWP2000Can class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    (recoveredValue0) at: ('CAN_ID') put: ('getCanId:').
    recoveredValue1 := (self) options.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) key: ('CAN_ID') value: ('putIn:canId:').
    (recoveredValue1) add: (recoveredValue3).
    ^self
! !

