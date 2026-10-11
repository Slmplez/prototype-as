"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001d888; bytecode file offset 0x92209c"
!ASAP2KWP2000V30RequestRoutineResult class methodsFor: 'recovered'!
members
    ^#('rncResultsSetPage' 'rncResultsReadPage' 'rncResult')
! !

"ASDBase.ic method 0x20025978; bytecode file offset 0x923928"
!ASAP2KWP2000V30RequestRoutineResult class methodsFor: 'recovered'!
keyWord
    ^'RequestRoutineResults'
! !

"ASDBase.ic method 0x200729c0; bytecode file offset 0x96f3cc"
!ASAP2KWP2000V30RequestRoutineResult class methodsFor: 'recovered'!
fixedSize
    ^3
! !

"ASDBase.ic method 0x2037cbf0; bytecode file offset 0xc794e8"
!ASAP2KWP2000V30RequestRoutineResult class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('RNC_RESULT') put: ('getRncResult:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('RNC_RESULTS_SET_PAGE') put: ('getRncResultsSetPage:').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('RNC_RESULTS_READ_PAGE') put: ('getRncResultsReadPage:').
    recoveredValue4 := (self) options.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := Association.
    recoveredValue7 := (recoveredValue6) key: ('RNC_RESULT') value: ('putIn:rncResult:').
    (recoveredValue5) add: (recoveredValue7).
    recoveredValue8 := recoveredValue4.
    recoveredValue9 := Association.
    recoveredValue10 := (recoveredValue9) key: ('RNC_RESULTS_SET_PAGE') value: ('putIn:rncResultsSetPage:').
    (recoveredValue8) add: (recoveredValue10).
    recoveredValue11 := recoveredValue4.
    recoveredValue12 := Association.
    recoveredValue13 := (recoveredValue12) key: ('RNC_RESULTS_READ_PAGE') value: ('putIn:rncResultsReadPage:').
    (recoveredValue11) add: (recoveredValue13).
    ^self
! !

