"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"dbgrun.ic method 0x2000106c; bytecode file offset 0x863c"
!DbgWatch class methodsFor: 'recovered'!
watch: recoveredArg1 obtainSourceFrom: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) expression: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) sourceManager: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) trapErrors: (true).
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) commitChanges: (false).
    ^recoveredValue0
! !

"dbgrun.ic method 0x20001300; bytecode file offset 0x88d4"
!DbgWatch class methodsFor: 'recovered'!
evaluate: recoveredArg1 in: recoveredArg2 obtainSourceFrom: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) trapErrors: (false).
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) commitChanges: (true).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) expression: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) sourceManager: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := recoveredArg2.
    (recoveredValue7) evaluateIn: (recoveredValue8).
    ^recoveredValue0
! !

