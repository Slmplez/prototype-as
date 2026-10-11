"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x20002430; bytecode file offset 0x17a88"
!EsNot methodsFor: 'recovered'!
optimizedBooleanOn: recoveredArg1 trueLabel: recoveredArg2 falseLabel: recoveredArg3 fallThrough: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := receiver.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue4) not.
    recoveredValue6 := (recoveredValue0) generateOptimizedBooleanOn: (recoveredValue1) trueLabel: (recoveredValue2) falseLabel: (recoveredValue3) fallThrough: (recoveredValue5).
    ^recoveredValue6
! !

