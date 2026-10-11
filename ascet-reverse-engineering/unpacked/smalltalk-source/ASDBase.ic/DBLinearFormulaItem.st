"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000990; bytecode file offset 0x8ffcfc"
!DBLinearFormulaItem methodsFor: 'recovered'!
noInvertibleFormulaAccessor
    ^self
! !

"ASDBase.ic method 0x2001fac0; bytecode file offset 0x92209c"
!DBLinearFormulaItem methodsFor: 'recovered'!
asap2CompuMethodType
    ^'RAT_FUNC'
! !

"ASDBase.ic method 0x200396e0; bytecode file offset 0x938608"
!DBLinearFormulaItem methodsFor: 'recovered'!
appliedToNumber: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) calculateInvers: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b510; bytecode file offset 0x938608"
!DBLinearFormulaItem methodsFor: 'recovered'!
appliedInverseToNumber: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) calculate: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20069be0; bytecode file offset 0x966bdc"
!DBLinearFormulaItem methodsFor: 'recovered'!
m
    | recoveredValue0 |
    recoveredValue0 := m.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20071c9c; bytecode file offset 0x96e578"
!DBLinearFormulaItem methodsFor: 'recovered'!
mdfFormulaId
    ^0
! !

"ASDBase.ic method 0x200bad14; bytecode file offset 0x9b75cc"
!DBLinearFormulaItem methodsFor: 'recovered'!
calculateInvers: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := offset.
    recoveredValue2 := (recoveredValue0) - (recoveredValue1).
    recoveredValue3 := m.
    recoveredValue4 := (recoveredValue2) / (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c0de0; bytecode file offset 0x9bdf14"
!DBLinearFormulaItem methodsFor: 'recovered'!
m: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    m := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d8870; bytecode file offset 0x9d5128"
!DBLinearFormulaItem methodsFor: 'recovered'!
calculate: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := m.
    recoveredValue2 := (recoveredValue0) * (recoveredValue1).
    recoveredValue3 := offset.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    recoveredValue5 := (recoveredValue4) asFloat.
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ef714; bytecode file offset 0x9ebfd4"
!DBLinearFormulaItem methodsFor: 'recovered'!
parArray
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := offset.
    recoveredValue2 := (recoveredValue1) asFloat.
    recoveredValue3 := m.
    recoveredValue4 := (recoveredValue3) asFloat.
    recoveredValue5 := (recoveredValue0) with: (recoveredValue2) with: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2017c3b8; bytecode file offset 0xa78c7c"
!DBLinearFormulaItem methodsFor: 'recovered'!
fillFromMDFFormula: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) par.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) at: (2).
    (self) m: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) at: (1).
    (self) offset: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2018d440; bytecode file offset 0xa89d0c"
!DBLinearFormulaItem methodsFor: 'recovered'!
createFormula
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := RBFormulaLinear.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := offset.
    recoveredValue4 := (recoveredValue3) negated.
    recoveredValue5 := m.
    recoveredValue6 := (recoveredValue4) / (recoveredValue5).
    (recoveredValue2) c0: (recoveredValue6).
    recoveredValue7 := m.
    recoveredValue8 := (1) / (recoveredValue7).
    recoveredValue9 := (recoveredValue1) c1: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x2027d450; bytecode file offset 0xb79d24"
!DBLinearFormulaItem methodsFor: 'recovered'!
createASAP2Node: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super createASAP2Node: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := ASAP2BytesLinearCompuMethod.
    recoveredValue3 := (recoveredValue2) createDefault.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) compuMethod: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := m.
    recoveredValue9 := (1) / (recoveredValue8).
    (recoveredValue7) c1: (recoveredValue9).
    recoveredValue10 := offset.
    recoveredValue11 := (-1) * (recoveredValue10).
    recoveredValue12 := m.
    recoveredValue13 := (recoveredValue11) / (recoveredValue12).
    (recoveredValue6) c0: (recoveredValue13).
    recoveredValue14 := recoveredLocal2.
    ^recoveredValue14
! !

"ASDBase.ic method 0x2028c510; bytecode file offset 0xb88dec"
!DBLinearFormulaItem methodsFor: 'recovered'!
inverse
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) c1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := super inverse.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) offset.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) negated.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) m.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) / (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) offset: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) m.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) m: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b2df4; bytecode file offset 0xbaf6bc"
!DBLinearFormulaItem methodsFor: 'recovered'!
changeFloatToInteger
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := m.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := DBLinearFormulaFloatToIntegerItem.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := dbItem.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) changeFloatToInteger.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := m.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := 10000.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) / (recoveredStack4).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := offset.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2) m: (recoveredStack3) offset: (recoveredStack4).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := DBLinearFormulaFloatToIntegerItem.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := dbItem.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) changeFloatToInteger.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := m.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := offset.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2) m: (recoveredStack3) offset: (recoveredStack4).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20345224; bytecode file offset 0xc41afc"
!DBLinearFormulaItem methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    (recoveredValue1) nextPutAll: ('m  : ').
    recoveredValue3 := m.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) printOn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (recoveredValue5) cr.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredValue6.
    (recoveredValue7) cr.
    (recoveredValue6) nextPutAll: (' invers: m: ').
    recoveredValue8 := m.
    recoveredValue9 := (1) / (recoveredValue8).
    recoveredValue10 := recoveredArg1.
    (recoveredValue9) printOn: (recoveredValue10).
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := recoveredValue11.
    (recoveredValue12) cr.
    (recoveredValue11) nextPutAll: ('offset: ').
    recoveredValue13 := offset.
    recoveredValue14 := (recoveredValue13) negated.
    recoveredValue15 := m.
    recoveredValue16 := (recoveredValue14) / (recoveredValue15).
    recoveredValue17 := recoveredArg1.
    (recoveredValue16) printOn: (recoveredValue17).
    ^self
! !

