"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001eb78; bytecode file offset 0x92209c"
!ASAP2CopyParameter class methodsFor: 'recovered'!
keyWord
    ^'COPY'
! !

"ASDBase.ic method 0x200b6ba8; bytecode file offset 0x9b39ac"
!ASAP2CopyParameter class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('copyFlashToRamMode' 'diagnosticRamToFlashMode' 'copyParameter')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b73a8; bytecode file offset 0x9b3cb4"
!ASAP2CopyParameter class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201ffdcc; bytecode file offset 0xafc77c"
!ASAP2CopyParameter class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    (recoveredValue0) at: ('COPY_PARA') put: ('getCopyParameter:').
    recoveredValue1 := (self) options.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) key: ('COPY_PARA') value: ('putIn:copyParameter:').
    (recoveredValue1) add: (recoveredValue3).
    ^self
! !

