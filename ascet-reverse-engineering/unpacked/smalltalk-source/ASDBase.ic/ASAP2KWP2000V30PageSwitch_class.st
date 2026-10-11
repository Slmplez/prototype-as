"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001d9c0; bytecode file offset 0x92209c"
!ASAP2KWP2000V30PageSwitch class methodsFor: 'recovered'!
members
    ^#('pageCode' 'escapeCode' 'routine')
! !

"ASDBase.ic method 0x2001db10; bytecode file offset 0x92209c"
!ASAP2KWP2000V30PageSwitch class methodsFor: 'recovered'!
keyWord
    ^'PAGE_SWITCH'
! !

"ASDBase.ic method 0x203ba6b0; bytecode file offset 0xcb6fb8"
!ASAP2KWP2000V30PageSwitch class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('ESCAPE_CODE') put: ('getEscapeCode:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('ESCAPE_CODE_PARA_SET') put: ('getEscapeCodeParaSet:').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('ESCAPE_CODE_PARA_READ') put: ('getEscapeCodeParaRead:').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) at: ('LOCAL_ROUTINE') put: ('getRoutine:').
    (recoveredValue0) at: ('PAGE_CODE') put: ('getPageCode:').
    recoveredValue5 := (self) options.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := Association.
    recoveredValue8 := (recoveredValue7) key: ('LOCAL_ROUTINE') value: ('putIn:routine:').
    (recoveredValue6) add: (recoveredValue8).
    recoveredValue9 := recoveredValue5.
    recoveredValue10 := Association.
    recoveredValue11 := (recoveredValue10) key: ('ESCAPE_CODE') value: ('putIn:escapeCode:').
    (recoveredValue9) add: (recoveredValue11).
    recoveredValue12 := Association.
    recoveredValue13 := (recoveredValue12) key: ('PAGE_CODE') value: ('putIn:pageCode:').
    (recoveredValue5) add: (recoveredValue13).
    ^self
! !

