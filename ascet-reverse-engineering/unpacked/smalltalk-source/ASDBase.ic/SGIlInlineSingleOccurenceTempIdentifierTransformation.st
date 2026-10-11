"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201ac158; bytecode file offset 0xaa8a20"
!SGIlInlineSingleOccurenceTempIdentifierTransformation methodsFor: 'recovered'!
exprStmnt: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := super exprStmnt: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizationFactory.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizeControlFlowVisitor.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) anyStmnt: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20449e70; bytecode file offset 0xd46760"
!SGIlInlineSingleOccurenceTempIdentifierTransformation methodsFor: 'recovered'!
tempAssignIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := tempIdentifiers.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Local1 recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) tempAssign.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack3 := recoveredArg1.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) tempAssign.
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) = (recoveredBlock6Stack3).
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 26] ifFalse: [recoveredBlock6PC := 101].
        ].
        recoveredBlock6Step = 26 ifTrue: [
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack1 := recoveredArg1.
            recoveredBlock6PC := 30.
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) tempAssign.
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) expr.
            recoveredBlock6PC := 32.
        ].
        recoveredBlock6Step = 32 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack1.
            recoveredBlock6PC := 35.
        ].
        recoveredBlock6Step = 35 ifTrue: [
            recoveredBlock6Stack1 := recoveredArg1.
            recoveredBlock6PC := 38.
        ].
        recoveredBlock6Step = 38 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) hasIleAnnotatedGoalInterval.
            recoveredBlock6PC := 39.
        ].
        recoveredBlock6Step = 39 ifTrue: [
            (recoveredBlock6Stack1) ifTrue: [recoveredBlock6PC := 42] ifFalse: [recoveredBlock6PC := 54].
        ].
        recoveredBlock6Step = 42 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Local1.
            recoveredBlock6PC := 45.
        ].
        recoveredBlock6Step = 45 ifTrue: [
            recoveredBlock6Stack2 := recoveredArg1.
            recoveredBlock6PC := 48.
        ].
        recoveredBlock6Step = 48 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) goalInterval.
            recoveredBlock6PC := 49.
        ].
        recoveredBlock6Step = 49 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) decorateGoalInterval: (recoveredBlock6Stack2).
            recoveredBlock6PC := 51.
        ].
        recoveredBlock6Step = 51 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack1.
            recoveredBlock6PC := 54.
        ].
        recoveredBlock6Step = 54 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 55.
        ].
        recoveredBlock6Step = 55 ifTrue: [
            recoveredBlock6Stack2 := [
    | recoveredBlock6Block55Value0 recoveredBlock6Block55Value1 recoveredBlock6Block55Value2 |
    recoveredBlock6Block55Value0 := recoveredBlock6Local1.
    recoveredBlock6Block55Value1 := (recoveredBlock6Block55Value0) isIleDummyExpr.
    recoveredBlock6Block55Value2 := (recoveredBlock6Block55Value1) not.
    recoveredBlock6Block55Value2
].
            recoveredBlock6PC := 69.
        ].
        recoveredBlock6Step = 69 ifTrue: [
            recoveredBlock6Stack3 := [
    'temp variable is only read once, but never written!!'
].
            recoveredBlock6PC := 71.
        ].
        recoveredBlock6Step = 71 ifTrue: [
            recoveredBlock6PC := 77.
        ].
        recoveredBlock6Step = 77 ifTrue: [
            (recoveredBlock6Stack1) ileAssert: (recoveredBlock6Stack2) message: (recoveredBlock6Stack3).
            recoveredBlock6PC := 79.
        ].
        recoveredBlock6Step = 79 ifTrue: [
            recoveredBlock6Stack1 := recoveredArg1.
            recoveredBlock6PC := 82.
        ].
        recoveredBlock6Step = 82 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) tempAssign.
            recoveredBlock6PC := 83.
        ].
        recoveredBlock6Step = 83 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) expressionContext.
            recoveredBlock6PC := 85.
        ].
        recoveredBlock6Step = 85 ifTrue: [
            recoveredBlock6Stack2 := [
    | recoveredBlock6Block85Value0 recoveredBlock6Block85Value1 |
    recoveredBlock6Block85Value0 := recoveredBlock6Local1.
    recoveredBlock6Block85Value1 := (self) visitNode: (recoveredBlock6Block85Value0).
    recoveredBlock6Block85Value1
].
            recoveredBlock6PC := 98.
        ].
        recoveredBlock6Step = 98 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) executeInContext: (recoveredBlock6Stack2).
            recoveredBlock6PC := 100.
        ].
        recoveredBlock6Step = 100 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 101 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := super tempAssignIdentifier: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20470fb0; bytecode file offset 0xd6d8a4"
!SGIlInlineSingleOccurenceTempIdentifierTransformation methodsFor: 'recovered'!
anyExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            visitedTempAssignExprs := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) optimizationFactory.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 |
    recoveredBlock19Value0 := recoveredLocal2.
    recoveredBlock19Value1 := (self) visitNode: (recoveredBlock19Value0).
    recoveredBlock19Value1
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) disableAllOptimizationsDo: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := SGIlCountTempIdentifierVisitor.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) countTempIdentifierIn: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            tempIdentifiers := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := [:recoveredBlock56Arg1 | 
    | recoveredBlock56Local1 recoveredBlock56Local2 recoveredBlock56Stack0 recoveredBlock56Stack1 recoveredBlock56Stack2 recoveredBlock56Stack3 recoveredBlock56Stack4 recoveredBlock56PC recoveredBlock56Step recoveredBlock56Done recoveredBlock56Result |
    recoveredBlock56Stack0 := self.
    recoveredBlock56PC := 62.
    recoveredBlock56Done := false.
    [recoveredBlock56Done not] whileTrue: [
        recoveredBlock56Step := recoveredBlock56PC.
        recoveredBlock56Step = 62 ifTrue: [
            recoveredBlock56Stack1 := recoveredBlock56Arg1.
            recoveredBlock56PC := 63.
        ].
        recoveredBlock56Step = 63 ifTrue: [
            recoveredBlock56Stack2 := 2.
            recoveredBlock56PC := 65.
        ].
        recoveredBlock56Step = 65 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) at: (recoveredBlock56Stack2).
            recoveredBlock56PC := 67.
        ].
        recoveredBlock56Step = 67 ifTrue: [
            recoveredBlock56Local2 := recoveredBlock56Stack1.
            recoveredBlock56PC := 68.
        ].
        recoveredBlock56Step = 68 ifTrue: [
            recoveredBlock56Stack1 := recoveredBlock56Local2.
            recoveredBlock56PC := 69.
        ].
        recoveredBlock56Step = 69 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) tempAssign.
            recoveredBlock56PC := 71.
        ].
        recoveredBlock56Step = 71 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) expr.
            recoveredBlock56PC := 73.
        ].
        recoveredBlock56Step = 73 ifTrue: [
            recoveredBlock56Local1 := recoveredBlock56Stack1.
            recoveredBlock56PC := 74.
        ].
        recoveredBlock56Step = 74 ifTrue: [
            recoveredBlock56Stack1 := nil.
            recoveredBlock56PC := 75.
        ].
        recoveredBlock56Step = 75 ifTrue: [
            recoveredBlock56Stack2 := recoveredBlock56Arg1.
            recoveredBlock56PC := 76.
        ].
        recoveredBlock56Step = 76 ifTrue: [
            recoveredBlock56Stack3 := 1.
            recoveredBlock56PC := 78.
        ].
        recoveredBlock56Step = 78 ifTrue: [
            recoveredBlock56Stack2 := (recoveredBlock56Stack2) at: (recoveredBlock56Stack3).
            recoveredBlock56PC := 80.
        ].
        recoveredBlock56Step = 80 ifTrue: [
            recoveredBlock56Stack3 := 1.
            recoveredBlock56PC := 82.
        ].
        recoveredBlock56Step = 82 ifTrue: [
            recoveredBlock56Stack2 := (recoveredBlock56Stack2) = (recoveredBlock56Stack3).
            recoveredBlock56PC := 83.
        ].
        recoveredBlock56Step = 83 ifTrue: [
            (recoveredBlock56Stack2) ifTrue: [recoveredBlock56PC := 86] ifFalse: [recoveredBlock56PC := 106].
        ].
        recoveredBlock56Step = 86 ifTrue: [
            recoveredBlock56Stack2 := recoveredBlock56Local2.
            recoveredBlock56PC := 87.
        ].
        recoveredBlock56Step = 87 ifTrue: [
            recoveredBlock56Stack2 := (recoveredBlock56Stack2) tempAssign.
            recoveredBlock56PC := 89.
        ].
        recoveredBlock56Step = 89 ifTrue: [
            recoveredBlock56Stack2 := (recoveredBlock56Stack2) isIleTempAssignedCondititionalExpr.
            recoveredBlock56PC := 91.
        ].
        recoveredBlock56Step = 91 ifTrue: [
            (recoveredBlock56Stack2) ifTrue: [recoveredBlock56PC := 106] ifFalse: [recoveredBlock56PC := 94].
        ].
        recoveredBlock56Step = 94 ifTrue: [
            recoveredBlock56Stack2 := recoveredBlock56Local1.
            recoveredBlock56PC := 95.
        ].
        recoveredBlock56Step = 95 ifTrue: [
            recoveredBlock56Stack2 := (recoveredBlock56Stack2) isIleRTEMacroWithStatusReturn.
            recoveredBlock56PC := 97.
        ].
        recoveredBlock56Step = 97 ifTrue: [
            (recoveredBlock56Stack2) ifTrue: [recoveredBlock56PC := 106] ifFalse: [recoveredBlock56PC := 100].
        ].
        recoveredBlock56Step = 100 ifTrue: [
            recoveredBlock56PC := 101.
        ].
        recoveredBlock56Step = 101 ifTrue: [
            recoveredBlock56Stack1 := tempIdentifiers.
            recoveredBlock56PC := 103.
        ].
        recoveredBlock56Step = 103 ifTrue: [
            recoveredBlock56Stack2 := recoveredBlock56Local2.
            recoveredBlock56PC := 104.
        ].
        recoveredBlock56Step = 104 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) add: (recoveredBlock56Stack2).
            recoveredBlock56PC := 106.
        ].
        recoveredBlock56Step = 106 ifTrue: [
            recoveredBlock56Result := recoveredBlock56Stack1.
            recoveredBlock56Done := true.
        ].
    ].
    recoveredBlock56Result
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := tempIdentifiers.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 115].
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204e871c; bytecode file offset 0xde5010"
!SGIlInlineSingleOccurenceTempIdentifierTransformation methodsFor: 'recovered'!
assignExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 'Condition of assign without context'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) assertCondContext: (recoveredStack2) message: (recoveredStack3).
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
    'The context of the assignment was lost'
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
            recoveredStack0 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) expressionContext.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock41Stack0 recoveredBlock41Stack1 recoveredBlock41Stack2 recoveredBlock41Stack3 recoveredBlock41Stack4 recoveredBlock41PC recoveredBlock41Step recoveredBlock41Done recoveredBlock41Result |
    recoveredBlock41Stack0 := self.
    recoveredBlock41PC := 48.
    recoveredBlock41Done := false.
    [recoveredBlock41Done not] whileTrue: [
        recoveredBlock41Step := recoveredBlock41PC.
        recoveredBlock41Step = 48 ifTrue: [
            recoveredBlock41Stack1 := recoveredArg1.
            recoveredBlock41PC := 51.
        ].
        recoveredBlock41Step = 51 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) lValue.
            recoveredBlock41PC := 53.
        ].
        recoveredBlock41Step = 53 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) expr.
            recoveredBlock41PC := 54.
        ].
        recoveredBlock41Step = 54 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) isIleTempVarIdentifier.
            recoveredBlock41PC := 56.
        ].
        recoveredBlock41Step = 56 ifTrue: [
            (recoveredBlock41Stack1) ifTrue: [recoveredBlock41PC := 60] ifFalse: [recoveredBlock41PC := 94].
        ].
        recoveredBlock41Step = 60 ifTrue: [
            recoveredBlock41Stack1 := tempIdentifiers.
            recoveredBlock41PC := 62.
        ].
        recoveredBlock41Step = 62 ifTrue: [
            recoveredBlock41Stack2 := recoveredArg1.
            recoveredBlock41PC := 65.
        ].
        recoveredBlock41Step = 65 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) lValue.
            recoveredBlock41PC := 67.
        ].
        recoveredBlock41Step = 67 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) expr.
            recoveredBlock41PC := 68.
        ].
        recoveredBlock41Step = 68 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) includes: (recoveredBlock41Stack2).
            recoveredBlock41PC := 70.
        ].
        recoveredBlock41Step = 70 ifTrue: [
            (recoveredBlock41Stack1) ifTrue: [recoveredBlock41PC := 74] ifFalse: [recoveredBlock41PC := 94].
        ].
        recoveredBlock41Step = 74 ifTrue: [
            recoveredBlock41Stack1 := self.
            recoveredBlock41PC := 75.
        ].
        recoveredBlock41Step = 75 ifTrue: [
            recoveredBlock41Stack2 := recoveredArg1.
            recoveredBlock41PC := 78.
        ].
        recoveredBlock41Step = 78 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) expr.
            recoveredBlock41PC := 79.
        ].
        recoveredBlock41Step = 79 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) visitNode: (recoveredBlock41Stack2).
            recoveredBlock41PC := 81.
        ].
        recoveredBlock41Step = 81 ifTrue: [
            recoveredBlock41Stack2 := recoveredArg1.
            recoveredBlock41PC := 84.
        ].
        recoveredBlock41Step = 84 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) type.
            recoveredBlock41PC := 86.
        ].
        recoveredBlock41Step = 86 ifTrue: [
            recoveredBlock41Stack3 := recoveredArg1.
            recoveredBlock41PC := 89.
        ].
        recoveredBlock41Step = 89 ifTrue: [
            recoveredBlock41Stack3 := (recoveredBlock41Stack3) attributes.
            recoveredBlock41PC := 91.
        ].
        recoveredBlock41Step = 91 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) implCastAssign: (recoveredBlock41Stack2) attributes: (recoveredBlock41Stack3).
            recoveredBlock41PC := 93.
        ].
        recoveredBlock41Step = 93 ifTrue: [
            ^recoveredBlock41Stack1
        ].
        recoveredBlock41Step = 94 ifTrue: [
            recoveredBlock41Stack1 := recoveredArg1.
            recoveredBlock41PC := 97.
        ].
        recoveredBlock41Step = 97 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) lValue.
            recoveredBlock41PC := 99.
        ].
        recoveredBlock41Step = 99 ifTrue: [
            recoveredBlock41Stack0 := (recoveredBlock41Stack0) visitNode: (recoveredBlock41Stack1).
            recoveredBlock41PC := 101.
        ].
        recoveredBlock41Step = 101 ifTrue: [
            recoveredLocal2 := recoveredBlock41Stack0.
            recoveredBlock41PC := 104.
        ].
        recoveredBlock41Step = 104 ifTrue: [
            recoveredBlock41Stack0 := self.
            recoveredBlock41PC := 105.
        ].
        recoveredBlock41Step = 105 ifTrue: [
            recoveredBlock41Stack1 := recoveredArg1.
            recoveredBlock41PC := 108.
        ].
        recoveredBlock41Step = 108 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) expr.
            recoveredBlock41PC := 109.
        ].
        recoveredBlock41Step = 109 ifTrue: [
            recoveredBlock41Stack0 := (recoveredBlock41Stack0) visitNode: (recoveredBlock41Stack1).
            recoveredBlock41PC := 111.
        ].
        recoveredBlock41Step = 111 ifTrue: [
            recoveredLocal1 := recoveredBlock41Stack0.
            recoveredBlock41PC := 114.
        ].
        recoveredBlock41Step = 114 ifTrue: [
            recoveredBlock41Stack0 := nil.
            recoveredBlock41PC := 115.
        ].
        recoveredBlock41Step = 115 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal1.
            recoveredBlock41PC := 118.
        ].
        recoveredBlock41Step = 118 ifTrue: [
            recoveredBlock41Stack2 := recoveredArg1.
            recoveredBlock41PC := 121.
        ].
        recoveredBlock41Step = 121 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) expr.
            recoveredBlock41PC := 122.
        ].
        recoveredBlock41Step = 122 ifTrue: [
            (recoveredBlock41Stack1 ~~ recoveredBlock41Stack2) ifTrue: [recoveredBlock41PC := 138] ifFalse: [recoveredBlock41PC := 126].
        ].
        recoveredBlock41Step = 126 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal2.
            recoveredBlock41PC := 129.
        ].
        recoveredBlock41Step = 129 ifTrue: [
            recoveredBlock41Stack2 := recoveredArg1.
            recoveredBlock41PC := 132.
        ].
        recoveredBlock41Step = 132 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) lValue.
            recoveredBlock41PC := 134.
        ].
        recoveredBlock41Step = 134 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) ~= (recoveredBlock41Stack2).
            recoveredBlock41PC := 135.
        ].
        recoveredBlock41Step = 135 ifTrue: [
            (recoveredBlock41Stack1) ifTrue: [recoveredBlock41PC := 138] ifFalse: [recoveredBlock41PC := 158].
        ].
        recoveredBlock41Step = 138 ifTrue: [
            recoveredBlock41PC := 139.
        ].
        recoveredBlock41Step = 139 ifTrue: [
            recoveredBlock41Stack0 := recoveredLocal1.
            recoveredBlock41PC := 142.
        ].
        recoveredBlock41Step = 142 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal2.
            recoveredBlock41PC := 145.
        ].
        recoveredBlock41Step = 145 ifTrue: [
            recoveredBlock41Stack2 := recoveredArg1.
            recoveredBlock41PC := 148.
        ].
        recoveredBlock41Step = 148 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) expressionContext.
            recoveredBlock41PC := 149.
        ].
        recoveredBlock41Step = 149 ifTrue: [
            recoveredBlock41Stack3 := recoveredArg1.
            recoveredBlock41PC := 152.
        ].
        recoveredBlock41Step = 152 ifTrue: [
            recoveredBlock41Stack3 := (recoveredBlock41Stack3) attributes.
            recoveredBlock41PC := 154.
        ].
        recoveredBlock41Step = 154 ifTrue: [
            recoveredBlock41Stack0 := (recoveredBlock41Stack0) assignTo: (recoveredBlock41Stack1) expressionContext: (recoveredBlock41Stack2) attributes: (recoveredBlock41Stack3).
            recoveredBlock41PC := 157.
        ].
        recoveredBlock41Step = 157 ifTrue: [
            ^recoveredBlock41Stack0
        ].
        recoveredBlock41Step = 158 ifTrue: [
            recoveredBlock41Result := recoveredBlock41Stack0.
            recoveredBlock41Done := true.
        ].
    ].
    recoveredBlock41Result
].
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) executeInContext: (recoveredStack1).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

