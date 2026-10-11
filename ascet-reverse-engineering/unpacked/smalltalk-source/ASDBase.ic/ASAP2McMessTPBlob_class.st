"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20018ff8; bytecode file offset 0x92209c"
!ASAP2McMessTPBlob class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'bytes:' 'version:' 'komKen:' 'mctgt:' 'mcini:' 'wfsidle0:' 'wfsidle1:' 'wfs5b:' 'checksumParameter:' 'definedPages:' 'byteOrder:' 'threeByteAddresses:' 'copyFlashToRamByCommand:' 'cylNumber:' 'cylCounterName:' 'cylSequence:' 'exramOffset:' 'vsDef:' 'pseudoAddress:')
! !

"ASDBase.ic method 0x200b6e18; bytecode file offset 0x9b39ac"
!ASAP2McMessTPBlob class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('version' 'komKen' 'mctgt' 'mcini' 'wfsidle0' 'wfsidle1' 'wfs5b' 'checksumParameter' 'definedPages' 'byteOrder' 'threeByteAddresses' 'copyFlashToRamByCommand' 'cylNumber' 'cylCounterName' 'cylSequence' 'exramOffset' 'vsDef' 'pseudoAddress')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b77c0; bytecode file offset 0x9b408c"
!ASAP2McMessTPBlob class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (18).
    ^recoveredValue1
! !

"ASDBase.ic method 0x205b7f44; bytecode file offset 0xeb48dc"
!ASAP2McMessTPBlob class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('KOMKEN') put: ('getKomKen:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('MCTGT') put: ('getMctgt:').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('MCINI') put: ('getMcini:').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) at: ('WFSIDLE0') put: ('getWfsidle0:').
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) at: ('WFSIDLE1') put: ('getWfsidle1:').
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) at: ('DEFINED_PAGES') put: ('getDefinedPages:').
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) at: ('WFS5B') put: ('getWfs5b:').
    recoveredValue8 := recoveredValue0.
    (recoveredValue8) at: ('BYTE_ORDER') put: ('getByteOrder:').
    recoveredValue9 := recoveredValue0.
    (recoveredValue9) at: ('THREE_BYTE_ADDRESSES') put: ('getThreeByteAddresses:').
    recoveredValue10 := recoveredValue0.
    (recoveredValue10) at: ('CHECKSUM_PARAM') put: ('getChecksumType:').
    recoveredValue11 := recoveredValue0.
    (recoveredValue11) at: ('COPY_FLASH_TO_RAM_BY_COMMAND') put: ('getCopyFlashToRamByCommand:').
    recoveredValue12 := recoveredValue0.
    (recoveredValue12) at: ('NOOFCYL') put: ('getCylNumber:').
    recoveredValue13 := recoveredValue0.
    (recoveredValue13) at: ('CYLCNAME') put: ('getCylCounterName:').
    recoveredValue14 := recoveredValue0.
    (recoveredValue14) at: ('CYLSEQU') put: ('getCylSequence:').
    recoveredValue15 := recoveredValue0.
    (recoveredValue15) at: ('XRAMOF') put: ('getExramOffset:').
    recoveredValue16 := recoveredValue0.
    (recoveredValue16) at: ('VS_DEF') put: ('getVsDef:').
    (recoveredValue0) at: ('PSEUDO_ADR') put: ('getPseudoAddress:').
    recoveredValue17 := options.
    recoveredValue18 := recoveredValue17.
    recoveredValue19 := Association.
    recoveredValue20 := (recoveredValue19) key: ('KOMKEN') value: ('putIn:komKen:').
    (recoveredValue18) add: (recoveredValue20).
    recoveredValue21 := recoveredValue17.
    recoveredValue22 := Association.
    recoveredValue23 := (recoveredValue22) key: ('MCTGT') value: ('putIn:mctgt:').
    (recoveredValue21) add: (recoveredValue23).
    recoveredValue24 := recoveredValue17.
    recoveredValue25 := Association.
    recoveredValue26 := (recoveredValue25) key: ('MCINI') value: ('putIn:mcini:').
    (recoveredValue24) add: (recoveredValue26).
    recoveredValue27 := recoveredValue17.
    recoveredValue28 := Association.
    recoveredValue29 := (recoveredValue28) key: ('WFSIDLE0') value: ('putIn:wfsidle0:').
    (recoveredValue27) add: (recoveredValue29).
    recoveredValue30 := recoveredValue17.
    recoveredValue31 := Association.
    recoveredValue32 := (recoveredValue31) key: ('WFSIDLE1') value: ('putIn:wfsidle1:').
    (recoveredValue30) add: (recoveredValue32).
    recoveredValue33 := recoveredValue17.
    recoveredValue34 := Association.
    recoveredValue35 := (recoveredValue34) key: ('DEFINED_PAGES') value: ('putIn:definedPages:').
    (recoveredValue33) add: (recoveredValue35).
    recoveredValue36 := recoveredValue17.
    recoveredValue37 := Association.
    recoveredValue38 := (recoveredValue37) key: ('WFS5B') value: ('putIn:wfs5b:').
    (recoveredValue36) add: (recoveredValue38).
    recoveredValue39 := recoveredValue17.
    recoveredValue40 := Association.
    recoveredValue41 := (recoveredValue40) key: ('CHECKSUM_PARAM') value: ('putIn:checksumType:').
    (recoveredValue39) add: (recoveredValue41).
    recoveredValue42 := recoveredValue17.
    recoveredValue43 := Association.
    recoveredValue44 := (recoveredValue43) key: ('BYTE_ORDER') value: ('putIn:byteOrder:').
    (recoveredValue42) add: (recoveredValue44).
    recoveredValue45 := recoveredValue17.
    recoveredValue46 := Association.
    recoveredValue47 := (recoveredValue46) key: ('THREE_BYTE_ADDRESSES') value: ('putIn:threeByteAddresses:').
    (recoveredValue45) add: (recoveredValue47).
    recoveredValue48 := recoveredValue17.
    recoveredValue49 := Association.
    recoveredValue50 := (recoveredValue49) key: ('COPY_FLASH_TO_RAM_BY_COMMAND') value: ('putIn:copyFlashToRamByCommand:').
    (recoveredValue48) add: (recoveredValue50).
    recoveredValue51 := recoveredValue17.
    recoveredValue52 := Association.
    recoveredValue53 := (recoveredValue52) key: ('NOOFCYL') value: ('putIn:cylNumber:').
    (recoveredValue51) add: (recoveredValue53).
    recoveredValue54 := recoveredValue17.
    recoveredValue55 := Association.
    recoveredValue56 := (recoveredValue55) key: ('CYLCNAME') value: ('putIn:cylCounterName:').
    (recoveredValue54) add: (recoveredValue56).
    recoveredValue57 := recoveredValue17.
    recoveredValue58 := Association.
    recoveredValue59 := (recoveredValue58) key: ('CYLSEQU') value: ('putIn:cylSequence:').
    (recoveredValue57) add: (recoveredValue59).
    recoveredValue60 := recoveredValue17.
    recoveredValue61 := Association.
    recoveredValue62 := (recoveredValue61) key: ('XRAMOF') value: ('putIn:exramOffset:').
    (recoveredValue60) add: (recoveredValue62).
    recoveredValue63 := recoveredValue17.
    recoveredValue64 := Association.
    recoveredValue65 := (recoveredValue64) key: ('VS_DEF') value: ('putIn:vsDef:').
    (recoveredValue63) add: (recoveredValue65).
    recoveredValue66 := Association.
    recoveredValue67 := (recoveredValue66) key: ('PSEUDO_ADR') value: ('putIn:pseudoAddress:').
    (recoveredValue17) add: (recoveredValue67).
    ^self
! !

