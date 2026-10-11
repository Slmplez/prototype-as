"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200d67e8; bytecode file offset 0x9d3134"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
initialize
    super initialize.
    (self) reset.
    ^self
! !

"ASDBase.ic method 0x200f0150; bytecode file offset 0x9eca14"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
reset
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    declared := recoveredValue1.
    recoveredValue2 := SGCgStack.
    recoveredValue3 := (recoveredValue2) create.
    statements := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x200ffc74; bytecode file offset 0x9fc558"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
ifThenStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) optimizationFactory.
    recoveredValue1 := (recoveredValue0) optimizeControlFlowVisitor.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := super ifThenStmnt: (recoveredValue2).
    recoveredValue4 := (recoveredValue1) anyStmnt: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ffc90; bytecode file offset 0x9fc558"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
ifThenElseStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) optimizationFactory.
    recoveredValue1 := (recoveredValue0) optimizeControlFlowVisitor.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := super ifThenElseStmnt: (recoveredValue2).
    recoveredValue4 := (recoveredValue1) anyStmnt: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201105c0; bytecode file offset 0xa0ce84"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
appendNewStmnt: recoveredArg1 tempAssign: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := statements.
    recoveredValue1 := (recoveredValue0) peek.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    (recoveredValue1) addLast: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2011f744; bytecode file offset 0xa1c008"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
hasTransformedTempAssigns: recoveredArg1
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
            recoveredStack2 := [:block280c8e8cArg1 | 
    | block280c8e8cValue0 block280c8e8cValue1 block280c8e8cValue2 block280c8e8cValue3 |
    block280c8e8cValue0 := block280c8e8cArg1.
    block280c8e8cValue1 := (block280c8e8cValue0) first.
    block280c8e8cValue2 := (block280c8e8cValue1) isIleExprStmnt.
    block280c8e8cValue3 := (block280c8e8cValue2) not.
    block280c8e8cValue3
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20154424; bytecode file offset 0xa50d00"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
pmiCodeBlock: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) code.
    recoveredValue3 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (self) visitNode: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue4 := (recoveredValue2) collect: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) createNoOpCode: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201663f0; bytecode file offset 0xa62cb4"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
safeIndexExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) indexExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
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
            recoveredStack2 := (recoveredStack2) indexExpr.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := super safeIndexExpr: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201bf484; bytecode file offset 0xabbd4c"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
tempAssignIdentifier: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleBracedExpr.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) expr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleAssignExpr.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ef204; bytecode file offset 0xaebad4"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
getActiveTempStmnts
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := statements.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) pop.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := statements.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) push: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [:block280d78d4Arg1 | 
    | block280d78d4Value0 block280d78d4Value1 |
    block280d78d4Value0 := block280d78d4Arg1.
    block280d78d4Value1 := (block280d78d4Value0) first.
    block280d78d4Value1
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20245358; bytecode file offset 0xb41c30"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
stmntList: recoveredArg1 withAssign: recoveredArg2 to: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) lValue.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := (recoveredStack4) source.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) assignTempVar: (recoveredStack1) stmntExpr: (recoveredStack2) fromTempAssignExpr: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:block280de3fcArg1 | 
    | block280de3fcValue0 block280de3fcValue1 |
    block280de3fcValue0 := block280de3fcArg1.
    block280de3fcValue1 := (block280de3fcValue0) first.
    block280de3fcValue1
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWith: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) blockedStmntList: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20273828; bytecode file offset 0xb70104"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
blockedStatementList: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := statements.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) push: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := super blockedStatementList: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) getActiveTempStmnts.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) stmntList.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) addAllFirst: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := statements.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) pop.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20277cf8; bytecode file offset 0xb745c4"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
initializeTempVar: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) tempVar.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 recoveredBlock18Value5 |
    recoveredBlock18Value0 := recoveredArg1.
    recoveredBlock18Value1 := (self) ileBuilder.
    recoveredBlock18Value2 := recoveredArg1.
    recoveredBlock18Value3 := (recoveredBlock18Value2) ileType.
    recoveredBlock18Value4 := (recoveredBlock18Value1) tempVar: (recoveredBlock18Value3).
    recoveredBlock18Value5 := (recoveredBlock18Value0) tempVar: (recoveredBlock18Value4).
    recoveredBlock18Value5
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) useSource: (recoveredStack2) for: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a17a0; bytecode file offset 0xb9e070"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
hasAlreadyBeenDeclared: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgArrayType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgVariableArray.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDummyExpr.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := declared.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) includes: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := declared.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) tempVar.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202b1914; bytecode file offset 0xbae1e0"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
nestedScopeDo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := statements.
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    (recoveredValue0) push: (recoveredValue2).
    recoveredValue3 := declared.
    recoveredValue4 := (recoveredValue3) copy.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := [
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 |
    recoveredBlock20Value0 := statements.
    recoveredBlock20Value1 := (recoveredBlock20Value0) pop.
    recoveredLocal2 := recoveredBlock20Value1.
    recoveredBlock20Value2 := recoveredLocal1.
    recoveredBlock20Value3 := recoveredBlock20Value2.
    declared := recoveredBlock20Value3.
    recoveredBlock20Value2
].
    (recoveredValue5) ensure: (recoveredValue6).
    recoveredValue7 := recoveredLocal2.
    ^recoveredValue7
! !

"ASDBase.ic method 0x202fcbac; bytecode file offset 0xbf9484"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
abstractMethodCall: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) args.
    recoveredValue3 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) isIleArgumentOut.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 20] ifFalse: [recoveredBlock7PC := 44].
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) expr.
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) isIleReferencedExpr.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 26] ifFalse: [recoveredBlock7PC := 44].
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) expr.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) expr.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) isIleTempVarIdentifier.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 34] ifFalse: [recoveredBlock7PC := 44].
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 35.
        ].
        recoveredBlock7Step = 35 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) expr.
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) expr.
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            (recoveredBlock7Stack1) declare: (recoveredBlock7Stack2).
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7PC := 48.
        ].
        recoveredBlock7Step = 44 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 45.
        ].
        recoveredBlock7Step = 45 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 46.
        ].
        recoveredBlock7Step = 46 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) visitNode: (recoveredBlock7Stack2).
            recoveredBlock7PC := 48.
        ].
        recoveredBlock7Step = 48 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    recoveredValue4 := (recoveredValue2) collect: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) createNoOpArgs: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x202fff44; bytecode file offset 0xbfc820"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
exprStmnt: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            currentStmntSource := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := super exprStmnt: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) expr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleTempVarIdentifier.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempAssign.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasAlreadyBeenDeclared: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock37Value0 recoveredBlock37Value1 |
    recoveredBlock37Value0 := (self) ileBuilder.
    recoveredBlock37Value1 := (recoveredBlock37Value0) emptyStmnt.
    recoveredBlock37Value1
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) useStatementSource: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20350eb8; bytecode file offset 0xc4d788"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
whileStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) source.
    currentStmntSource := recoveredValue1.
    recoveredValue2 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := recoveredArg1.
    recoveredBlock10Value1 := (recoveredBlock10Value0) expr.
    recoveredBlock10Value2 := (self) visitNode: (recoveredBlock10Value1).
    recoveredBlock10Value3 := recoveredBlock10Value2.
    recoveredLocal2 := recoveredBlock10Value3.
    recoveredBlock10Value2
].
    recoveredValue3 := (self) nestedScopeDo: (recoveredValue2).
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := recoveredLocal3.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (self) composeLoopConditionCommaExpr: (recoveredValue4) with: (recoveredValue5).
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) doStmnt.
    recoveredValue9 := (self) visitNode: (recoveredValue8).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue10) createNoOpExpr: (recoveredValue11) doStmnt: (recoveredValue12).
    ^recoveredValue13
! !

"ASDBase.ic method 0x203817e4; bytecode file offset 0xc7e0b4"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
repeatStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) source.
    currentStmntSource := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) doStmnt.
    recoveredValue4 := (self) visitNode: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) source.
    currentStmntSource := recoveredValue6.
    recoveredValue7 := [
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 |
    recoveredBlock25Value0 := recoveredArg1.
    recoveredBlock25Value1 := (recoveredBlock25Value0) expr.
    recoveredBlock25Value2 := (self) visitNode: (recoveredBlock25Value1).
    recoveredBlock25Value3 := recoveredBlock25Value2.
    recoveredLocal2 := recoveredBlock25Value3.
    recoveredBlock25Value2
].
    recoveredValue8 := (self) nestedScopeDo: (recoveredValue7).
    recoveredLocal3 := recoveredValue8.
    recoveredValue9 := recoveredLocal3.
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := (self) composeLoopConditionCommaExpr: (recoveredValue9) with: (recoveredValue10).
    recoveredLocal2 := recoveredValue11.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (recoveredValue12) createNoOpExpr: (recoveredValue13) doStmnt: (recoveredValue14).
    ^recoveredValue15
! !

"ASDBase.ic method 0x203faec8; bytecode file offset 0xcf77a4"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
abstractStatementList: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntList.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Local1 recoveredBlock12Local2 recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) source.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            currentStmntSource := recoveredBlock12Stack1.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) visitNode: (recoveredBlock12Stack1).
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Local2 := recoveredBlock12Stack0.
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) getActiveTempStmnts.
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            recoveredBlock12Local1 := recoveredBlock12Stack0.
            recoveredBlock12PC := 28.
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12Stack0 := true.
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 32.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 40] ifFalse: [recoveredBlock12PC := 36].
        ].
        recoveredBlock12Step = 36 ifTrue: [
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            recoveredBlock12Stack0 := recoveredBlock12Local2.
            recoveredBlock12PC := 38.
        ].
        recoveredBlock12Step = 38 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 39.
        ].
        recoveredBlock12Step = 39 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) ~= (recoveredBlock12Stack1).
            recoveredBlock12PC := 40.
        ].
        recoveredBlock12Step = 40 ifTrue: [
            recoveredLocal1 := recoveredBlock12Stack0.
            recoveredBlock12PC := 43.
        ].
        recoveredBlock12Step = 43 ifTrue: [
            recoveredBlock12Stack0 := recoveredBlock12Local1.
            recoveredBlock12PC := 44.
        ].
        recoveredBlock12Step = 44 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) isEmpty.
            recoveredBlock12PC := 46.
        ].
        recoveredBlock12Step = 46 ifTrue: [
            (recoveredBlock12Stack0) ifTrue: [recoveredBlock12PC := 50] ifFalse: [recoveredBlock12PC := 54].
        ].
        recoveredBlock12Step = 50 ifTrue: [
            recoveredBlock12Stack0 := recoveredBlock12Local2.
            recoveredBlock12PC := 51.
        ].
        recoveredBlock12Step = 51 ifTrue: [
            recoveredBlock12PC := 68.
        ].
        recoveredBlock12Step = 54 ifTrue: [
            recoveredBlock12Stack0 := recoveredBlock12Local1.
            recoveredBlock12PC := 55.
        ].
        recoveredBlock12Step = 55 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Local2.
            recoveredBlock12PC := 56.
        ].
        recoveredBlock12Step = 56 ifTrue: [
            (recoveredBlock12Stack0) addLast: (recoveredBlock12Stack1).
            recoveredBlock12PC := 58.
        ].
        recoveredBlock12Step = 58 ifTrue: [
            recoveredBlock12Stack0 := true.
            recoveredBlock12PC := 59.
        ].
        recoveredBlock12Step = 59 ifTrue: [
            recoveredLocal1 := recoveredBlock12Stack0.
            recoveredBlock12PC := 62.
        ].
        recoveredBlock12Step = 62 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 63.
        ].
        recoveredBlock12Step = 63 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) ileBuilder.
            recoveredBlock12PC := 65.
        ].
        recoveredBlock12Step = 65 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Local1.
            recoveredBlock12PC := 66.
        ].
        recoveredBlock12Step = 66 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) stmntList: (recoveredBlock12Stack1).
            recoveredBlock12PC := 68.
        ].
        recoveredBlock12Step = 68 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack0.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 89].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWithChildren: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20403450; bytecode file offset 0xcffd30"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
assignExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) lValue.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleTempIdentifier.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleTempVarIdentifier.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleTempVarIdentifier.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) tempAssign.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) initializeTempVar: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) declare: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) expressionContext.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock70Value0 recoveredBlock70Value1 recoveredBlock70Value2 recoveredBlock70Value3 recoveredBlock70Value4 recoveredBlock70Value5 |
    recoveredBlock70Value0 := recoveredArg1.
    recoveredBlock70Value1 := recoveredLocal1.
    recoveredBlock70Value2 := recoveredArg1.
    recoveredBlock70Value3 := (recoveredBlock70Value2) expr.
    recoveredBlock70Value4 := (self) visitNode: (recoveredBlock70Value3).
    recoveredBlock70Value5 := (recoveredBlock70Value0) createOpLValue: (recoveredBlock70Value1) expr: (recoveredBlock70Value4).
    recoveredBlock70Value5
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) executeInContext: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20404690; bytecode file offset 0xd00f74"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
declare: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isIleTempVarIdentifier.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempAssign.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := declared.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) tempVar.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := declared.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) tempVar.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) remove: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleTempAssignedExpr.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := declared.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) tempVar.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := declared.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) tempVar.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) remove: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleTempIdentifier.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := [
    'Expected temp identifer, temp assign, or temp id'
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) ileAssert: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := declared.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2040bb08; bytecode file offset 0xd083f8"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
composeLoopConditionCommaExpr: recoveredArg1 with: recoveredArg2
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
            recoveredStack0 := (recoveredStack0) hasTransformedTempAssigns: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280fadb8Arg1 | 
    | block280fadb8Stack0 block280fadb8Stack1 block280fadb8Stack2 block280fadb8Stack3 block280fadb8Stack4 block280fadb8PC block280fadb8Step block280fadb8Done block280fadb8Result |
    block280fadb8Stack0 := self.
    block280fadb8PC := 4.
    block280fadb8Done := false.
    [block280fadb8Done not] whileTrue: [
        block280fadb8Step := block280fadb8PC.
        block280fadb8Step = 4 ifTrue: [
            block280fadb8Stack1 := nil.
            block280fadb8PC := 5.
        ].
        block280fadb8Step = 5 ifTrue: [
            block280fadb8Stack2 := block280fadb8Arg1.
            block280fadb8PC := 6.
        ].
        block280fadb8Step = 6 ifTrue: [
            block280fadb8Stack2 := (block280fadb8Stack2) first.
            block280fadb8PC := 7.
        ].
        block280fadb8Step = 7 ifTrue: [
            block280fadb8Stack2 := (block280fadb8Stack2) isIleSwitchStmnt.
            block280fadb8PC := 8.
        ].
        block280fadb8Step = 8 ifTrue: [
            (block280fadb8Stack2) ifTrue: [block280fadb8PC := 38] ifFalse: [block280fadb8PC := 12].
        ].
        block280fadb8Step = 12 ifTrue: [
            block280fadb8Stack2 := block280fadb8Arg1.
            block280fadb8PC := 13.
        ].
        block280fadb8Step = 13 ifTrue: [
            block280fadb8Stack2 := (block280fadb8Stack2) first.
            block280fadb8PC := 14.
        ].
        block280fadb8Step = 14 ifTrue: [
            block280fadb8Stack2 := (block280fadb8Stack2) isIleStatementList.
            block280fadb8PC := 16.
        ].
        block280fadb8Step = 16 ifTrue: [
            (block280fadb8Stack2) ifTrue: [block280fadb8PC := 20] ifFalse: [block280fadb8PC := 45].
        ].
        block280fadb8Step = 20 ifTrue: [
            block280fadb8Stack2 := block280fadb8Arg1.
            block280fadb8PC := 21.
        ].
        block280fadb8Step = 21 ifTrue: [
            block280fadb8Stack2 := (block280fadb8Stack2) first.
            block280fadb8PC := 22.
        ].
        block280fadb8Step = 22 ifTrue: [
            block280fadb8Stack2 := (block280fadb8Stack2) stmntList.
            block280fadb8PC := 24.
        ].
        block280fadb8Step = 24 ifTrue: [
            block280fadb8Stack3 := [:block280faddcArg1 | 
    | block280faddcValue0 block280faddcValue1 |
    block280faddcValue0 := block280faddcArg1.
    block280faddcValue1 := (block280faddcValue0) isIleSwitchStmnt.
    block280faddcValue1
].
            block280fadb8PC := 26.
        ].
        block280fadb8Step = 26 ifTrue: [
            block280fadb8PC := 33.
        ].
        block280fadb8Step = 33 ifTrue: [
            block280fadb8Stack2 := (block280fadb8Stack2) anySatisfy: (block280fadb8Stack3).
            block280fadb8PC := 35.
        ].
        block280fadb8Step = 35 ifTrue: [
            (block280fadb8Stack2) ifTrue: [block280fadb8PC := 38] ifFalse: [block280fadb8PC := 45].
        ].
        block280fadb8Step = 38 ifTrue: [
            block280fadb8PC := 39.
        ].
        block280fadb8Step = 39 ifTrue: [
            block280fadb8Stack1 := block280fadb8Arg1.
            block280fadb8PC := 40.
        ].
        block280fadb8Step = 40 ifTrue: [
            block280fadb8Stack1 := (block280fadb8Stack1) first.
            block280fadb8PC := 41.
        ].
        block280fadb8Step = 41 ifTrue: [
            block280fadb8Stack2 := 11.
            block280fadb8PC := 43.
        ].
        block280fadb8Step = 43 ifTrue: [
            block280fadb8Stack1 := (block280fadb8Stack1) ileSemErrNo: (block280fadb8Stack2).
            block280fadb8PC := 45.
        ].
        block280fadb8Step = 45 ifTrue: [
            block280fadb8Result := block280fadb8Stack1.
            block280fadb8Done := true.
        ].
    ].
    block280fadb8Result
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleCommaExpr.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 91].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) args.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := [:block280fae00Arg1 | 
    | block280fae00Stack0 block280fae00Stack1 block280fae00Stack2 block280fae00Stack3 block280fae00PC block280fae00Step block280fae00Done block280fae00Result |
    block280fae00Stack0 := self.
    block280fae00PC := 4.
    block280fae00Done := false.
    [block280fae00Done not] whileTrue: [
        block280fae00Step := block280fae00PC.
        block280fae00Step = 4 ifTrue: [
            block280fae00Stack1 := nil.
            block280fae00PC := 5.
        ].
        block280fae00Step = 5 ifTrue: [
            block280fae00Stack2 := block280fae00Arg1.
            block280fae00PC := 6.
        ].
        block280fae00Step = 6 ifTrue: [
            block280fae00Stack2 := (block280fae00Stack2) isIleStatementExpression.
            block280fae00PC := 8.
        ].
        block280fae00Step = 8 ifTrue: [
            (block280fae00Stack2) ifTrue: [block280fae00PC := 12] ifFalse: [block280fae00PC := 18].
        ].
        block280fae00Step = 12 ifTrue: [
            block280fae00PC := 13.
        ].
        block280fae00Step = 13 ifTrue: [
            block280fae00Stack1 := block280fae00Arg1.
            block280fae00PC := 14.
        ].
        block280fae00Step = 14 ifTrue: [
            block280fae00Stack2 := 13.
            block280fae00PC := 16.
        ].
        block280fae00Step = 16 ifTrue: [
            block280fae00Stack1 := (block280fae00Stack1) ileSemErrNo: (block280fae00Stack2).
            block280fae00PC := 18.
        ].
        block280fae00Step = 18 ifTrue: [
            block280fae00Result := block280fae00Stack1.
            block280fae00Done := true.
        ].
    ].
    block280fae00Result
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) composeCommaExpr: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041d738; bytecode file offset 0xd1a030"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
composeCommaExpr: recoveredArg1 with: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 97] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := [:block280fc288Arg1 | 
    | block280fc288Stack0 block280fc288Stack1 block280fc288Stack2 block280fc288PC block280fc288Step block280fc288Done block280fc288Result |
    block280fc288Stack0 := self.
    block280fc288PC := 4.
    block280fc288Done := false.
    [block280fc288Done not] whileTrue: [
        block280fc288Step := block280fc288PC.
        block280fc288Step = 4 ifTrue: [
            block280fc288Stack1 := block280fc288Arg1.
            block280fc288PC := 5.
        ].
        block280fc288Step = 5 ifTrue: [
            block280fc288Stack1 := (block280fc288Stack1) first.
            block280fc288PC := 6.
        ].
        block280fc288Step = 6 ifTrue: [
            block280fc288Stack1 := (block280fc288Stack1) isIleExprStmnt.
            block280fc288PC := 8.
        ].
        block280fc288Step = 8 ifTrue: [
            (block280fc288Stack1) ifTrue: [block280fc288PC := 12] ifFalse: [block280fc288PC := 20].
        ].
        block280fc288Step = 12 ifTrue: [
            block280fc288Stack1 := block280fc288Arg1.
            block280fc288PC := 13.
        ].
        block280fc288Step = 13 ifTrue: [
            block280fc288Stack1 := (block280fc288Stack1) first.
            block280fc288PC := 14.
        ].
        block280fc288Step = 14 ifTrue: [
            block280fc288Stack1 := (block280fc288Stack1) expr.
            block280fc288PC := 16.
        ].
        block280fc288Step = 16 ifTrue: [
            block280fc288PC := 23.
        ].
        block280fc288Step = 20 ifTrue: [
            block280fc288Stack1 := block280fc288Arg1.
            block280fc288PC := 21.
        ].
        block280fc288Step = 21 ifTrue: [
            block280fc288Stack1 := (block280fc288Stack1) last.
            block280fc288PC := 23.
        ].
        block280fc288Step = 23 ifTrue: [
            block280fc288Result := block280fc288Stack1.
            block280fc288Done := true.
        ].
    ].
    block280fc288Result
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 |
    recoveredBlock44Value0 := recoveredBlock44Arg1.
    recoveredBlock44Value1 := (recoveredBlock44Value0) expressionContext.
    recoveredBlock44Value2 := [
    | recoveredBlock44Block55Value0 recoveredBlock44Block55Value1 recoveredBlock44Block55Value2 recoveredBlock44Block55Value3 recoveredBlock44Block55Value4 recoveredBlock44Block55Value5 recoveredBlock44Block55Value6 recoveredBlock44Block55Value7 recoveredBlock44Block55Value8 |
    recoveredBlock44Block55Value0 := (self) ileBuilder.
    recoveredBlock44Block55Value1 := recoveredBlock44Arg1.
    recoveredBlock44Block55Value2 := (recoveredBlock44Block55Value1) lValue.
    recoveredBlock44Block55Value3 := recoveredBlock44Arg1.
    recoveredBlock44Block55Value4 := (recoveredBlock44Block55Value3) expr.
    recoveredBlock44Block55Value5 := SGCgVarAttributes.
    recoveredBlock44Block55Value6 := (recoveredBlock44Block55Value5) create.
    recoveredBlock44Block55Value7 := recoveredBlock44Block55Value6.
    (recoveredBlock44Block55Value7) cgAttrNoLimitAssignment.
    recoveredBlock44Block55Value8 := (recoveredBlock44Block55Value0) createAssignLValue: (recoveredBlock44Block55Value2) expr: (recoveredBlock44Block55Value4) attributes: (recoveredBlock44Block55Value6).
    recoveredBlock44Block55Value8
].
    recoveredBlock44Value3 := (recoveredBlock44Value1) executeInContext: (recoveredBlock44Value2).
    recoveredBlock44Value3
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyWith: (recoveredStack3).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) commaExpr: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204487e4; bytecode file offset 0xd450dc"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
multiplexExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) tempVar.
    recoveredBlock4Value2 := (recoveredBlock4Value1) isNil.
    recoveredBlock4Value2
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    'A BDE-Case operator shall not have a temporary variable prio to this point'
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) tempVar: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) charTableScope.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOpCharTableScope: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) createNoOpTempVar: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := SGCgExpressionContext.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) forContextType: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock67Value0 recoveredBlock67Value1 recoveredBlock67Value2 |
    recoveredBlock67Value0 := (self) ileBuilder.
    recoveredBlock67Value1 := recoveredLocal1.
    recoveredBlock67Value2 := (recoveredBlock67Value0) tempAssign: (recoveredBlock67Value1).
    recoveredBlock67Value2
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) executeInContext: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleTempVarIdentifier.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) tempAssign.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) tempVar: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204568b4; bytecode file offset 0xd53200"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
binaryServiceExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) firstOperand.
    recoveredValue2 := (recoveredValue1) tempAssignExpressionsNoConditional.
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) secondOperand.
    recoveredValue5 := (recoveredValue4) tempAssignExpressionsNoConditional.
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := recoveredLocal3.
    recoveredValue7 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 |
    recoveredBlock23Value0 := recoveredLocal2.
    recoveredBlock23Value1 := recoveredBlock23Arg1.
    recoveredBlock23Value2 := (recoveredBlock23Value0) includes: (recoveredBlock23Value1).
    recoveredBlock23Value2
].
    recoveredValue8 := (recoveredValue6) select: (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Local1 recoveredBlock44Stack0 recoveredBlock44Stack1 recoveredBlock44Stack2 recoveredBlock44Stack3 recoveredBlock44Stack4 recoveredBlock44Stack5 recoveredBlock44Stack6 recoveredBlock44PC recoveredBlock44Step recoveredBlock44Done recoveredBlock44Result |
    recoveredBlock44Stack0 := self.
    recoveredBlock44PC := 50.
    recoveredBlock44Done := false.
    [recoveredBlock44Done not] whileTrue: [
        recoveredBlock44Step := recoveredBlock44PC.
        recoveredBlock44Step = 50 ifTrue: [
            recoveredBlock44Stack1 := nil.
            recoveredBlock44PC := 51.
        ].
        recoveredBlock44Step = 51 ifTrue: [
            recoveredBlock44Stack2 := self.
            recoveredBlock44PC := 52.
        ].
        recoveredBlock44Step = 52 ifTrue: [
            recoveredBlock44Stack3 := recoveredBlock44Arg1.
            recoveredBlock44PC := 53.
        ].
        recoveredBlock44Step = 53 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) hasAlreadyBeenDeclared: (recoveredBlock44Stack3).
            recoveredBlock44PC := 55.
        ].
        recoveredBlock44Step = 55 ifTrue: [
            (recoveredBlock44Stack2) ifTrue: [recoveredBlock44PC := 104] ifFalse: [recoveredBlock44PC := 58].
        ].
        recoveredBlock44Step = 58 ifTrue: [
            recoveredBlock44PC := 59.
        ].
        recoveredBlock44Step = 59 ifTrue: [
            recoveredBlock44Stack1 := self.
            recoveredBlock44PC := 60.
        ].
        recoveredBlock44Step = 60 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Arg1.
            recoveredBlock44PC := 61.
        ].
        recoveredBlock44Step = 61 ifTrue: [
            (recoveredBlock44Stack1) initializeTempVar: (recoveredBlock44Stack2).
            recoveredBlock44PC := 63.
        ].
        recoveredBlock44Step = 63 ifTrue: [
            recoveredBlock44Stack1 := self.
            recoveredBlock44PC := 64.
        ].
        recoveredBlock44Step = 64 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) ileBuilder.
            recoveredBlock44PC := 66.
        ].
        recoveredBlock44Step = 66 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Arg1.
            recoveredBlock44PC := 67.
        ].
        recoveredBlock44Step = 67 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) lValue.
            recoveredBlock44PC := 69.
        ].
        recoveredBlock44Step = 69 ifTrue: [
            recoveredBlock44Stack3 := recoveredBlock44Arg1.
            recoveredBlock44PC := 70.
        ].
        recoveredBlock44Step = 70 ifTrue: [
            recoveredBlock44Stack3 := (recoveredBlock44Stack3) expr.
            recoveredBlock44PC := 72.
        ].
        recoveredBlock44Step = 72 ifTrue: [
            recoveredBlock44Stack4 := recoveredBlock44Arg1.
            recoveredBlock44PC := 73.
        ].
        recoveredBlock44Step = 73 ifTrue: [
            recoveredBlock44Stack5 := currentStmntSource.
            recoveredBlock44PC := 75.
        ].
        recoveredBlock44Step = 75 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) assignTempVar: (recoveredBlock44Stack2) stmntExpr: (recoveredBlock44Stack3) fromTempAssignExpr: (recoveredBlock44Stack4) source: (recoveredBlock44Stack5).
            recoveredBlock44PC := 78.
        ].
        recoveredBlock44Step = 78 ifTrue: [
            recoveredBlock44Local1 := recoveredBlock44Stack1.
            recoveredBlock44PC := 79.
        ].
        recoveredBlock44Step = 79 ifTrue: [
            recoveredBlock44Stack1 := self.
            recoveredBlock44PC := 80.
        ].
        recoveredBlock44Step = 80 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Local1.
            recoveredBlock44PC := 81.
        ].
        recoveredBlock44Step = 81 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) visitNode: (recoveredBlock44Stack2).
            recoveredBlock44PC := 83.
        ].
        recoveredBlock44Step = 83 ifTrue: [
            recoveredBlock44Local1 := recoveredBlock44Stack1.
            recoveredBlock44PC := 84.
        ].
        recoveredBlock44Step = 84 ifTrue: [
            recoveredBlock44Stack1 := nil.
            recoveredBlock44PC := 85.
        ].
        recoveredBlock44Step = 85 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Local1.
            recoveredBlock44PC := 86.
        ].
        recoveredBlock44Step = 86 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) isIleStatement.
            recoveredBlock44PC := 88.
        ].
        recoveredBlock44Step = 88 ifTrue: [
            (recoveredBlock44Stack2) ifTrue: [recoveredBlock44PC := 92] ifFalse: [recoveredBlock44PC := 104].
        ].
        recoveredBlock44Step = 92 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Local1.
            recoveredBlock44PC := 93.
        ].
        recoveredBlock44Step = 93 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) isIleEmptyStmnt.
            recoveredBlock44PC := 95.
        ].
        recoveredBlock44Step = 95 ifTrue: [
            (recoveredBlock44Stack2) ifTrue: [recoveredBlock44PC := 104] ifFalse: [recoveredBlock44PC := 98].
        ].
        recoveredBlock44Step = 98 ifTrue: [
            recoveredBlock44PC := 99.
        ].
        recoveredBlock44Step = 99 ifTrue: [
            recoveredBlock44Stack1 := self.
            recoveredBlock44PC := 100.
        ].
        recoveredBlock44Step = 100 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Local1.
            recoveredBlock44PC := 101.
        ].
        recoveredBlock44Step = 101 ifTrue: [
            recoveredBlock44Stack3 := recoveredBlock44Arg1.
            recoveredBlock44PC := 102.
        ].
        recoveredBlock44Step = 102 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) appendNewStmnt: (recoveredBlock44Stack2) tempAssign: (recoveredBlock44Stack3).
            recoveredBlock44PC := 104.
        ].
        recoveredBlock44Step = 104 ifTrue: [
            recoveredBlock44Result := recoveredBlock44Stack1.
            recoveredBlock44Done := true.
        ].
    ].
    recoveredBlock44Result
].
    (recoveredValue9) do: (recoveredValue10).
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := super binaryServiceExpr: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x20456904; bytecode file offset 0xd53200"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
binaryExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) leftExpr.
    recoveredValue2 := (recoveredValue1) tempAssignExpressionsNoConditional.
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) rightExpr.
    recoveredValue5 := (recoveredValue4) tempAssignExpressionsNoConditional.
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := recoveredLocal3.
    recoveredValue7 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 |
    recoveredBlock23Value0 := recoveredLocal2.
    recoveredBlock23Value1 := recoveredBlock23Arg1.
    recoveredBlock23Value2 := (recoveredBlock23Value0) includes: (recoveredBlock23Value1).
    recoveredBlock23Value2
].
    recoveredValue8 := (recoveredValue6) select: (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Local1 recoveredBlock44Stack0 recoveredBlock44Stack1 recoveredBlock44Stack2 recoveredBlock44Stack3 recoveredBlock44Stack4 recoveredBlock44Stack5 recoveredBlock44Stack6 recoveredBlock44PC recoveredBlock44Step recoveredBlock44Done recoveredBlock44Result |
    recoveredBlock44Stack0 := self.
    recoveredBlock44PC := 50.
    recoveredBlock44Done := false.
    [recoveredBlock44Done not] whileTrue: [
        recoveredBlock44Step := recoveredBlock44PC.
        recoveredBlock44Step = 50 ifTrue: [
            recoveredBlock44Stack1 := nil.
            recoveredBlock44PC := 51.
        ].
        recoveredBlock44Step = 51 ifTrue: [
            recoveredBlock44Stack2 := self.
            recoveredBlock44PC := 52.
        ].
        recoveredBlock44Step = 52 ifTrue: [
            recoveredBlock44Stack3 := recoveredBlock44Arg1.
            recoveredBlock44PC := 53.
        ].
        recoveredBlock44Step = 53 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) hasAlreadyBeenDeclared: (recoveredBlock44Stack3).
            recoveredBlock44PC := 55.
        ].
        recoveredBlock44Step = 55 ifTrue: [
            (recoveredBlock44Stack2) ifTrue: [recoveredBlock44PC := 104] ifFalse: [recoveredBlock44PC := 58].
        ].
        recoveredBlock44Step = 58 ifTrue: [
            recoveredBlock44PC := 59.
        ].
        recoveredBlock44Step = 59 ifTrue: [
            recoveredBlock44Stack1 := self.
            recoveredBlock44PC := 60.
        ].
        recoveredBlock44Step = 60 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Arg1.
            recoveredBlock44PC := 61.
        ].
        recoveredBlock44Step = 61 ifTrue: [
            (recoveredBlock44Stack1) initializeTempVar: (recoveredBlock44Stack2).
            recoveredBlock44PC := 63.
        ].
        recoveredBlock44Step = 63 ifTrue: [
            recoveredBlock44Stack1 := self.
            recoveredBlock44PC := 64.
        ].
        recoveredBlock44Step = 64 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) ileBuilder.
            recoveredBlock44PC := 66.
        ].
        recoveredBlock44Step = 66 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Arg1.
            recoveredBlock44PC := 67.
        ].
        recoveredBlock44Step = 67 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) lValue.
            recoveredBlock44PC := 69.
        ].
        recoveredBlock44Step = 69 ifTrue: [
            recoveredBlock44Stack3 := recoveredBlock44Arg1.
            recoveredBlock44PC := 70.
        ].
        recoveredBlock44Step = 70 ifTrue: [
            recoveredBlock44Stack3 := (recoveredBlock44Stack3) expr.
            recoveredBlock44PC := 72.
        ].
        recoveredBlock44Step = 72 ifTrue: [
            recoveredBlock44Stack4 := recoveredBlock44Arg1.
            recoveredBlock44PC := 73.
        ].
        recoveredBlock44Step = 73 ifTrue: [
            recoveredBlock44Stack5 := currentStmntSource.
            recoveredBlock44PC := 75.
        ].
        recoveredBlock44Step = 75 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) assignTempVar: (recoveredBlock44Stack2) stmntExpr: (recoveredBlock44Stack3) fromTempAssignExpr: (recoveredBlock44Stack4) source: (recoveredBlock44Stack5).
            recoveredBlock44PC := 78.
        ].
        recoveredBlock44Step = 78 ifTrue: [
            recoveredBlock44Local1 := recoveredBlock44Stack1.
            recoveredBlock44PC := 79.
        ].
        recoveredBlock44Step = 79 ifTrue: [
            recoveredBlock44Stack1 := self.
            recoveredBlock44PC := 80.
        ].
        recoveredBlock44Step = 80 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Local1.
            recoveredBlock44PC := 81.
        ].
        recoveredBlock44Step = 81 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) visitNode: (recoveredBlock44Stack2).
            recoveredBlock44PC := 83.
        ].
        recoveredBlock44Step = 83 ifTrue: [
            recoveredBlock44Local1 := recoveredBlock44Stack1.
            recoveredBlock44PC := 84.
        ].
        recoveredBlock44Step = 84 ifTrue: [
            recoveredBlock44Stack1 := nil.
            recoveredBlock44PC := 85.
        ].
        recoveredBlock44Step = 85 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Local1.
            recoveredBlock44PC := 86.
        ].
        recoveredBlock44Step = 86 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) isIleStatement.
            recoveredBlock44PC := 88.
        ].
        recoveredBlock44Step = 88 ifTrue: [
            (recoveredBlock44Stack2) ifTrue: [recoveredBlock44PC := 92] ifFalse: [recoveredBlock44PC := 104].
        ].
        recoveredBlock44Step = 92 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Local1.
            recoveredBlock44PC := 93.
        ].
        recoveredBlock44Step = 93 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) isIleEmptyStmnt.
            recoveredBlock44PC := 95.
        ].
        recoveredBlock44Step = 95 ifTrue: [
            (recoveredBlock44Stack2) ifTrue: [recoveredBlock44PC := 104] ifFalse: [recoveredBlock44PC := 98].
        ].
        recoveredBlock44Step = 98 ifTrue: [
            recoveredBlock44PC := 99.
        ].
        recoveredBlock44Step = 99 ifTrue: [
            recoveredBlock44Stack1 := self.
            recoveredBlock44PC := 100.
        ].
        recoveredBlock44Step = 100 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Local1.
            recoveredBlock44PC := 101.
        ].
        recoveredBlock44Step = 101 ifTrue: [
            recoveredBlock44Stack3 := recoveredBlock44Arg1.
            recoveredBlock44PC := 102.
        ].
        recoveredBlock44Step = 102 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) appendNewStmnt: (recoveredBlock44Stack2) tempAssign: (recoveredBlock44Stack3).
            recoveredBlock44PC := 104.
        ].
        recoveredBlock44Step = 104 ifTrue: [
            recoveredBlock44Result := recoveredBlock44Stack1.
            recoveredBlock44Done := true.
        ].
    ].
    recoveredBlock44Result
].
    (recoveredValue9) do: (recoveredValue10).
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := super binaryExpr: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x2045a648; bytecode file offset 0xd56f30"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
tempAssignExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasAlreadyBeenDeclared: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) initializeTempVar: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) expr.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleDummyExpr.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) lValue.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) expressionContext.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock47Value0 recoveredBlock47Value1 recoveredBlock47Value2 recoveredBlock47Value3 recoveredBlock47Value4 recoveredBlock47Value5 recoveredBlock47Value6 |
    recoveredBlock47Value0 := (self) ileBuilder.
    recoveredBlock47Value1 := recoveredLocal3.
    recoveredBlock47Value2 := recoveredArg1.
    recoveredBlock47Value3 := (recoveredBlock47Value2) expr.
    recoveredBlock47Value4 := recoveredArg1.
    recoveredBlock47Value5 := currentStmntSource.
    recoveredBlock47Value6 := (recoveredBlock47Value0) assignTempVar: (recoveredBlock47Value1) stmntExpr: (recoveredBlock47Value3) fromTempAssignExpr: (recoveredBlock47Value4) source: (recoveredBlock47Value5).
    recoveredBlock47Value6
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) executeInContext: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleStatement.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 111].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleEmptyStmnt.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 111] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) appendNewStmnt: (recoveredStack1) tempAssign: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) expr.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045ee10; bytecode file offset 0xd5b6e8"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
forStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) source.
    currentStmntSource := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) firstExpr.
    recoveredValue4 := (self) visitNode: (recoveredValue3).
    recoveredLocal4 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) doStmnt.
    recoveredValue7 := (self) visitNode: (recoveredValue6).
    recoveredLocal3 := recoveredValue7.
    recoveredValue8 := [
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 |
    recoveredBlock28Value0 := recoveredArg1.
    recoveredBlock28Value1 := (recoveredBlock28Value0) expr.
    recoveredBlock28Value2 := (self) visitNode: (recoveredBlock28Value1).
    recoveredBlock28Value3 := recoveredBlock28Value2.
    recoveredLocal2 := recoveredBlock28Value3.
    recoveredBlock28Value2
].
    recoveredValue9 := (self) nestedScopeDo: (recoveredValue8).
    recoveredLocal5 := recoveredValue9.
    recoveredValue10 := recoveredLocal5.
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := (self) composeLoopConditionCommaExpr: (recoveredValue10) with: (recoveredValue11).
    recoveredLocal2 := recoveredValue12.
    recoveredValue13 := [
    | recoveredBlock63Value0 recoveredBlock63Value1 recoveredBlock63Value2 recoveredBlock63Value3 |
    recoveredBlock63Value0 := recoveredArg1.
    recoveredBlock63Value1 := (recoveredBlock63Value0) lastExpr.
    recoveredBlock63Value2 := (self) visitNode: (recoveredBlock63Value1).
    recoveredBlock63Value3 := recoveredBlock63Value2.
    recoveredLocal1 := recoveredBlock63Value3.
    recoveredBlock63Value2
].
    recoveredValue14 := (self) nestedScopeDo: (recoveredValue13).
    recoveredLocal5 := recoveredValue14.
    recoveredValue15 := recoveredLocal5.
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := (self) composeLoopConditionCommaExpr: (recoveredValue15) with: (recoveredValue16).
    recoveredLocal1 := recoveredValue17.
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := recoveredLocal2.
    recoveredValue20 := recoveredLocal4.
    recoveredValue21 := recoveredLocal1.
    recoveredValue22 := recoveredLocal3.
    recoveredValue23 := (recoveredValue18) createNoOpExpr: (recoveredValue19) firstExpr: (recoveredValue20) lastExpr: (recoveredValue21) doStmnt: (recoveredValue22).
    ^recoveredValue23
! !

"ASDBase.ic method 0x204a50b0; bytecode file offset 0xda19b4"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
commaExpr: recoveredArg1
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
            recoveredStack0 := super commaExpr: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleCommaExpr.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 135].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) args.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Stack0 recoveredBlock34Stack1 recoveredBlock34Stack2 recoveredBlock34Stack3 recoveredBlock34Stack4 recoveredBlock34PC recoveredBlock34Step recoveredBlock34Done recoveredBlock34Result |
    recoveredBlock34Stack0 := self.
    recoveredBlock34PC := 40.
    recoveredBlock34Done := false.
    [recoveredBlock34Done not] whileTrue: [
        recoveredBlock34Step := recoveredBlock34PC.
        recoveredBlock34Step = 40 ifTrue: [
            recoveredBlock34Stack1 := nil.
            recoveredBlock34PC := 41.
        ].
        recoveredBlock34Step = 41 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Arg1.
            recoveredBlock34PC := 42.
        ].
        recoveredBlock34Step = 42 ifTrue: [
            recoveredBlock34Stack3 := recoveredLocal2.
            recoveredBlock34PC := 45.
        ].
        recoveredBlock34Step = 45 ifTrue: [
            recoveredBlock34Stack3 := (recoveredBlock34Stack3) args.
            recoveredBlock34PC := 47.
        ].
        recoveredBlock34Step = 47 ifTrue: [
            recoveredBlock34Stack3 := (recoveredBlock34Stack3) last.
            recoveredBlock34PC := 49.
        ].
        recoveredBlock34Step = 49 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) = (recoveredBlock34Stack3).
            recoveredBlock34PC := 50.
        ].
        recoveredBlock34Step = 50 ifTrue: [
            (recoveredBlock34Stack2) ifTrue: [recoveredBlock34PC := 70] ifFalse: [recoveredBlock34PC := 54].
        ].
        recoveredBlock34Step = 54 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Arg1.
            recoveredBlock34PC := 55.
        ].
        recoveredBlock34Step = 55 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) isIleTempVarIdentifier.
            recoveredBlock34PC := 57.
        ].
        recoveredBlock34Step = 57 ifTrue: [
            (recoveredBlock34Stack2) ifTrue: [recoveredBlock34PC := 60] ifFalse: [recoveredBlock34PC := 70].
        ].
        recoveredBlock34Step = 60 ifTrue: [
            recoveredBlock34Stack2 := self.
            recoveredBlock34PC := 61.
        ].
        recoveredBlock34Step = 61 ifTrue: [
            recoveredBlock34Stack3 := recoveredBlock34Arg1.
            recoveredBlock34PC := 62.
        ].
        recoveredBlock34Step = 62 ifTrue: [
            recoveredBlock34Stack3 := (recoveredBlock34Stack3) tempAssign.
            recoveredBlock34PC := 64.
        ].
        recoveredBlock34Step = 64 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) hasAlreadyBeenDeclared: (recoveredBlock34Stack3).
            recoveredBlock34PC := 66.
        ].
        recoveredBlock34Step = 66 ifTrue: [
            (recoveredBlock34Stack2) ifTrue: [recoveredBlock34PC := 77] ifFalse: [recoveredBlock34PC := 70].
        ].
        recoveredBlock34Step = 70 ifTrue: [
            recoveredBlock34PC := 71.
        ].
        recoveredBlock34Step = 71 ifTrue: [
            recoveredBlock34Stack1 := recoveredLocal1.
            recoveredBlock34PC := 74.
        ].
        recoveredBlock34Step = 74 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Arg1.
            recoveredBlock34PC := 75.
        ].
        recoveredBlock34Step = 75 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) add: (recoveredBlock34Stack2).
            recoveredBlock34PC := 77.
        ].
        recoveredBlock34Step = 77 ifTrue: [
            recoveredBlock34Result := recoveredBlock34Stack1.
            recoveredBlock34Done := true.
        ].
    ].
    recoveredBlock34Result
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock81Value0 recoveredBlock81Value1 |
    recoveredBlock81Value0 := recoveredLocal1.
    recoveredBlock81Value1 := (recoveredBlock81Value0) notEmpty.
    recoveredBlock81Value1
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := [
    'The comma expression must not become empty'
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCommaExpr: (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f1904; bytecode file offset 0xdee230"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
countTempVarsIn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGIlAssertTempVarBeforeResolve.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) assert: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) reset.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := statements.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) push: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) anyStmnt: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := SGIlAssertTempVarVisitor.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) assert: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := SGIlCountTempIdentifierForExpansionVisitor.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) countTempIdentifierIn: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := [:recoveredBlock65Arg1 :recoveredBlock65Arg2 | 
    | recoveredBlock65Value0 recoveredBlock65Value1 recoveredBlock65Value2 recoveredBlock65Value3 recoveredBlock65Value4 recoveredBlock65Value5 |
    recoveredBlock65Value0 := recoveredLocal2.
    recoveredBlock65Value1 := recoveredBlock65Arg1.
    recoveredBlock65Value2 := (recoveredBlock65Value1) tempVar.
    recoveredBlock65Value3 := recoveredBlock65Arg2.
    recoveredBlock65Value4 := (recoveredBlock65Value3) copy.
    recoveredBlock65Value5 := (recoveredBlock65Value0) at: (recoveredBlock65Value2) put: (recoveredBlock65Value4).
    recoveredBlock65Value5
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := SGIlNameAndDeclareTempVar.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) nameAndDeclareTempVar: (recoveredStack1) count: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := SGIlRemoveAssignmentsWithIdenticallyNamedTempVar.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleMethodBody.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 165] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIlePMICodeBlock.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 165] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIlePMICodeBlockWithMessageCopies.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 165] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) getActiveTempStmnts.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := statements.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) pop.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) addLast: (recoveredStack1).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := (recoveredStack0) stmntList: (recoveredStack1).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205a2748; bytecode file offset 0xe9f074"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
binaryLogicExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := recoveredArg1.
    recoveredBlock13Value1 := (recoveredBlock13Value0) rightExpr.
    recoveredBlock13Value2 := (self) visitNode: (recoveredBlock13Value1).
    recoveredBlock13Value3 := recoveredBlock13Value2.
    recoveredLocal4 := recoveredBlock13Value3.
    recoveredBlock13Value2
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) nestedScopeDo: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasTransformedTempAssigns: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 270].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := SGCgExpressionContext.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) forContextType: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock53Stack0 recoveredBlock53Stack1 recoveredBlock53Stack2 recoveredBlock53Stack3 recoveredBlock53Stack4 recoveredBlock53PC recoveredBlock53Step recoveredBlock53Done recoveredBlock53Result |
    recoveredBlock53Stack0 := self.
    recoveredBlock53PC := 60.
    recoveredBlock53Done := false.
    [recoveredBlock53Done not] whileTrue: [
        recoveredBlock53Step := recoveredBlock53PC.
        recoveredBlock53Step = 60 ifTrue: [
            recoveredBlock53Stack0 := (recoveredBlock53Stack0) ileBuilder.
            recoveredBlock53PC := 62.
        ].
        recoveredBlock53Step = 62 ifTrue: [
            recoveredBlock53Stack1 := self.
            recoveredBlock53PC := 63.
        ].
        recoveredBlock53Step = 63 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) ileBuilder.
            recoveredBlock53PC := 65.
        ].
        recoveredBlock53Step = 65 ifTrue: [
            recoveredBlock53Stack2 := recoveredArg1.
            recoveredBlock53PC := 68.
        ].
        recoveredBlock53Step = 68 ifTrue: [
            recoveredBlock53Stack2 := (recoveredBlock53Stack2) type.
            recoveredBlock53PC := 70.
        ].
        recoveredBlock53Step = 70 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) createDummyExprType: (recoveredBlock53Stack2).
            recoveredBlock53PC := 72.
        ].
        recoveredBlock53Step = 72 ifTrue: [
            recoveredBlock53Stack0 := (recoveredBlock53Stack0) tempAssignConditionalExpr: (recoveredBlock53Stack1).
            recoveredBlock53PC := 74.
        ].
        recoveredBlock53Step = 74 ifTrue: [
            recoveredLocal2 := recoveredBlock53Stack0.
            recoveredBlock53PC := 77.
        ].
        recoveredBlock53Step = 77 ifTrue: [
            recoveredBlock53Stack0 := self.
            recoveredBlock53PC := 78.
        ].
        recoveredBlock53Step = 78 ifTrue: [
            recoveredBlock53Stack0 := (recoveredBlock53Stack0) ileBuilder.
            recoveredBlock53PC := 80.
        ].
        recoveredBlock53Step = 80 ifTrue: [
            recoveredBlock53Stack1 := recoveredLocal2.
            recoveredBlock53PC := 83.
        ].
        recoveredBlock53Step = 83 ifTrue: [
            recoveredBlock53Stack0 := (recoveredBlock53Stack0) tempAssignIdentifier: (recoveredBlock53Stack1).
            recoveredBlock53PC := 85.
        ].
        recoveredBlock53Step = 85 ifTrue: [
            recoveredLocal1 := recoveredBlock53Stack0.
            recoveredBlock53PC := 88.
        ].
        recoveredBlock53Step = 88 ifTrue: [
            recoveredBlock53Stack0 := recoveredLocal2.
            recoveredBlock53PC := 91.
        ].
        recoveredBlock53Step = 91 ifTrue: [
            recoveredBlock53Stack1 := self.
            recoveredBlock53PC := 92.
        ].
        recoveredBlock53Step = 92 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) ileBuilder.
            recoveredBlock53PC := 94.
        ].
        recoveredBlock53Step = 94 ifTrue: [
            recoveredBlock53Stack2 := recoveredArg1.
            recoveredBlock53PC := 97.
        ].
        recoveredBlock53Step = 97 ifTrue: [
            recoveredBlock53Stack2 := (recoveredBlock53Stack2) type.
            recoveredBlock53PC := 99.
        ].
        recoveredBlock53Step = 99 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) tempVar: (recoveredBlock53Stack2).
            recoveredBlock53PC := 101.
        ].
        recoveredBlock53Step = 101 ifTrue: [
            (recoveredBlock53Stack0) tempVar: (recoveredBlock53Stack1).
            recoveredBlock53PC := 103.
        ].
        recoveredBlock53Step = 103 ifTrue: [
            recoveredBlock53Stack0 := recoveredArg1.
            recoveredBlock53PC := 106.
        ].
        recoveredBlock53Step = 106 ifTrue: [
            recoveredBlock53Stack0 := (recoveredBlock53Stack0) isIleAndExpr.
            recoveredBlock53PC := 108.
        ].
        recoveredBlock53Step = 108 ifTrue: [
            (recoveredBlock53Stack0) ifTrue: [recoveredBlock53PC := 112] ifFalse: [recoveredBlock53PC := 174].
        ].
        recoveredBlock53Step = 112 ifTrue: [
            recoveredBlock53Stack0 := self.
            recoveredBlock53PC := 113.
        ].
        recoveredBlock53Step = 113 ifTrue: [
            recoveredBlock53Stack1 := self.
            recoveredBlock53PC := 114.
        ].
        recoveredBlock53Step = 114 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) ileBuilder.
            recoveredBlock53PC := 116.
        ].
        recoveredBlock53Step = 116 ifTrue: [
            recoveredBlock53Stack2 := recoveredArg1.
            recoveredBlock53PC := 119.
        ].
        recoveredBlock53Step = 119 ifTrue: [
            recoveredBlock53Stack2 := (recoveredBlock53Stack2) source.
            recoveredBlock53PC := 121.
        ].
        recoveredBlock53Step = 121 ifTrue: [
            recoveredBlock53Stack3 := [
    | recoveredBlock53Block121Value0 recoveredBlock53Block121Value1 recoveredBlock53Block121Value2 recoveredBlock53Block121Value3 recoveredBlock53Block121Value4 recoveredBlock53Block121Value5 recoveredBlock53Block121Value6 recoveredBlock53Block121Value7 recoveredBlock53Block121Value8 recoveredBlock53Block121Value9 recoveredBlock53Block121Value10 |
    recoveredBlock53Block121Value0 := (self) ileBuilder.
    recoveredBlock53Block121Value1 := recoveredLocal5.
    recoveredBlock53Block121Value2 := recoveredLocal3.
    recoveredBlock53Block121Value3 := recoveredLocal4.
    recoveredBlock53Block121Value4 := recoveredLocal2.
    recoveredBlock53Block121Value5 := (self) stmntList: (recoveredBlock53Block121Value2) withAssign: (recoveredBlock53Block121Value3) to: (recoveredBlock53Block121Value4).
    recoveredBlock53Block121Value6 := (self) ileBuilder.
    recoveredBlock53Block121Value7 := (recoveredBlock53Block121Value6) literalFalse.
    recoveredBlock53Block121Value8 := recoveredLocal2.
    recoveredBlock53Block121Value9 := (self) stmntList: (#()) withAssign: (recoveredBlock53Block121Value7) to: (recoveredBlock53Block121Value8).
    recoveredBlock53Block121Value10 := (recoveredBlock53Block121Value0) ifExpr: (recoveredBlock53Block121Value1) thenStmnt: (recoveredBlock53Block121Value5) elseStmnt: (recoveredBlock53Block121Value9).
    recoveredBlock53Block121Value10
].
            recoveredBlock53PC := 164.
        ].
        recoveredBlock53Step = 164 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) useSource: (recoveredBlock53Stack2) for: (recoveredBlock53Stack3).
            recoveredBlock53PC := 166.
        ].
        recoveredBlock53Step = 166 ifTrue: [
            recoveredBlock53Stack2 := recoveredLocal2.
            recoveredBlock53PC := 169.
        ].
        recoveredBlock53Step = 169 ifTrue: [
            recoveredBlock53Stack0 := (recoveredBlock53Stack0) appendNewStmnt: (recoveredBlock53Stack1) tempAssign: (recoveredBlock53Stack2).
            recoveredBlock53PC := 171.
        ].
        recoveredBlock53Step = 171 ifTrue: [
            recoveredBlock53PC := 257.
        ].
        recoveredBlock53Step = 174 ifTrue: [
            recoveredBlock53Stack0 := self.
            recoveredBlock53PC := 175.
        ].
        recoveredBlock53Step = 175 ifTrue: [
            recoveredBlock53Stack1 := [
    | recoveredBlock53Block175Value0 recoveredBlock53Block175Value1 |
    recoveredBlock53Block175Value0 := recoveredArg1.
    recoveredBlock53Block175Value1 := (recoveredBlock53Block175Value0) isIleOrExpr.
    recoveredBlock53Block175Value1
].
            recoveredBlock53PC := 188.
        ].
        recoveredBlock53Step = 188 ifTrue: [
            recoveredBlock53Stack2 := [
    'Only && or || expected'
].
            recoveredBlock53PC := 190.
        ].
        recoveredBlock53Step = 190 ifTrue: [
            recoveredBlock53PC := 197.
        ].
        recoveredBlock53Step = 197 ifTrue: [
            (recoveredBlock53Stack0) ileAssert: (recoveredBlock53Stack1) message: (recoveredBlock53Stack2).
            recoveredBlock53PC := 199.
        ].
        recoveredBlock53Step = 199 ifTrue: [
            recoveredBlock53Stack0 := self.
            recoveredBlock53PC := 200.
        ].
        recoveredBlock53Step = 200 ifTrue: [
            recoveredBlock53Stack1 := self.
            recoveredBlock53PC := 201.
        ].
        recoveredBlock53Step = 201 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) ileBuilder.
            recoveredBlock53PC := 203.
        ].
        recoveredBlock53Step = 203 ifTrue: [
            recoveredBlock53Stack2 := recoveredArg1.
            recoveredBlock53PC := 206.
        ].
        recoveredBlock53Step = 206 ifTrue: [
            recoveredBlock53Stack2 := (recoveredBlock53Stack2) source.
            recoveredBlock53PC := 208.
        ].
        recoveredBlock53Step = 208 ifTrue: [
            recoveredBlock53Stack3 := [
    | recoveredBlock53Block208Value0 recoveredBlock53Block208Value1 recoveredBlock53Block208Value2 recoveredBlock53Block208Value3 recoveredBlock53Block208Value4 recoveredBlock53Block208Value5 recoveredBlock53Block208Value6 recoveredBlock53Block208Value7 recoveredBlock53Block208Value8 recoveredBlock53Block208Value9 recoveredBlock53Block208Value10 |
    recoveredBlock53Block208Value0 := (self) ileBuilder.
    recoveredBlock53Block208Value1 := recoveredLocal5.
    recoveredBlock53Block208Value2 := (self) ileBuilder.
    recoveredBlock53Block208Value3 := (recoveredBlock53Block208Value2) literalTrue.
    recoveredBlock53Block208Value4 := recoveredLocal2.
    recoveredBlock53Block208Value5 := (self) stmntList: (#()) withAssign: (recoveredBlock53Block208Value3) to: (recoveredBlock53Block208Value4).
    recoveredBlock53Block208Value6 := recoveredLocal3.
    recoveredBlock53Block208Value7 := recoveredLocal4.
    recoveredBlock53Block208Value8 := recoveredLocal2.
    recoveredBlock53Block208Value9 := (self) stmntList: (recoveredBlock53Block208Value6) withAssign: (recoveredBlock53Block208Value7) to: (recoveredBlock53Block208Value8).
    recoveredBlock53Block208Value10 := (recoveredBlock53Block208Value0) ifExpr: (recoveredBlock53Block208Value1) thenStmnt: (recoveredBlock53Block208Value5) elseStmnt: (recoveredBlock53Block208Value9).
    recoveredBlock53Block208Value10
].
            recoveredBlock53PC := 250.
        ].
        recoveredBlock53Step = 250 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) useSource: (recoveredBlock53Stack2) for: (recoveredBlock53Stack3).
            recoveredBlock53PC := 252.
        ].
        recoveredBlock53Step = 252 ifTrue: [
            recoveredBlock53Stack2 := recoveredLocal2.
            recoveredBlock53PC := 255.
        ].
        recoveredBlock53Step = 255 ifTrue: [
            recoveredBlock53Stack0 := (recoveredBlock53Stack0) appendNewStmnt: (recoveredBlock53Stack1) tempAssign: (recoveredBlock53Stack2).
            recoveredBlock53PC := 257.
        ].
        recoveredBlock53Step = 257 ifTrue: [
            recoveredBlock53Result := recoveredBlock53Stack0.
            recoveredBlock53Done := true.
        ].
    ].
    recoveredBlock53Result
].
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            (recoveredStack0) executeInContext: (recoveredStack1).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack0) declare: (recoveredStack1).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack0 := (recoveredStack0) composeCommaExpr: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack0 := (recoveredStack0) createNoOpLeftExpr: (recoveredStack1) rightExpr: (recoveredStack2).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205beb0c; bytecode file offset 0xebb430"
!SGIlUsageRangeVisitor methodsFor: 'recovered'!
muxExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempAssignInBothBranches.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Local1 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack2 := self.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Arg1.
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) hasAlreadyBeenDeclared: (recoveredBlock8Stack3).
            recoveredBlock8PC := 20.
        ].
        recoveredBlock8Step = 20 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 106] ifFalse: [recoveredBlock8PC := 24].
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            (recoveredBlock8Stack1) initializeTempVar: (recoveredBlock8Stack2).
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 32.
        ].
        recoveredBlock8Step = 32 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) ileBuilder.
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 36.
        ].
        recoveredBlock8Step = 36 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) source.
            recoveredBlock8PC := 38.
        ].
        recoveredBlock8Step = 38 ifTrue: [
            recoveredBlock8Stack3 := [
    | recoveredBlock8Block38Value0 recoveredBlock8Block38Value1 recoveredBlock8Block38Value2 recoveredBlock8Block38Value3 recoveredBlock8Block38Value4 recoveredBlock8Block38Value5 recoveredBlock8Block38Value6 recoveredBlock8Block38Value7 |
    recoveredBlock8Block38Value0 := (self) ileBuilder.
    recoveredBlock8Block38Value1 := recoveredBlock8Arg1.
    recoveredBlock8Block38Value2 := (recoveredBlock8Block38Value1) lValue.
    recoveredBlock8Block38Value3 := recoveredBlock8Arg1.
    recoveredBlock8Block38Value4 := (recoveredBlock8Block38Value3) expr.
    recoveredBlock8Block38Value5 := recoveredBlock8Arg1.
    recoveredBlock8Block38Value6 := currentStmntSource.
    recoveredBlock8Block38Value7 := (recoveredBlock8Block38Value0) assignTempVar: (recoveredBlock8Block38Value2) stmntExpr: (recoveredBlock8Block38Value4) fromTempAssignExpr: (recoveredBlock8Block38Value5) source: (recoveredBlock8Block38Value6).
    recoveredBlock8Block38Value7
].
            recoveredBlock8PC := 64.
        ].
        recoveredBlock8Step = 64 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) useSource: (recoveredBlock8Stack2) for: (recoveredBlock8Stack3).
            recoveredBlock8PC := 66.
        ].
        recoveredBlock8Step = 66 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack1.
            recoveredBlock8PC := 69.
        ].
        recoveredBlock8Step = 69 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 70.
        ].
        recoveredBlock8Step = 70 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local1.
            recoveredBlock8PC := 73.
        ].
        recoveredBlock8Step = 73 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) visitNode: (recoveredBlock8Stack2).
            recoveredBlock8PC := 75.
        ].
        recoveredBlock8Step = 75 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack1.
            recoveredBlock8PC := 78.
        ].
        recoveredBlock8Step = 78 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 79.
        ].
        recoveredBlock8Step = 79 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local1.
            recoveredBlock8PC := 82.
        ].
        recoveredBlock8Step = 82 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) isIleStatement.
            recoveredBlock8PC := 84.
        ].
        recoveredBlock8Step = 84 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 88] ifFalse: [recoveredBlock8PC := 106].
        ].
        recoveredBlock8Step = 88 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local1.
            recoveredBlock8PC := 91.
        ].
        recoveredBlock8Step = 91 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) isIleEmptyStmnt.
            recoveredBlock8PC := 93.
        ].
        recoveredBlock8Step = 93 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 106] ifFalse: [recoveredBlock8PC := 96].
        ].
        recoveredBlock8Step = 96 ifTrue: [
            recoveredBlock8PC := 97.
        ].
        recoveredBlock8Step = 97 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 98.
        ].
        recoveredBlock8Step = 98 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local1.
            recoveredBlock8PC := 101.
        ].
        recoveredBlock8Step = 101 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Arg1.
            recoveredBlock8PC := 104.
        ].
        recoveredBlock8Step = 104 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) appendNewStmnt: (recoveredBlock8Stack2) tempAssign: (recoveredBlock8Stack3).
            recoveredBlock8PC := 106.
        ].
        recoveredBlock8Step = 106 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) condExpr.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock120Value0 recoveredBlock120Value1 recoveredBlock120Value2 recoveredBlock120Value3 |
    recoveredBlock120Value0 := recoveredArg1.
    recoveredBlock120Value1 := (recoveredBlock120Value0) leftExpr.
    recoveredBlock120Value2 := (self) visitNode: (recoveredBlock120Value1).
    recoveredBlock120Value3 := recoveredBlock120Value2.
    recoveredLocal6 := recoveredBlock120Value3.
    recoveredBlock120Value2
].
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) nestedScopeDo: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock144Value0 recoveredBlock144Value1 recoveredBlock144Value2 recoveredBlock144Value3 |
    recoveredBlock144Value0 := recoveredArg1.
    recoveredBlock144Value1 := (recoveredBlock144Value0) rightExpr.
    recoveredBlock144Value2 := (self) visitNode: (recoveredBlock144Value1).
    recoveredBlock144Value3 := recoveredBlock144Value2.
    recoveredLocal5 := recoveredBlock144Value3.
    recoveredBlock144Value2
].
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) nestedScopeDo: (recoveredStack1).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasTransformedTempAssigns: (recoveredStack1).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 186] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasTransformedTempAssigns: (recoveredStack1).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 186] ifFalse: [recoveredPC := 285].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) tempAssignConditionalExpr: (recoveredStack1).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := (recoveredStack0) tempAssignIdentifier: (recoveredStack1).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempVar: (recoveredStack2).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack0) tempVar: (recoveredStack1).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock228Value0 recoveredBlock228Value1 recoveredBlock228Value2 recoveredBlock228Value3 recoveredBlock228Value4 recoveredBlock228Value5 recoveredBlock228Value6 recoveredBlock228Value7 recoveredBlock228Value8 recoveredBlock228Value9 recoveredBlock228Value10 |
    recoveredBlock228Value0 := (self) ileBuilder.
    recoveredBlock228Value1 := recoveredLocal7.
    recoveredBlock228Value2 := recoveredLocal4.
    recoveredBlock228Value3 := recoveredLocal6.
    recoveredBlock228Value4 := recoveredLocal2.
    recoveredBlock228Value5 := (self) stmntList: (recoveredBlock228Value2) withAssign: (recoveredBlock228Value3) to: (recoveredBlock228Value4).
    recoveredBlock228Value6 := recoveredLocal3.
    recoveredBlock228Value7 := recoveredLocal5.
    recoveredBlock228Value8 := recoveredLocal2.
    recoveredBlock228Value9 := (self) stmntList: (recoveredBlock228Value6) withAssign: (recoveredBlock228Value7) to: (recoveredBlock228Value8).
    recoveredBlock228Value10 := (recoveredBlock228Value0) ifExpr: (recoveredBlock228Value1) thenStmnt: (recoveredBlock228Value5) elseStmnt: (recoveredBlock228Value9).
    recoveredBlock228Value10
].
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := (recoveredStack1) useSource: (recoveredStack2) for: (recoveredStack3).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            (recoveredStack0) appendNewStmnt: (recoveredStack1) tempAssign: (recoveredStack2).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack0) declare: (recoveredStack1).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack0 := (recoveredStack0) composeCommaExpr: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := (recoveredStack0) composeCommaExpr: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack0 := (recoveredStack0) createNoOpCondExpr: (recoveredStack1) leftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

