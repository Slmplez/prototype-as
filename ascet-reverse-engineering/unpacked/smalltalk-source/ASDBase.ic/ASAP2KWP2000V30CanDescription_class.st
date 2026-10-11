"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200b5fc0; bytecode file offset 0x9b39ac"
!ASAP2KWP2000V30CanDescription class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('transportProtocolVersion' 'addressAndLengthFormatIdentifier' 'usdtpTiming' 'usdtpTimingDefaults')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7424; bytecode file offset 0x9b3da0"
!ASAP2KWP2000V30CanDescription class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (4).
    ^recoveredValue1
! !

"ASDBase.ic method 0x204ee82c; bytecode file offset 0xdeb168"
!ASAP2KWP2000V30CanDescription class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('SamplePoint') put: ('getSamplePoint:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('SamplesPerBit') put: ('getSamplesPerBit:').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('BTL_CYCLES') put: ('getBtlCycles:').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) at: ('SJW') put: ('getSjw:').
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) at: ('SYNC_EDGE') put: ('getSyncEdge:').
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) at: ('TransportProtocolVersion') put: ('getTransportProtocolVersion:').
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) at: ('ADDRESS_AND_LENGTH_FORMAT_IDENTIFIER') put: ('getAddressAndLengthFormatIdentifier:').
    recoveredValue8 := recoveredValue0.
    (recoveredValue8) at: ('USDTP_TIMING') put: ('getUsdtpTiming:').
    recoveredValue9 := recoveredValue0.
    (recoveredValue9) at: ('USDTP_TIMING_DEFAULTS') put: ('getUsdtpTimingDefaults:').
    recoveredValue10 := (self) options.
    recoveredValue11 := recoveredValue10.
    recoveredValue12 := Association.
    recoveredValue13 := (recoveredValue12) key: ('SamplePoint') value: ('putIn:samplePoint:').
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := recoveredValue10.
    recoveredValue15 := Association.
    recoveredValue16 := (recoveredValue15) key: ('SamplesPerBit') value: ('putIn:samplesPerBit:').
    (recoveredValue14) add: (recoveredValue16).
    recoveredValue17 := recoveredValue10.
    recoveredValue18 := Association.
    recoveredValue19 := (recoveredValue18) key: ('BTL_CYCLES') value: ('putIn:btlCycles:').
    (recoveredValue17) add: (recoveredValue19).
    recoveredValue20 := recoveredValue10.
    recoveredValue21 := Association.
    recoveredValue22 := (recoveredValue21) key: ('SJW') value: ('putIn:sjw:').
    (recoveredValue20) add: (recoveredValue22).
    recoveredValue23 := recoveredValue10.
    recoveredValue24 := Association.
    recoveredValue25 := (recoveredValue24) key: ('SYNC_EDGE') value: ('putIn:syncEdge:').
    (recoveredValue23) add: (recoveredValue25).
    recoveredValue26 := recoveredValue10.
    recoveredValue27 := Association.
    recoveredValue28 := (recoveredValue27) key: ('TransportProtocolVersion') value: ('putIn:transportProtocolVersion:').
    (recoveredValue26) add: (recoveredValue28).
    recoveredValue29 := recoveredValue10.
    recoveredValue30 := Association.
    recoveredValue31 := (recoveredValue30) key: ('ADDRESS_AND_LENGTH_FORMAT_IDENTIFIER') value: ('putIn:addressAndLengthFormatIdentifier:').
    (recoveredValue29) add: (recoveredValue31).
    recoveredValue32 := recoveredValue10.
    recoveredValue33 := Association.
    recoveredValue34 := (recoveredValue33) key: ('USDTP_TIMING') value: ('putIn:usdtpTiming:').
    (recoveredValue32) add: (recoveredValue34).
    ^self
! !

