"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20018434; bytecode file offset 0x92209c"
!ASAP2KWP2000V30RdbpiResponseTypeUudt class methodsFor: 'recovered'!
members
    ^#('can' 'flexRay')
! !

"ASDBase.ic method 0x2001d690; bytecode file offset 0x92209c"
!ASAP2KWP2000V30RdbpiResponseTypeUudt class methodsFor: 'recovered'!
keyWord
    ^'RDBPI_RESPONSE_TYPE_UUDT'
! !

"ASDBase.ic method 0x200728f8; bytecode file offset 0x96f1c4"
!ASAP2KWP2000V30RdbpiResponseTypeUudt class methodsFor: 'recovered'!
fixedSize
    ^2
! !

"ASDBase.ic method 0x20231c10; bytecode file offset 0xb2e524"
!ASAP2KWP2000V30RdbpiResponseTypeUudt class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('CAN') put: ('getCan:').
    recoveredValue2 := (self) options.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := Association.
    recoveredValue5 := (recoveredValue4) key: ('CAN') value: ('putIn:can:').
    (recoveredValue3) add: (recoveredValue5).
    ^self
! !

