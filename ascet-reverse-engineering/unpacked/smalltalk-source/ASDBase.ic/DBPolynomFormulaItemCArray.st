"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006dcf0; bytecode file offset 0x96a9dc"
!DBPolynomFormulaItemCArray methodsFor: 'recovered'!
dim
    | recoveredValue0 |
    recoveredValue0 := dim.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c4470; bytecode file offset 0x9c11bc"
!DBPolynomFormulaItemCArray methodsFor: 'recovered'!
dim: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dim := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20237aec; bytecode file offset 0xb343ac"
!DBPolynomFormulaItemCArray methodsFor: 'recovered'!
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
    recoveredValue8 := c1.
    recoveredValue9 := c2.
    recoveredValue10 := c3.
    recoveredValue11 := c4.
    recoveredValue12 := c5.
    recoveredValue13 := c6.
    recoveredValue14 := (recoveredValue4) calculatePolynomArray: (recoveredValue5) y: (recoveredValue6) dim: (recoveredValue7) c1: (recoveredValue8) c2: (recoveredValue9) c3: (recoveredValue10) c4: (recoveredValue11) c5: (recoveredValue12) c6: (recoveredValue13).
    ^recoveredValue14
! !

"ASDBase.ic method 0x203a6564; bytecode file offset 0xca2e34"
!DBPolynomFormulaItemCArray methodsFor: 'recovered'!
calculateST: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := dim.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := RBBcrtl32DLL.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := dim.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := c1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack6 := c2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack7 := c3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack8 := c4.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack9 := c5.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack10 := c6.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) apiCalculatePolynomArray: (recoveredStack2) y: (recoveredStack3) dim: (recoveredStack4) c1: (recoveredStack5) c2: (recoveredStack6) c3: (recoveredStack7) c4: (recoveredStack8) c5: (recoveredStack9) c6: (recoveredStack10).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := dim.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := dim.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (-1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack6 := 8.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack5 := (recoveredStack5) * (recoveredStack6).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := (recoveredStack4) real64At: (recoveredStack5).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 48] ifFalse: [recoveredLocal1 := nil. recoveredPC := 74]] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

