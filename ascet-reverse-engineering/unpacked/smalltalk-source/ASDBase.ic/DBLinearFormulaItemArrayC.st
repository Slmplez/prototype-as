"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20055788; bytecode file offset 0x952a9c"
!DBLinearFormulaItemArrayC methodsFor: 'recovered'!
mergeWith: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mergeWithLinear: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006a7fc; bytecode file offset 0x967a18"
!DBLinearFormulaItemArrayC methodsFor: 'recovered'!
dim
    | recoveredValue0 |
    recoveredValue0 := dim.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bd08; bytecode file offset 0x96873c"
!DBLinearFormulaItemArrayC methodsFor: 'recovered'!
bytes
    | recoveredValue0 |
    recoveredValue0 := bytes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c16a4; bytecode file offset 0x9beac8"
!DBLinearFormulaItemArrayC methodsFor: 'recovered'!
dim: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dim := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2b48; bytecode file offset 0x9bf474"
!DBLinearFormulaItemArrayC methodsFor: 'recovered'!
bytes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    bytes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201345bc; bytecode file offset 0xa30ea4"
!DBLinearFormulaItemArrayC methodsFor: 'recovered'!
calculateInverseInt: recoveredArg1 yArr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := dbItem.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := dim.
    recoveredValue4 := m.
    recoveredValue5 := offset.
    recoveredValue6 := (recoveredValue0) calculateLinearInverseArray: (recoveredValue1) y: (recoveredValue2) dim: (recoveredValue3) m: (recoveredValue4) offset: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201345c8; bytecode file offset 0xa30ea4"
!DBLinearFormulaItemArrayC methodsFor: 'recovered'!
calculateInverse: recoveredArg1 yArr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := dbItem.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := dim.
    recoveredValue4 := m.
    recoveredValue5 := offset.
    recoveredValue6 := (recoveredValue0) calculateLinearInverseArray: (recoveredValue1) y: (recoveredValue2) dim: (recoveredValue3) m: (recoveredValue4) offset: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201345d4; bytecode file offset 0xa30ea4"
!DBLinearFormulaItemArrayC methodsFor: 'recovered'!
calculateInverseDouble: recoveredArg1 yArr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := dbItem.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := dim.
    recoveredValue4 := m.
    recoveredValue5 := offset.
    recoveredValue6 := (recoveredValue0) calculateLinearInverseDoubleArray: (recoveredValue1) y: (recoveredValue2) dim: (recoveredValue3) m: (recoveredValue4) offset: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201345e0; bytecode file offset 0xa30ea4"
!DBLinearFormulaItemArrayC methodsFor: 'recovered'!
calculate: recoveredArg1 yArr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := dbItem.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := dim.
    recoveredValue4 := m.
    recoveredValue5 := offset.
    recoveredValue6 := (recoveredValue0) calculateLinearArray: (recoveredValue1) y: (recoveredValue2) dim: (recoveredValue3) m: (recoveredValue4) offset: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201345ec; bytecode file offset 0xa30ea4"
!DBLinearFormulaItemArrayC methodsFor: 'recovered'!
calculateInt: recoveredArg1 yArr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := dbItem.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := dim.
    recoveredValue4 := m.
    recoveredValue5 := offset.
    recoveredValue6 := (recoveredValue0) calculateLinearArrayInt: (recoveredValue1) y: (recoveredValue2) dim: (recoveredValue3) m: (recoveredValue4) offset: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201ab8bc; bytecode file offset 0xaa8178"
!DBLinearFormulaItemArrayC methodsFor: 'recovered'!
mergeWithLinear: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := m.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := m.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) m.
    recoveredValue4 := (recoveredValue1) * (recoveredValue3).
    m := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) offset.
    recoveredValue7 := offset.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) m.
    recoveredValue10 := (recoveredValue7) * (recoveredValue9).
    recoveredValue11 := (recoveredValue6) + (recoveredValue10).
    offset := recoveredValue11.
    ^self
! !

"ASDBase.ic method 0x201b6d28; bytecode file offset 0xab35f0"
!DBLinearFormulaItemArrayC methodsFor: 'recovered'!
calculate: recoveredArg1 yArr: recoveredArg2 dimOffset: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := dbItem.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := dim.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) size.
    recoveredValue6 := (recoveredValue5) / (8).
    recoveredValue7 := (recoveredValue3) min: (recoveredValue6).
    recoveredValue8 := m.
    recoveredValue9 := offset.
    recoveredValue10 := (recoveredValue9) asFloat.
    recoveredValue11 := recoveredArg3.
    recoveredValue12 := (recoveredValue0) calculateLinearArray: (recoveredValue1) y: (recoveredValue2) dim: (recoveredValue7) m: (recoveredValue8) offset: (recoveredValue10) dimOffset: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x201d1628; bytecode file offset 0xacdefc"
!DBLinearFormulaItemArrayC methodsFor: 'recovered'!
calculateInverse: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := dim.
    recoveredValue2 := (recoveredValue1) * (8).
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := dbItem.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := dim.
    recoveredValue8 := m.
    recoveredValue9 := offset.
    recoveredValue10 := (recoveredValue4) calculateLinearInverseArray: (recoveredValue5) y: (recoveredValue6) dim: (recoveredValue7) m: (recoveredValue8) offset: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x201d163c; bytecode file offset 0xacdefc"
!DBLinearFormulaItemArrayC methodsFor: 'recovered'!
calculate: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := dim.
    recoveredValue2 := (recoveredValue1) * (8).
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := dbItem.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := dim.
    recoveredValue8 := m.
    recoveredValue9 := offset.
    recoveredValue10 := (recoveredValue4) calculateLinearArray: (recoveredValue5) y: (recoveredValue6) dim: (recoveredValue7) m: (recoveredValue8) offset: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x201d166c; bytecode file offset 0xacdf30"
!DBLinearFormulaItemArrayC methodsFor: 'recovered'!
calculateS32: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := dim.
    recoveredValue2 := (recoveredValue1) * (8).
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (DBS32Item new) instVarAt: 1 put: (nil); instVarAt: 2 put: (nil); yourself.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := dim.
    recoveredValue8 := m.
    recoveredValue9 := offset.
    recoveredValue10 := (recoveredValue4) calculateLinearArray: (recoveredValue5) y: (recoveredValue6) dim: (recoveredValue7) m: (recoveredValue8) offset: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x201de980; bytecode file offset 0xadb248"
!DBLinearFormulaItemArrayC methodsFor: 'recovered'!
calculateInverseDouble: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := dim.
    recoveredValue2 := DBF8Item.
    recoveredValue3 := (recoveredValue2) byteSize.
    recoveredValue4 := (recoveredValue1) * (recoveredValue3).
    recoveredValue5 := (recoveredValue0) new: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := dbItem.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := dim.
    recoveredValue10 := m.
    recoveredValue11 := offset.
    recoveredValue12 := (recoveredValue6) calculateLinearInverseDoubleArray: (recoveredValue7) y: (recoveredValue8) dim: (recoveredValue9) m: (recoveredValue10) offset: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x201de9b8; bytecode file offset 0xadb294"
!DBLinearFormulaItemArrayC methodsFor: 'recovered'!
calculateInverseInt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := dim.
    recoveredValue2 := dbItem.
    recoveredValue3 := (recoveredValue2) byteSize.
    recoveredValue4 := (recoveredValue1) * (recoveredValue3).
    recoveredValue5 := (recoveredValue0) new: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := dbItem.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := dim.
    recoveredValue10 := m.
    recoveredValue11 := offset.
    recoveredValue12 := (recoveredValue6) calculateLinearInverseArrayInt: (recoveredValue7) y: (recoveredValue8) dim: (recoveredValue9) m: (recoveredValue10) offset: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x201de9d0; bytecode file offset 0xadb294"
!DBLinearFormulaItemArrayC methodsFor: 'recovered'!
calculateInt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := dim.
    recoveredValue2 := dbItem.
    recoveredValue3 := (recoveredValue2) byteSize.
    recoveredValue4 := (recoveredValue1) * (recoveredValue3).
    recoveredValue5 := (recoveredValue0) new: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := dbItem.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := dim.
    recoveredValue10 := m.
    recoveredValue11 := offset.
    recoveredValue12 := (recoveredValue6) calculateLinearArrayInt: (recoveredValue7) y: (recoveredValue8) dim: (recoveredValue9) m: (recoveredValue10) offset: (recoveredValue11).
    ^recoveredValue12
! !

