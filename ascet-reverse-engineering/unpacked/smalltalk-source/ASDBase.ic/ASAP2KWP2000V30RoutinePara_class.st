"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016670; bytecode file offset 0x92209c"
!ASAP2KWP2000V30RoutinePara class methodsFor: 'recovered'!
keyWord
    ^'ROUTINE_PARA'
! !

"ASDBase.ic method 0x200224e4; bytecode file offset 0x92209c"
!ASAP2KWP2000V30RoutinePara class methodsFor: 'recovered'!
members
    ^#('routineNumberSet' 'routineParamSet' 'routineNumberRead' 'routineParamRead' 'requestRoutineResults' 'startRoutine' 'codedResults')
! !

"ASDBase.ic method 0x200742e4; bytecode file offset 0x970bc8"
!ASAP2KWP2000V30RoutinePara class methodsFor: 'recovered'!
fixedSize
    ^7
! !

"ASDBase.ic method 0x204d89f0; bytecode file offset 0xdd5324"
!ASAP2KWP2000V30RoutinePara class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('ROUTINE_NUMBER_SET') put: ('getRoutineNumberSet:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('ROUTINE_PARAM_SET') put: ('getRoutineParamSet:').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ('ROUTINE_NUMBER_READ') put: ('getRoutineNumberRead:').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) at: ('ROUTINE_PARAM_READ') put: ('getRoutineParamRead:').
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) at: ('ROUTINE_RESULTS') put: ('getRoutineResults:').
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) at: ('RequestRoutineResults') put: ('getRequestRoutineResults:').
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) at: ('StartRoutine') put: ('getStartRoutine:').
    (recoveredValue0) at: ('CodedResults') put: ('getCodedResults:').
    recoveredValue8 := (self) options.
    recoveredValue9 := recoveredValue8.
    recoveredValue10 := Association.
    recoveredValue11 := (recoveredValue10) key: ('ROUTINE_NUMBER_SET') value: ('putIn:routineNumberSet:').
    (recoveredValue9) add: (recoveredValue11).
    recoveredValue12 := recoveredValue8.
    recoveredValue13 := Association.
    recoveredValue14 := (recoveredValue13) key: ('ROUTINE_PARAM_SET') value: ('putIn:routineParamSet:').
    (recoveredValue12) add: (recoveredValue14).
    recoveredValue15 := recoveredValue8.
    recoveredValue16 := Association.
    recoveredValue17 := (recoveredValue16) key: ('ROUTINE_NUMBER_READ') value: ('putIn:routineNumberRead:').
    (recoveredValue15) add: (recoveredValue17).
    recoveredValue18 := recoveredValue8.
    recoveredValue19 := Association.
    recoveredValue20 := (recoveredValue19) key: ('ROUTINE_PARAM_READ') value: ('putIn:routineParamRead:').
    (recoveredValue18) add: (recoveredValue20).
    recoveredValue21 := recoveredValue8.
    recoveredValue22 := Association.
    recoveredValue23 := (recoveredValue22) key: ('ROUTINE_RESULTS') value: ('putIn:routineResults:').
    (recoveredValue21) add: (recoveredValue23).
    recoveredValue24 := recoveredValue8.
    recoveredValue25 := Association.
    recoveredValue26 := (recoveredValue25) key: ('StartRoutine') value: ('putIn:startRoutine:').
    (recoveredValue24) add: (recoveredValue26).
    recoveredValue27 := recoveredValue8.
    recoveredValue28 := Association.
    recoveredValue29 := (recoveredValue28) key: ('RequestRoutineResults') value: ('putIn:requestRoutineResults:').
    (recoveredValue27) add: (recoveredValue29).
    recoveredValue30 := recoveredValue8.
    recoveredValue31 := Association.
    recoveredValue32 := (recoveredValue31) key: ('CodedResults') value: ('putIn:codedResults:').
    (recoveredValue30) add: (recoveredValue32).
    ^self
! !

