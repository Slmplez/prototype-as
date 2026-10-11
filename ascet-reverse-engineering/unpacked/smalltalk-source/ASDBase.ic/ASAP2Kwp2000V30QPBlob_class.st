"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20019af0; bytecode file offset 0x92209c"
!ASAP2Kwp2000V30QPBlob class methodsFor: 'recovered'!
members
    ^#('version' 'addressMode' 'blockMode' 'freeRunningMode')
! !

"ASDBase.ic method 0x20072e20; bytecode file offset 0x96f6d4"
!ASAP2Kwp2000V30QPBlob class methodsFor: 'recovered'!
fixedSize
    ^4
! !

"ASDBase.ic method 0x20344544; bytecode file offset 0xc40e44"
!ASAP2Kwp2000V30QPBlob class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('ADDRESSMODE') put: ('getAddressMode:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('BLOCKMODE') put: ('getBlockMode:').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('FREERUNNINGMODE') put: ('getFreeRunningMode:').
    (recoveredValue0) at: ('QP_BLOB_VERSION') put: ('getVersion:').
    recoveredValue4 := (self) options.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := Association.
    recoveredValue7 := (recoveredValue6) key: ('QP_BLOB_VERSION') value: ('putIn:version:').
    (recoveredValue5) add: (recoveredValue7).
    recoveredValue8 := Association.
    recoveredValue9 := (recoveredValue8) key: ('MODE') value: ('putIn:mode:').
    (recoveredValue4) add: (recoveredValue9).
    ^self
! !

