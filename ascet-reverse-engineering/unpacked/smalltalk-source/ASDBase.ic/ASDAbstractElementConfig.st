"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20065f2c; bytecode file offset 0x963428"
!ASDAbstractElementConfig methodsFor: 'recovered'!
configValues
    | recoveredValue0 |
    recoveredValue0 := configValues.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be404; bytecode file offset 0x9bb178"
!ASDAbstractElementConfig methodsFor: 'recovered'!
configValues: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    configValues := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e653c; bytecode file offset 0x9e2e24"
!ASDAbstractElementConfig methodsFor: 'recovered'!
convertToASDV50Implementation
    | recoveredValue0 |
    super convertToASDV50Implementation.
    recoveredValue0 := (self) configValues.
    (recoveredValue0) convertToASDV50Implementation.
    ^self
! !

"ASDBase.ic method 0x20120b38; bytecode file offset 0xa1d42c"
!ASDAbstractElementConfig methodsFor: 'recovered'!
updateDataElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    super updateDataElement: (recoveredValue0).
    recoveredValue1 := (self) configValues.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) values.
    (recoveredValue1) updateDataElement: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

