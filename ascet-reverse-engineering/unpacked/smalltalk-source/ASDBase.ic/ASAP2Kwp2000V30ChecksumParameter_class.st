"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20073c68; bytecode file offset 0x970b34"
!ASAP2Kwp2000V30ChecksumParameter class methodsFor: 'recovered'!
emBehaviorId
    ^nil
! !

"ASDBase.ic method 0x20260470; bytecode file offset 0xb5cd58"
!ASAP2Kwp2000V30ChecksumParameter class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    (recoveredValue0) at: ('CHECKSUM_RESULT') put: ('getChecksumResult:').
    recoveredValue1 := (self) options.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) options.
    recoveredValue4 := (recoveredValue3) last.
    (recoveredValue2) remove: (recoveredValue4).
    recoveredValue5 := Association.
    recoveredValue6 := (recoveredValue5) key: ('CHECKSUM_RESULT') value: ('putIn:checksumResult:').
    (recoveredValue1) add: (recoveredValue6).
    ^self
! !

