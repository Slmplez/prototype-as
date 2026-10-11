"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006b988; bytecode file offset 0x96873c"
!DBStretchFormulaItem methodsFor: 'recovered'!
m
    | recoveredValue0 |
    recoveredValue0 := m.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c304; bytecode file offset 0x9692b0"
!DBStretchFormulaItem methodsFor: 'recovered'!
n
    | recoveredValue0 |
    recoveredValue0 := n.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c2650; bytecode file offset 0x9bf474"
!DBStretchFormulaItem methodsFor: 'recovered'!
m: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    m := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c300c; bytecode file offset 0x9bfde0"
!DBStretchFormulaItem methodsFor: 'recovered'!
n: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    n := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20292328; bytecode file offset 0xb8ebf8"
!DBStretchFormulaItem methodsFor: 'recovered'!
calculate: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := dim.
    recoveredValue2 := factor.
    recoveredValue3 := (recoveredValue1) * (recoveredValue2).
    recoveredValue4 := (recoveredValue3) * (8).
    recoveredValue5 := (recoveredValue4) asInteger.
    recoveredValue6 := (recoveredValue0) new: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := dbItem.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := dim.
    recoveredValue11 := factor.
    recoveredValue12 := m.
    recoveredValue13 := n.
    (recoveredValue7) calculateStretchLinearArray: (recoveredValue8) y: (recoveredValue9) dim: (recoveredValue10) stretch: (recoveredValue11) m: (recoveredValue12) offset: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (recoveredValue14) size.
    recoveredValue16 := (recoveredValue15) / (8).
    (self) dim: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    ^recoveredValue17
! !

