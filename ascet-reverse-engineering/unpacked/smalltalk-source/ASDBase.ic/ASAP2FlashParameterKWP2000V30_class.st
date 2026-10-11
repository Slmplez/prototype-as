"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20024cc8; bytecode file offset 0x92209c"
!ASAP2FlashParameterKWP2000V30 class methodsFor: 'recovered'!
members
    ^#('noFlashBack' 'autoFlashBack' 'toolFlashBack')
! !

"ASDBase.ic method 0x203fcee8; bytecode file offset 0xcf97f0"
!ASAP2FlashParameterKWP2000V30 class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := [].
    (recoveredValue1) removeKey: ('COPY_FRAME') ifAbsent: (recoveredValue2).
    recoveredValue3 := [].
    (recoveredValue0) removeKey: ('RNC_RESULT') ifAbsent: (recoveredValue3).
    recoveredValue4 := (self) keyWords.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) at: ('NOFLASHBACK') put: ('getNoFlashBack:').
    recoveredValue6 := recoveredValue4.
    (recoveredValue6) at: ('AUTOFLASHBACK') put: ('getAutoFlashBack:').
    recoveredValue7 := recoveredValue4.
    (recoveredValue7) at: ('TOOLFLASHBACK') put: ('getToolFlashBack:').
    recoveredValue8 := (self) options.
    recoveredValue9 := recoveredValue8.
    (recoveredValue9) removeLast.
    (recoveredValue8) removeLast.
    recoveredValue10 := (self) options.
    recoveredValue11 := recoveredValue10.
    recoveredValue12 := Association.
    recoveredValue13 := (recoveredValue12) key: ('NOFLASHBACK') value: ('putIn:noFlashBack:').
    (recoveredValue11) add: (recoveredValue13).
    recoveredValue14 := recoveredValue10.
    recoveredValue15 := Association.
    recoveredValue16 := (recoveredValue15) key: ('AUTOFLASHBACK') value: ('putIn:noFlashBack:').
    (recoveredValue14) add: (recoveredValue16).
    recoveredValue17 := recoveredValue10.
    recoveredValue18 := Association.
    recoveredValue19 := (recoveredValue18) key: ('TOOLFLASHBACK') value: ('putIn:toolFlashBack:').
    (recoveredValue17) add: (recoveredValue19).
    ^self
! !

