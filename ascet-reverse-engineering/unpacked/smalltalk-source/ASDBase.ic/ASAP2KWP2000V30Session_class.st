"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001ad2c; bytecode file offset 0x92209c"
!ASAP2KWP2000V30Session class methodsFor: 'recovered'!
members
    ^#('identifier' 'diagnosticMode' 'openingOrder' 'testerPresentOptions')
! !

"ASDBase.ic method 0x20023dd4; bytecode file offset 0x92209c"
!ASAP2KWP2000V30Session class methodsFor: 'recovered'!
keyWord
    ^'SESSION'
! !

"ASDBase.ic method 0x2002749c; bytecode file offset 0x923d50"
!ASAP2KWP2000V30Session class methodsFor: 'recovered'!
fixedSize
    ^4
! !

"ASDBase.ic method 0x202d8448; bytecode file offset 0xbd4d30"
!ASAP2KWP2000V30Session class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('SessionOpeningOrder') put: ('getOpeningOrder:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('TesterPresentOptions') put: ('getTesterPresentOptions:').
    recoveredValue3 := options.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := Association.
    recoveredValue6 := (recoveredValue5) key: ('SessionOpeningOrder') value: ('putIn:openingOrder:').
    (recoveredValue4) add: (recoveredValue6).
    recoveredValue7 := Association.
    recoveredValue8 := (recoveredValue7) key: ('TesterPresentOptions') value: ('putIn:testerPresentOptions:').
    (recoveredValue3) add: (recoveredValue8).
    ^self
! !

