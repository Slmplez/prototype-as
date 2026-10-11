"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001b2cc; bytecode file offset 0x92209c"
!ASAP2KWP2000V30IdRangeCan class methodsFor: 'recovered'!
keyWord
    ^'UUDT_CAN_IDs'
! !

"ASDBase.ic method 0x20219b8c; bytecode file offset 0xb16498"
!ASAP2KWP2000V30IdRangeCan class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    super initializeKeyWords.
    recoveredValue0 := (self) options.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) key: ('FIRST_CAN_ID') value: ('putIn:firstId:').
    (recoveredValue1) add: (recoveredValue3).
    recoveredValue4 := Association.
    recoveredValue5 := (recoveredValue4) key: ('LAST_CAN_ID') value: ('putIn:lastId:').
    (recoveredValue0) add: (recoveredValue5).
    ^self
! !

