"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x200031fc; bytecode file offset 0x18860"
!EsToDo methodsFor: 'recovered'!
generateOptimizedCodeOn: recoveredArg1 valueRequired: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := messagePattern.
    recoveredValue1 := (recoveredValue0) arguments.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := receiver.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) first.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) last.
    recoveredValue8 := recoveredArg2.
    (recoveredValue2) toDoReceiver: (recoveredValue3) limit: (recoveredValue5) block: (recoveredValue7) valueRequired: (recoveredValue8).
    ^self
! !

