"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001e914; bytecode file offset 0x92209c"
!ASAP2KWP2000V30Routine class methodsFor: 'recovered'!
keyWord
    ^'ROUTINE_PARA'
! !

"ASDBase.ic method 0x2002677c; bytecode file offset 0x923928"
!ASAP2KWP2000V30Routine class methodsFor: 'recovered'!
members
    ^#('routinePara')
! !

"ASDBase.ic method 0x20072380; bytecode file offset 0x96ee04"
!ASAP2KWP2000V30Routine class methodsFor: 'recovered'!
fixedSize
    ^1
! !

"ASDBase.ic method 0x20231c44; bytecode file offset 0xb2e524"
!ASAP2KWP2000V30Routine class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('ROUTINE_PARA') put: ('getRoutinePara:').
    recoveredValue2 := (self) options.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := Association.
    recoveredValue5 := (recoveredValue4) key: ('ROUTINE_PARA') value: ('putIn:routinePara:').
    (recoveredValue3) add: (recoveredValue5).
    ^self
! !

