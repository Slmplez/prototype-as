"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20008a38; bytecode file offset 0x84c20"
!CwExtendedWidget class methodsFor: 'recovered'!
createManagedWidget: recoveredArg1 parent: recoveredArg2 argBlock: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) createWidget: (recoveredValue0) parent: (recoveredValue1) argBlock: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) manageChild.
    ^recoveredValue4
! !

"winsys.ic method 0x20008af4; bytecode file offset 0x84cec"
!CwExtendedWidget class methodsFor: 'recovered'!
createWidget: recoveredArg1 parent: recoveredArg2 argBlock: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) initialize: (recoveredValue1) parent: (recoveredValue2) argBlock: (recoveredValue3).
    ^recoveredValue4
! !

