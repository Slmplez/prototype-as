"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006b940; bytecode file offset 0x96873c"
!DBInterpolatedFormulaC methodsFor: 'recovered'!
dim
    | recoveredValue0 |
    recoveredValue0 := dim.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c8fc; bytecode file offset 0x9692b0"
!DBInterpolatedFormulaC methodsFor: 'recovered'!
bytes
    | recoveredValue0 |
    recoveredValue0 := bytes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c2448; bytecode file offset 0x9bf474"
!DBInterpolatedFormulaC methodsFor: 'recovered'!
dim: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dim := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c348c; bytecode file offset 0x9bfde0"
!DBInterpolatedFormulaC methodsFor: 'recovered'!
bytes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    bytes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2022bfbc; bytecode file offset 0xb28884"
!DBInterpolatedFormulaC methodsFor: 'recovered'!
calculate: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := dim.
    recoveredValue2 := (recoveredValue1) * (8).
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := dbItem.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := dim.
    recoveredValue8 := valArray.
    recoveredValue9 := (self) bytesFromDoubleArray: (recoveredValue8).
    recoveredValue10 := phyArray.
    recoveredValue11 := (self) bytesFromDoubleArray: (recoveredValue10).
    recoveredValue12 := valArray.
    recoveredValue13 := (recoveredValue12) size.
    recoveredValue14 := (recoveredValue4) calculateInterpolatedArray: (recoveredValue5) y: (recoveredValue6) dim: (recoveredValue7) valArray: (recoveredValue9) physArray: (recoveredValue11) tableSize: (recoveredValue13).
    ^recoveredValue14
! !

