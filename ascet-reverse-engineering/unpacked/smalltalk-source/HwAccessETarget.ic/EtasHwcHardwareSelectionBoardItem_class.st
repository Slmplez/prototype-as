"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"HwAccessETarget.ic method 0x20000d74; bytecode file offset 0xd768"
!EtasHwcHardwareSelectionBoardItem class methodsFor: 'recovered'!
createEs1135LedWithParent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EtasHwcHardwareSelectionBoardItemEs1135.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) parent: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) initEs1135Led.
    ^recoveredValue1
! !

"HwAccessETarget.ic method 0x20000de0; bytecode file offset 0xd7d4"
!EtasHwcHardwareSelectionBoardItem class methodsFor: 'recovered'!
createForHwAccess: recoveredArg1 parent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EtasHwcHardwareSelectionBoardItem.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue2) parent: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) initWithHwAccess: (recoveredValue5).
    ^recoveredValue1
! !

