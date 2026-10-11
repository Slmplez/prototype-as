"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20068194; bytecode file offset 0x965b90"
!SGIlCommonSubexpressionEliminationReplaceSimpleVisitor methodsFor: 'recovered'!
path
    | recoveredValue0 |
    recoveredValue0 := path.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069ab8; bytecode file offset 0x966bdc"
!SGIlCommonSubexpressionEliminationReplaceSimpleVisitor methodsFor: 'recovered'!
changes
    | recoveredValue0 |
    recoveredValue0 := changes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20100550; bytecode file offset 0x9fce10"
!SGIlCommonSubexpressionEliminationReplaceSimpleVisitor methodsFor: 'recovered'!
optimizeNode: recoveredArg1 by: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    changes := recoveredValue0.
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    path := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) visitNode: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20265f24; bytecode file offset 0xb627fc"
!SGIlCommonSubexpressionEliminationReplaceSimpleVisitor methodsFor: 'recovered'!
tempAssignIdentifier: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) tempAssign.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleTempVarIdentifier.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) tempAssign.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleAnnotatedGoalInterval.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) goalInterval.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) decorateGoalInterval: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := super tempAssignIdentifier: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20455998; bytecode file offset 0xd52288"
!SGIlCommonSubexpressionEliminationReplaceSimpleVisitor methodsFor: 'recovered'!
tempAssignExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 111] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitedTempAssignExprs.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 |
    recoveredBlock20Value0 := recoveredArg1.
    recoveredBlock20Value1 := (recoveredBlock20Value0) expressionContext.
    recoveredBlock20Value2 := (recoveredBlock20Value1) notNil.
    recoveredBlock20Value2
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [
    'The context of the temp. var assignment was lost'
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) path.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            path := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock58Value0 recoveredBlock58Value1 recoveredBlock58Value2 recoveredBlock58Value3 recoveredBlock58Value4 recoveredBlock58Value5 |
    recoveredBlock58Value0 := recoveredArg1.
    recoveredBlock58Value1 := recoveredArg1.
    recoveredBlock58Value2 := (recoveredBlock58Value1) expressionContext.
    recoveredBlock58Value3 := [
    | recoveredBlock58Block71Value0 recoveredBlock58Block71Value1 recoveredBlock58Block71Value2 |
    recoveredBlock58Block71Value0 := recoveredArg1.
    recoveredBlock58Block71Value1 := (recoveredBlock58Block71Value0) expr.
    recoveredBlock58Block71Value2 := (self) visitNode: (recoveredBlock58Block71Value1).
    recoveredBlock58Block71Value2
].
    recoveredBlock58Value4 := (recoveredBlock58Value2) executeInContext: (recoveredBlock58Value3).
    recoveredBlock58Value5 := (recoveredBlock58Value0) expr: (recoveredBlock58Value4).
    recoveredBlock58Value5
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock91Value0 recoveredBlock91Value1 |
    recoveredBlock91Value0 := recoveredLocal1.
    recoveredBlock91Value1 := recoveredBlock91Value0.
    path := recoveredBlock91Value1.
    recoveredBlock91Value0
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) ensure: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2047ecc0; bytecode file offset 0xd7b5b8"
!SGIlCommonSubexpressionEliminationReplaceSimpleVisitor methodsFor: 'recovered'!
visitNode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) path.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := (self) changes.
    recoveredBlock10Value1 := (self) path.
    recoveredBlock10Value2 := [
    | recoveredBlock10Block19Value0 recoveredBlock10Block19Value1 |
    recoveredBlock10Block19Value0 := recoveredArg1.
    recoveredBlock10Block19Value1 := (recoveredBlock10Block19Value0) ileAcceptNodeVisitor: (self).
    recoveredBlock10Block19Value1
].
    recoveredBlock10Value3 := [:recoveredBlock10Block32Arg1 | 
    | recoveredBlock10Block32Local1 recoveredBlock10Block32Stack0 recoveredBlock10Block32Stack1 recoveredBlock10Block32Stack2 recoveredBlock10Block32Stack3 recoveredBlock10Block32Stack4 recoveredBlock10Block32PC recoveredBlock10Block32Step recoveredBlock10Block32Done recoveredBlock10Block32Result |
    recoveredBlock10Block32Stack0 := self.
    recoveredBlock10Block32PC := 38.
    recoveredBlock10Block32Done := false.
    [recoveredBlock10Block32Done not] whileTrue: [
        recoveredBlock10Block32Step := recoveredBlock10Block32PC.
        recoveredBlock10Block32Step = 38 ifTrue: [
            recoveredBlock10Block32Stack1 := recoveredBlock10Block32Arg1.
            recoveredBlock10Block32PC := 39.
        ].
        recoveredBlock10Block32Step = 39 ifTrue: [
            recoveredBlock10Block32Stack2 := [:recoveredBlock10Block32Block39Arg1 | 
    | recoveredBlock10Block32Block39Value0 recoveredBlock10Block32Block39Value1 |
    recoveredBlock10Block32Block39Value0 := recoveredBlock10Block32Block39Arg1.
    recoveredBlock10Block32Block39Value1 := (recoveredBlock10Block32Block39Value0) ileAcceptNodeVisitor: (self).
    recoveredBlock10Block32Block39Value1
].
            recoveredBlock10Block32PC := 50.
        ].
        recoveredBlock10Block32Step = 50 ifTrue: [
            recoveredBlock10Block32Stack1 := (recoveredBlock10Block32Stack1) collect: (recoveredBlock10Block32Stack2).
            recoveredBlock10Block32PC := 52.
        ].
        recoveredBlock10Block32Step = 52 ifTrue: [
            recoveredBlock10Block32Local1 := recoveredBlock10Block32Stack1.
            recoveredBlock10Block32PC := 53.
        ].
        recoveredBlock10Block32Step = 53 ifTrue: [
            recoveredBlock10Block32Stack1 := recoveredBlock10Block32Local1.
            recoveredBlock10Block32PC := 54.
        ].
        recoveredBlock10Block32Step = 54 ifTrue: [
            recoveredBlock10Block32Stack1 := (recoveredBlock10Block32Stack1) size.
            recoveredBlock10Block32PC := 56.
        ].
        recoveredBlock10Block32Step = 56 ifTrue: [
            recoveredBlock10Block32Stack2 := 1.
            recoveredBlock10Block32PC := 58.
        ].
        recoveredBlock10Block32Step = 58 ifTrue: [
            recoveredBlock10Block32Stack1 := (recoveredBlock10Block32Stack1) = (recoveredBlock10Block32Stack2).
            recoveredBlock10Block32PC := 59.
        ].
        recoveredBlock10Block32Step = 59 ifTrue: [
            (recoveredBlock10Block32Stack1) ifTrue: [recoveredBlock10Block32PC := 62] ifFalse: [recoveredBlock10Block32PC := 68].
        ].
        recoveredBlock10Block32Step = 62 ifTrue: [
            recoveredBlock10Block32Stack1 := recoveredBlock10Block32Local1.
            recoveredBlock10Block32PC := 63.
        ].
        recoveredBlock10Block32Step = 63 ifTrue: [
            recoveredBlock10Block32Stack1 := (recoveredBlock10Block32Stack1) first.
            recoveredBlock10Block32PC := 65.
        ].
        recoveredBlock10Block32Step = 65 ifTrue: [
            recoveredBlock10Block32PC := 108.
        ].
        recoveredBlock10Block32Step = 68 ifTrue: [
            recoveredBlock10Block32Stack1 := recoveredArg1.
            recoveredBlock10Block32PC := 71.
        ].
        recoveredBlock10Block32Step = 71 ifTrue: [
            recoveredBlock10Block32Stack1 := (recoveredBlock10Block32Stack1) isIleExpr.
            recoveredBlock10Block32PC := 73.
        ].
        recoveredBlock10Block32Step = 73 ifTrue: [
            (recoveredBlock10Block32Stack1) ifTrue: [recoveredBlock10Block32PC := 76] ifFalse: [recoveredBlock10Block32PC := 88].
        ].
        recoveredBlock10Block32Step = 76 ifTrue: [
            recoveredBlock10Block32Stack1 := self.
            recoveredBlock10Block32PC := 77.
        ].
        recoveredBlock10Block32Step = 77 ifTrue: [
            recoveredBlock10Block32Stack1 := (recoveredBlock10Block32Stack1) ileBuilder.
            recoveredBlock10Block32PC := 79.
        ].
        recoveredBlock10Block32Step = 79 ifTrue: [
            recoveredBlock10Block32Stack2 := recoveredBlock10Block32Local1.
            recoveredBlock10Block32PC := 80.
        ].
        recoveredBlock10Block32Step = 80 ifTrue: [
            recoveredBlock10Block32Stack2 := (recoveredBlock10Block32Stack2) reverse.
            recoveredBlock10Block32PC := 82.
        ].
        recoveredBlock10Block32Step = 82 ifTrue: [
            recoveredBlock10Block32Stack1 := (recoveredBlock10Block32Stack1) commaExpr: (recoveredBlock10Block32Stack2).
            recoveredBlock10Block32PC := 84.
        ].
        recoveredBlock10Block32Step = 84 ifTrue: [
            recoveredBlock10Block32PC := 108.
        ].
        recoveredBlock10Block32Step = 88 ifTrue: [
            recoveredBlock10Block32Stack1 := self.
            recoveredBlock10Block32PC := 89.
        ].
        recoveredBlock10Block32Step = 89 ifTrue: [
            recoveredBlock10Block32Stack1 := (recoveredBlock10Block32Stack1) ileBuilder.
            recoveredBlock10Block32PC := 91.
        ].
        recoveredBlock10Block32Step = 91 ifTrue: [
            recoveredBlock10Block32Stack2 := recoveredBlock10Block32Local1.
            recoveredBlock10Block32PC := 92.
        ].
        recoveredBlock10Block32Step = 92 ifTrue: [
            recoveredBlock10Block32Stack3 := [:block2810237cArg1 | 
    | block2810237cValue0 block2810237cValue1 |
    block2810237cValue0 := block2810237cArg1.
    block2810237cValue1 := (block2810237cValue0) asIleExprStmnt.
    block2810237cValue1
].
            recoveredBlock10Block32PC := 94.
        ].
        recoveredBlock10Block32Step = 94 ifTrue: [
            recoveredBlock10Block32PC := 102.
        ].
        recoveredBlock10Block32Step = 102 ifTrue: [
            recoveredBlock10Block32Stack2 := (recoveredBlock10Block32Stack2) collect: (recoveredBlock10Block32Stack3).
            recoveredBlock10Block32PC := 104.
        ].
        recoveredBlock10Block32Step = 104 ifTrue: [
            recoveredBlock10Block32Stack2 := (recoveredBlock10Block32Stack2) reverse.
            recoveredBlock10Block32PC := 106.
        ].
        recoveredBlock10Block32Step = 106 ifTrue: [
            recoveredBlock10Block32Stack1 := (recoveredBlock10Block32Stack1) stmntList: (recoveredBlock10Block32Stack2).
            recoveredBlock10Block32PC := 108.
        ].
        recoveredBlock10Block32Step = 108 ifTrue: [
            recoveredBlock10Block32Result := recoveredBlock10Block32Stack1.
            recoveredBlock10Block32Done := true.
        ].
    ].
    recoveredBlock10Block32Result
].
    recoveredBlock10Value4 := (recoveredBlock10Value0) at: (recoveredBlock10Value1) ifAbsent: (recoveredBlock10Value2) ifPresent: (recoveredBlock10Value3).
    recoveredBlock10Value4
].
    recoveredValue3 := [
    | recoveredBlock113Value0 recoveredBlock113Value1 |
    recoveredBlock113Value0 := (self) path.
    recoveredBlock113Value1 := (recoveredBlock113Value0) removeLast.
    recoveredBlock113Value1
].
    recoveredValue4 := (recoveredValue2) ensure: (recoveredValue3).
    ^recoveredValue4
! !

