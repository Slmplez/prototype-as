"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20069ba8; bytecode file offset 0x966bdc"
!DBExpandCompressFormulaItem methodsFor: 'recovered'!
dim
    | recoveredValue0 |
    recoveredValue0 := dim.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006af4c; bytecode file offset 0x967a18"
!DBExpandCompressFormulaItem methodsFor: 'recovered'!
factor
    | recoveredValue0 |
    recoveredValue0 := factor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009b518; bytecode file offset 0x997dd4"
!DBExpandCompressFormulaItem methodsFor: 'recovered'!
calculateST: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) calculate: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) asDoubleArray.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c0c98; bytecode file offset 0x9bdf14"
!DBExpandCompressFormulaItem methodsFor: 'recovered'!
dim: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dim := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1fac; bytecode file offset 0x9beac8"
!DBExpandCompressFormulaItem methodsFor: 'recovered'!
factor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    factor := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2026cdc4; bytecode file offset 0xb69690"
!DBExpandCompressFormulaItem methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    (recoveredValue1) nextPutAll: ('dim  : ').
    recoveredValue3 := dim.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) printOn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) cr.
    (recoveredValue5) nextPutAll: ('factor  : ').
    recoveredValue7 := factor.
    recoveredValue8 := recoveredArg1.
    (recoveredValue7) printOn: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    (recoveredValue9) cr.
    ^self
! !

