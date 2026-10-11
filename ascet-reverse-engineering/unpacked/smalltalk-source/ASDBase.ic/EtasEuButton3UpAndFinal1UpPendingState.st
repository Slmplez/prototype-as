"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20088458; bytecode file offset 0x985628"
!EtasEuButton3UpAndFinal1UpPendingState methodsFor: 'recovered'!
button1Up
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EtasEuButton3UpPendingState.
    recoveredValue1 := (self) owner.
    recoveredValue2 := (recoveredValue0) for: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d4a34; bytecode file offset 0x9d1520"
!EtasEuButton3UpAndFinal1UpPendingState methodsFor: 'recovered'!
criteriaExpired
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) owner.
    (recoveredValue0) clearCriteriaCheck.
    recoveredValue1 := EtasEuFinal1UpPendingState.
    recoveredValue2 := (self) owner.
    recoveredValue3 := (recoveredValue1) for: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d4c44; bytecode file offset 0x9d1520"
!EtasEuButton3UpAndFinal1UpPendingState methodsFor: 'recovered'!
button3Up
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) owner.
    (recoveredValue0) generateButtonReleaseEvent.
    recoveredValue1 := EtasEuButton3DoubleClickAndFinal1UpPendingState.
    recoveredValue2 := (self) owner.
    recoveredValue3 := (recoveredValue1) for: (recoveredValue2).
    ^recoveredValue3
! !

