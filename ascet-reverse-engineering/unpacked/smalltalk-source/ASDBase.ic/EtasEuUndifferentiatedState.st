"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20063c84; bytecode file offset 0x961970"
!EtasEuUndifferentiatedState methodsFor: 'recovered'!
button1Up
    | recoveredValue0 |
    recoveredValue0 := (self) owner.
    (recoveredValue0) generateButtonReleaseEvent.
    ^self
! !

"ASDBase.ic method 0x20065064; bytecode file offset 0x961970"
!EtasEuUndifferentiatedState methodsFor: 'recovered'!
button3Up
    | recoveredValue0 |
    recoveredValue0 := (self) owner.
    (recoveredValue0) generateButtonReleaseEvent.
    ^self
! !

"ASDBase.ic method 0x200d4b3c; bytecode file offset 0x9d1520"
!EtasEuUndifferentiatedState methodsFor: 'recovered'!
button1Down
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) owner.
    (recoveredValue0) generateButtonPressEvent.
    recoveredValue1 := EtasEuButton1UpPendingState.
    recoveredValue2 := (self) owner.
    recoveredValue3 := (recoveredValue1) for: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d4b6c; bytecode file offset 0x9d1520"
!EtasEuUndifferentiatedState methodsFor: 'recovered'!
button3Down
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) owner.
    (recoveredValue0) generateButtonPressEvent.
    recoveredValue1 := EtasEuButton3UpPendingState.
    recoveredValue2 := (self) owner.
    recoveredValue3 := (recoveredValue1) for: (recoveredValue2).
    ^recoveredValue3
! !

