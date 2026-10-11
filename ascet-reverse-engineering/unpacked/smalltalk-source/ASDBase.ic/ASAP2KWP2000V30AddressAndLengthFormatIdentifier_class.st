"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016184; bytecode file offset 0x92209c"
!ASAP2KWP2000V30AddressAndLengthFormatIdentifier class methodsFor: 'recovered'!
keyWord
    ^'ADDRESS_AND_LENGTH_FORMAT_IDENTIFIER'
! !

"ASDBase.ic method 0x20020ec4; bytecode file offset 0x92209c"
!ASAP2KWP2000V30AddressAndLengthFormatIdentifier class methodsFor: 'recovered'!
members
    ^#('generalSetting' 'aalfiForChecksumCalculation' 'aalfiForEraseMemory' 'aalfiForWriteMemoryByAddr' 'aalfiForReadMemoryByAddr' 'aalfiForDynamicallyDefineDataId' 'aalfiForRequestDownload')
! !

"ASDBase.ic method 0x200742c4; bytecode file offset 0x970bc8"
!ASAP2KWP2000V30AddressAndLengthFormatIdentifier class methodsFor: 'recovered'!
fixedSize
    ^7
! !

"ASDBase.ic method 0x20477108; bytecode file offset 0xd73a24"
!ASAP2KWP2000V30AddressAndLengthFormatIdentifier class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('AALFI_FOR_CHECKSUM_CALCULATION') put: ('getAalfiForChecksumCalculation:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('AALFI_FOR_ERASE_MEMORY') put: ('getAalfiForEraseMemory:').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('AALFI_FOR_WRITE_MEMORY_BY_ADDR') put: ('getAalfiForWriteMemoryByAddr:').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) at: ('AALFI_FOR_READ_MEMORY_BY_ADDR') put: ('getAalfiForReadMemoryByAddr:').
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) at: ('AALFI_FOR_DYNAMICALLY_DEFINE_DATA_ID') put: ('getAalfiForDynamicallyDefineDataId:').
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) at: ('AALFI_FOR_REQUEST_DOWNLOAD') put: ('getAalfiForRequestDownload:').
    recoveredValue7 := (self) options.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := Association.
    recoveredValue10 := (recoveredValue9) key: ('AALFI_FOR_CHECKSUM_CALCULATION') value: ('putIn:aalfiForChecksumCalculation:').
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue7.
    recoveredValue12 := Association.
    recoveredValue13 := (recoveredValue12) key: ('AALFI_FOR_ERASE_MEMORY') value: ('putIn:aalfiForEraseMemory:').
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := recoveredValue7.
    recoveredValue15 := Association.
    recoveredValue16 := (recoveredValue15) key: ('AALFI_FOR_WRITE_MEMORY_BY_ADDR') value: ('putIn:aalfiForWriteMemoryByAddr:').
    (recoveredValue14) add: (recoveredValue16).
    recoveredValue17 := recoveredValue7.
    recoveredValue18 := Association.
    recoveredValue19 := (recoveredValue18) key: ('AALFI_FOR_READ_MEMORY_BY_ADDR') value: ('putIn:aalfiForReadMemoryByAddr:').
    (recoveredValue17) add: (recoveredValue19).
    recoveredValue20 := recoveredValue7.
    recoveredValue21 := Association.
    recoveredValue22 := (recoveredValue21) key: ('AALFI_FOR_DYNAMICALLY_DEFINE_DATA_ID') value: ('putIn:aalfiForDynamicallyDefineDataId:').
    (recoveredValue20) add: (recoveredValue22).
    recoveredValue23 := recoveredValue7.
    recoveredValue24 := Association.
    recoveredValue25 := (recoveredValue24) key: ('AALFI_FOR_REQUEST_DOWNLOAD') value: ('putIn:aalfiForRequestDownload:').
    (recoveredValue23) add: (recoveredValue25).
    ^self
! !

