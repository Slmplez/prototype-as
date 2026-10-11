"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"EHOOKS.ic method 0x20001514; bytecode file offset 0x10658"
!ASDEHooksConfiguration class methodsFor: 'recovered'!
createForASCETConfigFile: recoveredArg1 project: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) eHooksConfigFileName: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) project: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) readASCETConfigFile.
    ^recoveredValue0
! !

