"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20038bd4; bytecode file offset 0x935c54"
!SGIlPrepareExprVisitor methodsFor: 'recovered'!
abstractExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asIleExpandExprPrepared.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003bb70; bytecode file offset 0x938608"
!SGIlPrepareExprVisitor methodsFor: 'recovered'!
lValueExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) abstractExpr: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009637c; bytecode file offset 0x992c48"
!SGIlPrepareExprVisitor methodsFor: 'recovered'!
statementExpression: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) stmnt.
    (self) visitNode: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20196564; bytecode file offset 0xa92eb8"
!SGIlPrepareExprVisitor methodsFor: 'recovered'!
switchStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expressionContext.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := super switchStmnt: (recoveredBlock8Value0).
    recoveredBlock8Value1
].
    recoveredValue3 := (recoveredValue1) executeInContext: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x202a76d4; bytecode file offset 0xba3fa4"
!SGIlPrepareExprVisitor methodsFor: 'recovered'!
cppIfThenStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) transformationFactory.
    recoveredValue1 := (recoveredValue0) serviceVisitor.
    recoveredValue2 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredArg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) expr.
    recoveredBlock6Value2 := (self) visitNode: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    recoveredValue3 := (recoveredValue1) disableTransformationDo: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) thenStmnt.
    recoveredValue6 := (self) visitNode: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue7) createNoOpExpr: (recoveredValue8) thenStmnt: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x20332908; bytecode file offset 0xc2f1dc"
!SGIlPrepareExprVisitor methodsFor: 'recovered'!
cppIfThenElseStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (self) transformationFactory.
    recoveredValue1 := (recoveredValue0) serviceVisitor.
    recoveredValue2 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredArg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) expr.
    recoveredBlock6Value2 := (self) visitNode: (recoveredBlock6Value1).
    recoveredBlock6Value3 := recoveredBlock6Value2.
    recoveredLocal3 := recoveredBlock6Value3.
    recoveredBlock6Value2
].
    (recoveredValue1) disableTransformationDo: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) thenStmnt.
    recoveredValue5 := (self) visitNode: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) elseStmnt.
    recoveredValue8 := (self) visitNode: (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredLocal3.
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue9) createNoOpExpr: (recoveredValue10) thenStmnt: (recoveredValue11) elseStmnt: (recoveredValue12).
    ^recoveredValue13
! !

