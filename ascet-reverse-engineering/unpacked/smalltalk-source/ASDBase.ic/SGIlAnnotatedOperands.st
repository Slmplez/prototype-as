"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000c0f8; bytecode file offset 0x908be4"
!SGIlAnnotatedOperands methodsFor: 'recovered'!
ileAnnotatedOperands
    | recoveredValue0 |
    recoveredValue0 := (self) operands.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066604; bytecode file offset 0x963428"
!SGIlAnnotatedOperands methodsFor: 'recovered'!
operands
    | recoveredValue0 |
    recoveredValue0 := operands.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200678b4; bytecode file offset 0x9646f8"
!SGIlAnnotatedOperands methodsFor: 'recovered'!
ileExpr
    | recoveredValue0 |
    recoveredValue0 := ileExpr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008950c; bytecode file offset 0x985ef8"
!SGIlAnnotatedOperands methodsFor: 'recovered'!
resetOperands
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    operands := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20094bd4; bytecode file offset 0x99148c"
!SGIlAnnotatedOperands methodsFor: 'recovered'!
add: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) add: (recoveredValue0) inverse: (false).
    ^self
! !

"ASDBase.ic method 0x200aa430; bytecode file offset 0x9a6d0c"
!SGIlAnnotatedOperands methodsFor: 'recovered'!
collectMulOperands: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) ileExpr: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) collectFactors: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200aa440; bytecode file offset 0x9a6d0c"
!SGIlAnnotatedOperands methodsFor: 'recovered'!
collectSubOperands: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) ileExpr: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) collectAddends: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200aa450; bytecode file offset 0x9a6d0c"
!SGIlAnnotatedOperands methodsFor: 'recovered'!
collectAddOperands: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) ileExpr: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) collectAddends: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bedd0; bytecode file offset 0x9bc0b4"
!SGIlAnnotatedOperands methodsFor: 'recovered'!
ileExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ileExpr := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d6838; bytecode file offset 0x9d3134"
!SGIlAnnotatedOperands methodsFor: 'recovered'!
initialize
    super initialize.
    (self) resetOperands.
    ^self
! !

"ASDBase.ic method 0x200d82c8; bytecode file offset 0x9d4b94"
!SGIlAnnotatedOperands methodsFor: 'recovered'!
collectAddends: recoveredArg1
    | recoveredValue0 |
    (self) resetOperands.
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) collectAddends: (self) inverse: (false).
    ^self
! !

"ASDBase.ic method 0x200d82d8; bytecode file offset 0x9d4b94"
!SGIlAnnotatedOperands methodsFor: 'recovered'!
collectFactors: recoveredArg1
    | recoveredValue0 |
    (self) resetOperands.
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) collectFactors: (self) inverse: (false).
    ^self
! !

"ASDBase.ic method 0x20110e08; bytecode file offset 0xa0d6d0"
!SGIlAnnotatedOperands methodsFor: 'recovered'!
add: recoveredArg1 inverse: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) operands.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) asIleCopy.
    recoveredValue5 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue4).
    (recoveredValue0) add: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20372128; bytecode file offset 0xc6e9f4"
!SGIlAnnotatedOperands methodsFor: 'recovered'!
intervalSum
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := RBInterval.
    recoveredValue1 := (recoveredValue0) left: (0) right: (0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) operands.
    recoveredValue3 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16Stack4 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack2 := 1.
            recoveredBlock16PC := 25.
        ].
        recoveredBlock16Step = 25 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) at: (recoveredBlock16Stack2).
            recoveredBlock16PC := 26.
        ].
        recoveredBlock16Step = 26 ifTrue: [
            (recoveredBlock16Stack1) ifTrue: [recoveredBlock16PC := 30] ifFalse: [recoveredBlock16PC := 48].
        ].
        recoveredBlock16Step = 30 ifTrue: [
            recoveredBlock16Stack1 := recoveredLocal1.
            recoveredBlock16PC := 33.
        ].
        recoveredBlock16Step = 33 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 34.
        ].
        recoveredBlock16Step = 34 ifTrue: [
            recoveredBlock16Stack3 := 2.
            recoveredBlock16PC := 36.
        ].
        recoveredBlock16Step = 36 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) at: (recoveredBlock16Stack3).
            recoveredBlock16PC := 37.
        ].
        recoveredBlock16Step = 37 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) interval.
            recoveredBlock16PC := 39.
        ].
        recoveredBlock16Step = 39 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) - (recoveredBlock16Stack2).
            recoveredBlock16PC := 40.
        ].
        recoveredBlock16Step = 40 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Stack1.
            recoveredBlock16PC := 41.
        ].
        recoveredBlock16Step = 41 ifTrue: [
            recoveredLocal1 := recoveredBlock16Stack2.
            recoveredBlock16PC := 44.
        ].
        recoveredBlock16Step = 44 ifTrue: [
            recoveredBlock16PC := 62.
        ].
        recoveredBlock16Step = 48 ifTrue: [
            recoveredBlock16Stack1 := recoveredLocal1.
            recoveredBlock16PC := 51.
        ].
        recoveredBlock16Step = 51 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 52.
        ].
        recoveredBlock16Step = 52 ifTrue: [
            recoveredBlock16Stack3 := 2.
            recoveredBlock16PC := 54.
        ].
        recoveredBlock16Step = 54 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) at: (recoveredBlock16Stack3).
            recoveredBlock16PC := 55.
        ].
        recoveredBlock16Step = 55 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) interval.
            recoveredBlock16PC := 57.
        ].
        recoveredBlock16Step = 57 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) + (recoveredBlock16Stack2).
            recoveredBlock16PC := 58.
        ].
        recoveredBlock16Step = 58 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Stack1.
            recoveredBlock16PC := 59.
        ].
        recoveredBlock16Step = 59 ifTrue: [
            recoveredLocal1 := recoveredBlock16Stack2.
            recoveredBlock16PC := 62.
        ].
        recoveredBlock16Step = 62 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x204e4534; bytecode file offset 0xde0e18"
!SGIlAnnotatedOperands methodsFor: 'recovered'!
addSubResult: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) literalZero.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) operands.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 129.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) operands.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 125].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) arithOpBasicTransformationStrategy.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock59Value0 recoveredBlock59Value1 recoveredBlock59Value2 recoveredBlock59Value3 recoveredBlock59Value4 recoveredBlock59Value5 |
    recoveredBlock59Value0 := recoveredLocal3.
    recoveredBlock59Value1 := recoveredLocal1.
    recoveredBlock59Value2 := (recoveredBlock59Value1) at: (2).
    recoveredBlock59Value3 := (self) ileExpr.
    recoveredBlock59Value4 := (recoveredBlock59Value3) ileBasicType.
    recoveredBlock59Value5 := (recoveredBlock59Value0) sub: (recoveredBlock59Value2) type: (recoveredBlock59Value4).
    recoveredBlock59Value5
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) disableTransformationDo: (recoveredStack3).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredPC := 125.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) arithOpBasicTransformationStrategy.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock95Value0 recoveredBlock95Value1 recoveredBlock95Value2 recoveredBlock95Value3 recoveredBlock95Value4 recoveredBlock95Value5 |
    recoveredBlock95Value0 := recoveredLocal3.
    recoveredBlock95Value1 := recoveredLocal1.
    recoveredBlock95Value2 := (recoveredBlock95Value1) at: (2).
    recoveredBlock95Value3 := (self) ileExpr.
    recoveredBlock95Value4 := (recoveredBlock95Value3) ileBasicType.
    recoveredBlock95Value5 := (recoveredBlock95Value0) add: (recoveredBlock95Value2) type: (recoveredBlock95Value4).
    recoveredBlock95Value5
].
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := (recoveredStack2) disableTransformationDo: (recoveredStack3).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 18] ifFalse: [recoveredPC := 158]] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

