"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200227b4; bytecode file offset 0x92209c"
!ASAP2KWP2000V30Can class methodsFor: 'recovered'!
members
    ^#('uudtCanIds')
! !

"ASDBase.ic method 0x200232c4; bytecode file offset 0x92209c"
!ASAP2KWP2000V30Can class methodsFor: 'recovered'!
keyWord
    ^'CAN'
! !

"ASDBase.ic method 0x200722c8; bytecode file offset 0x96ee04"
!ASAP2KWP2000V30Can class methodsFor: 'recovered'!
fixedSize
    ^1
! !

"ASDBase.ic method 0x202a08e0; bytecode file offset 0xb9d1cc"
!ASAP2KWP2000V30Can class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('UUDT_CAN_IDs') put: ('getCanId:').
    recoveredValue2 := (self) options.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) options.
    recoveredValue5 := (recoveredValue4) last.
    recoveredValue6 := [].
    (recoveredValue3) remove: (recoveredValue5) ifAbsent: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := Association.
    recoveredValue9 := (recoveredValue8) key: ('UUDT_CAN_IDs') value: ('putIn:canId:').
    (recoveredValue7) add: (recoveredValue9).
    ^self
! !

