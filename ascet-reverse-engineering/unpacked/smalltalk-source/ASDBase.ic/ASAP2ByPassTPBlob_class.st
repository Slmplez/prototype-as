"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200b5f30; bytecode file offset 0x9b39ac"
!ASAP2ByPassTPBlob class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('byPassVersion' 'tpBlobVersion' 'byPassConfiguration' 'farAddress' 'addressMapping')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7590; bytecode file offset 0x9b3e8c"
!ASAP2ByPassTPBlob class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20359cfc; bytecode file offset 0xc56740"
!ASAP2ByPassTPBlob class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('BYPASS_CONFIGURATION') put: ('getByPassConfiguration:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('FAR_ADDRESS') put: ('getFarAddress:').
    (recoveredValue0) at: ('ADDRESS_MAPPING') put: ('getAddressMapping:').
    recoveredValue3 := options.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := Association.
    recoveredValue6 := (recoveredValue5) key: ('BYPASS_CONFIGURATION') value: ('putIn:byPassConfiguration:').
    (recoveredValue4) add: (recoveredValue6).
    recoveredValue7 := recoveredValue3.
    recoveredValue8 := Association.
    recoveredValue9 := (recoveredValue8) key: ('FAR_ADDRESS') value: ('putIn:farAddress:').
    (recoveredValue7) add: (recoveredValue9).
    recoveredValue10 := Association.
    recoveredValue11 := (recoveredValue10) key: ('ADDRESS_MAPPING') value: ('putIn:addressMapping:').
    (recoveredValue3) add: (recoveredValue11).
    ^self
! !

