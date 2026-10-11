"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001ee48; bytecode file offset 0x92209c"
!ASAP2CcpTPBlob class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'bytes:' 'version:' 'blobVersion:' 'canTxId:' 'canRxId:' 'address:' 'byteOrder:' 'canParam:' 'daqMode:' 'consistency:' 'addressExtension:' 'definedPages:' 'optionalCmd:' 'baudRate:' 'samplePoint:' 'sampleRate:' 'btlCycles:' 'sjw:' 'syncEdge:' 'bytesOnly:' 'checksumCalculation:' 'checksumType:' 'resumeSupported:' 'storeSupported:')
! !

"ASDBase.ic method 0x200b6488; bytecode file offset 0x9b39ac"
!ASAP2CcpTPBlob class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('version' 'blobVersion' 'canTxId' 'canRxId' 'address' 'byteOrder' 'canParam' 'daqMode' 'consistency' 'addressExtension' 'definedPages' 'optionalCmd' 'baudRate' 'samplePoint' 'sampleRate' 'btlCycles' 'sjw' 'syncEdge' 'bytesOnly' 'checksumCalculation' 'checksumType' 'resumeSupported' 'storeSupported')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7808; bytecode file offset 0x9b40c4"
!ASAP2CcpTPBlob class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (23).
    ^recoveredValue1
! !

"ASDBase.ic method 0x205b7d18; bytecode file offset 0xeb46b0"
!ASAP2CcpTPBlob class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('CAN_PARAM') put: ('getCanParam:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('DAQ_MODE') put: ('getDaqMode:').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('CONSISTENCY') put: ('getConsistency:').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) at: ('ADDRESS_EXTENSION') put: ('getAddressExtension:').
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) at: ('DEFINED_PAGES') put: ('getDefinedPages:').
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) at: ('OPTIONAL_CMD') put: ('getOptionalCmd:').
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) at: ('BAUDRATE') put: ('getBaudRate:').
    recoveredValue8 := recoveredValue0.
    (recoveredValue8) at: ('SAMPLE_POINT') put: ('getSamplePoint:').
    recoveredValue9 := recoveredValue0.
    (recoveredValue9) at: ('SAMPLE_RATE') put: ('getSampleRate:').
    recoveredValue10 := recoveredValue0.
    (recoveredValue10) at: ('BTL_CYCLES') put: ('getBtlCycles:').
    recoveredValue11 := recoveredValue0.
    (recoveredValue11) at: ('SJW') put: ('getSjw:').
    recoveredValue12 := recoveredValue0.
    (recoveredValue12) at: ('SYNC_EDGE') put: ('getSyncEdge:').
    recoveredValue13 := recoveredValue0.
    (recoveredValue13) at: ('BYTES_ONLY') put: ('getBytesOnly:').
    recoveredValue14 := recoveredValue0.
    (recoveredValue14) at: ('CHECKSUM_CALCULATION') put: ('getChecksumCalculation:').
    recoveredValue15 := recoveredValue0.
    (recoveredValue15) at: ('CHECKSUM_PARAM') put: ('getChecksumType:').
    recoveredValue16 := recoveredValue0.
    (recoveredValue16) at: ('RESUME_SUPPORTED') put: ('getResumeSupported:').
    (recoveredValue0) at: ('STORE_SUPPORTED') put: ('getStoreSupported:').
    recoveredValue17 := options.
    recoveredValue18 := recoveredValue17.
    recoveredValue19 := Association.
    recoveredValue20 := (recoveredValue19) key: ('CAN_PARAM') value: ('putIn:canParam:').
    (recoveredValue18) add: (recoveredValue20).
    recoveredValue21 := recoveredValue17.
    recoveredValue22 := Association.
    recoveredValue23 := (recoveredValue22) key: ('DAQ_MODE') value: ('putIn:daqMode:').
    (recoveredValue21) add: (recoveredValue23).
    recoveredValue24 := recoveredValue17.
    recoveredValue25 := Association.
    recoveredValue26 := (recoveredValue25) key: ('CONSISTENCY') value: ('putIn:consistency:').
    (recoveredValue24) add: (recoveredValue26).
    recoveredValue27 := recoveredValue17.
    recoveredValue28 := Association.
    recoveredValue29 := (recoveredValue28) key: ('ADDRESS_EXTENSION') value: ('putIn:addressExtension:').
    (recoveredValue27) add: (recoveredValue29).
    recoveredValue30 := recoveredValue17.
    recoveredValue31 := Association.
    recoveredValue32 := (recoveredValue31) key: ('DEFINED_PAGES') value: ('putIn:definedPages:').
    (recoveredValue30) add: (recoveredValue32).
    recoveredValue33 := recoveredValue17.
    recoveredValue34 := Association.
    recoveredValue35 := (recoveredValue34) key: ('OPTIONAL_CMD') value: ('putIn:optionalCmd:').
    (recoveredValue33) add: (recoveredValue35).
    recoveredValue36 := recoveredValue17.
    recoveredValue37 := Association.
    recoveredValue38 := (recoveredValue37) key: ('BAUDRATE') value: ('putIn:baudRate:').
    (recoveredValue36) add: (recoveredValue38).
    recoveredValue39 := recoveredValue17.
    recoveredValue40 := Association.
    recoveredValue41 := (recoveredValue40) key: ('SAMPLE_POINT') value: ('putIn:samplePoint:').
    (recoveredValue39) add: (recoveredValue41).
    recoveredValue42 := recoveredValue17.
    recoveredValue43 := Association.
    recoveredValue44 := (recoveredValue43) key: ('SAMPLE_RATE') value: ('putIn:sampleRate:').
    (recoveredValue42) add: (recoveredValue44).
    recoveredValue45 := recoveredValue17.
    recoveredValue46 := Association.
    recoveredValue47 := (recoveredValue46) key: ('BTL_CYCLES') value: ('putIn:btlCycles:').
    (recoveredValue45) add: (recoveredValue47).
    recoveredValue48 := recoveredValue17.
    recoveredValue49 := Association.
    recoveredValue50 := (recoveredValue49) key: ('SJW') value: ('putIn:sjw:').
    (recoveredValue48) add: (recoveredValue50).
    recoveredValue51 := recoveredValue17.
    recoveredValue52 := Association.
    recoveredValue53 := (recoveredValue52) key: ('SYNC_EDGE') value: ('putIn:syncEdge:').
    (recoveredValue51) add: (recoveredValue53).
    recoveredValue54 := recoveredValue17.
    recoveredValue55 := Association.
    recoveredValue56 := (recoveredValue55) key: ('BYTES_ONLY') value: ('putIn:bytesOnly:').
    (recoveredValue54) add: (recoveredValue56).
    recoveredValue57 := recoveredValue17.
    recoveredValue58 := Association.
    recoveredValue59 := (recoveredValue58) key: ('CHECKSUM_CALCULATION') value: ('putIn:checksumCalculation:').
    (recoveredValue57) add: (recoveredValue59).
    recoveredValue60 := recoveredValue17.
    recoveredValue61 := Association.
    recoveredValue62 := (recoveredValue61) key: ('CHECKSUM_PARAM') value: ('putIn:checksumType:').
    (recoveredValue60) add: (recoveredValue62).
    recoveredValue63 := recoveredValue17.
    recoveredValue64 := Association.
    recoveredValue65 := (recoveredValue64) key: ('RESUME_SUPPORTED') value: ('putIn:resumeSupported:').
    (recoveredValue63) add: (recoveredValue65).
    recoveredValue66 := Association.
    recoveredValue67 := (recoveredValue66) key: ('STORE_SUPPORTED') value: ('putIn:storeSupported:').
    (recoveredValue17) add: (recoveredValue67).
    ^self
! !

