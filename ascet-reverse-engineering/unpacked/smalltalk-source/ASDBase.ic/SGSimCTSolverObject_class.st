"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20122d80; bytecode file offset 0xa1f6a4"
!SGSimCTSolverObject class methodsFor: 'recovered'!
createForCTNode: recoveredArg1 model: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) simNode: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) model: (recoveredValue5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20157218; bytecode file offset 0xa53ae0"
!SGSimCTSolverObject class methodsFor: 'recovered'!
createForNode: recoveredArg1 model: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    (recoveredValue1) event: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) simNode: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := recoveredArg2.
    (recoveredValue6) model: (recoveredValue7).
    ^recoveredValue0
! !

