"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001a858; bytecode file offset 0x92209c"
!ASAP2KWP2000V30Baudrate class methodsFor: 'recovered'!
keyWord
    ^'BAUDRATE'
! !

"ASDBase.ic method 0x2001a99c; bytecode file offset 0x92209c"
!ASAP2KWP2000V30Baudrate class methodsFor: 'recovered'!
members
    ^#('baudrateIdentifier' 'bdParameter')
! !

"ASDBase.ic method 0x200727a0; bytecode file offset 0x96f1c4"
!ASAP2KWP2000V30Baudrate class methodsFor: 'recovered'!
fixedSize
    ^2
! !

"ASDBase.ic method 0x20225d24; bytecode file offset 0xb22600"
!ASAP2KWP2000V30Baudrate class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('BD_PARA') put: ('getBdParameter:').
    recoveredValue2 := options.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := Association.
    recoveredValue5 := (recoveredValue4) key: ('BD_PARA') value: ('putIn:bdParameter:').
    (recoveredValue3) add: (recoveredValue5).
    ^self
! !

