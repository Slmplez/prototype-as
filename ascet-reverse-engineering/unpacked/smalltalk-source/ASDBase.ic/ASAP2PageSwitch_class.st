"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20017150; bytecode file offset 0x92209c"
!ASAP2PageSwitch class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'switchPageMode:' 'escapeCodeParameter:' 'routineParameter:' 'pageCode:')
! !

"ASDBase.ic method 0x20017f0c; bytecode file offset 0x92209c"
!ASAP2PageSwitch class methodsFor: 'recovered'!
keyWord
    ^'PAGE_SWITCH'
! !

"ASDBase.ic method 0x200b6c38; bytecode file offset 0x9b39ac"
!ASAP2PageSwitch class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('switchPageMode' 'escapeCodeParameter' 'routineParameter' 'pageCode' 'escapeCodeParameterSet' 'escapeCodeParameterGet')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b761c; bytecode file offset 0x9b3f08"
!ASAP2PageSwitch class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (6).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2043212c; bytecode file offset 0xd2ea3c"
!ASAP2PageSwitch class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('ROUTINE_PARA') put: ('getRoutineParameter:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('ESCAPE_CODE_PARA') put: ('getEscapeCodeParameter:').
    (recoveredValue0) at: ('PAGE_CODE') put: ('getPageCode:').
    recoveredValue3 := (self) keyWords.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) at: ('ESCAPE_CODE_PARA_SET') put: ('getEscapeCodeParameterSet:').
    (recoveredValue3) at: ('ESCAPE_CODE_PARA_GET') put: ('getEscapeCodeParameterGet:').
    recoveredValue5 := (self) options.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := Association.
    recoveredValue8 := (recoveredValue7) key: ('ROUTINE_PARA') value: ('putIn:routineParameter:').
    (recoveredValue6) add: (recoveredValue8).
    recoveredValue9 := recoveredValue5.
    recoveredValue10 := Association.
    recoveredValue11 := (recoveredValue10) key: ('ESCAPE_CODE_PARA') value: ('putIn:escapeCodeParameter:').
    (recoveredValue9) add: (recoveredValue11).
    recoveredValue12 := Association.
    recoveredValue13 := (recoveredValue12) key: ('PAGE_CODE') value: ('putIn:pageCode:').
    (recoveredValue5) add: (recoveredValue13).
    recoveredValue14 := (self) options.
    recoveredValue15 := recoveredValue14.
    recoveredValue16 := Association.
    recoveredValue17 := (recoveredValue16) key: ('ESCAPE_CODE_PARA_SET') value: ('putIn:escapeCodeParameterSet:').
    (recoveredValue15) add: (recoveredValue17).
    recoveredValue18 := Association.
    recoveredValue19 := (recoveredValue18) key: ('ESCAPE_CODE_PARA_GET') value: ('putIn:escapeCodeParameterGet:').
    (recoveredValue14) add: (recoveredValue19).
    ^self
! !

