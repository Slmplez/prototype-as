"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001b3bc; bytecode file offset 0x92209c"
!ASAP2KWP2000V30RDBPIParameter class methodsFor: 'recovered'!
members
    ^#('rdbpiResponseTypeUsdt' 'rdbpiResponseTypeUudt' 'transmissionMode' 'availablePeriodicIdentifierRange')
! !

"ASDBase.ic method 0x2001d858; bytecode file offset 0x92209c"
!ASAP2KWP2000V30RDBPIParameter class methodsFor: 'recovered'!
keyWord
    ^'RDBPI_PARAMETER'
! !

"ASDBase.ic method 0x20072e50; bytecode file offset 0x96f7ac"
!ASAP2KWP2000V30RDBPIParameter class methodsFor: 'recovered'!
fixedSize
    ^5
! !

"ASDBase.ic method 0x20406634; bytecode file offset 0xd02f40"
!ASAP2KWP2000V30RDBPIParameter class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('AVAILABLE_PERIODIC_IDENTIFIER_RANGE') put: ('getAvailablePeriodicIdentifierRange:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('RESPONSE_TYPE') put: ('getResponseType:').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('RDBPI_RESPONSE_TYPE_USDT') put: ('getRdbpiResponseTypeUsdt:').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) at: ('RDBPI_RESPONSE_TYPE_UUDT') put: ('getRdbpiResponseTypeUudt:').
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) at: ('TRANSMISSION_MODE') put: ('getTransmissionMode:').
    recoveredValue6 := (self) options.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := Association.
    recoveredValue9 := (recoveredValue8) key: ('RDBPI_RESPONSE_TYPE_USDT') value: ('putIn:rdbpiResponseTypeUsdt:').
    (recoveredValue7) add: (recoveredValue9).
    recoveredValue10 := recoveredValue6.
    recoveredValue11 := Association.
    recoveredValue12 := (recoveredValue11) key: ('RDBPI_RESPONSE_TYPE_UUDT') value: ('putIn:rdbpiResponseTypeUudt:').
    (recoveredValue10) add: (recoveredValue12).
    recoveredValue13 := recoveredValue6.
    recoveredValue14 := Association.
    recoveredValue15 := (recoveredValue14) key: ('TRANSMISSION_MODE') value: ('putIn:transmissionMode:').
    (recoveredValue13) add: (recoveredValue15).
    recoveredValue16 := recoveredValue6.
    recoveredValue17 := Association.
    recoveredValue18 := (recoveredValue17) key: ('AVAILABLE_PERIODIC_IDENTIFIER_RANGE') value: ('putIn:availablePeriodicIdentifierRange:').
    (recoveredValue16) add: (recoveredValue18).
    ^self
! !

