"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2016baf8; bytecode file offset 0xa683b8"
!DBExpandFormulaItem methodsFor: 'recovered'!
calculate: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := dim.
    recoveredValue2 := factor.
    recoveredValue3 := (recoveredValue1) * (recoveredValue2).
    recoveredValue4 := (recoveredValue3) * (8).
    recoveredValue5 := (recoveredValue0) new: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (self) calculate: (recoveredValue6) yArr: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x20196eac; bytecode file offset 0xa93770"
!DBExpandFormulaItem methodsFor: 'recovered'!
calculate: recoveredArg1 yArr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := dbItem.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := dim.
    recoveredValue4 := factor.
    (recoveredValue0) expandArray: (recoveredValue1) y: (recoveredValue2) dim: (recoveredValue3) expand: (recoveredValue4).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) size.
    recoveredValue7 := (recoveredValue6) / (8).
    (self) dim: (recoveredValue7).
    recoveredValue8 := recoveredArg2.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2025afa4; bytecode file offset 0xb57874"
!DBExpandFormulaItem methodsFor: 'recovered'!
calculateI: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := (recoveredValue1) / (4).
    recoveredValue3 := (recoveredValue2) asInteger.
    dim := recoveredValue3.
    recoveredValue4 := ByteArray.
    recoveredValue5 := dim.
    recoveredValue6 := factor.
    recoveredValue7 := (recoveredValue5) * (recoveredValue6).
    recoveredValue8 := (recoveredValue7) * (4).
    recoveredValue9 := (recoveredValue4) new: (recoveredValue8).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := RBBcrtl32DLL.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := dim.
    recoveredValue14 := factor.
    (recoveredValue10) apiExpandArrayI: (recoveredValue11) y: (recoveredValue12) dim: (recoveredValue13) expand: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    ^recoveredValue15
! !

"ASDBase.ic method 0x2025aff0; bytecode file offset 0xb578c0"
!DBExpandFormulaItem methodsFor: 'recovered'!
calculateD: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := (recoveredValue1) / (8).
    recoveredValue3 := (recoveredValue2) asInteger.
    dim := recoveredValue3.
    recoveredValue4 := ByteArray.
    recoveredValue5 := dim.
    recoveredValue6 := factor.
    recoveredValue7 := (recoveredValue5) * (recoveredValue6).
    recoveredValue8 := (recoveredValue7) * (8).
    recoveredValue9 := (recoveredValue4) new: (recoveredValue8).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := RBBcrtl32DLL.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := dim.
    recoveredValue14 := factor.
    (recoveredValue10) apiExpandArray: (recoveredValue11) y: (recoveredValue12) dim: (recoveredValue13) expand: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    ^recoveredValue15
! !

