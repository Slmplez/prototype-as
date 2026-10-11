"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20063d64; bytecode file offset 0x961970"
!SGIlCommonSubexpressionEliminationVisitor methodsFor: 'recovered'!
unknownSideEffects
    | recoveredValue0 |
    recoveredValue0 := (self) state.
    (recoveredValue0) unknownSideEffects.
    ^self
! !

"ASDBase.ic method 0x20068394; bytecode file offset 0x965b90"
!SGIlCommonSubexpressionEliminationVisitor methodsFor: 'recovered'!
state
    | recoveredValue0 |
    recoveredValue0 := state.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069e90; bytecode file offset 0x966bdc"
!SGIlCommonSubexpressionEliminationVisitor methodsFor: 'recovered'!
path
    | recoveredValue0 |
    recoveredValue0 := path.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ae7c; bytecode file offset 0x967a18"
!SGIlCommonSubexpressionEliminationVisitor methodsFor: 'recovered'!
changes
    | recoveredValue0 |
    recoveredValue0 := changes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20089704; bytecode file offset 0x986060"
!SGIlCommonSubexpressionEliminationVisitor methodsFor: 'recovered'!
initState
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIlCommonSubexpressionEliminationState.
    recoveredValue1 := (recoveredValue0) create.
    state := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20098904; bytecode file offset 0x995850"
!SGIlCommonSubexpressionEliminationVisitor methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) state.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) printOn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098c54; bytecode file offset 0x995850"
!SGIlCommonSubexpressionEliminationVisitor methodsFor: 'recovered'!
writeTo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) state.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) writeTo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200caf20; bytecode file offset 0x9c77f4"
!SGIlCommonSubexpressionEliminationVisitor methodsFor: 'recovered'!
unaryServiceExpr: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) leftExpr.
    recoveredValue2 := (self) visitNode: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue3) createNoOpFirstOperand: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201349f8; bytecode file offset 0xa312c0"
!SGIlCommonSubexpressionEliminationVisitor methodsFor: 'recovered'!
buildOptimizedExpr: recoveredArg1 forState: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) changes.
    recoveredValue2 := (self) path.
    recoveredValue3 := (recoveredValue2) copy.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) add: (recoveredValue5).
    (recoveredValue0) checkForOptimizations: (recoveredValue1) addTempVariableBefore: (recoveredValue3).
    recoveredValue6 := recoveredArg1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2014bbb4; bytecode file offset 0xa484c0"
!SGIlCommonSubexpressionEliminationVisitor methodsFor: 'recovered'!
binaryServiceExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) leftExpr.
    recoveredValue2 := (self) visitNode: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) rightExpr.
    recoveredValue5 := (self) visitNode: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue6) createNoOpFirstOperand: (recoveredValue7) secondOperand: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201a7910; bytecode file offset 0xaa4270"
!SGIlCommonSubexpressionEliminationVisitor methodsFor: 'recovered'!
tempAssignExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := super tempAssignExpr: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue2 := (self) resetPathForTempAssignExpr: (recoveredValue0) do: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201bf9bc; bytecode file offset 0xabc284"
!SGIlCommonSubexpressionEliminationVisitor methodsFor: 'recovered'!
ternaryServiceExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) leftExpr.
    recoveredValue2 := (self) visitNode: (recoveredValue1).
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) rightExpr.
    recoveredValue5 := (self) visitNode: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) thirdOperand.
    recoveredValue8 := (self) visitNode: (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredLocal3.
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue9) createNoOpFirstOperand: (recoveredValue10) secondOperand: (recoveredValue11) thirdOperand: (recoveredValue12).
    ^recoveredValue13
! !

"ASDBase.ic method 0x20200bd8; bytecode file offset 0xafd4b0"
!SGIlCommonSubexpressionEliminationVisitor methodsFor: 'recovered'!
optimizeNode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    path := recoveredValue1.
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new.
    changes := recoveredValue3.
    (self) initState.
    recoveredValue4 := recoveredArg1.
    (self) visitNode: (recoveredValue4).
    recoveredValue5 := SGIlCommonSubexpressionEliminationReplaceSimpleVisitor.
    recoveredValue6 := (recoveredValue5) create.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (self) changes.
    recoveredValue9 := (recoveredValue6) optimizeNode: (recoveredValue7) by: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x20221498; bytecode file offset 0xb1dd60"
!SGIlCommonSubexpressionEliminationVisitor methodsFor: 'recovered'!
exprStmnt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := super exprStmnt: (recoveredBlock4Value0).
    recoveredBlock4Value2 := recoveredBlock4Value1.
    recoveredLocal1 := recoveredBlock4Value2.
    recoveredBlock4Value1
].
    recoveredValue1 := (self) protectedDo: (recoveredValue0).
    recoveredValue2 := (self) state.
    recoveredValue3 := (recoveredValue1) combineAfter: (recoveredValue2).
    state := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x202394e4; bytecode file offset 0xb35da8"
!SGIlCommonSubexpressionEliminationVisitor methodsFor: 'recovered'!
resetPathForTempAssignExpr: recoveredArg1 do: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) path.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    path := recoveredValue3.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 |
    recoveredBlock19Value0 := recoveredLocal1.
    recoveredBlock19Value1 := recoveredBlock19Value0.
    path := recoveredBlock19Value1.
    recoveredBlock19Value0
].
    recoveredValue6 := (recoveredValue4) ensure: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2024c484; bytecode file offset 0xb48d50"
!SGIlCommonSubexpressionEliminationVisitor methodsFor: 'recovered'!
visitNodeWithoutReplace: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) path.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 |
    recoveredBlock10Value0 := recoveredArg1.
    recoveredBlock10Value1 := super visitNodeWithoutReplace: (recoveredBlock10Value0).
    recoveredBlock10Value1
].
    recoveredValue3 := [
    | recoveredBlock24Value0 recoveredBlock24Value1 |
    recoveredBlock24Value0 := (self) path.
    recoveredBlock24Value1 := (recoveredBlock24Value0) removeLast.
    recoveredBlock24Value1
].
    recoveredValue4 := (recoveredValue2) ensure: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2029e5dc; bytecode file offset 0xb9ae98"
!SGIlCommonSubexpressionEliminationVisitor methodsFor: 'recovered'!
protectedDo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := state.
    recoveredLocal2 := recoveredValue0.
    (self) initState.
    recoveredValue1 := state.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 |
    recoveredBlock19Value0 := state.
    recoveredLocal1 := recoveredBlock19Value0.
    recoveredBlock19Value1 := recoveredLocal2.
    recoveredBlock19Value2 := recoveredBlock19Value1.
    state := recoveredBlock19Value2.
    recoveredBlock19Value1
].
    (recoveredValue2) ensure: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x202f5be0; bytecode file offset 0xbf24b4"
!SGIlCommonSubexpressionEliminationVisitor methodsFor: 'recovered'!
visitNode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) path.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := (self) state.
    recoveredBlock10Value1 := recoveredArg1.
    recoveredBlock10Value2 := [:recoveredBlock10Block20Arg1 | 
    | recoveredBlock10Block20Value0 recoveredBlock10Block20Value1 recoveredBlock10Block20Value2 |
    recoveredBlock10Block20Value0 := recoveredBlock10Block20Arg1.
    recoveredBlock10Block20Value1 := (self) path.
    recoveredBlock10Block20Value2 := (recoveredBlock10Block20Value0) incCounter: (recoveredBlock10Block20Value1).
    recoveredBlock10Block20Value2
].
    (recoveredBlock10Value0) withExpression: (recoveredBlock10Value1) do: (recoveredBlock10Value2).
    recoveredBlock10Value3 := recoveredArg1.
    recoveredBlock10Value4 := (recoveredBlock10Value3) ileAcceptNodeVisitor: (self).
    recoveredBlock10Value4
].
    recoveredValue3 := [
    | recoveredBlock40Value0 recoveredBlock40Value1 |
    recoveredBlock40Value0 := (self) path.
    recoveredBlock40Value1 := (recoveredBlock40Value0) removeLast.
    recoveredBlock40Value1
].
    recoveredValue4 := (recoveredValue2) ensure: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x203ab490; bytecode file offset 0xca7d84"
!SGIlCommonSubexpressionEliminationVisitor methodsFor: 'recovered'!
abstractStatementList: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) stmntList.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 |
    recoveredBlock14Value0 := (self) ileBuilder.
    recoveredBlock14Value1 := recoveredBlock14Arg1.
    recoveredBlock14Value2 := (recoveredBlock14Value1) source.
    recoveredBlock14Value3 := [
    | recoveredBlock14Block26Value0 recoveredBlock14Block26Value1 recoveredBlock14Block26Value2 recoveredBlock14Block26Value3 recoveredBlock14Block26Value4 recoveredBlock14Block26Value5 recoveredBlock14Block26Value6 recoveredBlock14Block26Value7 recoveredBlock14Block26Value8 recoveredBlock14Block26Value9 |
    recoveredBlock14Block26Value0 := recoveredLocal1.
    recoveredBlock14Block26Value1 := recoveredBlock14Arg1.
    recoveredBlock14Block26Value2 := (self) visitNode: (recoveredBlock14Block26Value1).
    (recoveredBlock14Block26Value0) add: (recoveredBlock14Block26Value2).
    recoveredBlock14Block26Value3 := (self) state.
    recoveredBlock14Block26Value4 := (self) changes.
    recoveredBlock14Block26Value5 := (self) path.
    recoveredBlock14Block26Value6 := (recoveredBlock14Block26Value5) copy.
    recoveredBlock14Block26Value7 := recoveredBlock14Block26Value6.
    recoveredBlock14Block26Value8 := recoveredBlock14Arg1.
    (recoveredBlock14Block26Value7) add: (recoveredBlock14Block26Value8).
    recoveredBlock14Block26Value9 := (recoveredBlock14Block26Value3) checkForOptimizations: (recoveredBlock14Block26Value4) addTempVariableBefore: (recoveredBlock14Block26Value6).
    recoveredBlock14Block26Value9
].
    recoveredBlock14Value4 := (recoveredBlock14Value0) useStatementSource: (recoveredBlock14Value2) for: (recoveredBlock14Value3).
    recoveredBlock14Value4
].
    (recoveredValue3) reverseDo: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) reverse.
    recoveredValue8 := (recoveredValue5) createNoOpStmntList: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x203df878; bytecode file offset 0xcdc150"
!SGIlCommonSubexpressionEliminationVisitor methodsFor: 'recovered'!
binaryLogicExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) leftExpr.
    recoveredBlock4Value2 := (self) visitNode: (recoveredBlock4Value1).
    recoveredBlock4Value3 := recoveredBlock4Value2.
    recoveredLocal4 := recoveredBlock4Value3.
    recoveredBlock4Value2
].
    recoveredValue1 := (self) protectedDo: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := [
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 |
    recoveredBlock25Value0 := recoveredArg1.
    recoveredBlock25Value1 := (recoveredBlock25Value0) rightExpr.
    recoveredBlock25Value2 := (self) visitNode: (recoveredBlock25Value1).
    recoveredBlock25Value3 := recoveredBlock25Value2.
    recoveredLocal3 := recoveredBlock25Value3.
    recoveredBlock25Value2
].
    recoveredValue3 := (self) protectedDo: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal3.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) buildOptimizedExpr: (recoveredValue4) forState: (recoveredValue5).
    recoveredLocal3 := recoveredValue6.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) markAsBranchOnly.
    recoveredValue10 := (recoveredValue7) combineAfter: (recoveredValue9).
    recoveredValue11 := (self) state.
    recoveredValue12 := (recoveredValue10) combineAfter: (recoveredValue11).
    state := recoveredValue12.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := recoveredLocal4.
    recoveredValue15 := recoveredLocal3.
    recoveredValue16 := (recoveredValue13) createNoOpLeftExpr: (recoveredValue14) rightExpr: (recoveredValue15).
    ^recoveredValue16
! !

"ASDBase.ic method 0x203f2280; bytecode file offset 0xceeb60"
!SGIlCommonSubexpressionEliminationVisitor methodsFor: 'recovered'!
repeatStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 |
    recoveredBlock4Value0 := SGCgExpressionContext.
    recoveredBlock4Value1 := (recoveredBlock4Value0) nonArithmeticContext.
    recoveredBlock4Value2 := [
    | recoveredBlock4Block13Value0 recoveredBlock4Block13Value1 recoveredBlock4Block13Value2 |
    recoveredBlock4Block13Value0 := recoveredArg1.
    recoveredBlock4Block13Value1 := (recoveredBlock4Block13Value0) expr.
    recoveredBlock4Block13Value2 := (self) visitNode: (recoveredBlock4Block13Value1).
    recoveredBlock4Block13Value2
].
    recoveredBlock4Value3 := (recoveredBlock4Value1) executeInContext: (recoveredBlock4Value2).
    recoveredBlock4Value4 := recoveredBlock4Value3.
    recoveredLocal4 := recoveredBlock4Value4.
    recoveredBlock4Value3
].
    recoveredValue1 := (self) protectedDo: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := [
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 recoveredBlock39Value3 |
    recoveredBlock39Value0 := recoveredArg1.
    recoveredBlock39Value1 := (recoveredBlock39Value0) doStmnt.
    recoveredBlock39Value2 := (self) visitNode: (recoveredBlock39Value1).
    recoveredBlock39Value3 := recoveredBlock39Value2.
    recoveredLocal3 := recoveredBlock39Value3.
    recoveredBlock39Value2
].
    recoveredValue3 := (self) protectedDo: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue4) combineAfter: (recoveredValue5).
    recoveredValue7 := (recoveredValue6) repeatedlyExecuted.
    recoveredValue8 := (self) state.
    recoveredValue9 := (recoveredValue7) combineAfter: (recoveredValue8).
    state := recoveredValue9.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := recoveredLocal4.
    recoveredValue12 := recoveredLocal3.
    recoveredValue13 := (recoveredValue10) createNoOpExpr: (recoveredValue11) doStmnt: (recoveredValue12).
    ^recoveredValue13
! !

"ASDBase.ic method 0x203f2310; bytecode file offset 0xceebf0"
!SGIlCommonSubexpressionEliminationVisitor methodsFor: 'recovered'!
whileStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 |
    recoveredBlock4Value0 := SGCgExpressionContext.
    recoveredBlock4Value1 := (recoveredBlock4Value0) nonArithmeticContext.
    recoveredBlock4Value2 := [
    | recoveredBlock4Block13Value0 recoveredBlock4Block13Value1 recoveredBlock4Block13Value2 |
    recoveredBlock4Block13Value0 := recoveredArg1.
    recoveredBlock4Block13Value1 := (recoveredBlock4Block13Value0) expr.
    recoveredBlock4Block13Value2 := (self) visitNode: (recoveredBlock4Block13Value1).
    recoveredBlock4Block13Value2
].
    recoveredBlock4Value3 := (recoveredBlock4Value1) executeInContext: (recoveredBlock4Value2).
    recoveredBlock4Value4 := recoveredBlock4Value3.
    recoveredLocal4 := recoveredBlock4Value4.
    recoveredBlock4Value3
].
    recoveredValue1 := (self) protectedDo: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := [
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 recoveredBlock39Value3 |
    recoveredBlock39Value0 := recoveredArg1.
    recoveredBlock39Value1 := (recoveredBlock39Value0) doStmnt.
    recoveredBlock39Value2 := (self) visitNode: (recoveredBlock39Value1).
    recoveredBlock39Value3 := recoveredBlock39Value2.
    recoveredLocal3 := recoveredBlock39Value3.
    recoveredBlock39Value2
].
    recoveredValue3 := (self) protectedDo: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) repeatedlyExecuted.
    recoveredValue7 := (recoveredValue4) combineAfter: (recoveredValue6).
    recoveredValue8 := (self) state.
    recoveredValue9 := (recoveredValue7) combineAfter: (recoveredValue8).
    state := recoveredValue9.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := recoveredLocal4.
    recoveredValue12 := recoveredLocal3.
    recoveredValue13 := (recoveredValue10) createNoOpExpr: (recoveredValue11) doStmnt: (recoveredValue12).
    ^recoveredValue13
! !

"ASDBase.ic method 0x2047667c; bytecode file offset 0xd72f60"
!SGIlCommonSubexpressionEliminationVisitor methodsFor: 'recovered'!
ifThenStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleCppIfStmnt.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 |
    recoveredBlock23Value0 := SGCgExpressionContext.
    recoveredBlock23Value1 := (recoveredBlock23Value0) nonArithmeticContext.
    recoveredBlock23Value2 := [
    | recoveredBlock23Block33Value0 recoveredBlock23Block33Value1 recoveredBlock23Block33Value2 recoveredBlock23Block33Value3 |
    recoveredBlock23Block33Value0 := recoveredArg1.
    recoveredBlock23Block33Value1 := (recoveredBlock23Block33Value0) expr.
    recoveredBlock23Block33Value2 := (self) visitNode: (recoveredBlock23Block33Value1).
    recoveredBlock23Block33Value3 := recoveredBlock23Block33Value2.
    recoveredLocal4 := recoveredBlock23Block33Value3.
    recoveredBlock23Block33Value2
].
    recoveredBlock23Value3 := (recoveredBlock23Value1) executeInContext: (recoveredBlock23Value2).
    recoveredBlock23Value3
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) protectedDo: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock59Value0 recoveredBlock59Value1 recoveredBlock59Value2 recoveredBlock59Value3 |
    recoveredBlock59Value0 := recoveredArg1.
    recoveredBlock59Value1 := (recoveredBlock59Value0) thenStmnt.
    recoveredBlock59Value2 := (self) visitNode: (recoveredBlock59Value1).
    recoveredBlock59Value3 := recoveredBlock59Value2.
    recoveredLocal3 := recoveredBlock59Value3.
    recoveredBlock59Value2
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) protectedDo: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) markAsBranchOnly.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) combineAfter: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            state := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) combineAfter: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            state := recoveredStack0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) createNoOpExpr: (recoveredStack1) thenStmnt: (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204b9970; bytecode file offset 0xdb6258"
!SGIlCommonSubexpressionEliminationVisitor methodsFor: 'recovered'!
muxExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 |
    recoveredBlock4Value0 := SGCgExpressionContext.
    recoveredBlock4Value1 := (recoveredBlock4Value0) nonArithmeticContext.
    recoveredBlock4Value2 := [
    | recoveredBlock4Block13Value0 recoveredBlock4Block13Value1 recoveredBlock4Block13Value2 |
    recoveredBlock4Block13Value0 := recoveredArg1.
    recoveredBlock4Block13Value1 := (recoveredBlock4Block13Value0) condExpr.
    recoveredBlock4Block13Value2 := (self) visitNode: (recoveredBlock4Block13Value1).
    recoveredBlock4Block13Value2
].
    recoveredBlock4Value3 := (recoveredBlock4Value1) executeInContext: (recoveredBlock4Value2).
    recoveredBlock4Value4 := recoveredBlock4Value3.
    recoveredLocal6 := recoveredBlock4Value4.
    recoveredBlock4Value3
].
    recoveredValue1 := (self) protectedDo: (recoveredValue0).
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := [
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 recoveredBlock39Value3 |
    recoveredBlock39Value0 := recoveredArg1.
    recoveredBlock39Value1 := (recoveredBlock39Value0) leftExpr.
    recoveredBlock39Value2 := (self) visitNode: (recoveredBlock39Value1).
    recoveredBlock39Value3 := recoveredBlock39Value2.
    recoveredLocal5 := recoveredBlock39Value3.
    recoveredBlock39Value2
].
    recoveredValue3 := (self) protectedDo: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := [
    | recoveredBlock63Value0 recoveredBlock63Value1 recoveredBlock63Value2 recoveredBlock63Value3 |
    recoveredBlock63Value0 := recoveredArg1.
    recoveredBlock63Value1 := (recoveredBlock63Value0) rightExpr.
    recoveredBlock63Value2 := (self) visitNode: (recoveredBlock63Value1).
    recoveredBlock63Value3 := recoveredBlock63Value2.
    recoveredLocal4 := recoveredBlock63Value3.
    recoveredBlock63Value2
].
    recoveredValue5 := (self) protectedDo: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal5.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (self) buildOptimizedExpr: (recoveredValue6) forState: (recoveredValue7).
    recoveredLocal5 := recoveredValue8.
    recoveredValue9 := recoveredLocal4.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (self) buildOptimizedExpr: (recoveredValue9) forState: (recoveredValue10).
    recoveredLocal4 := recoveredValue11.
    recoveredValue12 := recoveredLocal3.
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (recoveredValue13) combineBranch: (recoveredValue14).
    recoveredValue16 := (recoveredValue12) combineAfter: (recoveredValue15).
    recoveredValue17 := (self) state.
    recoveredValue18 := (recoveredValue16) combineAfter: (recoveredValue17).
    state := recoveredValue18.
    recoveredValue19 := recoveredArg1.
    recoveredValue20 := recoveredLocal6.
    recoveredValue21 := recoveredLocal5.
    recoveredValue22 := recoveredLocal4.
    recoveredValue23 := (recoveredValue19) createOpCond: (recoveredValue20) leftExpr: (recoveredValue21) rightExpr: (recoveredValue22).
    ^recoveredValue23
! !

"ASDBase.ic method 0x204ceb20; bytecode file offset 0xdcb408"
!SGIlCommonSubexpressionEliminationVisitor methodsFor: 'recovered'!
ifThenElseStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleCppIfElseStmnt.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 |
    recoveredBlock23Value0 := SGCgExpressionContext.
    recoveredBlock23Value1 := (recoveredBlock23Value0) nonArithmeticContext.
    recoveredBlock23Value2 := [
    | recoveredBlock23Block33Value0 recoveredBlock23Block33Value1 recoveredBlock23Block33Value2 |
    recoveredBlock23Block33Value0 := recoveredArg1.
    recoveredBlock23Block33Value1 := (recoveredBlock23Block33Value0) expr.
    recoveredBlock23Block33Value2 := (self) visitNode: (recoveredBlock23Block33Value1).
    recoveredBlock23Block33Value2
].
    recoveredBlock23Value3 := (recoveredBlock23Value1) executeInContext: (recoveredBlock23Value2).
    recoveredBlock23Value4 := recoveredBlock23Value3.
    recoveredLocal6 := recoveredBlock23Value4.
    recoveredBlock23Value3
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) protectedDo: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock59Value0 recoveredBlock59Value1 recoveredBlock59Value2 recoveredBlock59Value3 |
    recoveredBlock59Value0 := recoveredArg1.
    recoveredBlock59Value1 := (recoveredBlock59Value0) thenStmnt.
    recoveredBlock59Value2 := (self) visitNode: (recoveredBlock59Value1).
    recoveredBlock59Value3 := recoveredBlock59Value2.
    recoveredLocal5 := recoveredBlock59Value3.
    recoveredBlock59Value2
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) protectedDo: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock84Value0 recoveredBlock84Value1 recoveredBlock84Value2 recoveredBlock84Value3 |
    recoveredBlock84Value0 := recoveredArg1.
    recoveredBlock84Value1 := (recoveredBlock84Value0) elseStmnt.
    recoveredBlock84Value2 := (self) visitNode: (recoveredBlock84Value1).
    recoveredBlock84Value3 := recoveredBlock84Value2.
    recoveredLocal4 := recoveredBlock84Value3.
    recoveredBlock84Value2
].
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) protectedDo: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) combineBranch: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) combineAfter: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            state := recoveredStack0.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) combineAfter: (recoveredStack1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            state := recoveredStack0.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) createNoOpExpr: (recoveredStack1) thenStmnt: (recoveredStack2) elseStmnt: (recoveredStack3).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204e75e4; bytecode file offset 0xde3ed0"
!SGIlCommonSubexpressionEliminationVisitor methodsFor: 'recovered'!
forStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := (recoveredBlock4Value1) firstExpr.
    recoveredBlock4Value3 := (self) stmnt: (recoveredBlock4Value0) expr: (recoveredBlock4Value2).
    recoveredBlock4Value4 := recoveredBlock4Value3.
    recoveredLocal8 := recoveredBlock4Value4.
    recoveredBlock4Value3
].
    recoveredValue1 := (self) protectedDo: (recoveredValue0).
    recoveredLocal4 := recoveredValue1.
    recoveredValue2 := [
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 recoveredBlock29Value4 |
    recoveredBlock29Value0 := SGCgExpressionContext.
    recoveredBlock29Value1 := (recoveredBlock29Value0) nonArithmeticContext.
    recoveredBlock29Value2 := [
    | recoveredBlock29Block40Value0 recoveredBlock29Block40Value1 recoveredBlock29Block40Value2 recoveredBlock29Block40Value3 |
    recoveredBlock29Block40Value0 := recoveredArg1.
    recoveredBlock29Block40Value1 := recoveredArg1.
    recoveredBlock29Block40Value2 := (recoveredBlock29Block40Value1) expr.
    recoveredBlock29Block40Value3 := (self) stmnt: (recoveredBlock29Block40Value0) expr: (recoveredBlock29Block40Value2).
    recoveredBlock29Block40Value3
].
    recoveredBlock29Value3 := (recoveredBlock29Value1) executeInContext: (recoveredBlock29Value2).
    recoveredBlock29Value4 := recoveredBlock29Value3.
    recoveredLocal7 := recoveredBlock29Value4.
    recoveredBlock29Value3
].
    recoveredValue3 := (self) protectedDo: (recoveredValue2).
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := [
    | recoveredBlock69Value0 recoveredBlock69Value1 recoveredBlock69Value2 recoveredBlock69Value3 recoveredBlock69Value4 |
    recoveredBlock69Value0 := recoveredArg1.
    recoveredBlock69Value1 := recoveredArg1.
    recoveredBlock69Value2 := (recoveredBlock69Value1) lastExpr.
    recoveredBlock69Value3 := (self) stmnt: (recoveredBlock69Value0) expr: (recoveredBlock69Value2).
    recoveredBlock69Value4 := recoveredBlock69Value3.
    recoveredLocal6 := recoveredBlock69Value4.
    recoveredBlock69Value3
].
    recoveredValue5 := (self) protectedDo: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := [
    | recoveredBlock96Value0 recoveredBlock96Value1 recoveredBlock96Value2 recoveredBlock96Value3 |
    recoveredBlock96Value0 := recoveredArg1.
    recoveredBlock96Value1 := (recoveredBlock96Value0) doStmnt.
    recoveredBlock96Value2 := (self) visitNode: (recoveredBlock96Value1).
    recoveredBlock96Value3 := recoveredBlock96Value2.
    recoveredLocal5 := recoveredBlock96Value3.
    recoveredBlock96Value2
].
    recoveredValue7 := (self) protectedDo: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal4.
    recoveredValue9 := recoveredLocal3.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue9) combineAfter: (recoveredValue10).
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := (recoveredValue11) combineAfter: (recoveredValue12).
    recoveredValue14 := (recoveredValue13) repeatedlyExecuted.
    recoveredValue15 := (recoveredValue8) combineAfter: (recoveredValue14).
    recoveredValue16 := (self) state.
    recoveredValue17 := (recoveredValue15) combineAfter: (recoveredValue16).
    state := recoveredValue17.
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := recoveredLocal7.
    recoveredValue20 := recoveredLocal8.
    recoveredValue21 := recoveredLocal6.
    recoveredValue22 := recoveredLocal5.
    recoveredValue23 := (recoveredValue18) createNoOpExpr: (recoveredValue19) firstExpr: (recoveredValue20) lastExpr: (recoveredValue21) doStmnt: (recoveredValue22).
    ^recoveredValue23
! !

"ASDBase.ic method 0x204f5904; bytecode file offset 0xdf2200"
!SGIlCommonSubexpressionEliminationVisitor methodsFor: 'recovered'!
switchStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) expressionContext.
    recoveredBlock4Value2 := [
    | recoveredBlock4Block14Value0 recoveredBlock4Block14Value1 recoveredBlock4Block14Value2 |
    recoveredBlock4Block14Value0 := recoveredArg1.
    recoveredBlock4Block14Value1 := (recoveredBlock4Block14Value0) expr.
    recoveredBlock4Block14Value2 := (self) visitNode: (recoveredBlock4Block14Value1).
    recoveredBlock4Block14Value2
].
    recoveredBlock4Value3 := (recoveredBlock4Value1) executeInContext: (recoveredBlock4Value2).
    recoveredBlock4Value4 := recoveredBlock4Value3.
    recoveredLocal4 := recoveredBlock4Value4.
    recoveredBlock4Value3
].
    recoveredValue1 := (self) protectedDo: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) path.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) stmnt.
    (recoveredValue2) add: (recoveredValue4).
    recoveredValue5 := [
    | recoveredBlock47Value0 recoveredBlock47Value1 recoveredBlock47Value2 recoveredBlock47Value3 recoveredBlock47Value4 recoveredBlock47Value5 |
    recoveredBlock47Value0 := recoveredArg1.
    recoveredBlock47Value1 := (recoveredBlock47Value0) stmnt.
    recoveredBlock47Value2 := (recoveredBlock47Value1) stmntList.
    recoveredBlock47Value3 := [:recoveredBlock47Block61Arg1 | 
    | recoveredBlock47Block61Local1 recoveredBlock47Block61Local2 recoveredBlock47Block61Stack0 recoveredBlock47Block61Stack1 recoveredBlock47Block61Stack2 recoveredBlock47Block61PC recoveredBlock47Block61Step recoveredBlock47Block61Done recoveredBlock47Block61Result |
    recoveredBlock47Block61Stack0 := self.
    recoveredBlock47Block61PC := 68.
    recoveredBlock47Block61Done := false.
    [recoveredBlock47Block61Done not] whileTrue: [
        recoveredBlock47Block61Step := recoveredBlock47Block61PC.
        recoveredBlock47Block61Step = 68 ifTrue: [
            recoveredBlock47Block61Stack1 := [
    | recoveredBlock47Block61Block68Value0 recoveredBlock47Block61Block68Value1 recoveredBlock47Block61Block68Value2 |
    recoveredBlock47Block61Block68Value0 := recoveredBlock47Block61Arg1.
    recoveredBlock47Block61Block68Value1 := (self) visitNode: (recoveredBlock47Block61Block68Value0).
    recoveredBlock47Block61Block68Value2 := recoveredBlock47Block61Block68Value1.
    recoveredBlock47Block61Local2 := recoveredBlock47Block61Block68Value2.
    recoveredBlock47Block61Block68Value1
].
            recoveredBlock47Block61PC := 83.
        ].
        recoveredBlock47Block61Step = 83 ifTrue: [
            recoveredBlock47Block61Stack0 := (recoveredBlock47Block61Stack0) protectedDo: (recoveredBlock47Block61Stack1).
            recoveredBlock47Block61PC := 85.
        ].
        recoveredBlock47Block61Step = 85 ifTrue: [
            recoveredBlock47Block61Local1 := recoveredBlock47Block61Stack0.
            recoveredBlock47Block61PC := 88.
        ].
        recoveredBlock47Block61Step = 88 ifTrue: [
            recoveredBlock47Block61Stack0 := recoveredLocal1.
            recoveredBlock47Block61PC := 91.
        ].
        recoveredBlock47Block61Step = 91 ifTrue: [
            (recoveredBlock47Block61Stack0 ~~ nil) ifTrue: [recoveredBlock47Block61PC := 104] ifFalse: [recoveredBlock47Block61PC := 94].
        ].
        recoveredBlock47Block61Step = 94 ifTrue: [
            recoveredBlock47Block61Stack0 := recoveredBlock47Block61Local1.
            recoveredBlock47Block61PC := 97.
        ].
        recoveredBlock47Block61Step = 97 ifTrue: [
            recoveredLocal1 := recoveredBlock47Block61Stack0.
            recoveredBlock47Block61PC := 100.
        ].
        recoveredBlock47Block61Step = 100 ifTrue: [
            recoveredBlock47Block61PC := 115.
        ].
        recoveredBlock47Block61Step = 104 ifTrue: [
            recoveredBlock47Block61Stack0 := recoveredLocal1.
            recoveredBlock47Block61PC := 107.
        ].
        recoveredBlock47Block61Step = 107 ifTrue: [
            recoveredBlock47Block61Stack1 := recoveredBlock47Block61Local1.
            recoveredBlock47Block61PC := 110.
        ].
        recoveredBlock47Block61Step = 110 ifTrue: [
            recoveredBlock47Block61Stack0 := (recoveredBlock47Block61Stack0) combineBranch: (recoveredBlock47Block61Stack1).
            recoveredBlock47Block61PC := 112.
        ].
        recoveredBlock47Block61Step = 112 ifTrue: [
            recoveredLocal1 := recoveredBlock47Block61Stack0.
            recoveredBlock47Block61PC := 115.
        ].
        recoveredBlock47Block61Step = 115 ifTrue: [
            recoveredBlock47Block61Stack0 := recoveredBlock47Block61Local2.
            recoveredBlock47Block61PC := 118.
        ].
        recoveredBlock47Block61Step = 118 ifTrue: [
            recoveredBlock47Block61Result := recoveredBlock47Block61Stack0.
            recoveredBlock47Block61Done := true.
        ].
    ].
    recoveredBlock47Block61Result
].
    recoveredBlock47Value4 := (recoveredBlock47Value2) collect: (recoveredBlock47Value3).
    recoveredBlock47Value5 := recoveredBlock47Value4.
    recoveredLocal3 := recoveredBlock47Value5.
    recoveredBlock47Value4
].
    recoveredValue6 := [
    | recoveredBlock126Value0 recoveredBlock126Value1 |
    recoveredBlock126Value0 := (self) path.
    recoveredBlock126Value1 := (recoveredBlock126Value0) removeLast.
    recoveredBlock126Value1
].
    (recoveredValue5) ensure: (recoveredValue6).
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue7) combineAfter: (recoveredValue8).
    recoveredValue10 := (self) state.
    recoveredValue11 := (recoveredValue9) combineAfter: (recoveredValue10).
    state := recoveredValue11.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := recoveredLocal4.
    recoveredValue14 := (self) ileBuilder.
    recoveredValue15 := recoveredLocal3.
    recoveredValue16 := (recoveredValue14) blockedStmntList: (recoveredValue15).
    recoveredValue17 := (recoveredValue12) createNoOpExpr: (recoveredValue13) stmnt: (recoveredValue16).
    ^recoveredValue17
! !

