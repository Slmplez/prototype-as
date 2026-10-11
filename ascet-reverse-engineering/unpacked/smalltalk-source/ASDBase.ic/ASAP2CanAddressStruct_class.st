"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001b020; bytecode file offset 0x92209c"
!ASAP2CanAddressStruct class methodsFor: 'recovered'!
members
    ^#('canIdEcu' 'canIdInca' 'tgtEcuAdr' 'tgtIncaAdr')
! !

"ASDBase.ic method 0x2002605c; bytecode file offset 0x923928"
!ASAP2CanAddressStruct class methodsFor: 'recovered'!
keyWord
    ^'ADDRESS'
! !

"ASDBase.ic method 0x20072b58; bytecode file offset 0x96f6d4"
!ASAP2CanAddressStruct class methodsFor: 'recovered'!
fixedSize
    ^4
! !

"ASDBase.ic method 0x202ceb08; bytecode file offset 0xbcb474"
!ASAP2CanAddressStruct class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('TGT_ECU') put: ('getTgtEcu:').
    (recoveredValue0) at: ('TGT_INCA') put: ('getTgtInca:').
    recoveredValue2 := (self) options.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := Association.
    recoveredValue5 := (recoveredValue4) key: ('TGT_ECU') value: ('putIn:tgtEcu:').
    (recoveredValue3) add: (recoveredValue5).
    recoveredValue6 := Association.
    recoveredValue7 := (recoveredValue6) key: ('TGT_INCA') value: ('putIn:tgtInca:').
    (recoveredValue2) add: (recoveredValue7).
    ^self
! !

