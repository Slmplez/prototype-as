"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20017d74; bytecode file offset 0x92209c"
!ASAP2CanDescription class methodsFor: 'recovered'!
members
    ^#('baudRate' 'samplePoint' 'samplesPerBit' 'btlCycles' 'sjw' 'syncEdge' 'addressStruct' 'networkLimits' 'startStop' 'testerPresentOptions' 'accessTimingParameterOptions')
! !

"ASDBase.ic method 0x20027070; bytecode file offset 0x923928"
!ASAP2CanDescription class methodsFor: 'recovered'!
keyWord
    ^'CAN'
! !

"ASDBase.ic method 0x200274ac; bytecode file offset 0x923d60"
!ASAP2CanDescription class methodsFor: 'recovered'!
fixedSize
    ^11
! !

"ASDBase.ic method 0x2042dc6c; bytecode file offset 0xd2a57c"
!ASAP2CanDescription class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('ADDRESS') put: ('getAddressStruct:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('NETWORK_LIMITS') put: ('getNetworkLimits:').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('START_STOP') put: ('getStartStop:').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) at: ('TesterPresentOptions') put: ('getTesterPresentOptions:').
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) at: ('AccessTimingParameterOptions') put: ('getAccessTimingParameterOptions:').
    recoveredValue6 := (self) options.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := Association.
    recoveredValue9 := (recoveredValue8) key: ('ADDRESS') value: ('putIn:addressStruct:').
    (recoveredValue7) add: (recoveredValue9).
    recoveredValue10 := recoveredValue6.
    recoveredValue11 := Association.
    recoveredValue12 := (recoveredValue11) key: ('NETWORK_LIMITS') value: ('putIn:networkLimits:').
    (recoveredValue10) add: (recoveredValue12).
    recoveredValue13 := recoveredValue6.
    recoveredValue14 := Association.
    recoveredValue15 := (recoveredValue14) key: ('START_STOP') value: ('putIn:startStop:').
    (recoveredValue13) add: (recoveredValue15).
    recoveredValue16 := recoveredValue6.
    recoveredValue17 := Association.
    recoveredValue18 := (recoveredValue17) key: ('TesterPresentOptions') value: ('putIn:testerPresentOptions:').
    (recoveredValue16) add: (recoveredValue18).
    recoveredValue19 := Association.
    recoveredValue20 := (recoveredValue19) key: ('AccessTimingParameterOptions') value: ('putIn:accessTimingParameterOptions:').
    (recoveredValue6) add: (recoveredValue20).
    ^self
! !

