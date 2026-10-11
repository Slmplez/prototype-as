"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20026cf8; bytecode file offset 0x923928"
!ASAP2Kwp2000TPBlob class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'bytes:' 'version:' 'ecuAddress:' 'requiredTesterAddress:' 'stimulationMode:' 'byteOrder:' 'startSession:' 'projectBaseAddress:' 'seram:' 'checksumType:' 'flashCopy:' 'baudDefinition:' 'timeDefinition:' 'securityAccess:' 'diagBaud:' 'dataAccess:' 'pageSwitch:' 'kwp2000Version:' 'canDescription:' 'flash:' 'copy:')
! !

"ASDBase.ic method 0x200b6ea8; bytecode file offset 0x9b39ac"
!ASAP2Kwp2000TPBlob class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('version' 'ecuAddress' 'requiredTesterAddress' 'stimulationMode' 'byteOrder' 'startSession' 'projectBaseAddress' 'seram' 'checksumType' 'flashCopy' 'baudDefinition' 'timeDefinition' 'securityAccess' 'diagBaud' 'dataAccess' 'pageSwitch' 'kwp2000Version' 'canDescription' 'flash' 'copy' 'session' 'startStop' 'baudrate' 'addressAndLengthFormatIdentifier' 'upload')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d592c; bytecode file offset 0x9d21e8"
!ASAP2Kwp2000TPBlob class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (25).
    recoveredValue2 := (recoveredValue1) + (1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x205d5e34; bytecode file offset 0xed27e0"
!ASAP2Kwp2000TPBlob class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('BAUD_DEF') put: ('getBaudDefinition:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('TIME_DEF') put: ('getTimeDefinition:').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('SECURITY_ACCESS') put: ('getSecurityAccess:').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) at: ('SERAM') put: ('getSeram:').
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) at: ('CHECKSUM') put: ('getChecksumType:').
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) at: ('FLASH_COPY') put: ('getFlashCopy:').
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) at: ('DIAG_BAUD') put: ('getDiagBaud:').
    recoveredValue8 := recoveredValue0.
    (recoveredValue8) at: ('DATA_ACCESS') put: ('getDataAccess:').
    (recoveredValue0) at: ('PAGE_SWITCH') put: ('getPageSwitch:').
    recoveredValue9 := (self) keyWords.
    recoveredValue10 := recoveredValue9.
    (recoveredValue10) at: ('CAN') put: ('getCan:').
    recoveredValue11 := recoveredValue9.
    (recoveredValue11) at: ('COPY') put: ('getCopy:').
    recoveredValue12 := recoveredValue9.
    (recoveredValue12) at: ('K_LINE') put: ('getKLine:').
    (recoveredValue9) at: ('FLASH') put: ('getFlash:').
    recoveredValue13 := (self) keyWords.
    (recoveredValue13) at: ('SESSION') put: ('getSession:').
    recoveredValue14 := (self) keyWords.
    (recoveredValue14) at: ('START_STOP') put: ('getStartStop:').
    recoveredValue15 := (self) keyWords.
    (recoveredValue15) at: ('BAUDRATE') put: ('getBaudRate:').
    recoveredValue16 := (self) keyWords.
    (recoveredValue16) at: ('UPLOAD') put: ('getUpload:').
    recoveredValue17 := (self) keyWords.
    (recoveredValue17) at: ('ADDRESS_AND_LENGTH_FORMAT_IDENTIFIER') put: ('getAddressAndLengthFormatIdentifier:').
    recoveredValue18 := options.
    recoveredValue19 := recoveredValue18.
    recoveredValue20 := Association.
    recoveredValue21 := (recoveredValue20) key: ('BAUD_DEF') value: ('putIn:baudDefinition:').
    (recoveredValue19) add: (recoveredValue21).
    recoveredValue22 := recoveredValue18.
    recoveredValue23 := Association.
    recoveredValue24 := (recoveredValue23) key: ('TIME_DEF') value: ('putIn:timeDefinition:').
    (recoveredValue22) add: (recoveredValue24).
    recoveredValue25 := recoveredValue18.
    recoveredValue26 := Association.
    recoveredValue27 := (recoveredValue26) key: ('SECURITY_ACCESS') value: ('putIn:securityAccess:').
    (recoveredValue25) add: (recoveredValue27).
    recoveredValue28 := recoveredValue18.
    recoveredValue29 := Association.
    recoveredValue30 := (recoveredValue29) key: ('SERAM') value: ('putIn:seram:').
    (recoveredValue28) add: (recoveredValue30).
    recoveredValue31 := recoveredValue18.
    recoveredValue32 := Association.
    recoveredValue33 := (recoveredValue32) key: ('CHECKSUM') value: ('putIn:checksumType:').
    (recoveredValue31) add: (recoveredValue33).
    recoveredValue34 := recoveredValue18.
    recoveredValue35 := Association.
    recoveredValue36 := (recoveredValue35) key: ('FLASH_COPY') value: ('putIn:flashCopy:').
    (recoveredValue34) add: (recoveredValue36).
    recoveredValue37 := recoveredValue18.
    recoveredValue38 := Association.
    recoveredValue39 := (recoveredValue38) key: ('DIAG_BAUD') value: ('putIn:diagBaud:').
    (recoveredValue37) add: (recoveredValue39).
    recoveredValue40 := recoveredValue18.
    recoveredValue41 := Association.
    recoveredValue42 := (recoveredValue41) key: ('DATA_ACCESS') value: ('putIn:dataAccess:').
    (recoveredValue40) add: (recoveredValue42).
    recoveredValue43 := Association.
    recoveredValue44 := (recoveredValue43) key: ('PAGE_SWITCH') value: ('putIn:pageSwitch:').
    (recoveredValue18) add: (recoveredValue44).
    recoveredValue45 := (self) options.
    recoveredValue46 := recoveredValue45.
    recoveredValue47 := Association.
    recoveredValue48 := (recoveredValue47) key: ('CAN') value: ('putIn:can:').
    (recoveredValue46) add: (recoveredValue48).
    recoveredValue49 := recoveredValue45.
    recoveredValue50 := Association.
    recoveredValue51 := (recoveredValue50) key: ('COPY') value: ('putIn:copy:').
    (recoveredValue49) add: (recoveredValue51).
    recoveredValue52 := recoveredValue45.
    recoveredValue53 := Association.
    recoveredValue54 := (recoveredValue53) key: ('K_LINE') value: ('putIn:kline:').
    (recoveredValue52) add: (recoveredValue54).
    recoveredValue55 := Association.
    recoveredValue56 := (recoveredValue55) key: ('FLASH') value: ('putIn:flash:').
    (recoveredValue45) add: (recoveredValue56).
    recoveredValue57 := (self) options.
    recoveredValue58 := Association.
    recoveredValue59 := (recoveredValue58) key: ('SESSION') value: ('putIn:session:').
    (recoveredValue57) add: (recoveredValue59).
    recoveredValue60 := (self) options.
    recoveredValue61 := Association.
    recoveredValue62 := (recoveredValue61) key: ('START_STOP') value: ('putIn:startStop:').
    (recoveredValue60) add: (recoveredValue62).
    recoveredValue63 := (self) options.
    recoveredValue64 := recoveredValue63.
    recoveredValue65 := Association.
    recoveredValue66 := (recoveredValue65) key: ('BAUDRATE') value: ('putIn:baudRate:').
    (recoveredValue64) add: (recoveredValue66).
    recoveredValue67 := recoveredValue63.
    recoveredValue68 := Association.
    recoveredValue69 := (recoveredValue68) key: ('ADDRESS_AND_LENGTH_FORMAT_IDENTIFIER') value: ('putIn:addressAndLengthFormatIdentifier:').
    (recoveredValue67) add: (recoveredValue69).
    recoveredValue70 := recoveredValue63.
    recoveredValue71 := Association.
    recoveredValue72 := (recoveredValue71) key: ('UPLOAD') value: ('putIn:upload:').
    (recoveredValue70) add: (recoveredValue72).
    ^self
! !

