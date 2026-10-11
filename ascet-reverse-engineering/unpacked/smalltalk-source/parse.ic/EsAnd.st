"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x200026d4; bytecode file offset 0x17d70"
!EsAnd methodsFor: 'recovered'!
generateOptimizedCodeOn: recoveredArg1 valueRequired: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := receiver.
    recoveredValue2 := messagePattern.
    recoveredValue3 := (recoveredValue2) arguments.
    recoveredValue4 := (recoveredValue3) first.
    recoveredValue5 := recoveredArg2.
    (recoveredValue0) andReceiver: (recoveredValue1) block: (recoveredValue4) valueRequired: (recoveredValue5).
    ^self
! !

"parse.ic method 0x20004fc4; bytecode file offset 0x1a634"
!EsAnd methodsFor: 'recovered'!
optimizedBooleanOn: recoveredArg1 trueLabel: recoveredArg2 falseLabel: recoveredArg3 fallThrough: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := EsLabel.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) codeStream: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := receiver.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredArg3.
    (recoveredValue3) generateOptimizedBooleanOn: (recoveredValue4) trueLabel: (recoveredValue5) falseLabel: (recoveredValue6) fallThrough: (true).
    recoveredValue7 := recoveredLocal1.
    (recoveredValue7) place.
    recoveredValue8 := messagePattern.
    recoveredValue9 := (recoveredValue8) arguments.
    recoveredValue10 := (recoveredValue9) first.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := recoveredArg2.
    recoveredValue13 := recoveredArg3.
    recoveredValue14 := recoveredArg4.
    (recoveredValue10) generateOptimizedBooleanBlockOn: (recoveredValue11) trueLabel: (recoveredValue12) falseLabel: (recoveredValue13) fallThrough: (recoveredValue14).
    ^self
! !

