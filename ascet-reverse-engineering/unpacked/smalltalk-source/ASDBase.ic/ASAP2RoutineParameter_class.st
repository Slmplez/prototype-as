"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200171c8; bytecode file offset 0x92209c"
!ASAP2RoutineParameter class methodsFor: 'recovered'!
keyWord
    ^'ROUTINE_PARA'
! !

"ASDBase.ic method 0x2001b038; bytecode file offset 0x92209c"
!ASAP2RoutineParameter class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'noOfLocalRoutine:' 'routineResult:' 'rncResult:')
! !

"ASDBase.ic method 0x200b6e60; bytecode file offset 0x9b39ac"
!ASAP2RoutineParameter class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('noOfLocalRoutine' 'routineResult' 'rncResult')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b73d8; bytecode file offset 0x9b3cb4"
!ASAP2RoutineParameter class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201f2ee4; bytecode file offset 0xaef814"
!ASAP2RoutineParameter class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    (recoveredValue0) at: ('RNC_RESULT') put: ('getRncResult:').
    recoveredValue1 := options.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) key: ('RNC_RESULT') value: ('putIn:rncResult:').
    (recoveredValue1) add: (recoveredValue3).
    ^self
! !

