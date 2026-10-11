"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200235a0; bytecode file offset 0x92209c"
!ASAP2CopyParameterKWP2000V30 class methodsFor: 'recovered'!
members
    ^#('ramInitByEcu' 'ramInitByTool')
! !

"ASDBase.ic method 0x202f46c0; bytecode file offset 0xbf0fac"
!ASAP2CopyParameterKWP2000V30 class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('RAM_InitByEcu') put: ('getRamInitByEcu:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('RAM_InitByTool') put: ('getRamInitByTool:').
    recoveredValue3 := (self) options.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := Association.
    recoveredValue6 := (recoveredValue5) key: ('RAM_InitByEcu') value: ('putIn:ramInitByEcu:').
    (recoveredValue4) add: (recoveredValue6).
    recoveredValue7 := recoveredValue3.
    recoveredValue8 := Association.
    recoveredValue9 := (recoveredValue8) key: ('RAM_InitByTool') value: ('putIn:ramInitByTool:').
    (recoveredValue7) add: (recoveredValue9).
    ^self
! !

