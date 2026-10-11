"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d6e4; bytecode file offset 0x90a4b8"
!DBIdentityFormulaItemArrayC methodsFor: 'recovered'!
mergeWithLinear: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000d92c; bytecode file offset 0x90a4b8"
!DBIdentityFormulaItemArrayC methodsFor: 'recovered'!
mergeWith: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20038a90; bytecode file offset 0x935c54"
!DBIdentityFormulaItemArrayC methodsFor: 'recovered'!
calculateInverse: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asInteger.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20069d00; bytecode file offset 0x966bdc"
!DBIdentityFormulaItemArrayC methodsFor: 'recovered'!
dim
    | recoveredValue0 |
    recoveredValue0 := dim.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c0c80; bytecode file offset 0x9bdf14"
!DBIdentityFormulaItemArrayC methodsFor: 'recovered'!
dim: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dim := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d76c0; bytecode file offset 0x9d3f7c"
!DBIdentityFormulaItemArrayC methodsFor: 'recovered'!
calculate: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := dbItem.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := dim.
    recoveredValue3 := (recoveredValue0) castToDouble: (recoveredValue1) dim: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) asBytes.
    ^recoveredValue4
! !

