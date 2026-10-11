"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006792c; bytecode file offset 0x9646f8"
!SGCgVariableStepSizeCounter methodsFor: 'recovered'!
stepSize
    | recoveredValue0 |
    recoveredValue0 := stepSize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200b09c8; bytecode file offset 0x9ad280"
!SGCgVariableStepSizeCounter methodsFor: 'recovered'!
increment
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := currentValue.
    recoveredValue1 := (self) stepSize.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    currentValue := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b09e0; bytecode file offset 0x9ad298"
!SGCgVariableStepSizeCounter methodsFor: 'recovered'!
decrement
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := currentValue.
    recoveredValue1 := (self) stepSize.
    recoveredValue2 := (recoveredValue0) - (recoveredValue1).
    currentValue := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200bedd8; bytecode file offset 0x9bc0b4"
!SGCgVariableStepSizeCounter methodsFor: 'recovered'!
stepSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    stepSize := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e6980; bytecode file offset 0x9e323c"
!SGCgVariableStepSizeCounter methodsFor: 'recovered'!
initialize
    super initialize.
    stepSize := 1.
    ^self
! !

