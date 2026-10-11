"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200c91e0; bytecode file offset 0x9c5b2c"
!EtasHotkeyAssignmentView class methodsFor: 'recovered'!
createForHotkeys: recoveredArg1 parentName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) hotkeyDict: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) parentName: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201e19a4; bytecode file offset 0xade280"
!EtasHotkeyAssignmentView class methodsFor: 'recovered'!
test
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: ('A') put: ('Aktion 1
tztztztzt').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) at: ('B') put: ('Aktion 2').
    recoveredValue4 := (self) createForHotkeys: (recoveredValue1) parentName: ('Test').
    (recoveredValue4) open.
    ^self
! !

