"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20019e98; bytecode file offset 0x92209c"
!ASAP2FlashCopyParameter class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'copyRamToFlashMode:' 'noOfLocalRoutine:' 'routineResult:' 'rncResult:' 'copyFlashToRamMode:' 'diagnosticRamToFlashMode:' 'copyFrame:' 'rncResult:' 'copyParameter:')
! !

"ASDBase.ic method 0x200249c8; bytecode file offset 0x92209c"
!ASAP2FlashCopyParameter class methodsFor: 'recovered'!
keyWord
    ^'FLASH_COPY'
! !

"ASDBase.ic method 0x200b6ce0; bytecode file offset 0x9b39ac"
!ASAP2FlashCopyParameter class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('copyRamToFlashMode' 'noOfLocalRoutine' 'routineResult' 'rncResult' 'copyFlashToRamMode' 'diagnosticRamToFlashMode' 'copyFrame' 'rncResult' 'copyParameter')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b76c4; bytecode file offset 0x9b3f80"
!ASAP2FlashCopyParameter class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (8).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2036244c; bytecode file offset 0xc5ed44"
!ASAP2FlashCopyParameter class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('COPY_FRAME') put: ('getCopyFrame:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('COPY_PARA') put: ('getCopyParameter:').
    (recoveredValue0) at: ('RNC_RESULT') put: ('getRncResult:').
    recoveredValue3 := (self) options.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := Association.
    recoveredValue6 := (recoveredValue5) key: ('COPY_FRAME') value: ('putIn:copyFrame:').
    (recoveredValue4) add: (recoveredValue6).
    recoveredValue7 := recoveredValue3.
    recoveredValue8 := Association.
    recoveredValue9 := (recoveredValue8) key: ('COPY_PARA') value: ('putIn:copyParameter:').
    (recoveredValue7) add: (recoveredValue9).
    recoveredValue10 := Association.
    recoveredValue11 := (recoveredValue10) key: ('RNC_RESULT') value: ('putIn:rncResult:').
    (recoveredValue3) add: (recoveredValue11).
    ^self
! !

