"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006bf64; bytecode file offset 0x9692b0"
!DBMoebiusFormulaItemArrayC methodsFor: 'recovered'!
dim
    | recoveredValue0 |
    recoveredValue0 := dim.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cf00; bytecode file offset 0x969c04"
!DBMoebiusFormulaItemArrayC methodsFor: 'recovered'!
bytes
    | recoveredValue0 |
    recoveredValue0 := bytes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20096954; bytecode file offset 0x9932f0"
!DBMoebiusFormulaItemArrayC methodsFor: 'recovered'!
calculateInvers: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super calculate: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c3494; bytecode file offset 0x9bfde0"
!DBMoebiusFormulaItemArrayC methodsFor: 'recovered'!
dim: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dim := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3ca8; bytecode file offset 0x9c058c"
!DBMoebiusFormulaItemArrayC methodsFor: 'recovered'!
bytes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    bytes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20137d1c; bytecode file offset 0xa345dc"
!DBMoebiusFormulaItemArrayC methodsFor: 'recovered'!
calculate: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := dim.
    recoveredValue2 := (recoveredValue1) * (8).
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) calculateInt: (recoveredValue4) yArr: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2014a4bc; bytecode file offset 0xa46d80"
!DBMoebiusFormulaItemArrayC methodsFor: 'recovered'!
calculateInt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := dim.
    recoveredValue2 := dbItem.
    recoveredValue3 := (recoveredValue2) byteSize.
    recoveredValue4 := (recoveredValue1) * (recoveredValue3).
    recoveredValue5 := (recoveredValue0) new: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (self) calculateInt: (recoveredValue6) yArr: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2017833c; bytecode file offset 0xa74c00"
!DBMoebiusFormulaItemArrayC methodsFor: 'recovered'!
calculate: recoveredArg1 yArr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := dbItem.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := dim.
    recoveredValue4 := m.
    recoveredValue5 := offset.
    recoveredValue6 := n0.
    recoveredValue7 := n1.
    recoveredValue8 := (recoveredValue0) calculateMoebiusArray: (recoveredValue1) y: (recoveredValue2) dim: (recoveredValue3) m: (recoveredValue4) offset: (recoveredValue5) n0: (recoveredValue6) n1: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x20178348; bytecode file offset 0xa74c00"
!DBMoebiusFormulaItemArrayC methodsFor: 'recovered'!
calculateInt: recoveredArg1 yArr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := dbItem.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := dim.
    recoveredValue4 := m.
    recoveredValue5 := offset.
    recoveredValue6 := n0.
    recoveredValue7 := n1.
    recoveredValue8 := (recoveredValue0) calculateMoebiusArrayInt: (recoveredValue1) y: (recoveredValue2) dim: (recoveredValue3) m: (recoveredValue4) offset: (recoveredValue5) n0: (recoveredValue6) n1: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2024a348; bytecode file offset 0xb46c08"
!DBMoebiusFormulaItemArrayC methodsFor: 'recovered'!
mergeLinearWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := offset.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) m.
    recoveredValue3 := (recoveredValue0) / (recoveredValue2).
    recoveredValue4 := n0.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) offset.
    recoveredValue7 := (recoveredValue4) * (recoveredValue6).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) m.
    recoveredValue10 := (recoveredValue7) / (recoveredValue9).
    recoveredValue11 := (recoveredValue3) + (recoveredValue10).
    offset := recoveredValue11.
    recoveredValue12 := m.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) m.
    recoveredValue15 := (recoveredValue12) / (recoveredValue14).
    recoveredValue16 := n1.
    recoveredValue17 := recoveredArg1.
    recoveredValue18 := (recoveredValue17) offset.
    recoveredValue19 := (recoveredValue16) * (recoveredValue18).
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := (recoveredValue20) m.
    recoveredValue22 := (recoveredValue19) / (recoveredValue21).
    recoveredValue23 := (recoveredValue15) + (recoveredValue22).
    m := recoveredValue23.
    ^self
! !

"ASDBase.ic method 0x2025adf0; bytecode file offset 0xb576c0"
!DBMoebiusFormulaItemArrayC methodsFor: 'recovered'!
mergeWith: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := DBIdentityFormulaItemArrayC.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := DBLinearFormulaItemArrayC.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) mergeLinearWith: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := DBMultipleFormulaItem.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) addMergeFormula: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

