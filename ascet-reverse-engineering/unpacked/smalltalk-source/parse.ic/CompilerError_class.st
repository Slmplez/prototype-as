"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x20005c10; bytecode file offset 0x1b2a4"
!CompilerError class methodsFor: 'recovered'!
relocalize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := EsErrCodeHasNoEffect.
    recoveredValue4 := MxESc1.
    (recoveredValue2) at: (recoveredValue3) put: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := EsErrVariableValueNeverRead.
    recoveredValue7 := MxESc2.
    (recoveredValue5) at: (recoveredValue6) put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := EsErrVariableNeverUsed.
    recoveredValue10 := MxESc3.
    (recoveredValue8) at: (recoveredValue9) put: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := EsErrVariableReadBeforeWritten.
    recoveredValue13 := MxESc4.
    (recoveredValue11) at: (recoveredValue12) put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := EsErrLocalVariablesCanBeOptimized.
    recoveredValue16 := MxESc5.
    (recoveredValue14) at: (recoveredValue15) put: (recoveredValue16).
    recoveredValue17 := recoveredValue1.
    recoveredValue18 := EsErrUndefinedSelector.
    recoveredValue19 := MxESc6.
    (recoveredValue17) at: (recoveredValue18) put: (recoveredValue19).
    ErrorMessages := recoveredValue1.
    ^self
! !

