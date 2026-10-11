"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201acf5c; bytecode file offset 0xaa9828"
!TGCTargetDebugCtrl class methodsFor: 'recovered'!
createForUI: recoveredArg1 access: recoveredArg2 measureCtrl: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) userInterface: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) access: (recoveredValue6).
    recoveredValue7 := recoveredArg3.
    (recoveredValue2) measureSystemCtrl: (recoveredValue7).
    recoveredValue8 := recoveredArg3.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue8) targetDebuggerCtrl: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

