"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2025a704; bytecode file offset 0xb56fd4"
!DBCompressFormulaItem methodsFor: 'recovered'!
calculate: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := dim.
    recoveredValue2 := factor.
    recoveredValue3 := (recoveredValue1) / (recoveredValue2).
    recoveredValue4 := (recoveredValue3) * (8).
    recoveredValue5 := (recoveredValue4) asInteger.
    recoveredValue6 := (recoveredValue0) new: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := dbItem.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := dim.
    recoveredValue11 := factor.
    (recoveredValue7) compressArray: (recoveredValue8) y: (recoveredValue9) dim: (recoveredValue10) compress: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue12) size.
    recoveredValue14 := (recoveredValue13) / (8).
    (self) dim: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    ^recoveredValue15
! !

"ASDBase.ic method 0x20265cc4; bytecode file offset 0xb62594"
!DBCompressFormulaItem methodsFor: 'recovered'!
calculateI: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := (recoveredValue1) / (4).
    recoveredValue3 := (recoveredValue2) asInteger.
    dim := recoveredValue3.
    recoveredValue4 := ByteArray.
    recoveredValue5 := dim.
    recoveredValue6 := factor.
    recoveredValue7 := (recoveredValue5) / (recoveredValue6).
    recoveredValue8 := (recoveredValue7) * (4).
    recoveredValue9 := (recoveredValue8) asInteger.
    recoveredValue10 := (recoveredValue4) new: (recoveredValue9).
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := RBBcrtl32DLL.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := dim.
    recoveredValue15 := factor.
    (recoveredValue11) apiCompressArrayI: (recoveredValue12) y: (recoveredValue13) dim: (recoveredValue14) compress: (recoveredValue15).
    recoveredValue16 := recoveredLocal1.
    ^recoveredValue16
! !

"ASDBase.ic method 0x20265d10; bytecode file offset 0xb625e0"
!DBCompressFormulaItem methodsFor: 'recovered'!
calculateD: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := (recoveredValue1) / (8).
    recoveredValue3 := (recoveredValue2) asInteger.
    dim := recoveredValue3.
    recoveredValue4 := ByteArray.
    recoveredValue5 := dim.
    recoveredValue6 := factor.
    recoveredValue7 := (recoveredValue5) / (recoveredValue6).
    recoveredValue8 := (recoveredValue7) * (8).
    recoveredValue9 := (recoveredValue8) asInteger.
    recoveredValue10 := (recoveredValue4) new: (recoveredValue9).
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := RBBcrtl32DLL.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := dim.
    recoveredValue15 := factor.
    (recoveredValue11) apiCompressArray: (recoveredValue12) y: (recoveredValue13) dim: (recoveredValue14) compress: (recoveredValue15).
    recoveredValue16 := recoveredLocal1.
    ^recoveredValue16
! !

