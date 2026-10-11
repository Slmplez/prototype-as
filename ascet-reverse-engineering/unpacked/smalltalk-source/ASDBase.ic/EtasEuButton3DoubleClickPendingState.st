"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200d4aac; bytecode file offset 0x9d1520"
!EtasEuButton3DoubleClickPendingState methodsFor: 'recovered'!
button1Down
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) owner.
    (recoveredValue0) generateButtonChordEvent.
    recoveredValue1 := EtasEuFinal1UpPendingState.
    recoveredValue2 := (self) owner.
    recoveredValue3 := (recoveredValue1) for: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d4b84; bytecode file offset 0x9d1520"
!EtasEuButton3DoubleClickPendingState methodsFor: 'recovered'!
button3Down
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) owner.
    (recoveredValue0) generateButtonDoubleClickEvent.
    recoveredValue1 := EtasEuUndifferentiatedState.
    recoveredValue2 := (self) owner.
    recoveredValue3 := (recoveredValue1) for: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d4c14; bytecode file offset 0x9d1520"
!EtasEuButton3DoubleClickPendingState methodsFor: 'recovered'!
criteriaExpired
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) owner.
    (recoveredValue0) clearCriteriaCheck.
    recoveredValue1 := EtasEuUndifferentiatedState.
    recoveredValue2 := (self) owner.
    recoveredValue3 := (recoveredValue1) for: (recoveredValue2).
    ^recoveredValue3
! !

