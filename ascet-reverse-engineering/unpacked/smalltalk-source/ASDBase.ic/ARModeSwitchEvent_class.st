"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015e54; bytecode file offset 0x92209c"
!ARModeSwitchEvent class methodsFor: 'recovered'!
typeEntryString
    ^'entry'
! !

"ASDBase.ic method 0x2001c2f8; bytecode file offset 0x92209c"
!ARModeSwitchEvent class methodsFor: 'recovered'!
eventTypeString
    ^'ModeSwitch'
! !

"ASDBase.ic method 0x2001e4e8; bytecode file offset 0x92209c"
!ARModeSwitchEvent class methodsFor: 'recovered'!
typeExitString
    ^'exit'
! !

"ASDBase.ic method 0x20022bc8; bytecode file offset 0x92209c"
!ARModeSwitchEvent class methodsFor: 'recovered'!
typeEntryExitString
    ^'entry_exit'
! !

"ASDBase.ic method 0x200aff48; bytecode file offset 0x9ac808"
!ARModeSwitchEvent class methodsFor: 'recovered'!
possibleEventTypes
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := ARTimingEvent.
    recoveredValue2 := (recoveredValue0) with: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20104bf8; bytecode file offset 0xa01584"
!ARModeSwitchEvent class methodsFor: 'recovered'!
modeSwitchTypeEnums
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) typeEntryString.
    recoveredValue2 := (self) typeExitString.
    recoveredValue3 := (self) typeEntryExitString.
    recoveredValue4 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

