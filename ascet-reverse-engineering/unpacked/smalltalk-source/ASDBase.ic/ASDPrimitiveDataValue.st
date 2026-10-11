"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006677c; bytecode file offset 0x963428"
!ASDPrimitiveDataValue methodsFor: 'recovered'!
scalarData
    | recoveredValue0 |
    recoveredValue0 := scalarData.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a97d8; bytecode file offset 0x9a60e4"
!ASDPrimitiveDataValue methodsFor: 'recovered'!
updateDataElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) scalarData.
    (recoveredValue0) setPhysValue: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200be32c; bytecode file offset 0x9bb178"
!ASDPrimitiveDataValue methodsFor: 'recovered'!
scalarData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    scalarData := recoveredValue0.
    ^self
! !

