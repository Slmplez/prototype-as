"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001ac0c; bytecode file offset 0x92209c"
!ASAP2KWP2000V30IdRange class methodsFor: 'recovered'!
members
    ^#('firstId' 'lastId')
! !

"ASDBase.ic method 0x20072598; bytecode file offset 0x96f1c4"
!ASAP2KWP2000V30IdRange class methodsFor: 'recovered'!
fixedSize
    ^2
! !

"ASDBase.ic method 0x20276014; bytecode file offset 0xb728f0"
!ASAP2KWP2000V30IdRange class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('FIRST_ID') put: ('getFirstId:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('FIRST_CAN_ID') put: ('getFirstId:').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('LAST_ID') put: ('getLastId:').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) at: ('LAST_CAN_ID') put: ('getLastId:').
    ^self
! !

