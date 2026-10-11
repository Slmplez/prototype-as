"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002033c; bytecode file offset 0x92209c"
!ASAP2ChecksumParameter1 class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'checksumType:' 'checksumCalculation:')
! !

"ASDBase.ic method 0x20021848; bytecode file offset 0x92209c"
!ASAP2ChecksumParameter1 class methodsFor: 'recovered'!
keyWord
    ^'CHECKSUM_PARAM'
! !

"ASDBase.ic method 0x20091040; bytecode file offset 0x98d9dc"
!ASAP2ChecksumParameter1 class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b6698; bytecode file offset 0x9b39ac"
!ASAP2ChecksumParameter1 class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('checksumCalculation')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201f2ca8; bytecode file offset 0xaef814"
!ASAP2ChecksumParameter1 class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    (recoveredValue0) at: ('CHECKSUM_CALCULATION') put: ('getChecksumCalculation:').
    recoveredValue1 := options.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) key: ('CHECKSUM_CALCULATION') value: ('putIn:checksumCalculation:').
    (recoveredValue1) add: (recoveredValue3).
    ^self
! !

