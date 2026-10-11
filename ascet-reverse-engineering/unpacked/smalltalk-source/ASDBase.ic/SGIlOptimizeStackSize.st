"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d8ac; bytecode file offset 0x90a4b8"
!SGIlOptimizeStackSize methodsFor: 'recovered'!
procedureCall: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003f1d8; bytecode file offset 0x93bf94"
!SGIlOptimizeStackSize methodsFor: 'recovered'!
removeSuperfluousTempAssignExprTransformation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIlRemoveSuperfluousTempAssignExprTransformation.
    recoveredValue1 := (recoveredValue0) create.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2017c484; bytecode file offset 0xa78d44"
!SGIlOptimizeStackSize methodsFor: 'recovered'!
returnStmnt: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMultiplexExpr.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) multiplexExpr: (recoveredStack2) asSwitchStmnt: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017e074; bytecode file offset 0xa7a934"
!SGIlOptimizeStackSize methodsFor: 'recovered'!
assignStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMultiplexExpr.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) multiplexExpr: (recoveredStack2) asSwitchStmnt: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201cd008; bytecode file offset 0xac98ec"
!SGIlOptimizeStackSize methodsFor: 'recovered'!
exprStmnt: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAssignExpr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) assignStmnt: (recoveredStack2).
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
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAbstractMethodCall.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) procedureCall: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2057b22c; bytecode file offset 0xe77b48"
!SGIlOptimizeStackSize methodsFor: 'recovered'!
multiplexExpr: recoveredArg1 asSwitchStmnt: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := (self) ileBuilder.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) source.
    recoveredValue5 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 recoveredBlock15Value6 recoveredBlock15Value7 recoveredBlock15Value8 recoveredBlock15Value9 recoveredBlock15Value10 recoveredBlock15Value11 recoveredBlock15Value12 recoveredBlock15Value13 recoveredBlock15Value14 recoveredBlock15Value15 recoveredBlock15Value16 recoveredBlock15Value17 recoveredBlock15Value18 recoveredBlock15Value19 recoveredBlock15Value20 recoveredBlock15Value21 recoveredBlock15Value22 recoveredBlock15Value23 recoveredBlock15Value24 recoveredBlock15Value25 recoveredBlock15Value26 recoveredBlock15Value27 recoveredBlock15Value28 recoveredBlock15Value29 recoveredBlock15Value30 recoveredBlock15Value31 recoveredBlock15Value32 recoveredBlock15Value33 recoveredBlock15Value34 recoveredBlock15Value35 recoveredBlock15Value36 |
    recoveredBlock15Value0 := recoveredArg1.
    recoveredBlock15Value1 := (recoveredBlock15Value0) choices.
    recoveredBlock15Value2 := (recoveredBlock15Value1) asArray.
    recoveredBlock15Value3 := [:recoveredBlock15Block29Arg1 :recoveredBlock15Block29Arg2 | 
    | recoveredBlock15Block29Stack0 recoveredBlock15Block29Stack1 recoveredBlock15Block29Stack2 recoveredBlock15Block29Stack3 recoveredBlock15Block29Stack4 recoveredBlock15Block29PC recoveredBlock15Block29Step recoveredBlock15Block29Done recoveredBlock15Block29Result |
    recoveredBlock15Block29Stack0 := self.
    recoveredBlock15Block29PC := 36.
    recoveredBlock15Block29Done := false.
    [recoveredBlock15Block29Done not] whileTrue: [
        recoveredBlock15Block29Step := recoveredBlock15Block29PC.
        recoveredBlock15Block29Step = 36 ifTrue: [
            recoveredBlock15Block29Stack1 := OrderedCollection.
            recoveredBlock15Block29PC := 38.
        ].
        recoveredBlock15Block29Step = 38 ifTrue: [
            recoveredBlock15Block29Stack1 := (recoveredBlock15Block29Stack1) new.
            recoveredBlock15Block29PC := 39.
        ].
        recoveredBlock15Block29Step = 39 ifTrue: [
            recoveredLocal1 := recoveredBlock15Block29Stack1.
            recoveredBlock15Block29PC := 42.
        ].
        recoveredBlock15Block29Step = 42 ifTrue: [
            recoveredBlock15Block29Stack1 := recoveredArg2.
            recoveredBlock15Block29PC := 45.
        ].
        recoveredBlock15Block29Step = 45 ifTrue: [
            recoveredBlock15Block29Stack2 := recoveredArg1.
            recoveredBlock15Block29PC := 48.
        ].
        recoveredBlock15Block29Step = 48 ifTrue: [
            recoveredBlock15Block29Stack3 := recoveredBlock15Block29Arg1.
            recoveredBlock15Block29PC := 49.
        ].
        recoveredBlock15Block29Step = 49 ifTrue: [
            recoveredBlock15Block29Stack3 := (recoveredBlock15Block29Stack3) asIleOptimizedChoiceExpr.
            recoveredBlock15Block29PC := 51.
        ].
        recoveredBlock15Block29Step = 51 ifTrue: [
            recoveredBlock15Block29Stack1 := (recoveredBlock15Block29Stack1) asIleStmntReplaceExpr: (recoveredBlock15Block29Stack2) with: (recoveredBlock15Block29Stack3).
            recoveredBlock15Block29PC := 53.
        ].
        recoveredBlock15Block29Step = 53 ifTrue: [
            recoveredBlock15Block29Stack1 := (recoveredBlock15Block29Stack1) asIleCopy.
            recoveredBlock15Block29PC := 55.
        ].
        recoveredBlock15Block29Step = 55 ifTrue: [
            recoveredLocal2 := recoveredBlock15Block29Stack1.
            recoveredBlock15Block29PC := 58.
        ].
        recoveredBlock15Block29Step = 58 ifTrue: [
            recoveredBlock15Block29Stack1 := recoveredLocal2.
            recoveredBlock15Block29PC := 61.
        ].
        recoveredBlock15Block29Step = 61 ifTrue: [
            recoveredBlock15Block29Stack2 := recoveredArg2.
            recoveredBlock15Block29PC := 64.
        ].
        recoveredBlock15Block29Step = 64 ifTrue: [
            recoveredBlock15Block29Stack2 := (recoveredBlock15Block29Stack2) comments.
            recoveredBlock15Block29PC := 66.
        ].
        recoveredBlock15Block29Step = 66 ifTrue: [
            recoveredBlock15Block29Stack1 := (recoveredBlock15Block29Stack1) createNoOpComments: (recoveredBlock15Block29Stack2).
            recoveredBlock15Block29PC := 68.
        ].
        recoveredBlock15Block29Step = 68 ifTrue: [
            recoveredLocal2 := recoveredBlock15Block29Stack1.
            recoveredBlock15Block29PC := 71.
        ].
        recoveredBlock15Block29Step = 71 ifTrue: [
            recoveredBlock15Block29Stack1 := recoveredLocal1.
            recoveredBlock15Block29PC := 74.
        ].
        recoveredBlock15Block29Step = 74 ifTrue: [
            recoveredBlock15Block29Stack2 := recoveredLocal2.
            recoveredBlock15Block29PC := 77.
        ].
        recoveredBlock15Block29Step = 77 ifTrue: [
            (recoveredBlock15Block29Stack1) add: (recoveredBlock15Block29Stack2).
            recoveredBlock15Block29PC := 79.
        ].
        recoveredBlock15Block29Step = 79 ifTrue: [
            recoveredBlock15Block29Stack1 := recoveredArg2.
            recoveredBlock15Block29PC := 82.
        ].
        recoveredBlock15Block29Step = 82 ifTrue: [
            recoveredBlock15Block29Stack1 := (recoveredBlock15Block29Stack1) createAsBreakStmnt.
            recoveredBlock15Block29PC := 84.
        ].
        recoveredBlock15Block29Step = 84 ifTrue: [
            recoveredBlock15Block29Stack2 := recoveredBlock15Block29Stack1.
            recoveredBlock15Block29PC := 85.
        ].
        recoveredBlock15Block29Step = 85 ifTrue: [
            recoveredLocal2 := recoveredBlock15Block29Stack2.
            recoveredBlock15Block29PC := 88.
        ].
        recoveredBlock15Block29Step = 88 ifTrue: [
            (recoveredBlock15Block29Stack1 == nil) ifTrue: [recoveredBlock15Block29PC := 100] ifFalse: [recoveredBlock15Block29PC := 92].
        ].
        recoveredBlock15Block29Step = 92 ifTrue: [
            recoveredBlock15Block29Stack1 := recoveredLocal1.
            recoveredBlock15Block29PC := 95.
        ].
        recoveredBlock15Block29Step = 95 ifTrue: [
            recoveredBlock15Block29Stack2 := recoveredLocal2.
            recoveredBlock15Block29PC := 98.
        ].
        recoveredBlock15Block29Step = 98 ifTrue: [
            (recoveredBlock15Block29Stack1) add: (recoveredBlock15Block29Stack2).
            recoveredBlock15Block29PC := 100.
        ].
        recoveredBlock15Block29Step = 100 ifTrue: [
            recoveredBlock15Block29Stack0 := (recoveredBlock15Block29Stack0) ileBuilder.
            recoveredBlock15Block29PC := 101.
        ].
        recoveredBlock15Block29Step = 101 ifTrue: [
            recoveredBlock15Block29Stack1 := self.
            recoveredBlock15Block29PC := 102.
        ].
        recoveredBlock15Block29Step = 102 ifTrue: [
            recoveredBlock15Block29Stack1 := (recoveredBlock15Block29Stack1) ileBuilder.
            recoveredBlock15Block29PC := 103.
        ].
        recoveredBlock15Block29Step = 103 ifTrue: [
            recoveredBlock15Block29Stack2 := recoveredBlock15Block29Arg2.
            recoveredBlock15Block29PC := 104.
        ].
        recoveredBlock15Block29Step = 104 ifTrue: [
            recoveredBlock15Block29Stack1 := (recoveredBlock15Block29Stack1) scalarConstant: (recoveredBlock15Block29Stack2).
            recoveredBlock15Block29PC := 106.
        ].
        recoveredBlock15Block29Step = 106 ifTrue: [
            recoveredBlock15Block29Stack2 := self.
            recoveredBlock15Block29PC := 107.
        ].
        recoveredBlock15Block29Step = 107 ifTrue: [
            recoveredBlock15Block29Stack2 := (recoveredBlock15Block29Stack2) ileBuilder.
            recoveredBlock15Block29PC := 108.
        ].
        recoveredBlock15Block29Step = 108 ifTrue: [
            recoveredBlock15Block29Stack3 := recoveredLocal1.
            recoveredBlock15Block29PC := 111.
        ].
        recoveredBlock15Block29Step = 111 ifTrue: [
            recoveredBlock15Block29Stack2 := (recoveredBlock15Block29Stack2) blockedStmntList: (recoveredBlock15Block29Stack3).
            recoveredBlock15Block29PC := 113.
        ].
        recoveredBlock15Block29Step = 113 ifTrue: [
            recoveredBlock15Block29Stack0 := (recoveredBlock15Block29Stack0) expr: (recoveredBlock15Block29Stack1) caseStmnt: (recoveredBlock15Block29Stack2).
            recoveredBlock15Block29PC := 115.
        ].
        recoveredBlock15Block29Step = 115 ifTrue: [
            recoveredLocal2 := recoveredBlock15Block29Stack0.
            recoveredBlock15Block29PC := 118.
        ].
        recoveredBlock15Block29Step = 118 ifTrue: [
            recoveredBlock15Block29Stack0 := recoveredLocal3.
            recoveredBlock15Block29PC := 121.
        ].
        recoveredBlock15Block29Step = 121 ifTrue: [
            recoveredBlock15Block29Stack1 := recoveredLocal2.
            recoveredBlock15Block29PC := 124.
        ].
        recoveredBlock15Block29Step = 124 ifTrue: [
            recoveredBlock15Block29Stack0 := (recoveredBlock15Block29Stack0) add: (recoveredBlock15Block29Stack1).
            recoveredBlock15Block29PC := 126.
        ].
        recoveredBlock15Block29Step = 126 ifTrue: [
            recoveredBlock15Block29Result := recoveredBlock15Block29Stack0.
            recoveredBlock15Block29Done := true.
        ].
    ].
    recoveredBlock15Block29Result
].
    (recoveredBlock15Value2) doWithIndex: (recoveredBlock15Value3).
    recoveredBlock15Value4 := OrderedCollection.
    recoveredBlock15Value5 := (recoveredBlock15Value4) new.
    recoveredLocal1 := recoveredBlock15Value5.
    recoveredBlock15Value6 := recoveredArg2.
    recoveredBlock15Value7 := recoveredArg1.
    recoveredBlock15Value8 := recoveredArg1.
    recoveredBlock15Value9 := (recoveredBlock15Value8) defaultExpr.
    recoveredBlock15Value10 := (recoveredBlock15Value9) asIleOptimizedChoiceExpr.
    recoveredBlock15Value11 := (recoveredBlock15Value6) asIleStmntReplaceExpr: (recoveredBlock15Value7) with: (recoveredBlock15Value10).
    recoveredLocal2 := recoveredBlock15Value11.
    recoveredBlock15Value12 := recoveredLocal2.
    recoveredBlock15Value13 := recoveredArg2.
    recoveredBlock15Value14 := (recoveredBlock15Value13) comments.
    recoveredBlock15Value15 := (recoveredBlock15Value12) createNoOpComments: (recoveredBlock15Value14).
    recoveredLocal2 := recoveredBlock15Value15.
    recoveredBlock15Value16 := recoveredLocal1.
    recoveredBlock15Value17 := recoveredLocal2.
    (recoveredBlock15Value16) add: (recoveredBlock15Value17).
    recoveredBlock15Value18 := (self) ileBuilder.
    recoveredBlock15Value19 := [
    | recoveredBlock15Block176Stack0 recoveredBlock15Block176Stack1 recoveredBlock15Block176Stack2 recoveredBlock15Block176Stack3 recoveredBlock15Block176Stack4 recoveredBlock15Block176PC recoveredBlock15Block176Step recoveredBlock15Block176Done recoveredBlock15Block176Result |
    recoveredBlock15Block176Stack0 := nil.
    recoveredBlock15Block176PC := 182.
    recoveredBlock15Block176Done := false.
    [recoveredBlock15Block176Done not] whileTrue: [
        recoveredBlock15Block176Step := recoveredBlock15Block176PC.
        recoveredBlock15Block176Step = 182 ifTrue: [
            recoveredBlock15Block176Stack1 := nil.
            recoveredBlock15Block176PC := 183.
        ].
        recoveredBlock15Block176Step = 183 ifTrue: [
            recoveredBlock15Block176Stack2 := recoveredArg2.
            recoveredBlock15Block176PC := 186.
        ].
        recoveredBlock15Block176Step = 186 ifTrue: [
            recoveredBlock15Block176Stack2 := (recoveredBlock15Block176Stack2) createAsBreakStmnt.
            recoveredBlock15Block176PC := 188.
        ].
        recoveredBlock15Block176Step = 188 ifTrue: [
            recoveredBlock15Block176Stack3 := recoveredBlock15Block176Stack2.
            recoveredBlock15Block176PC := 189.
        ].
        recoveredBlock15Block176Step = 189 ifTrue: [
            recoveredLocal2 := recoveredBlock15Block176Stack3.
            recoveredBlock15Block176PC := 192.
        ].
        recoveredBlock15Block176Step = 192 ifTrue: [
            (recoveredBlock15Block176Stack2 == nil) ifTrue: [recoveredBlock15Block176PC := 205] ifFalse: [recoveredBlock15Block176PC := 196].
        ].
        recoveredBlock15Block176Step = 196 ifTrue: [
            recoveredBlock15Block176PC := 197.
        ].
        recoveredBlock15Block176Step = 197 ifTrue: [
            recoveredBlock15Block176Stack1 := recoveredLocal1.
            recoveredBlock15Block176PC := 200.
        ].
        recoveredBlock15Block176Step = 200 ifTrue: [
            recoveredBlock15Block176Stack2 := recoveredLocal2.
            recoveredBlock15Block176PC := 203.
        ].
        recoveredBlock15Block176Step = 203 ifTrue: [
            recoveredBlock15Block176Stack1 := (recoveredBlock15Block176Stack1) add: (recoveredBlock15Block176Stack2).
            recoveredBlock15Block176PC := 205.
        ].
        recoveredBlock15Block176Step = 205 ifTrue: [
            recoveredBlock15Block176Result := recoveredBlock15Block176Stack1.
            recoveredBlock15Block176Done := true.
        ].
    ].
    recoveredBlock15Block176Result
].
    (recoveredBlock15Value18) useSource: (nil) for: (recoveredBlock15Value19).
    recoveredBlock15Value20 := recoveredLocal3.
    recoveredBlock15Value21 := (self) ileBuilder.
    recoveredBlock15Value22 := (self) ileBuilder.
    recoveredBlock15Value23 := recoveredLocal1.
    recoveredBlock15Value24 := (recoveredBlock15Value22) blockedStmntList: (recoveredBlock15Value23).
    recoveredBlock15Value25 := (recoveredBlock15Value21) defaultStmnt: (recoveredBlock15Value24).
    (recoveredBlock15Value20) add: (recoveredBlock15Value25).
    recoveredBlock15Value26 := (self) ileBuilder.
    recoveredBlock15Value27 := recoveredArg1.
    recoveredBlock15Value28 := (recoveredBlock15Value27) condExpr.
    recoveredBlock15Value29 := (self) ileBuilder.
    recoveredBlock15Value30 := recoveredLocal3.
    recoveredBlock15Value31 := (recoveredBlock15Value29) blockedStmntList: (recoveredBlock15Value30).
    recoveredBlock15Value32 := recoveredArg1.
    recoveredBlock15Value33 := (recoveredBlock15Value32) expressionContext.
    recoveredBlock15Value34 := (self) transformationFactory.
    recoveredBlock15Value35 := (recoveredBlock15Value34) castingTransformation.
    recoveredBlock15Value36 := (recoveredBlock15Value26) switchExpr: (recoveredBlock15Value28) stmnt: (recoveredBlock15Value31) expressionContext: (recoveredBlock15Value33) extraCast: (recoveredBlock15Value35).
    ^recoveredBlock15Value36
].
    (recoveredValue2) useStatementSource: (recoveredValue4) for: (recoveredValue5).
    ^self
! !

