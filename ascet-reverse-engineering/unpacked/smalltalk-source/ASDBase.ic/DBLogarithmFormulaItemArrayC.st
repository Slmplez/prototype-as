"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006e57c; bytecode file offset 0x96af48"
!DBLogarithmFormulaItemArrayC methodsFor: 'recovered'!
dim
    | recoveredValue0 |
    recoveredValue0 := dim.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c4a2c; bytecode file offset 0x9c16b0"
!DBLogarithmFormulaItemArrayC methodsFor: 'recovered'!
dim: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dim := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2024f2a8; bytecode file offset 0xb4bb68"
!DBLogarithmFormulaItemArrayC methodsFor: 'recovered'!
calculate: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := dim.
    recoveredValue2 := (recoveredValue1) * (8).
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := dbItem.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := dim.
    recoveredValue8 := c1.
    recoveredValue9 := c2.
    recoveredValue10 := c3.
    recoveredValue11 := c4.
    recoveredValue12 := c5.
    recoveredValue13 := c6.
    recoveredValue14 := c7.
    recoveredValue15 := (recoveredValue4) calculateLogarithmArray: (recoveredValue5) y: (recoveredValue6) dim: (recoveredValue7) c1: (recoveredValue8) c2: (recoveredValue9) c3: (recoveredValue10) c4: (recoveredValue11) c5: (recoveredValue12) c6: (recoveredValue13) c7: (recoveredValue14).
    ^recoveredValue15
! !

