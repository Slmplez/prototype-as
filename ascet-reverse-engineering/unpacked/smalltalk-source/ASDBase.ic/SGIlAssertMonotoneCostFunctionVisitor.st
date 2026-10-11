"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003708; bytecode file offset 0x90206c"
!SGIlAssertMonotoneCostFunctionVisitor methodsFor: 'recovered'!
matrixXLengthSpecialCall: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200039d8; bytecode file offset 0x90206c"
!SGIlAssertMonotoneCostFunctionVisitor methodsFor: 'recovered'!
ansiCExpr: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20003c30; bytecode file offset 0x90206c"
!SGIlAssertMonotoneCostFunctionVisitor methodsFor: 'recovered'!
matrixYLengthSpecialCall: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004db0; bytecode file offset 0x90206c"
!SGIlAssertMonotoneCostFunctionVisitor methodsFor: 'recovered'!
arrayLengthSpecialCall: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2019667c; bytecode file offset 0xa92f64"
!SGIlAssertMonotoneCostFunctionVisitor methodsFor: 'recovered'!
referencedExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := super referencedExpr: (recoveredBlock5Value0).
    recoveredBlock5Value1
].
    (self) withParentCost: (nil) do: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20196690; bytecode file offset 0xa92f64"
!SGIlAssertMonotoneCostFunctionVisitor methodsFor: 'recovered'!
tempAssignIdentifier: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := super tempAssignIdentifier: (recoveredBlock5Value0).
    recoveredBlock5Value1
].
    (self) withParentCost: (nil) do: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x201966a4; bytecode file offset 0xa92f64"
!SGIlAssertMonotoneCostFunctionVisitor methodsFor: 'recovered'!
tempAssignExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := super tempAssignExpr: (recoveredBlock5Value0).
    recoveredBlock5Value1
].
    (self) withParentCost: (nil) do: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x201db36c; bytecode file offset 0xad7c30"
!SGIlAssertMonotoneCostFunctionVisitor methodsFor: 'recovered'!
abstractNoOverflowExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) limitOverflowExpr.
    (self) visitNode: (recoveredValue1).
    recoveredValue2 := [
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredArg1.
    recoveredBlock12Value1 := (recoveredBlock12Value0) originalExpr.
    recoveredBlock12Value2 := (self) visitNode: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
    (self) withParentCost: (nil) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201e8a70; bytecode file offset 0xae5330"
!SGIlAssertMonotoneCostFunctionVisitor methodsFor: 'recovered'!
safeIndexExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 |
    recoveredBlock14Value0 := recoveredArg1.
    recoveredBlock14Value1 := (recoveredBlock14Value0) indexExpr.
    recoveredBlock14Value2 := (self) visitNode: (recoveredBlock14Value1).
    recoveredBlock14Value2
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) withParentCost: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20222090; bytecode file offset 0xb1e954"
!SGIlAssertMonotoneCostFunctionVisitor methodsFor: 'recovered'!
withParentCost: recoveredArg1 do: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := parentCost.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    parentCost := recoveredValue1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := [
    | recoveredBlock17Value0 recoveredBlock17Value1 |
    recoveredBlock17Value0 := recoveredLocal1.
    recoveredBlock17Value1 := recoveredBlock17Value0.
    parentCost := recoveredBlock17Value1.
    recoveredBlock17Value0
].
    recoveredValue4 := (recoveredValue2) ensure: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20257410; bytecode file offset 0xb53cd4"
!SGIlAssertMonotoneCostFunctionVisitor methodsFor: 'recovered'!
unaryServiceExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) alternativeExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 |
    recoveredBlock14Value0 := recoveredArg1.
    recoveredBlock14Value1 := (recoveredBlock14Value0) alternativeExpr.
    recoveredBlock14Value2 := (self) visitNode: (recoveredBlock14Value1).
    recoveredBlock14Value2
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) withParentCost: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOperand.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20433dc8; bytecode file offset 0xd306a8"
!SGIlAssertMonotoneCostFunctionVisitor methodsFor: 'recovered'!
visitNode: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) isIleExpr.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'expressionContext'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) respondsTo: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) expressionContext.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock26Value0 recoveredBlock26Value1 |
    recoveredBlock26Value0 := recoveredArg1.
    recoveredBlock26Value1 := (recoveredBlock26Value0) ileRuntimeCosts.
    recoveredBlock26Value1
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) executeInContext: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileRuntimeCosts.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := parentCost.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock61Value0 recoveredBlock61Value1 recoveredBlock61Value2 |
    recoveredBlock61Value0 := recoveredLocal1.
    recoveredBlock61Value1 := parentCost.
    recoveredBlock61Value2 := (recoveredBlock61Value0) <= (recoveredBlock61Value1).
    recoveredBlock61Value2
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := [
    ''
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) ileAssert: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock88Value0 recoveredBlock88Value1 |
    recoveredBlock88Value0 := recoveredArg1.
    recoveredBlock88Value1 := super visitNode: (recoveredBlock88Value0).
    recoveredBlock88Value1
].
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) withParentCost: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

