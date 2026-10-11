"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005410; bytecode file offset 0x90206c"
!SGIlAbstractControlFlowWithContextVisitor methodsFor: 'recovered'!
pmiCodeBlock: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2019651c; bytecode file offset 0xa92eb8"
!SGIlAbstractControlFlowWithContextVisitor methodsFor: 'recovered'!
binaryRelExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expressionContext.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := super binaryRelExpr: (recoveredBlock8Value0).
    recoveredBlock8Value1
].
    recoveredValue3 := (recoveredValue1) executeInContext: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2019654c; bytecode file offset 0xa92eb8"
!SGIlAbstractControlFlowWithContextVisitor methodsFor: 'recovered'!
parmAssign: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expressionContext.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := super parmAssign: (recoveredBlock8Value0).
    recoveredBlock8Value1
].
    recoveredValue3 := (recoveredValue1) executeInContext: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201965ac; bytecode file offset 0xa92eb8"
!SGIlAbstractControlFlowWithContextVisitor methodsFor: 'recovered'!
phonyAssignExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expressionContext.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := super phonyAssignExpr: (recoveredBlock8Value0).
    recoveredBlock8Value1
].
    recoveredValue3 := (recoveredValue1) executeInContext: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201965dc; bytecode file offset 0xa92eb8"
!SGIlAbstractControlFlowWithContextVisitor methodsFor: 'recovered'!
prePostIncDec: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expressionContext.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := super prePostIncDec: (recoveredBlock8Value0).
    recoveredBlock8Value1
].
    recoveredValue3 := (recoveredValue1) executeInContext: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201a79e0; bytecode file offset 0xaa42bc"
!SGIlAbstractControlFlowWithContextVisitor methodsFor: 'recovered'!
switchStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expressionContext.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := super switchStmnt: (recoveredBlock8Value0).
    recoveredBlock8Value1
].
    (recoveredValue1) executeInContext: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201cf608; bytecode file offset 0xacbecc"
!SGIlAbstractControlFlowWithContextVisitor methodsFor: 'recovered'!
multiplexExpr: recoveredArg1 condExpr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expressionContext.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := recoveredArg2.
    recoveredBlock8Value2 := super multiplexExpr: (recoveredBlock8Value0) condExpr: (recoveredBlock8Value1).
    recoveredBlock8Value2
].
    recoveredValue3 := (recoveredValue1) executeInContext: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201db3a0; bytecode file offset 0xad7c68"
!SGIlAbstractControlFlowWithContextVisitor methodsFor: 'recovered'!
assignAtExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expressionContext.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := (self) compoundExpr: (recoveredBlock8Value0).
    recoveredBlock8Value1
].
    (recoveredValue1) executeInContext: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) baseExpr.
    recoveredValue5 := (self) visitNode: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x202b523c; bytecode file offset 0xbb1b14"
!SGIlAbstractControlFlowWithContextVisitor methodsFor: 'recovered'!
tempAssignIdentifier: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) expressionContext.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := super tempAssignIdentifier: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := SGCgExpressionContext.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) forContextType: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock30Value0 recoveredBlock30Value1 |
    recoveredBlock30Value0 := recoveredArg1.
    recoveredBlock30Value1 := super tempAssignIdentifier: (recoveredBlock30Value0).
    recoveredBlock30Value1
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) executeInContext: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d57bc; bytecode file offset 0xbd208c"
!SGIlAbstractControlFlowWithContextVisitor methodsFor: 'recovered'!
assignExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expressionContext.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 recoveredBlock8Value6 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) expr.
    recoveredBlock8Value2 := (self) visitNode: (recoveredBlock8Value1).
    recoveredLocal1 := recoveredBlock8Value2.
    (self) mergeBooleanState.
    recoveredBlock8Value3 := recoveredArg1.
    recoveredBlock8Value4 := (recoveredBlock8Value3) lValue.
    recoveredBlock8Value5 := (self) visitNode: (recoveredBlock8Value4).
    recoveredLocal2 := recoveredBlock8Value5.
    recoveredBlock8Value6 := (self) mergeBooleanState.
    recoveredBlock8Value6
].
    (recoveredValue1) executeInContext: (recoveredValue2).
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) returnAssignLeft: (recoveredValue3) right: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20385754; bytecode file offset 0xc82034"
!SGIlAbstractControlFlowWithContextVisitor methodsFor: 'recovered'!
tempAssignExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitedTempAssignExprs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := recoveredArg1.
    recoveredBlock13Value1 := (recoveredBlock13Value0) expressionContext.
    recoveredBlock13Value2 := (recoveredBlock13Value1) notNil.
    recoveredBlock13Value2
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [
    'The context of the temp. var assignment was lost'
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitedTempAssignExprs.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) expressionContext.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 |
    recoveredBlock46Value0 := recoveredArg1.
    recoveredBlock46Value1 := (recoveredBlock46Value0) expr.
    recoveredBlock46Value2 := (self) visitNode: (recoveredBlock46Value1).
    recoveredBlock46Value2
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) executeInContext: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitedTempAssignExprs.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

