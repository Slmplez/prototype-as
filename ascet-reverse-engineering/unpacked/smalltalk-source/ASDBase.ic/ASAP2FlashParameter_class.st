"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001d288; bytecode file offset 0x92209c"
!ASAP2FlashParameter class methodsFor: 'recovered'!
keyWord
    ^'FLASH'
! !

"ASDBase.ic method 0x200b6b90; bytecode file offset 0x9b39ac"
!ASAP2FlashParameter class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('noOfLocalRoutine' 'routineResult' 'rncResult' 'copyRamToFlashMode' 'copyFrame')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7560; bytecode file offset 0x9b3e8c"
!ASAP2FlashParameter class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x202ceb48; bytecode file offset 0xbcb474"
!ASAP2FlashParameter class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('COPY_FRAME') put: ('getCopyFrame:').
    (recoveredValue0) at: ('RNC_RESULT') put: ('getRncResult:').
    recoveredValue2 := (self) options.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := Association.
    recoveredValue5 := (recoveredValue4) key: ('COPY_FRAME') value: ('putIn:copyFrame:').
    (recoveredValue3) add: (recoveredValue5).
    recoveredValue6 := Association.
    recoveredValue7 := (recoveredValue6) key: ('RNC_RESULT') value: ('putIn:rncResult:').
    (recoveredValue2) add: (recoveredValue7).
    ^self
! !

