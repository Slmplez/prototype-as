"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20020378; bytecode file offset 0x92209c"
!ASAP2KWP2000V30RamInitByTool class methodsFor: 'recovered'!
members
    ^#('diagnosticRamToFlashMode' 'copyParameter')
! !

"ASDBase.ic method 0x20021e18; bytecode file offset 0x92209c"
!ASAP2KWP2000V30RamInitByTool class methodsFor: 'recovered'!
keyWord
    ^'RAM_InitByTool'
! !

"ASDBase.ic method 0x200725f0; bytecode file offset 0x96f1c4"
!ASAP2KWP2000V30RamInitByTool class methodsFor: 'recovered'!
fixedSize
    ^2
! !

"ASDBase.ic method 0x201ffe9c; bytecode file offset 0xafc77c"
!ASAP2KWP2000V30RamInitByTool class methodsFor: 'recovered'!
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

