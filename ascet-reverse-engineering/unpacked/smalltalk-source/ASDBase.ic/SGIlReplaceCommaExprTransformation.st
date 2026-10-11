"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200395c0; bytecode file offset 0x938608"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
abstractSpecialCall: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) abstractMethodCall: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005a0a0; bytecode file offset 0x956a30"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
stripCommaExpr: recoveredArg1 toList: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) stripCommaExprToList: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005d730; bytecode file offset 0x959fec"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
isNoStatementContext
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := noStatementContext.
    recoveredValue1 := (recoveredValue0) = (true).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005d8dc; bytecode file offset 0x95a190"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
isConditionalContext
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := conditionalContext.
    recoveredValue1 := (recoveredValue0) = (true).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201e8b14; bytecode file offset 0xae5408"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
unaryOp: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) leftExpr.
    recoveredValue2 := (self) visitNode: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 |
    recoveredBlock10Value0 := recoveredArg1.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := (recoveredBlock10Value0) createNoOpLeftExpr: (recoveredBlock10Value1).
    recoveredBlock10Value2
].
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) replaceCommaExpr: (recoveredValue2) withExpr: (recoveredValue3) origExpr: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201e8b2c; bytecode file offset 0xae5408"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
tempAssignIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) tempAssign.
    recoveredValue2 := (self) visitNode: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 |
    recoveredBlock10Value0 := recoveredArg1.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := (recoveredBlock10Value0) createOpTempAssign: (recoveredBlock10Value1).
    recoveredBlock10Value2
].
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) replaceCommaExpr: (recoveredValue2) withExpr: (recoveredValue3) origExpr: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201e8b44; bytecode file offset 0xae5408"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
wrappedExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    recoveredValue2 := (self) visitNode: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 |
    recoveredBlock10Value0 := recoveredArg1.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := (recoveredBlock10Value0) createOpExpr: (recoveredBlock10Value1).
    recoveredBlock10Value2
].
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) replaceCommaExpr: (recoveredValue2) withExpr: (recoveredValue3) origExpr: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201ede50; bytecode file offset 0xaea70c"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
tryWithoutTempVarVisitedDo: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := visitedTempAssignExprs.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [
    | recoveredBlock13Value0 recoveredBlock13Value1 |
    recoveredBlock13Value0 := recoveredLocal1.
    recoveredBlock13Value1 := recoveredBlock13Value0.
    visitedTempAssignExprs := recoveredBlock13Value1.
    recoveredBlock13Value0
].
    recoveredValue4 := (recoveredValue2) ensure: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201fc438; bytecode file offset 0xaf8d10"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
unaryServiceExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) firstOperand.
    recoveredValue4 := (self) visitNode: (recoveredValue3).
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (self) stripCommaExpr: (recoveredValue4) toList: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue8) createNoOpFirstOperand: (recoveredValue9).
    (recoveredValue7) add: (recoveredValue10).
    recoveredValue11 := (self) ileBuilder.
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := (recoveredValue11) createCommaExpr: (recoveredValue12).
    ^recoveredValue13
! !

"ASDBase.ic method 0x20207b48; bytecode file offset 0xb04400"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
noStatementContextDo: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := noStatementContext.
    recoveredLocal1 := recoveredValue0.
    noStatementContext := true.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 |
    recoveredBlock15Value0 := recoveredLocal1.
    recoveredBlock15Value1 := recoveredBlock15Value0.
    noStatementContext := recoveredBlock15Value1.
    recoveredBlock15Value0
].
    recoveredValue3 := (recoveredValue1) ensure: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2021ade0; bytecode file offset 0xb1769c"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
conditionalContextDo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := conditionalContext.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            conditionalContext := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [
    conditionalContext := false.
    false
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) ensure: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20245db0; bytecode file offset 0xb426ec"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
declFieldAccess: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super declFieldAccess: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue5) receiver.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (self) stripCommaExpr: (recoveredValue6) toList: (recoveredValue7).
    recoveredValue9 := (recoveredValue4) createOpReceiver: (recoveredValue8).
    recoveredLocal2 := recoveredValue9.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := recoveredLocal2.
    (recoveredValue10) add: (recoveredValue11).
    recoveredValue12 := (self) ileBuilder.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue12) createCommaExpr: (recoveredValue13).
    ^recoveredValue14
! !

"ASDBase.ic method 0x20245de0; bytecode file offset 0xb426ec"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
implCastAssignExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super implCastAssignExpr: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue5) expr.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (self) stripCommaExpr: (recoveredValue6) toList: (recoveredValue7).
    recoveredValue9 := (recoveredValue4) createOp: (recoveredValue8).
    recoveredLocal2 := recoveredValue9.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := recoveredLocal2.
    (recoveredValue10) add: (recoveredValue11).
    recoveredValue12 := (self) ileBuilder.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue12) createCommaExpr: (recoveredValue13).
    ^recoveredValue14
! !

"ASDBase.ic method 0x20245e10; bytecode file offset 0xb426ec"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
abstractDirectAccess: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super abstractDirectAccess: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue5) receiver.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (self) stripCommaExpr: (recoveredValue6) toList: (recoveredValue7).
    recoveredValue9 := (recoveredValue4) createOpReceiver: (recoveredValue8).
    recoveredLocal2 := recoveredValue9.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := recoveredLocal2.
    (recoveredValue10) add: (recoveredValue11).
    recoveredValue12 := (self) ileBuilder.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue12) createCommaExpr: (recoveredValue13).
    ^recoveredValue14
! !

"ASDBase.ic method 0x2027d67c; bytecode file offset 0xb79f44"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
whileStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) expr.
    recoveredBlock4Value2 := (self) visitNode: (recoveredBlock4Value1).
    recoveredBlock4Value2
].
    recoveredValue1 := (self) noStatementContextDo: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) doStmnt.
    recoveredValue4 := (self) visitNode: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue5) createNoOpExpr: (recoveredValue6) doStmnt: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2027de8c; bytecode file offset 0xb7a768"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
binaryServiceExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) firstOperand.
    recoveredValue4 := (self) visitNode: (recoveredValue3).
    recoveredValue5 := recoveredLocal3.
    recoveredValue6 := (self) stripCommaExpr: (recoveredValue4) toList: (recoveredValue5).
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) secondOperand.
    recoveredValue9 := (self) visitNode: (recoveredValue8).
    recoveredValue10 := recoveredLocal3.
    recoveredValue11 := (self) stripCommaExpr: (recoveredValue9) toList: (recoveredValue10).
    recoveredLocal1 := recoveredValue11.
    recoveredValue12 := recoveredLocal3.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := recoveredLocal2.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (recoveredValue13) createNoOpFirstOperand: (recoveredValue14) secondOperand: (recoveredValue15).
    (recoveredValue12) add: (recoveredValue16).
    recoveredValue17 := (self) ileBuilder.
    recoveredValue18 := recoveredLocal3.
    recoveredValue19 := (recoveredValue17) createCommaExpr: (recoveredValue18).
    ^recoveredValue19
! !

"ASDBase.ic method 0x20294db0; bytecode file offset 0xb91690"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
assignExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super assignExpr: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue5) lValue.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (self) stripCommaExpr: (recoveredValue6) toList: (recoveredValue7).
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := (recoveredValue9) expr.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (self) stripCommaExpr: (recoveredValue10) toList: (recoveredValue11).
    recoveredValue13 := (recoveredValue4) createOpLValue: (recoveredValue8) expr: (recoveredValue12).
    recoveredLocal2 := recoveredValue13.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := recoveredLocal2.
    (recoveredValue14) add: (recoveredValue15).
    recoveredValue16 := (self) ileBuilder.
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := (recoveredValue16) createCommaExpr: (recoveredValue17).
    ^recoveredValue18
! !

"ASDBase.ic method 0x202b26f4; bytecode file offset 0xbaefd4"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
binaryExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super binaryExpr: (recoveredValue0).
    recoveredLocal4 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal4.
    recoveredValue5 := (recoveredValue4) leftExpr.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) stripCommaExpr: (recoveredValue5) toList: (recoveredValue6).
    recoveredLocal3 := recoveredValue7.
    recoveredValue8 := recoveredLocal4.
    recoveredValue9 := (recoveredValue8) rightExpr.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (self) stripCommaExpr: (recoveredValue9) toList: (recoveredValue10).
    recoveredLocal2 := recoveredValue11.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := recoveredLocal4.
    recoveredValue14 := recoveredLocal3.
    recoveredValue15 := recoveredLocal2.
    recoveredValue16 := (recoveredValue13) createNoOpLeftExpr: (recoveredValue14) rightExpr: (recoveredValue15).
    (recoveredValue12) add: (recoveredValue16).
    recoveredValue17 := (self) ileBuilder.
    recoveredValue18 := recoveredLocal1.
    recoveredValue19 := (recoveredValue17) createCommaExpr: (recoveredValue18).
    ^recoveredValue19
! !

"ASDBase.ic method 0x202d5874; bytecode file offset 0xbd213c"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
binaryLogicExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) leftExpr.
    recoveredValue2 := (self) visitNode: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) rightExpr.
    recoveredValue5 := (self) visitNode: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 |
    recoveredBlock25Value0 := recoveredArg1.
    recoveredBlock25Value1 := recoveredBlock25Arg1.
    recoveredBlock25Value2 := recoveredLocal1.
    recoveredBlock25Value3 := (recoveredBlock25Value0) createNoOpLeftExpr: (recoveredBlock25Value1) rightExpr: (recoveredBlock25Value2).
    recoveredBlock25Value3
].
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (self) replaceCommaExpr: (recoveredValue6) withExpr: (recoveredValue7) origExpr: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x202df980; bytecode file offset 0xbdc264"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
switchStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super switchStmnt: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue5) expr.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (self) stripCommaExpr: (recoveredValue6) toList: (recoveredValue7).
    recoveredValue9 := (recoveredValue4) createNoOpExpr: (recoveredValue8).
    recoveredLocal2 := recoveredValue9.
    recoveredValue10 := (self) ileBuilder.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 |
    recoveredBlock29Value0 := (self) ileBuilder.
    recoveredBlock29Value1 := recoveredBlock29Arg1.
    recoveredBlock29Value2 := (recoveredBlock29Value0) exprStmnt: (recoveredBlock29Value1).
    recoveredBlock29Value2
].
    recoveredValue13 := (recoveredValue11) collect: (recoveredValue12).
    recoveredValue14 := recoveredLocal2.
    recoveredValue15 := (recoveredValue13) copyWith: (recoveredValue14).
    recoveredValue16 := (recoveredValue10) stmntList: (recoveredValue15).
    ^recoveredValue16
! !

"ASDBase.ic method 0x202e895c; bytecode file offset 0xbe5248"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
repeatStmnt: recoveredArg1
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
            recoveredStack0 := super repeatStmnt: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) stripCommaExpr: (recoveredStack2) toList: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) createNoOpExpr: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) doStmnt.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) createCommaExpr: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) asIleExprStmnt.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) createNoOpAddLast: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) createNoOpDoStmnt: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20311e68; bytecode file offset 0xc0e750"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
returnStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super returnStmnt: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue5) expr.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (recoveredValue7) expr.
    recoveredValue9 := (recoveredValue8) expr.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (self) stripCommaExpr: (recoveredValue9) toList: (recoveredValue10).
    recoveredValue12 := (recoveredValue6) createOp: (recoveredValue11).
    recoveredValue13 := (recoveredValue4) createNoOpExpr: (recoveredValue12).
    recoveredLocal2 := recoveredValue13.
    recoveredValue14 := (self) ileBuilder.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 |
    recoveredBlock36Value0 := (self) ileBuilder.
    recoveredBlock36Value1 := recoveredBlock36Arg1.
    recoveredBlock36Value2 := (recoveredBlock36Value0) exprStmnt: (recoveredBlock36Value1).
    recoveredBlock36Value2
].
    recoveredValue17 := (recoveredValue15) collect: (recoveredValue16).
    recoveredValue18 := recoveredLocal2.
    recoveredValue19 := (recoveredValue17) copyWith: (recoveredValue18).
    recoveredValue20 := (recoveredValue14) stmntList: (recoveredValue19).
    ^recoveredValue20
! !

"ASDBase.ic method 0x20312060; bytecode file offset 0xc0e93c"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
commaExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super commaExpr: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := (recoveredValue4) args.
    recoveredValue6 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 |
    recoveredBlock25Value0 := recoveredLocal1.
    recoveredBlock25Value1 := recoveredBlock25Arg1.
    recoveredBlock25Value2 := recoveredLocal1.
    recoveredBlock25Value3 := (self) stripCommaExpr: (recoveredBlock25Value1) toList: (recoveredBlock25Value2).
    recoveredBlock25Value4 := (recoveredBlock25Value0) add: (recoveredBlock25Value3).
    recoveredBlock25Value4
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := (self) ileBuilder.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue7) createCommaExpr: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x2031a978; bytecode file offset 0xc17258"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
ternaryServiceExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal4 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) firstOperand.
    recoveredValue4 := (self) visitNode: (recoveredValue3).
    recoveredValue5 := recoveredLocal4.
    recoveredValue6 := (self) stripCommaExpr: (recoveredValue4) toList: (recoveredValue5).
    recoveredLocal3 := recoveredValue6.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) secondOperand.
    recoveredValue9 := (self) visitNode: (recoveredValue8).
    recoveredValue10 := recoveredLocal4.
    recoveredValue11 := (self) stripCommaExpr: (recoveredValue9) toList: (recoveredValue10).
    recoveredLocal2 := recoveredValue11.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) thirdOperand.
    recoveredValue14 := (self) visitNode: (recoveredValue13).
    recoveredValue15 := recoveredLocal4.
    recoveredValue16 := (self) stripCommaExpr: (recoveredValue14) toList: (recoveredValue15).
    recoveredLocal1 := recoveredValue16.
    recoveredValue17 := recoveredLocal4.
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := recoveredLocal3.
    recoveredValue20 := recoveredLocal2.
    recoveredValue21 := recoveredLocal1.
    recoveredValue22 := (recoveredValue18) createNoOpFirstOperand: (recoveredValue19) secondOperand: (recoveredValue20) thirdOperand: (recoveredValue21).
    (recoveredValue17) add: (recoveredValue22).
    recoveredValue23 := (self) ileBuilder.
    recoveredValue24 := recoveredLocal4.
    recoveredValue25 := (recoveredValue23) createCommaExpr: (recoveredValue24).
    ^recoveredValue25
! !

"ASDBase.ic method 0x2031dc08; bytecode file offset 0xc1a4fc"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
isCommaExprThatExpands: recoveredArg1 tempVars: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleCommaExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) args.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := true.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 26.
        ].
        recoveredBlock18Step = 26 ifTrue: [
            recoveredBlock18Stack3 := recoveredArg1.
            recoveredBlock18PC := 29.
        ].
        recoveredBlock18Step = 29 ifTrue: [
            recoveredBlock18Stack3 := (recoveredBlock18Stack3) args.
            recoveredBlock18PC := 30.
        ].
        recoveredBlock18Step = 30 ifTrue: [
            recoveredBlock18Stack3 := (recoveredBlock18Stack3) last.
            recoveredBlock18PC := 31.
        ].
        recoveredBlock18Step = 31 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) = (recoveredBlock18Stack3).
            recoveredBlock18PC := 32.
        ].
        recoveredBlock18Step = 32 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 53] ifFalse: [recoveredBlock18PC := 36].
        ].
        recoveredBlock18Step = 36 ifTrue: [
            recoveredBlock18PC := 37.
        ].
        recoveredBlock18Step = 37 ifTrue: [
            recoveredBlock18Stack1 := false.
            recoveredBlock18PC := 38.
        ].
        recoveredBlock18Step = 38 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 39.
        ].
        recoveredBlock18Step = 39 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) isIleTempVarIdentifier.
            recoveredBlock18PC := 40.
        ].
        recoveredBlock18Step = 40 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 44] ifFalse: [recoveredBlock18PC := 53].
        ].
        recoveredBlock18Step = 44 ifTrue: [
            recoveredBlock18PC := 45.
        ].
        recoveredBlock18Step = 45 ifTrue: [
            recoveredBlock18Stack1 := recoveredArg2.
            recoveredBlock18PC := 48.
        ].
        recoveredBlock18Step = 48 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 49.
        ].
        recoveredBlock18Step = 49 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) tempAssign.
            recoveredBlock18PC := 51.
        ].
        recoveredBlock18Step = 51 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) includes: (recoveredBlock18Stack2).
            recoveredBlock18PC := 53.
        ].
        recoveredBlock18Step = 53 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSatisfy: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2031dc2c; bytecode file offset 0xc1a4fc"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
expr: recoveredArg1 hasNotOnlyTempVars: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleCommaExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) args.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := true.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 26.
        ].
        recoveredBlock18Step = 26 ifTrue: [
            recoveredBlock18Stack3 := recoveredArg1.
            recoveredBlock18PC := 29.
        ].
        recoveredBlock18Step = 29 ifTrue: [
            recoveredBlock18Stack3 := (recoveredBlock18Stack3) args.
            recoveredBlock18PC := 30.
        ].
        recoveredBlock18Step = 30 ifTrue: [
            recoveredBlock18Stack3 := (recoveredBlock18Stack3) last.
            recoveredBlock18PC := 31.
        ].
        recoveredBlock18Step = 31 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) = (recoveredBlock18Stack3).
            recoveredBlock18PC := 32.
        ].
        recoveredBlock18Step = 32 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 53] ifFalse: [recoveredBlock18PC := 36].
        ].
        recoveredBlock18Step = 36 ifTrue: [
            recoveredBlock18PC := 37.
        ].
        recoveredBlock18Step = 37 ifTrue: [
            recoveredBlock18Stack1 := false.
            recoveredBlock18PC := 38.
        ].
        recoveredBlock18Step = 38 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 39.
        ].
        recoveredBlock18Step = 39 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) isIleTempVarIdentifier.
            recoveredBlock18PC := 40.
        ].
        recoveredBlock18Step = 40 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 44] ifFalse: [recoveredBlock18PC := 53].
        ].
        recoveredBlock18Step = 44 ifTrue: [
            recoveredBlock18PC := 45.
        ].
        recoveredBlock18Step = 45 ifTrue: [
            recoveredBlock18Stack1 := recoveredArg2.
            recoveredBlock18PC := 48.
        ].
        recoveredBlock18Step = 48 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 49.
        ].
        recoveredBlock18Step = 49 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) tempAssign.
            recoveredBlock18PC := 51.
        ].
        recoveredBlock18Step = 51 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) includes: (recoveredBlock18Stack2).
            recoveredBlock18PC := 53.
        ].
        recoveredBlock18Step = 53 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSatisfy: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2036099c; bytecode file offset 0xc5d27c"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
assignAtExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super assignAtExpr: (recoveredValue0).
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal3.
    recoveredValue5 := (recoveredValue4) args.
    recoveredValue6 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := recoveredLocal2.
    recoveredBlock25Value2 := (self) stripCommaExpr: (recoveredBlock25Value0) toList: (recoveredBlock25Value1).
    recoveredBlock25Value2
].
    recoveredValue7 := (recoveredValue5) collect: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := recoveredLocal3.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue9) createWithArgs: (recoveredValue10).
    (recoveredValue8) add: (recoveredValue11).
    recoveredValue12 := (self) ileBuilder.
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := (recoveredValue12) createCommaExpr: (recoveredValue13).
    ^recoveredValue14
! !

"ASDBase.ic method 0x20388824; bytecode file offset 0xc85110"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
ifThenElseStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) expr.
    recoveredValue3 := (self) stmnt: (recoveredValue0) expr: (recoveredValue2).
    recoveredLocal4 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) thenStmnt.
    recoveredValue6 := (self) visitNode: (recoveredValue5).
    recoveredLocal3 := recoveredValue6.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) elseStmnt.
    recoveredValue9 := (self) visitNode: (recoveredValue8).
    recoveredLocal2 := recoveredValue9.
    recoveredValue10 := OrderedCollection.
    recoveredValue11 := (recoveredValue10) new.
    recoveredLocal5 := recoveredValue11.
    recoveredValue12 := recoveredLocal4.
    recoveredValue13 := recoveredLocal5.
    recoveredValue14 := (self) stripCommaExpr: (recoveredValue12) toList: (recoveredValue13).
    recoveredLocal4 := recoveredValue14.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := recoveredLocal4.
    recoveredValue17 := recoveredLocal3.
    recoveredValue18 := recoveredLocal2.
    recoveredValue19 := (recoveredValue15) createNoOpExpr: (recoveredValue16) thenStmnt: (recoveredValue17) elseStmnt: (recoveredValue18).
    recoveredLocal1 := recoveredValue19.
    recoveredValue20 := (self) ileBuilder.
    recoveredValue21 := recoveredLocal5.
    recoveredValue22 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Value0 recoveredBlock52Value1 recoveredBlock52Value2 |
    recoveredBlock52Value0 := (self) ileBuilder.
    recoveredBlock52Value1 := recoveredBlock52Arg1.
    recoveredBlock52Value2 := (recoveredBlock52Value0) exprStmnt: (recoveredBlock52Value1).
    recoveredBlock52Value2
].
    recoveredValue23 := (recoveredValue21) collect: (recoveredValue22).
    recoveredValue24 := recoveredLocal1.
    recoveredValue25 := (recoveredValue23) copyWith: (recoveredValue24).
    recoveredValue26 := (recoveredValue20) stmntList: (recoveredValue25).
    ^recoveredValue26
! !

"ASDBase.ic method 0x203f484c; bytecode file offset 0xcf1134"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
abstractStatementList: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) stmntList.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Local1 recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) ileBuilder.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) source.
            recoveredBlock14PC := 26.
        ].
        recoveredBlock14Step = 26 ifTrue: [
            recoveredBlock14Stack2 := [
    | recoveredBlock14Block26Value0 recoveredBlock14Block26Value1 |
    recoveredBlock14Block26Value0 := recoveredBlock14Arg1.
    recoveredBlock14Block26Value1 := (self) visitNode: (recoveredBlock14Block26Value0).
    recoveredBlock14Block26Value1
].
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) useStatementSource: (recoveredBlock14Stack1) for: (recoveredBlock14Stack2).
            recoveredBlock14PC := 40.
        ].
        recoveredBlock14Step = 40 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack0.
            recoveredBlock14PC := 43.
        ].
        recoveredBlock14Step = 43 ifTrue: [
            recoveredBlock14Stack0 := recoveredBlock14Local1.
            recoveredBlock14PC := 46.
        ].
        recoveredBlock14Step = 46 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) isIleStatementList.
            recoveredBlock14PC := 48.
        ].
        recoveredBlock14Step = 48 ifTrue: [
            (recoveredBlock14Stack0) ifTrue: [recoveredBlock14PC := 52] ifFalse: [recoveredBlock14PC := 72].
        ].
        recoveredBlock14Step = 52 ifTrue: [
            recoveredBlock14Stack0 := recoveredBlock14Local1.
            recoveredBlock14PC := 55.
        ].
        recoveredBlock14Step = 55 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) isIleBlockedStmntList.
            recoveredBlock14PC := 57.
        ].
        recoveredBlock14Step = 57 ifTrue: [
            (recoveredBlock14Stack0) ifTrue: [recoveredBlock14PC := 72] ifFalse: [recoveredBlock14PC := 60].
        ].
        recoveredBlock14Step = 60 ifTrue: [
            recoveredBlock14Stack0 := recoveredLocal1.
            recoveredBlock14PC := 63.
        ].
        recoveredBlock14Step = 63 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local1.
            recoveredBlock14PC := 66.
        ].
        recoveredBlock14Step = 66 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) stmntList.
            recoveredBlock14PC := 67.
        ].
        recoveredBlock14Step = 67 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) addAll: (recoveredBlock14Stack1).
            recoveredBlock14PC := 69.
        ].
        recoveredBlock14Step = 69 ifTrue: [
            recoveredBlock14PC := 80.
        ].
        recoveredBlock14Step = 72 ifTrue: [
            recoveredBlock14Stack0 := recoveredLocal1.
            recoveredBlock14PC := 75.
        ].
        recoveredBlock14Step = 75 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local1.
            recoveredBlock14PC := 78.
        ].
        recoveredBlock14Step = 78 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) add: (recoveredBlock14Stack1).
            recoveredBlock14PC := 80.
        ].
        recoveredBlock14Step = 80 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack0.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue5) createWithChildren: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2044b738; bytecode file offset 0xd48030"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
abstractMethodCall: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) args.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isIleArgumentOut.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 20] ifFalse: [recoveredBlock8PC := 48].
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) expr.
            recoveredBlock8PC := 22.
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isIleReferencedExpr.
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 26] ifFalse: [recoveredBlock8PC := 48].
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 27.
        ].
        recoveredBlock8Step = 27 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) expr.
            recoveredBlock8PC := 28.
        ].
        recoveredBlock8Step = 28 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) expr.
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isIleTempVarIdentifier.
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 34] ifFalse: [recoveredBlock8PC := 48].
        ].
        recoveredBlock8Step = 34 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 35.
        ].
        recoveredBlock8Step = 35 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) visitedTempAssignExprs.
            recoveredBlock8PC := 37.
        ].
        recoveredBlock8Step = 37 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 38.
        ].
        recoveredBlock8Step = 38 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) expr.
            recoveredBlock8PC := 39.
        ].
        recoveredBlock8Step = 39 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) expr.
            recoveredBlock8PC := 40.
        ].
        recoveredBlock8Step = 40 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) tempAssign.
            recoveredBlock8PC := 42.
        ].
        recoveredBlock8Step = 42 ifTrue: [
            (recoveredBlock8Stack1) add: (recoveredBlock8Stack2).
            recoveredBlock8PC := 44.
        ].
        recoveredBlock8Step = 44 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 45.
        ].
        recoveredBlock8Step = 45 ifTrue: [
            recoveredBlock8PC := 52.
        ].
        recoveredBlock8Step = 48 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 49.
        ].
        recoveredBlock8Step = 49 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 50.
        ].
        recoveredBlock8Step = 50 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) visitNode: (recoveredBlock8Stack2).
            recoveredBlock8PC := 52.
        ].
        recoveredBlock8Step = 52 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    recoveredValue3 := (recoveredValue1) collect: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := [:recoveredBlock68Arg1 | 
    | recoveredBlock68Value0 recoveredBlock68Value1 recoveredBlock68Value2 recoveredBlock68Value3 recoveredBlock68Value4 recoveredBlock68Value5 |
    recoveredBlock68Value0 := recoveredBlock68Arg1.
    recoveredBlock68Value1 := recoveredBlock68Arg1.
    recoveredBlock68Value2 := (recoveredBlock68Value1) expr.
    recoveredBlock68Value3 := recoveredLocal1.
    recoveredBlock68Value4 := (self) stripCommaExpr: (recoveredBlock68Value2) toList: (recoveredBlock68Value3).
    recoveredBlock68Value5 := (recoveredBlock68Value0) createOp: (recoveredBlock68Value4).
    recoveredBlock68Value5
].
    recoveredValue8 := (recoveredValue6) collect: (recoveredValue7).
    recoveredLocal2 := recoveredValue8.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := (recoveredValue10) createWithArgs: (recoveredValue11).
    (recoveredValue9) add: (recoveredValue12).
    recoveredValue13 := (self) ileBuilder.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (recoveredValue13) createCommaExpr: (recoveredValue14).
    ^recoveredValue15
! !

"ASDBase.ic method 0x2045ad5c; bytecode file offset 0xd57650"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
replaceCommaExpr: recoveredArg1 withExpr: recoveredArg2 origExpr: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleCommaExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 107].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) args.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock50Value0 recoveredBlock50Value1 |
    recoveredBlock50Value0 := recoveredLocal2.
    recoveredBlock50Value1 := (recoveredBlock50Value0) notEmpty.
    recoveredBlock50Value1
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := [
    'There shall be no comma expression with only one expression'
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ileAssert: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock89Value0 recoveredBlock89Value1 recoveredBlock89Value2 |
    recoveredBlock89Value0 := (self) ileBuilder.
    recoveredBlock89Value1 := recoveredLocal2.
    recoveredBlock89Value2 := (recoveredBlock89Value0) createCommaExpr: (recoveredBlock89Value1).
    recoveredBlock89Value2
].
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) useSource: (recoveredStack2) for: (recoveredStack3).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2049dcb8; bytecode file offset 0xd9a5ac"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
forStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := super forStmnt: (recoveredBlock4Value0).
    recoveredBlock4Value1
].
    recoveredValue1 := (self) noStatementContextDo: (recoveredValue0).
    recoveredLocal5 := recoveredValue1.
    recoveredValue2 := recoveredLocal5.
    recoveredValue3 := recoveredLocal5.
    recoveredValue4 := (recoveredValue3) firstExpr.
    recoveredValue5 := (self) stmnt: (recoveredValue2) expr: (recoveredValue4).
    recoveredLocal3 := recoveredValue5.
    recoveredValue6 := [
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 |
    recoveredBlock36Value0 := recoveredLocal5.
    recoveredBlock36Value1 := recoveredLocal5.
    recoveredBlock36Value2 := (recoveredBlock36Value1) lastExpr.
    recoveredBlock36Value3 := (self) stmnt: (recoveredBlock36Value0) expr: (recoveredBlock36Value2).
    recoveredBlock36Value3
].
    recoveredValue7 := (self) noStatementContextDo: (recoveredValue6).
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := recoveredLocal5.
    recoveredValue9 := recoveredLocal5.
    recoveredValue10 := (recoveredValue9) doStmnt.
    recoveredValue11 := (self) stmnt: (recoveredValue8) expr: (recoveredValue10).
    recoveredLocal1 := recoveredValue11.
    recoveredValue12 := OrderedCollection.
    recoveredValue13 := (recoveredValue12) new.
    recoveredLocal4 := recoveredValue13.
    recoveredValue14 := recoveredLocal3.
    recoveredValue15 := recoveredLocal4.
    recoveredValue16 := (self) stripCommaExpr: (recoveredValue14) toList: (recoveredValue15).
    recoveredLocal3 := recoveredValue16.
    recoveredValue17 := recoveredLocal5.
    recoveredValue18 := recoveredLocal3.
    recoveredValue19 := recoveredLocal2.
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := (recoveredValue17) createNoOpFirstExpr: (recoveredValue18) lastExpr: (recoveredValue19) doStmnt: (recoveredValue20).
    recoveredLocal5 := recoveredValue21.
    recoveredValue22 := (self) ileBuilder.
    recoveredValue23 := recoveredLocal4.
    recoveredValue24 := [:recoveredBlock114Arg1 | 
    | recoveredBlock114Value0 recoveredBlock114Value1 recoveredBlock114Value2 |
    recoveredBlock114Value0 := (self) ileBuilder.
    recoveredBlock114Value1 := recoveredBlock114Arg1.
    recoveredBlock114Value2 := (recoveredBlock114Value0) exprStmnt: (recoveredBlock114Value1).
    recoveredBlock114Value2
].
    recoveredValue25 := (recoveredValue23) collect: (recoveredValue24).
    recoveredValue26 := recoveredLocal5.
    recoveredValue27 := (recoveredValue25) copyWith: (recoveredValue26).
    recoveredValue28 := (recoveredValue22) stmntList: (recoveredValue27).
    ^recoveredValue28
! !

"ASDBase.ic method 0x204c4f38; bytecode file offset 0xdc1844"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
exprStmnt: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitExpr: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleCommaExpr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 125].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) args.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Local1 recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack0 := (recoveredBlock32Stack0) ileBuilder.
            recoveredBlock32PC := 40.
        ].
        recoveredBlock32Step = 40 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 41.
        ].
        recoveredBlock32Step = 41 ifTrue: [
            recoveredBlock32Stack2 := recoveredArg1.
            recoveredBlock32PC := 44.
        ].
        recoveredBlock32Step = 44 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) source.
            recoveredBlock32PC := 46.
        ].
        recoveredBlock32Step = 46 ifTrue: [
            recoveredBlock32Stack0 := (recoveredBlock32Stack0) exprStmnt: (recoveredBlock32Stack1) source: (recoveredBlock32Stack2).
            recoveredBlock32PC := 48.
        ].
        recoveredBlock32Step = 48 ifTrue: [
            recoveredBlock32Local1 := recoveredBlock32Stack0.
            recoveredBlock32PC := 49.
        ].
        recoveredBlock32Step = 49 ifTrue: [
            recoveredBlock32Stack0 := recoveredBlock32Local1.
            recoveredBlock32PC := 50.
        ].
        recoveredBlock32Step = 50 ifTrue: [
            recoveredBlock32Stack0 := (recoveredBlock32Stack0) isIleStatementList.
            recoveredBlock32PC := 52.
        ].
        recoveredBlock32Step = 52 ifTrue: [
            (recoveredBlock32Stack0) ifTrue: [recoveredBlock32PC := 56] ifFalse: [recoveredBlock32PC := 84].
        ].
        recoveredBlock32Step = 56 ifTrue: [
            recoveredBlock32Stack0 := recoveredLocal2.
            recoveredBlock32PC := 59.
        ].
        recoveredBlock32Step = 59 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Local1.
            recoveredBlock32PC := 60.
        ].
        recoveredBlock32Step = 60 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) stmntList.
            recoveredBlock32PC := 62.
        ].
        recoveredBlock32Step = 62 ifTrue: [
            recoveredBlock32Stack2 := [:recoveredBlock32Block62Arg1 | 
    | recoveredBlock32Block62Value0 recoveredBlock32Block62Value1 recoveredBlock32Block62Value2 recoveredBlock32Block62Value3 |
    recoveredBlock32Block62Value0 := recoveredBlock32Block62Arg1.
    recoveredBlock32Block62Value1 := recoveredArg1.
    recoveredBlock32Block62Value2 := (recoveredBlock32Block62Value1) source.
    recoveredBlock32Block62Value3 := (recoveredBlock32Block62Value0) createNoOpSource: (recoveredBlock32Block62Value2).
    recoveredBlock32Block62Value3
].
            recoveredBlock32PC := 77.
        ].
        recoveredBlock32Step = 77 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) collect: (recoveredBlock32Stack2).
            recoveredBlock32PC := 79.
        ].
        recoveredBlock32Step = 79 ifTrue: [
            recoveredBlock32Stack0 := (recoveredBlock32Stack0) addAll: (recoveredBlock32Stack1).
            recoveredBlock32PC := 81.
        ].
        recoveredBlock32Step = 81 ifTrue: [
            recoveredBlock32PC := 90.
        ].
        recoveredBlock32Step = 84 ifTrue: [
            recoveredBlock32Stack0 := recoveredLocal2.
            recoveredBlock32PC := 87.
        ].
        recoveredBlock32Step = 87 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Local1.
            recoveredBlock32PC := 88.
        ].
        recoveredBlock32Step = 88 ifTrue: [
            recoveredBlock32Stack0 := (recoveredBlock32Stack0) add: (recoveredBlock32Stack1).
            recoveredBlock32PC := 90.
        ].
        recoveredBlock32Step = 90 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack0.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeLast.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := (recoveredStack2) comments.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) createNoOpComments: (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) stmntList: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleStatementExpression.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 147].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) stmnt.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) createNoOpSource: (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204caf7c; bytecode file offset 0xdc788c"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
ifThenStmnt: recoveredArg1
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
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAndExpr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) packageAndExprsWithCommaExpr: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) thenStmnt.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Stack0 recoveredBlock40Stack1 recoveredBlock40Stack2 recoveredBlock40Stack3 recoveredBlock40Stack4 recoveredBlock40Stack5 recoveredBlock40Stack6 recoveredBlock40PC recoveredBlock40Step recoveredBlock40Done recoveredBlock40Result |
    recoveredBlock40Stack0 := self.
    recoveredBlock40PC := 46.
    recoveredBlock40Done := false.
    [recoveredBlock40Done not] whileTrue: [
        recoveredBlock40Step := recoveredBlock40PC.
        recoveredBlock40Step = 46 ifTrue: [
            recoveredBlock40Stack1 := OrderedCollection.
            recoveredBlock40PC := 48.
        ].
        recoveredBlock40Step = 48 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) new.
            recoveredBlock40PC := 50.
        ].
        recoveredBlock40Step = 50 ifTrue: [
            recoveredLocal2 := recoveredBlock40Stack1.
            recoveredBlock40PC := 53.
        ].
        recoveredBlock40Step = 53 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Arg1.
            recoveredBlock40PC := 54.
        ].
        recoveredBlock40Step = 54 ifTrue: [
            recoveredBlock40Stack2 := 1.
            recoveredBlock40PC := 56.
        ].
        recoveredBlock40Step = 56 ifTrue: [
            recoveredBlock40Stack3 := self.
            recoveredBlock40PC := 57.
        ].
        recoveredBlock40Step = 57 ifTrue: [
            recoveredBlock40Stack4 := recoveredBlock40Arg1.
            recoveredBlock40PC := 58.
        ].
        recoveredBlock40Step = 58 ifTrue: [
            recoveredBlock40Stack4 := (recoveredBlock40Stack4) first.
            recoveredBlock40PC := 60.
        ].
        recoveredBlock40Step = 60 ifTrue: [
            recoveredBlock40Stack5 := recoveredLocal2.
            recoveredBlock40PC := 63.
        ].
        recoveredBlock40Step = 63 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) stripCommaExpr: (recoveredBlock40Stack4) toList: (recoveredBlock40Stack5).
            recoveredBlock40PC := 65.
        ].
        recoveredBlock40Step = 65 ifTrue: [
            (recoveredBlock40Stack1) at: (recoveredBlock40Stack2) put: (recoveredBlock40Stack3).
            recoveredBlock40PC := 67.
        ].
        recoveredBlock40Step = 67 ifTrue: [
            recoveredBlock40Stack1 := recoveredArg1.
            recoveredBlock40PC := 70.
        ].
        recoveredBlock40Step = 70 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 71.
        ].
        recoveredBlock40Step = 71 ifTrue: [
            recoveredBlock40Stack3 := self.
            recoveredBlock40PC := 72.
        ].
        recoveredBlock40Step = 72 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) ileBuilder.
            recoveredBlock40PC := 74.
        ].
        recoveredBlock40Step = 74 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) literalTrue.
            recoveredBlock40PC := 76.
        ].
        recoveredBlock40Step = 76 ifTrue: [
            recoveredBlock40Stack4 := [:block28106e94Arg1 :block28106e94Arg2 | 
    | block28106e94Value0 block28106e94Value1 block28106e94Value2 |
    block28106e94Value0 := block28106e94Arg1.
    block28106e94Value1 := block28106e94Arg2.
    block28106e94Value2 := (block28106e94Value0) andExpr: (block28106e94Value1).
    block28106e94Value2
].
            recoveredBlock40PC := 78.
        ].
        recoveredBlock40Step = 78 ifTrue: [
            recoveredBlock40PC := 87.
        ].
        recoveredBlock40Step = 87 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) inject: (recoveredBlock40Stack3) into: (recoveredBlock40Stack4).
            recoveredBlock40PC := 89.
        ].
        recoveredBlock40Step = 89 ifTrue: [
            recoveredBlock40Stack3 := recoveredLocal3.
            recoveredBlock40PC := 92.
        ].
        recoveredBlock40Step = 92 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) createStmntExpr: (recoveredBlock40Stack2) thenStmnt: (recoveredBlock40Stack3).
            recoveredBlock40PC := 94.
        ].
        recoveredBlock40Step = 94 ifTrue: [
            recoveredLocal3 := recoveredBlock40Stack1.
            recoveredBlock40PC := 97.
        ].
        recoveredBlock40Step = 97 ifTrue: [
            recoveredBlock40Stack0 := (recoveredBlock40Stack0) ileBuilder.
            recoveredBlock40PC := 99.
        ].
        recoveredBlock40Step = 99 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal2.
            recoveredBlock40PC := 102.
        ].
        recoveredBlock40Step = 102 ifTrue: [
            recoveredBlock40Stack2 := [:recoveredBlock40Block102Arg1 | 
    | recoveredBlock40Block102Value0 recoveredBlock40Block102Value1 recoveredBlock40Block102Value2 |
    recoveredBlock40Block102Value0 := (self) ileBuilder.
    recoveredBlock40Block102Value1 := recoveredBlock40Block102Arg1.
    recoveredBlock40Block102Value2 := (recoveredBlock40Block102Value0) exprStmnt: (recoveredBlock40Block102Value1).
    recoveredBlock40Block102Value2
].
            recoveredBlock40PC := 114.
        ].
        recoveredBlock40Step = 114 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) collect: (recoveredBlock40Stack2).
            recoveredBlock40PC := 116.
        ].
        recoveredBlock40Step = 116 ifTrue: [
            recoveredBlock40Stack2 := recoveredLocal3.
            recoveredBlock40PC := 119.
        ].
        recoveredBlock40Step = 119 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) copyWith: (recoveredBlock40Stack2).
            recoveredBlock40PC := 121.
        ].
        recoveredBlock40Step = 121 ifTrue: [
            recoveredBlock40Stack0 := (recoveredBlock40Stack0) stmntList: (recoveredBlock40Stack1).
            recoveredBlock40PC := 123.
        ].
        recoveredBlock40Step = 123 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Stack0.
            recoveredBlock40PC := 124.
        ].
        recoveredBlock40Step = 124 ifTrue: [
            recoveredLocal3 := recoveredBlock40Stack1.
            recoveredBlock40PC := 127.
        ].
        recoveredBlock40Step = 127 ifTrue: [
            recoveredBlock40Result := recoveredBlock40Stack0.
            recoveredBlock40Done := true.
        ].
    ].
    recoveredBlock40Result
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack1) reverseDo: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredPC := 149.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := super ifThenStmnt: (recoveredStack2).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2050555c; bytecode file offset 0xe01e6c"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
tempAssignExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            (recoveredStack0) ifTrue: [recoveredPC := 175] ifFalse: [recoveredPC := 12].
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) expressionContext.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 |
    recoveredBlock24Value0 := recoveredArg1.
    recoveredBlock24Value1 := (recoveredBlock24Value0) expr.
    recoveredBlock24Value2 := (self) visitNode: (recoveredBlock24Value1).
    recoveredBlock24Value2
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) executeInContext: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 |
    recoveredBlock40Value0 := recoveredArg1.
    recoveredBlock40Value1 := recoveredBlock40Arg1.
    recoveredBlock40Value2 := (recoveredBlock40Value0) expr: (recoveredBlock40Value1).
    recoveredBlock40Value2
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) replaceCommaExpr: (recoveredStack1) withExpr: (recoveredStack2) origExpr: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) isConditionalContext.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 171].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) expr.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleDummyExpr.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 171] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleCommaExpr.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) args.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) tempAssignIdentifier: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) args.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := (recoveredStack3) args.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack4 := (recoveredStack4) args.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack4 := (recoveredStack4) last.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) commaExpr: (recoveredStack1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := (recoveredStack0) tempAssignIdentifier: (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCommaExpr: (recoveredStack1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20546e3c; bytecode file offset 0xe43734"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
packageAndExprsWithCommaExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := OrderedCollection.
    recoveredValue4 := (recoveredValue3) new.
    (recoveredValue2) add: (recoveredValue4).
    recoveredValue5 := [:recoveredBlock18Arg1 :recoveredBlock18Arg2 | 
    | recoveredBlock18Local1 recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18Stack5 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 27.
        ].
        recoveredBlock18Step = 27 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) isIleCommaExpr.
            recoveredBlock18PC := 28.
        ].
        recoveredBlock18Step = 28 ifTrue: [
            (recoveredBlock18Stack1) ifTrue: [recoveredBlock18PC := 32] ifFalse: [recoveredBlock18PC := 124].
        ].
        recoveredBlock18Step = 32 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal2.
            recoveredBlock18PC := 35.
        ].
        recoveredBlock18Step = 35 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) last.
            recoveredBlock18PC := 37.
        ].
        recoveredBlock18Step = 37 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) notEmpty.
            recoveredBlock18PC := 39.
        ].
        recoveredBlock18Step = 39 ifTrue: [
            (recoveredBlock18Stack1) ifTrue: [recoveredBlock18PC := 42] ifFalse: [recoveredBlock18PC := 50].
        ].
        recoveredBlock18Step = 42 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal2.
            recoveredBlock18PC := 45.
        ].
        recoveredBlock18Step = 45 ifTrue: [
            recoveredBlock18Stack2 := OrderedCollection.
            recoveredBlock18PC := 47.
        ].
        recoveredBlock18Step = 47 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) new.
            recoveredBlock18PC := 48.
        ].
        recoveredBlock18Step = 48 ifTrue: [
            (recoveredBlock18Stack1) add: (recoveredBlock18Stack2).
            recoveredBlock18PC := 50.
        ].
        recoveredBlock18Step = 50 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal2.
            recoveredBlock18PC := 53.
        ].
        recoveredBlock18Step = 53 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) last.
            recoveredBlock18PC := 55.
        ].
        recoveredBlock18Step = 55 ifTrue: [
            recoveredBlock18Stack2 := self.
            recoveredBlock18PC := 56.
        ].
        recoveredBlock18Step = 56 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) ileBuilder.
            recoveredBlock18PC := 58.
        ].
        recoveredBlock18Step = 58 ifTrue: [
            recoveredBlock18Stack3 := recoveredBlock18Arg1.
            recoveredBlock18PC := 61.
        ].
        recoveredBlock18Step = 61 ifTrue: [
            recoveredBlock18Stack3 := (recoveredBlock18Stack3) args.
            recoveredBlock18PC := 63.
        ].
        recoveredBlock18Step = 63 ifTrue: [
            recoveredBlock18Stack4 := [:recoveredBlock18Block63Arg1 | 
    | recoveredBlock18Block63Stack0 recoveredBlock18Block63Stack1 recoveredBlock18Block63Stack2 recoveredBlock18Block63Stack3 recoveredBlock18Block63PC recoveredBlock18Block63Step recoveredBlock18Block63Done recoveredBlock18Block63Result |
    recoveredBlock18Block63Stack0 := self.
    recoveredBlock18Block63PC := 70.
    recoveredBlock18Block63Done := false.
    [recoveredBlock18Block63Done not] whileTrue: [
        recoveredBlock18Block63Step := recoveredBlock18Block63PC.
        recoveredBlock18Block63Step = 70 ifTrue: [
            recoveredBlock18Block63Stack1 := recoveredBlock18Block63Arg1.
            recoveredBlock18Block63PC := 71.
        ].
        recoveredBlock18Block63Step = 71 ifTrue: [
            recoveredBlock18Block63Stack2 := recoveredBlock18Arg1.
            recoveredBlock18Block63PC := 74.
        ].
        recoveredBlock18Block63Step = 74 ifTrue: [
            recoveredBlock18Block63Stack2 := (recoveredBlock18Block63Stack2) args.
            recoveredBlock18Block63PC := 76.
        ].
        recoveredBlock18Block63Step = 76 ifTrue: [
            recoveredBlock18Block63Stack2 := (recoveredBlock18Block63Stack2) last.
            recoveredBlock18Block63PC := 78.
        ].
        recoveredBlock18Block63Step = 78 ifTrue: [
            (recoveredBlock18Block63Stack1 ~~ recoveredBlock18Block63Stack2) ifTrue: [recoveredBlock18Block63PC := 90] ifFalse: [recoveredBlock18Block63PC := 82].
        ].
        recoveredBlock18Block63Step = 82 ifTrue: [
            recoveredBlock18Block63Stack1 := self.
            recoveredBlock18Block63PC := 83.
        ].
        recoveredBlock18Block63Step = 83 ifTrue: [
            recoveredBlock18Block63Stack1 := (recoveredBlock18Block63Stack1) ileBuilder.
            recoveredBlock18Block63PC := 85.
        ].
        recoveredBlock18Block63Step = 85 ifTrue: [
            recoveredBlock18Block63Stack1 := (recoveredBlock18Block63Stack1) literalTrue.
            recoveredBlock18Block63PC := 87.
        ].
        recoveredBlock18Block63Step = 87 ifTrue: [
            recoveredBlock18Block63PC := 94.
        ].
        recoveredBlock18Block63Step = 90 ifTrue: [
            recoveredBlock18Block63Stack1 := self.
            recoveredBlock18Block63PC := 91.
        ].
        recoveredBlock18Block63Step = 91 ifTrue: [
            recoveredBlock18Block63Stack2 := recoveredBlock18Block63Arg1.
            recoveredBlock18Block63PC := 92.
        ].
        recoveredBlock18Block63Step = 92 ifTrue: [
            recoveredBlock18Block63Stack1 := (recoveredBlock18Block63Stack1) visitNode: (recoveredBlock18Block63Stack2).
            recoveredBlock18Block63PC := 94.
        ].
        recoveredBlock18Block63Step = 94 ifTrue: [
            recoveredBlock18Block63Result := recoveredBlock18Block63Stack1.
            recoveredBlock18Block63Done := true.
        ].
    ].
    recoveredBlock18Block63Result
].
            recoveredBlock18PC := 95.
        ].
        recoveredBlock18Step = 95 ifTrue: [
            recoveredBlock18Stack3 := (recoveredBlock18Stack3) collect: (recoveredBlock18Stack4).
            recoveredBlock18PC := 97.
        ].
        recoveredBlock18Step = 97 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) commaExpr: (recoveredBlock18Stack3).
            recoveredBlock18PC := 99.
        ].
        recoveredBlock18Step = 99 ifTrue: [
            (recoveredBlock18Stack1) add: (recoveredBlock18Stack2).
            recoveredBlock18PC := 101.
        ].
        recoveredBlock18Step = 101 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 104.
        ].
        recoveredBlock18Step = 104 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) args.
            recoveredBlock18PC := 106.
        ].
        recoveredBlock18Step = 106 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) last.
            recoveredBlock18PC := 108.
        ].
        recoveredBlock18Step = 108 ifTrue: [
            recoveredBlock18Stack2 := recoveredLocal1.
            recoveredBlock18PC := 111.
        ].
        recoveredBlock18Step = 111 ifTrue: [
            recoveredBlock18Stack3 := [:block2810e8ecArg1 | 
    nil
].
            recoveredBlock18PC := 113.
        ].
        recoveredBlock18Step = 113 ifTrue: [
            recoveredBlock18PC := 118.
        ].
        recoveredBlock18Step = 118 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) ileOptExpressionSimplificationNoAndChildrenDo: (recoveredBlock18Stack2) onSuccess: (recoveredBlock18Stack3).
            recoveredBlock18PC := 120.
        ].
        recoveredBlock18Step = 120 ifTrue: [
            recoveredBlock18PC := 183.
        ].
        recoveredBlock18Step = 124 ifTrue: [
            recoveredBlock18Stack1 := nil.
            recoveredBlock18PC := 125.
        ].
        recoveredBlock18Step = 125 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 128.
        ].
        recoveredBlock18Step = 128 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) isIleAndExpr.
            recoveredBlock18PC := 130.
        ].
        recoveredBlock18Step = 130 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 183] ifFalse: [recoveredBlock18PC := 134].
        ].
        recoveredBlock18Step = 134 ifTrue: [
            recoveredBlock18PC := 135.
        ].
        recoveredBlock18Step = 135 ifTrue: [
            recoveredBlock18Stack1 := self.
            recoveredBlock18PC := 136.
        ].
        recoveredBlock18Step = 136 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 139.
        ].
        recoveredBlock18Step = 139 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) visitNode: (recoveredBlock18Stack2).
            recoveredBlock18PC := 141.
        ].
        recoveredBlock18Step = 141 ifTrue: [
            recoveredBlock18Local1 := recoveredBlock18Stack1.
            recoveredBlock18PC := 144.
        ].
        recoveredBlock18Step = 144 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Local1.
            recoveredBlock18PC := 147.
        ].
        recoveredBlock18Step = 147 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) isIleCommaExpr.
            recoveredBlock18PC := 148.
        ].
        recoveredBlock18Step = 148 ifTrue: [
            (recoveredBlock18Stack1) ifTrue: [recoveredBlock18PC := 152] ifFalse: [recoveredBlock18PC := 170].
        ].
        recoveredBlock18Step = 152 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal2.
            recoveredBlock18PC := 155.
        ].
        recoveredBlock18Step = 155 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) last.
            recoveredBlock18PC := 157.
        ].
        recoveredBlock18Step = 157 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) notEmpty.
            recoveredBlock18PC := 159.
        ].
        recoveredBlock18Step = 159 ifTrue: [
            (recoveredBlock18Stack1) ifTrue: [recoveredBlock18PC := 162] ifFalse: [recoveredBlock18PC := 170].
        ].
        recoveredBlock18Step = 162 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal2.
            recoveredBlock18PC := 165.
        ].
        recoveredBlock18Step = 165 ifTrue: [
            recoveredBlock18Stack2 := OrderedCollection.
            recoveredBlock18PC := 167.
        ].
        recoveredBlock18Step = 167 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) new.
            recoveredBlock18PC := 168.
        ].
        recoveredBlock18Step = 168 ifTrue: [
            (recoveredBlock18Stack1) add: (recoveredBlock18Stack2).
            recoveredBlock18PC := 170.
        ].
        recoveredBlock18Step = 170 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal2.
            recoveredBlock18PC := 173.
        ].
        recoveredBlock18Step = 173 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) last.
            recoveredBlock18PC := 175.
        ].
        recoveredBlock18Step = 175 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Local1.
            recoveredBlock18PC := 178.
        ].
        recoveredBlock18Step = 178 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) add: (recoveredBlock18Stack2).
            recoveredBlock18PC := 179.
        ].
        recoveredBlock18Step = 179 ifTrue: [
            recoveredBlock18Stack2 := nil.
            recoveredBlock18PC := 180.
        ].
        recoveredBlock18Step = 180 ifTrue: [
            recoveredBlock18Local1 := recoveredBlock18Stack2.
            recoveredBlock18PC := 183.
        ].
        recoveredBlock18Step = 183 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := [
    | recoveredBlock187Stack0 recoveredBlock187Stack1 recoveredBlock187Stack2 recoveredBlock187Stack3 recoveredBlock187Stack4 recoveredBlock187PC recoveredBlock187Step recoveredBlock187Done recoveredBlock187Result |
    recoveredBlock187Stack0 := self.
    recoveredBlock187PC := 194.
    recoveredBlock187Done := false.
    [recoveredBlock187Done not] whileTrue: [
        recoveredBlock187Step := recoveredBlock187PC.
        recoveredBlock187Step = 194 ifTrue: [
            recoveredBlock187Stack1 := recoveredArg1.
            recoveredBlock187PC := 197.
        ].
        recoveredBlock187Step = 197 ifTrue: [
            recoveredBlock187Stack2 := recoveredLocal1.
            recoveredBlock187PC := 200.
        ].
        recoveredBlock187Step = 200 ifTrue: [
            recoveredBlock187Stack3 := [:block2810e910Arg1 | 
    nil
].
            recoveredBlock187PC := 202.
        ].
        recoveredBlock187Step = 202 ifTrue: [
            recoveredBlock187PC := 208.
        ].
        recoveredBlock187Step = 208 ifTrue: [
            recoveredBlock187Stack1 := (recoveredBlock187Stack1) ileOptExpressionSimplificationNoAndChildrenDo: (recoveredBlock187Stack2) onSuccess: (recoveredBlock187Stack3).
            recoveredBlock187PC := 210.
        ].
        recoveredBlock187Step = 210 ifTrue: [
            recoveredBlock187Result := recoveredBlock187Stack1.
            recoveredBlock187Done := true.
        ].
    ].
    recoveredBlock187Result
].
    (self) conditionalContextDo: (recoveredValue6).
    recoveredValue7 := recoveredLocal2.
    ^recoveredValue7
! !

"ASDBase.ic method 0x205d76cc; bytecode file offset 0xed4024"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
multiplexExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) condExpr.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) multiplexExpr: (recoveredStack1) condExpr: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) tempAssignInAllBranches.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 recoveredBlock33Value3 recoveredBlock33Value4 recoveredBlock33Value5 |
    recoveredBlock33Value0 := recoveredLocal5.
    recoveredBlock33Value1 := (self) ileBuilder.
    recoveredBlock33Value2 := recoveredBlock33Arg1.
    recoveredBlock33Value3 := (recoveredBlock33Value1) tempAssignIdentifier: (recoveredBlock33Value2).
    recoveredBlock33Value4 := (self) visitNode: (recoveredBlock33Value3).
    recoveredBlock33Value5 := (recoveredBlock33Value0) add: (recoveredBlock33Value4).
    recoveredBlock33Value5
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitedTempAssignExprs.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) stripCommaExpr: (recoveredStack1) toList: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock78Value0 recoveredBlock78Value1 recoveredBlock78Value2 recoveredBlock78Value3 recoveredBlock78Value4 |
    recoveredBlock78Value0 := recoveredArg1.
    recoveredBlock78Value1 := (recoveredBlock78Value0) choices.
    recoveredBlock78Value2 := [:recoveredBlock78Block89Arg1 | 
    | recoveredBlock78Block89Value0 recoveredBlock78Block89Value1 |
    recoveredBlock78Block89Value0 := recoveredBlock78Block89Arg1.
    recoveredBlock78Block89Value1 := (self) visitNode: (recoveredBlock78Block89Value0).
    recoveredBlock78Block89Value1
].
    recoveredBlock78Value3 := (recoveredBlock78Value1) collect: (recoveredBlock78Value2).
    recoveredBlock78Value4 := recoveredBlock78Value3.
    recoveredLocal7 := recoveredBlock78Value4.
    recoveredBlock78Value3
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) conditionalContextDo: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock110Value0 recoveredBlock110Value1 recoveredBlock110Value2 recoveredBlock110Value3 |
    recoveredBlock110Value0 := recoveredArg1.
    recoveredBlock110Value1 := (recoveredBlock110Value0) defaultExpr.
    recoveredBlock110Value2 := (self) visitNode: (recoveredBlock110Value1).
    recoveredBlock110Value3 := recoveredBlock110Value2.
    recoveredLocal8 := recoveredBlock110Value3.
    recoveredBlock110Value2
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) conditionalContextDo: (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) createNoOpCondExpr: (recoveredStack1) choices: (recoveredStack2) defaultExpr: (recoveredStack3).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNoStatementContext.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 343] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := [:recoveredBlock157Arg1 | 
    | recoveredBlock157Value0 recoveredBlock157Value1 recoveredBlock157Value2 |
    recoveredBlock157Value0 := recoveredBlock157Arg1.
    recoveredBlock157Value1 := recoveredLocal4.
    recoveredBlock157Value2 := (self) isCommaExprThatExpands: (recoveredBlock157Value0) tempVars: (recoveredBlock157Value1).
    recoveredBlock157Value2
].
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCommaExprThatExpands: (recoveredStack1) tempVars: (recoveredStack2).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 343].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleArithmeticExpr.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 204] ifFalse: [recoveredPC := 229].
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := SGCgTypeFactory.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := RBFormulaId.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := (recoveredStack2) createIdent.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack4 := recoveredLocal10.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack4 := (recoveredStack4) interval.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := (recoveredStack0) createContType: (recoveredStack1) formula: (recoveredStack2) physicalUnit: (recoveredStack3) implInterval: (recoveredStack4).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock237Value0 recoveredBlock237Value1 recoveredBlock237Value2 recoveredBlock237Value3 recoveredBlock237Value4 recoveredBlock237Value5 recoveredBlock237Value6 recoveredBlock237Value7 recoveredBlock237Value8 recoveredBlock237Value9 recoveredBlock237Value10 recoveredBlock237Value11 recoveredBlock237Value12 recoveredBlock237Value13 recoveredBlock237Value14 recoveredBlock237Value15 recoveredBlock237Value16 recoveredBlock237Value17 |
    recoveredBlock237Value0 := (self) ileBuilder.
    recoveredBlock237Value1 := (self) ileBuilder.
    recoveredBlock237Value2 := recoveredLocal1.
    recoveredBlock237Value3 := (recoveredBlock237Value1) createDummyExprType: (recoveredBlock237Value2).
    recoveredBlock237Value4 := (recoveredBlock237Value0) tempAssign: (recoveredBlock237Value3).
    recoveredLocal3 := recoveredBlock237Value4.
    recoveredBlock237Value5 := recoveredLocal3.
    recoveredBlock237Value6 := (recoveredBlock237Value5) tempAssign.
    recoveredBlock237Value7 := (self) ileBuilder.
    recoveredBlock237Value8 := recoveredLocal10.
    recoveredBlock237Value9 := (recoveredBlock237Value8) type.
    recoveredBlock237Value10 := (recoveredBlock237Value7) tempVar: (recoveredBlock237Value9).
    (recoveredBlock237Value6) tempVar: (recoveredBlock237Value10).
    recoveredBlock237Value11 := recoveredLocal3.
    recoveredBlock237Value12 := (recoveredBlock237Value11) asIleCopy.
    recoveredBlock237Value13 := (recoveredBlock237Value12) asIleLValue.
    recoveredBlock237Value14 := recoveredLocal10.
    recoveredBlock237Value15 := (recoveredBlock237Value13) assign: (recoveredBlock237Value14).
    recoveredBlock237Value16 := (recoveredBlock237Value15) asIleExprStmnt.
    recoveredBlock237Value17 := recoveredBlock237Value16.
    recoveredLocal2 := recoveredBlock237Value17.
    recoveredBlock237Value16
].
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            (recoveredStack0) useSource: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack0 := (recoveredStack0) createStatementExpression: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCommaExpr: (recoveredStack1).
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCommaExpr: (recoveredStack1).
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205e02ec; bytecode file offset 0xedcc4c"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
orExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleOrExpr.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) asIleRightAssociativeBinaryLogicOp.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 |
    recoveredBlock28Value0 := recoveredArg1.
    recoveredBlock28Value1 := (recoveredBlock28Value0) rightExpr.
    recoveredBlock28Value2 := (self) visitNode: (recoveredBlock28Value1).
    recoveredBlock28Value3 := recoveredBlock28Value2.
    recoveredLocal6 := recoveredBlock28Value3.
    recoveredBlock28Value2
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) conditionalContextDo: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNoStatementContext.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 301] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleCommaExpr.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 301].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock70Value0 recoveredBlock70Value1 recoveredBlock70Value2 recoveredBlock70Value3 recoveredBlock70Value4 |
    recoveredBlock70Value0 := SGCgExpressionContext.
    recoveredBlock70Value1 := (recoveredBlock70Value0) nonArithmeticContext.
    recoveredBlock70Value2 := [
    | recoveredBlock70Block80Local1 recoveredBlock70Block80Stack0 recoveredBlock70Block80Stack1 recoveredBlock70Block80Stack2 recoveredBlock70Block80Stack3 recoveredBlock70Block80Stack4 recoveredBlock70Block80PC recoveredBlock70Block80Step recoveredBlock70Block80Done recoveredBlock70Block80Result |
    recoveredBlock70Block80Stack0 := self.
    recoveredBlock70Block80PC := 86.
    recoveredBlock70Block80Done := false.
    [recoveredBlock70Block80Done not] whileTrue: [
        recoveredBlock70Block80Step := recoveredBlock70Block80PC.
        recoveredBlock70Block80Step = 86 ifTrue: [
            recoveredBlock70Block80Stack1 := recoveredLocal6.
            recoveredBlock70Block80PC := 89.
        ].
        recoveredBlock70Block80Step = 89 ifTrue: [
            recoveredBlock70Block80Stack1 := (recoveredBlock70Block80Stack1) args.
            recoveredBlock70Block80PC := 91.
        ].
        recoveredBlock70Block80Step = 91 ifTrue: [
            recoveredBlock70Block80Stack1 := (recoveredBlock70Block80Stack1) last.
            recoveredBlock70Block80PC := 93.
        ].
        recoveredBlock70Block80Step = 93 ifTrue: [
            recoveredBlock70Block80Local1 := recoveredBlock70Block80Stack1.
            recoveredBlock70Block80PC := 94.
        ].
        recoveredBlock70Block80Step = 94 ifTrue: [
            recoveredBlock70Block80Stack1 := recoveredBlock70Block80Local1.
            recoveredBlock70Block80PC := 95.
        ].
        recoveredBlock70Block80Step = 95 ifTrue: [
            recoveredBlock70Block80Stack1 := (recoveredBlock70Block80Stack1) isIleTempVarIdentifier.
            recoveredBlock70Block80PC := 97.
        ].
        recoveredBlock70Block80Step = 97 ifTrue: [
            (recoveredBlock70Block80Stack1) ifTrue: [recoveredBlock70Block80PC := 100] ifFalse: [recoveredBlock70Block80PC := 148].
        ].
        recoveredBlock70Block80Step = 100 ifTrue: [
            recoveredBlock70Block80Stack1 := recoveredBlock70Block80Local1.
            recoveredBlock70Block80PC := 101.
        ].
        recoveredBlock70Block80Step = 101 ifTrue: [
            recoveredBlock70Block80Stack1 := (recoveredBlock70Block80Stack1) tempAssign.
            recoveredBlock70Block80PC := 103.
        ].
        recoveredBlock70Block80Step = 103 ifTrue: [
            recoveredBlock70Block80Stack1 := (recoveredBlock70Block80Stack1) expr.
            recoveredBlock70Block80PC := 105.
        ].
        recoveredBlock70Block80Step = 105 ifTrue: [
            recoveredBlock70Block80Stack1 := (recoveredBlock70Block80Stack1) isIleDummyExpr.
            recoveredBlock70Block80PC := 107.
        ].
        recoveredBlock70Block80Step = 107 ifTrue: [
            (recoveredBlock70Block80Stack1) ifTrue: [recoveredBlock70Block80PC := 110] ifFalse: [recoveredBlock70Block80PC := 148].
        ].
        recoveredBlock70Block80Step = 110 ifTrue: [
            recoveredBlock70Block80Stack1 := recoveredBlock70Block80Local1.
            recoveredBlock70Block80PC := 111.
        ].
        recoveredBlock70Block80Step = 111 ifTrue: [
            recoveredBlock70Block80Stack1 := (recoveredBlock70Block80Stack1) tempAssign.
            recoveredBlock70Block80PC := 113.
        ].
        recoveredBlock70Block80Step = 113 ifTrue: [
            recoveredBlock70Block80Stack1 := (recoveredBlock70Block80Stack1) tempVar.
            recoveredBlock70Block80PC := 115.
        ].
        recoveredBlock70Block80Step = 115 ifTrue: [
            (recoveredBlock70Block80Stack1 == nil) ifTrue: [recoveredBlock70Block80PC := 148] ifFalse: [recoveredBlock70Block80PC := 118].
        ].
        recoveredBlock70Block80Step = 118 ifTrue: [
            recoveredBlock70Block80Stack1 := recoveredBlock70Block80Local1.
            recoveredBlock70Block80PC := 119.
        ].
        recoveredBlock70Block80Step = 119 ifTrue: [
            recoveredBlock70Block80Stack1 := (recoveredBlock70Block80Stack1) tempAssign.
            recoveredBlock70Block80PC := 121.
        ].
        recoveredBlock70Block80Step = 121 ifTrue: [
            recoveredBlock70Block80Stack1 := (recoveredBlock70Block80Stack1) tempVar.
            recoveredBlock70Block80PC := 123.
        ].
        recoveredBlock70Block80Step = 123 ifTrue: [
            recoveredBlock70Block80Stack1 := (recoveredBlock70Block80Stack1) isIleNamedTempIdentifier.
            recoveredBlock70Block80PC := 125.
        ].
        recoveredBlock70Block80Step = 125 ifTrue: [
            (recoveredBlock70Block80Stack1) ifTrue: [recoveredBlock70Block80PC := 148] ifFalse: [recoveredBlock70Block80PC := 128].
        ].
        recoveredBlock70Block80Step = 128 ifTrue: [
            recoveredBlock70Block80Stack1 := recoveredLocal6.
            recoveredBlock70Block80PC := 131.
        ].
        recoveredBlock70Block80Step = 131 ifTrue: [
            recoveredBlock70Block80Stack1 := (recoveredBlock70Block80Stack1) args.
            recoveredBlock70Block80PC := 133.
        ].
        recoveredBlock70Block80Step = 133 ifTrue: [
            recoveredBlock70Block80Stack1 := (recoveredBlock70Block80Stack1) last.
            recoveredBlock70Block80PC := 135.
        ].
        recoveredBlock70Block80Step = 135 ifTrue: [
            recoveredLocal4 := recoveredBlock70Block80Stack1.
            recoveredBlock70Block80PC := 138.
        ].
        recoveredBlock70Block80Step = 138 ifTrue: [
            recoveredBlock70Block80Stack1 := recoveredLocal6.
            recoveredBlock70Block80PC := 141.
        ].
        recoveredBlock70Block80Step = 141 ifTrue: [
            recoveredLocal2 := recoveredBlock70Block80Stack1.
            recoveredBlock70Block80PC := 144.
        ].
        recoveredBlock70Block80Step = 144 ifTrue: [
            recoveredBlock70Block80PC := 210.
        ].
        recoveredBlock70Block80Step = 148 ifTrue: [
            recoveredBlock70Block80Stack1 := self.
            recoveredBlock70Block80PC := 149.
        ].
        recoveredBlock70Block80Step = 149 ifTrue: [
            recoveredBlock70Block80Stack1 := (recoveredBlock70Block80Stack1) ileBuilder.
            recoveredBlock70Block80PC := 151.
        ].
        recoveredBlock70Block80Step = 151 ifTrue: [
            recoveredBlock70Block80Stack2 := self.
            recoveredBlock70Block80PC := 152.
        ].
        recoveredBlock70Block80Step = 152 ifTrue: [
            recoveredBlock70Block80Stack2 := (recoveredBlock70Block80Stack2) ileBuilder.
            recoveredBlock70Block80PC := 154.
        ].
        recoveredBlock70Block80Step = 154 ifTrue: [
            recoveredBlock70Block80Stack3 := recoveredArg1.
            recoveredBlock70Block80PC := 157.
        ].
        recoveredBlock70Block80Step = 157 ifTrue: [
            recoveredBlock70Block80Stack3 := (recoveredBlock70Block80Stack3) type.
            recoveredBlock70Block80PC := 159.
        ].
        recoveredBlock70Block80Step = 159 ifTrue: [
            recoveredBlock70Block80Stack2 := (recoveredBlock70Block80Stack2) createDummyExprType: (recoveredBlock70Block80Stack3).
            recoveredBlock70Block80PC := 161.
        ].
        recoveredBlock70Block80Step = 161 ifTrue: [
            recoveredBlock70Block80Stack1 := (recoveredBlock70Block80Stack1) tempAssign: (recoveredBlock70Block80Stack2).
            recoveredBlock70Block80PC := 163.
        ].
        recoveredBlock70Block80Step = 163 ifTrue: [
            recoveredLocal4 := recoveredBlock70Block80Stack1.
            recoveredBlock70Block80PC := 166.
        ].
        recoveredBlock70Block80Step = 166 ifTrue: [
            recoveredBlock70Block80Stack1 := self.
            recoveredBlock70Block80PC := 167.
        ].
        recoveredBlock70Block80Step = 167 ifTrue: [
            recoveredBlock70Block80Stack1 := (recoveredBlock70Block80Stack1) visitedTempAssignExprs.
            recoveredBlock70Block80PC := 169.
        ].
        recoveredBlock70Block80Step = 169 ifTrue: [
            recoveredBlock70Block80Stack2 := recoveredLocal4.
            recoveredBlock70Block80PC := 172.
        ].
        recoveredBlock70Block80Step = 172 ifTrue: [
            recoveredBlock70Block80Stack2 := (recoveredBlock70Block80Stack2) tempAssign.
            recoveredBlock70Block80PC := 174.
        ].
        recoveredBlock70Block80Step = 174 ifTrue: [
            (recoveredBlock70Block80Stack1) add: (recoveredBlock70Block80Stack2).
            recoveredBlock70Block80PC := 176.
        ].
        recoveredBlock70Block80Step = 176 ifTrue: [
            recoveredBlock70Block80Stack1 := recoveredLocal4.
            recoveredBlock70Block80PC := 179.
        ].
        recoveredBlock70Block80Step = 179 ifTrue: [
            recoveredBlock70Block80Stack1 := (recoveredBlock70Block80Stack1) tempAssign.
            recoveredBlock70Block80PC := 181.
        ].
        recoveredBlock70Block80Step = 181 ifTrue: [
            recoveredBlock70Block80Stack2 := self.
            recoveredBlock70Block80PC := 182.
        ].
        recoveredBlock70Block80Step = 182 ifTrue: [
            recoveredBlock70Block80Stack2 := (recoveredBlock70Block80Stack2) ileBuilder.
            recoveredBlock70Block80PC := 184.
        ].
        recoveredBlock70Block80Step = 184 ifTrue: [
            recoveredBlock70Block80Stack3 := recoveredArg1.
            recoveredBlock70Block80PC := 187.
        ].
        recoveredBlock70Block80Step = 187 ifTrue: [
            recoveredBlock70Block80Stack3 := (recoveredBlock70Block80Stack3) type.
            recoveredBlock70Block80PC := 189.
        ].
        recoveredBlock70Block80Step = 189 ifTrue: [
            recoveredBlock70Block80Stack2 := (recoveredBlock70Block80Stack2) tempVar: (recoveredBlock70Block80Stack3).
            recoveredBlock70Block80PC := 191.
        ].
        recoveredBlock70Block80Step = 191 ifTrue: [
            (recoveredBlock70Block80Stack1) tempVar: (recoveredBlock70Block80Stack2).
            recoveredBlock70Block80PC := 193.
        ].
        recoveredBlock70Block80Step = 193 ifTrue: [
            recoveredBlock70Block80Stack1 := recoveredLocal4.
            recoveredBlock70Block80PC := 196.
        ].
        recoveredBlock70Block80Step = 196 ifTrue: [
            recoveredBlock70Block80Stack1 := (recoveredBlock70Block80Stack1) tempAssign.
            recoveredBlock70Block80PC := 198.
        ].
        recoveredBlock70Block80Step = 198 ifTrue: [
            recoveredBlock70Block80Stack1 := (recoveredBlock70Block80Stack1) tempVar.
            recoveredBlock70Block80PC := 200.
        ].
        recoveredBlock70Block80Step = 200 ifTrue: [
            recoveredBlock70Block80Stack1 := (recoveredBlock70Block80Stack1) asIleLValue.
            recoveredBlock70Block80PC := 202.
        ].
        recoveredBlock70Block80Step = 202 ifTrue: [
            recoveredBlock70Block80Stack2 := recoveredLocal6.
            recoveredBlock70Block80PC := 205.
        ].
        recoveredBlock70Block80Step = 205 ifTrue: [
            recoveredBlock70Block80Stack1 := (recoveredBlock70Block80Stack1) assign: (recoveredBlock70Block80Stack2).
            recoveredBlock70Block80PC := 207.
        ].
        recoveredBlock70Block80Step = 207 ifTrue: [
            recoveredLocal2 := recoveredBlock70Block80Stack1.
            recoveredBlock70Block80PC := 210.
        ].
        recoveredBlock70Block80Step = 210 ifTrue: [
            recoveredBlock70Block80Stack1 := recoveredLocal4.
            recoveredBlock70Block80PC := 213.
        ].
        recoveredBlock70Block80Step = 213 ifTrue: [
            recoveredBlock70Block80Stack1 := (recoveredBlock70Block80Stack1) tempAssign.
            recoveredBlock70Block80PC := 215.
        ].
        recoveredBlock70Block80Step = 215 ifTrue: [
            recoveredBlock70Block80Stack1 := (recoveredBlock70Block80Stack1) tempVar.
            recoveredBlock70Block80PC := 217.
        ].
        recoveredBlock70Block80Step = 217 ifTrue: [
            recoveredBlock70Block80Stack1 := (recoveredBlock70Block80Stack1) asIleLValue.
            recoveredBlock70Block80PC := 219.
        ].
        recoveredBlock70Block80Step = 219 ifTrue: [
            recoveredBlock70Block80Stack2 := self.
            recoveredBlock70Block80PC := 220.
        ].
        recoveredBlock70Block80Step = 220 ifTrue: [
            recoveredBlock70Block80Stack2 := (recoveredBlock70Block80Stack2) ileBuilder.
            recoveredBlock70Block80PC := 222.
        ].
        recoveredBlock70Block80Step = 222 ifTrue: [
            recoveredBlock70Block80Stack2 := (recoveredBlock70Block80Stack2) literalTrue.
            recoveredBlock70Block80PC := 224.
        ].
        recoveredBlock70Block80Step = 224 ifTrue: [
            recoveredBlock70Block80Stack1 := (recoveredBlock70Block80Stack1) assign: (recoveredBlock70Block80Stack2).
            recoveredBlock70Block80PC := 226.
        ].
        recoveredBlock70Block80Step = 226 ifTrue: [
            recoveredLocal3 := recoveredBlock70Block80Stack1.
            recoveredBlock70Block80PC := 229.
        ].
        recoveredBlock70Block80Step = 229 ifTrue: [
            recoveredBlock70Block80Stack0 := (recoveredBlock70Block80Stack0) ileBuilder.
            recoveredBlock70Block80PC := 231.
        ].
        recoveredBlock70Block80Step = 231 ifTrue: [
            recoveredBlock70Block80Stack1 := recoveredLocal7.
            recoveredBlock70Block80PC := 234.
        ].
        recoveredBlock70Block80Step = 234 ifTrue: [
            recoveredBlock70Block80Stack2 := recoveredLocal3.
            recoveredBlock70Block80PC := 237.
        ].
        recoveredBlock70Block80Step = 237 ifTrue: [
            recoveredBlock70Block80Stack2 := (recoveredBlock70Block80Stack2) asIleExprStmnt.
            recoveredBlock70Block80PC := 239.
        ].
        recoveredBlock70Block80Step = 239 ifTrue: [
            recoveredBlock70Block80Stack2 := (recoveredBlock70Block80Stack2) asBlockedStatementList.
            recoveredBlock70Block80PC := 241.
        ].
        recoveredBlock70Block80Step = 241 ifTrue: [
            recoveredBlock70Block80Stack3 := recoveredLocal2.
            recoveredBlock70Block80PC := 244.
        ].
        recoveredBlock70Block80Step = 244 ifTrue: [
            recoveredBlock70Block80Stack3 := (recoveredBlock70Block80Stack3) asIleExprStmnt.
            recoveredBlock70Block80PC := 246.
        ].
        recoveredBlock70Block80Step = 246 ifTrue: [
            recoveredBlock70Block80Stack3 := (recoveredBlock70Block80Stack3) asBlockedStatementList.
            recoveredBlock70Block80PC := 248.
        ].
        recoveredBlock70Block80Step = 248 ifTrue: [
            recoveredBlock70Block80Stack0 := (recoveredBlock70Block80Stack0) createIfExpr: (recoveredBlock70Block80Stack1) thenStmnt: (recoveredBlock70Block80Stack2) elseStmnt: (recoveredBlock70Block80Stack3).
            recoveredBlock70Block80PC := 251.
        ].
        recoveredBlock70Block80Step = 251 ifTrue: [
            recoveredBlock70Block80Result := recoveredBlock70Block80Stack0.
            recoveredBlock70Block80Done := true.
        ].
    ].
    recoveredBlock70Block80Result
].
    recoveredBlock70Value3 := (recoveredBlock70Value1) executeInContext: (recoveredBlock70Value2).
    recoveredBlock70Value4 := recoveredBlock70Value3.
    recoveredLocal1 := recoveredBlock70Value4.
    recoveredBlock70Value3
].
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            (recoveredStack0) useSource: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := (recoveredStack0) createStatementExpression: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCommaExpr: (recoveredStack1).
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack0 := (recoveredStack0) stripCommaExpr: (recoveredStack1) toList: (recoveredStack2).
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleOrExpr.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 328] ifFalse: [recoveredPC := 348].
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack0 := (recoveredStack0) orExpr: (recoveredStack1).
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := (recoveredStack1) createNoOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCommaExpr: (recoveredStack1).
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205e9964; bytecode file offset 0xee62c8"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
muxExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGCgExpressionContext.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) nonArithmeticContext.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) condExpr.
    recoveredBlock7Value2 := (self) visitNode: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) executeInContext: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempAssignInBothBranches.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) stripCommaExpr: (recoveredStack1) toList: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := [:recoveredBlock54Arg1 | 
    | recoveredBlock54Value0 recoveredBlock54Value1 recoveredBlock54Value2 recoveredBlock54Value3 recoveredBlock54Value4 recoveredBlock54Value5 |
    recoveredBlock54Value0 := recoveredLocal7.
    recoveredBlock54Value1 := (self) ileBuilder.
    recoveredBlock54Value2 := recoveredBlock54Arg1.
    recoveredBlock54Value3 := (recoveredBlock54Value1) tempAssignIdentifier: (recoveredBlock54Value2).
    recoveredBlock54Value4 := (self) visitNode: (recoveredBlock54Value3).
    recoveredBlock54Value5 := (recoveredBlock54Value0) add: (recoveredBlock54Value4).
    recoveredBlock54Value5
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitedTempAssignExprs.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock85Value0 recoveredBlock85Value1 recoveredBlock85Value2 recoveredBlock85Value3 |
    recoveredBlock85Value0 := recoveredArg1.
    recoveredBlock85Value1 := (recoveredBlock85Value0) leftExpr.
    recoveredBlock85Value2 := (self) visitNode: (recoveredBlock85Value1).
    recoveredBlock85Value3 := recoveredBlock85Value2.
    recoveredLocal10 := recoveredBlock85Value3.
    recoveredBlock85Value2
].
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) conditionalContextDo: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock106Value0 recoveredBlock106Value1 recoveredBlock106Value2 recoveredBlock106Value3 |
    recoveredBlock106Value0 := recoveredArg1.
    recoveredBlock106Value1 := (recoveredBlock106Value0) rightExpr.
    recoveredBlock106Value2 := (self) visitNode: (recoveredBlock106Value1).
    recoveredBlock106Value3 := recoveredBlock106Value2.
    recoveredLocal9 := recoveredBlock106Value3.
    recoveredBlock106Value2
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) conditionalContextDo: (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNoStatementContext.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 366] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCommaExprThatExpands: (recoveredStack1) tempVars: (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCommaExprThatExpands: (recoveredStack1) tempVars: (recoveredStack2).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 366].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleArithmeticExpr.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 197].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := SGCgTypeFactory.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := RBFormulaId.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := (recoveredStack2) createIdent.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack4 := (recoveredStack4) interval.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) createContType: (recoveredStack1) formula: (recoveredStack2) physicalUnit: (recoveredStack3) implInterval: (recoveredStack4).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock205Value0 recoveredBlock205Value1 recoveredBlock205Value2 recoveredBlock205Value3 recoveredBlock205Value4 |
    recoveredBlock205Value0 := SGCgExpressionContext.
    recoveredBlock205Value1 := recoveredLocal1.
    recoveredBlock205Value2 := (recoveredBlock205Value0) forContextType: (recoveredBlock205Value1).
    recoveredBlock205Value3 := [
    | recoveredBlock205Block219Value0 recoveredBlock205Block219Value1 recoveredBlock205Block219Value2 recoveredBlock205Block219Value3 recoveredBlock205Block219Value4 recoveredBlock205Block219Value5 recoveredBlock205Block219Value6 recoveredBlock205Block219Value7 recoveredBlock205Block219Value8 recoveredBlock205Block219Value9 recoveredBlock205Block219Value10 recoveredBlock205Block219Value11 recoveredBlock205Block219Value12 recoveredBlock205Block219Value13 recoveredBlock205Block219Value14 recoveredBlock205Block219Value15 recoveredBlock205Block219Value16 recoveredBlock205Block219Value17 recoveredBlock205Block219Value18 recoveredBlock205Block219Value19 recoveredBlock205Block219Value20 recoveredBlock205Block219Value21 recoveredBlock205Block219Value22 recoveredBlock205Block219Value23 recoveredBlock205Block219Value24 recoveredBlock205Block219Value25 recoveredBlock205Block219Value26 recoveredBlock205Block219Value27 recoveredBlock205Block219Value28 recoveredBlock205Block219Value29 recoveredBlock205Block219Value30 |
    recoveredBlock205Block219Value0 := (self) ileBuilder.
    recoveredBlock205Block219Value1 := (self) ileBuilder.
    recoveredBlock205Block219Value2 := recoveredLocal1.
    recoveredBlock205Block219Value3 := (recoveredBlock205Block219Value1) createDummyExprType: (recoveredBlock205Block219Value2).
    recoveredBlock205Block219Value4 := (recoveredBlock205Block219Value0) tempAssign: (recoveredBlock205Block219Value3).
    recoveredLocal5 := recoveredBlock205Block219Value4.
    recoveredBlock205Block219Value5 := recoveredLocal5.
    recoveredBlock205Block219Value6 := (recoveredBlock205Block219Value5) tempAssign.
    recoveredBlock205Block219Value7 := (self) ileBuilder.
    recoveredBlock205Block219Value8 := recoveredArg1.
    recoveredBlock205Block219Value9 := (recoveredBlock205Block219Value8) type.
    recoveredBlock205Block219Value10 := (recoveredBlock205Block219Value7) tempVar: (recoveredBlock205Block219Value9).
    (recoveredBlock205Block219Value6) tempVar: (recoveredBlock205Block219Value10).
    recoveredBlock205Block219Value11 := recoveredLocal5.
    recoveredBlock205Block219Value12 := (recoveredBlock205Block219Value11) asIleCopy.
    recoveredBlock205Block219Value13 := (recoveredBlock205Block219Value12) asIleLValue.
    recoveredBlock205Block219Value14 := recoveredLocal10.
    recoveredBlock205Block219Value15 := (recoveredBlock205Block219Value13) assign: (recoveredBlock205Block219Value14).
    recoveredLocal4 := recoveredBlock205Block219Value15.
    recoveredBlock205Block219Value16 := recoveredLocal5.
    recoveredBlock205Block219Value17 := (recoveredBlock205Block219Value16) asIleCopy.
    recoveredBlock205Block219Value18 := (recoveredBlock205Block219Value17) asIleLValue.
    recoveredBlock205Block219Value19 := recoveredLocal9.
    recoveredBlock205Block219Value20 := (recoveredBlock205Block219Value18) assign: (recoveredBlock205Block219Value19).
    recoveredLocal3 := recoveredBlock205Block219Value20.
    recoveredBlock205Block219Value21 := (self) ileBuilder.
    recoveredBlock205Block219Value22 := recoveredLocal11.
    recoveredBlock205Block219Value23 := recoveredLocal4.
    recoveredBlock205Block219Value24 := (recoveredBlock205Block219Value23) asIleExprStmnt.
    recoveredBlock205Block219Value25 := (recoveredBlock205Block219Value24) asBlockedStatementList.
    recoveredBlock205Block219Value26 := recoveredLocal3.
    recoveredBlock205Block219Value27 := (recoveredBlock205Block219Value26) asIleExprStmnt.
    recoveredBlock205Block219Value28 := (recoveredBlock205Block219Value27) asBlockedStatementList.
    recoveredBlock205Block219Value29 := (recoveredBlock205Block219Value21) createIfExpr: (recoveredBlock205Block219Value22) thenStmnt: (recoveredBlock205Block219Value25) elseStmnt: (recoveredBlock205Block219Value28).
    recoveredBlock205Block219Value30 := recoveredBlock205Block219Value29.
    recoveredLocal2 := recoveredBlock205Block219Value30.
    recoveredBlock205Block219Value29
].
    recoveredBlock205Value4 := (recoveredBlock205Value2) executeInContext: (recoveredBlock205Value3).
    recoveredBlock205Value4
].
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            (recoveredStack0) useSource: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack0 := (recoveredStack0) createStatementExpression: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCommaExpr: (recoveredStack1).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack4 := recoveredLocal9.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack1 := (recoveredStack1) createNoOpCondExpr: (recoveredStack2) leftExpr: (recoveredStack3) rightExpr: (recoveredStack4).
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCommaExpr: (recoveredStack1).
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20608630; bytecode file offset 0xf04f9c"
!SGIlReplaceCommaExprTransformation methodsFor: 'recovered'!
andExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNoStatementContext.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 |
    recoveredBlock18Value0 := recoveredArg1.
    recoveredBlock18Value1 := (recoveredBlock18Value0) rightExpr.
    recoveredBlock18Value2 := (self) visitNode: (recoveredBlock18Value1).
    recoveredBlock18Value3 := recoveredBlock18Value2.
    recoveredLocal1 := recoveredBlock18Value3.
    recoveredBlock18Value2
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) conditionalContextDo: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) stripCommaExpr: (recoveredStack1) toList: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) createNoOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCommaExpr: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) packageAndExprsWithCommaExpr: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := SGCgExpressionContext.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) nonArithmeticContext.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock112Value0 recoveredBlock112Value1 recoveredBlock112Value2 |
    recoveredBlock112Value0 := recoveredLocal7.
    recoveredBlock112Value1 := [:recoveredBlock112Block121Arg1 | 
    | recoveredBlock112Block121Local1 recoveredBlock112Block121Local2 recoveredBlock112Block121Stack0 recoveredBlock112Block121Stack1 recoveredBlock112Block121Stack2 recoveredBlock112Block121Stack3 recoveredBlock112Block121Stack4 recoveredBlock112Block121Stack5 recoveredBlock112Block121Stack6 recoveredBlock112Block121PC recoveredBlock112Block121Step recoveredBlock112Block121Done recoveredBlock112Block121Result |
    recoveredBlock112Block121Stack0 := self.
    recoveredBlock112Block121PC := 128.
    recoveredBlock112Block121Done := false.
    [recoveredBlock112Block121Done not] whileTrue: [
        recoveredBlock112Block121Step := recoveredBlock112Block121PC.
        recoveredBlock112Block121Step = 128 ifTrue: [
            recoveredBlock112Block121Stack1 := recoveredLocal5.
            recoveredBlock112Block121PC := 131.
        ].
        recoveredBlock112Block121Step = 131 ifTrue: [
            (recoveredBlock112Block121Stack1 ~~ nil) ifTrue: [recoveredBlock112Block121PC := 260] ifFalse: [recoveredBlock112Block121PC := 134].
        ].
        recoveredBlock112Block121Step = 134 ifTrue: [
            recoveredBlock112Block121Stack1 := recoveredLocal6.
            recoveredBlock112Block121PC := 137.
        ].
        recoveredBlock112Block121Step = 137 ifTrue: [
            (recoveredBlock112Block121Stack1 == nil) ifTrue: [recoveredBlock112Block121PC := 260] ifFalse: [recoveredBlock112Block121PC := 140].
        ].
        recoveredBlock112Block121Step = 140 ifTrue: [
            recoveredBlock112Block121Stack1 := recoveredLocal6.
            recoveredBlock112Block121PC := 143.
        ].
        recoveredBlock112Block121Step = 143 ifTrue: [
            recoveredBlock112Block121Stack1 := (recoveredBlock112Block121Stack1) isIleTempVarIdentifier.
            recoveredBlock112Block121PC := 145.
        ].
        recoveredBlock112Block121Step = 145 ifTrue: [
            (recoveredBlock112Block121Stack1) ifTrue: [recoveredBlock112Block121PC := 148] ifFalse: [recoveredBlock112Block121PC := 200].
        ].
        recoveredBlock112Block121Step = 148 ifTrue: [
            recoveredBlock112Block121Stack1 := recoveredLocal6.
            recoveredBlock112Block121PC := 151.
        ].
        recoveredBlock112Block121Step = 151 ifTrue: [
            recoveredBlock112Block121Stack1 := (recoveredBlock112Block121Stack1) tempAssign.
            recoveredBlock112Block121PC := 153.
        ].
        recoveredBlock112Block121Step = 153 ifTrue: [
            recoveredBlock112Block121Stack1 := (recoveredBlock112Block121Stack1) expr.
            recoveredBlock112Block121PC := 155.
        ].
        recoveredBlock112Block121Step = 155 ifTrue: [
            recoveredBlock112Block121Stack1 := (recoveredBlock112Block121Stack1) isIleDummyExpr.
            recoveredBlock112Block121PC := 157.
        ].
        recoveredBlock112Block121Step = 157 ifTrue: [
            (recoveredBlock112Block121Stack1) ifTrue: [recoveredBlock112Block121PC := 160] ifFalse: [recoveredBlock112Block121PC := 200].
        ].
        recoveredBlock112Block121Step = 160 ifTrue: [
            recoveredBlock112Block121Stack1 := recoveredLocal6.
            recoveredBlock112Block121PC := 163.
        ].
        recoveredBlock112Block121Step = 163 ifTrue: [
            recoveredBlock112Block121Stack1 := (recoveredBlock112Block121Stack1) tempAssign.
            recoveredBlock112Block121PC := 165.
        ].
        recoveredBlock112Block121Step = 165 ifTrue: [
            recoveredBlock112Block121Stack1 := (recoveredBlock112Block121Stack1) tempVar.
            recoveredBlock112Block121PC := 167.
        ].
        recoveredBlock112Block121Step = 167 ifTrue: [
            (recoveredBlock112Block121Stack1 == nil) ifTrue: [recoveredBlock112Block121PC := 200] ifFalse: [recoveredBlock112Block121PC := 170].
        ].
        recoveredBlock112Block121Step = 170 ifTrue: [
            recoveredBlock112Block121Stack1 := recoveredLocal6.
            recoveredBlock112Block121PC := 173.
        ].
        recoveredBlock112Block121Step = 173 ifTrue: [
            recoveredBlock112Block121Stack1 := (recoveredBlock112Block121Stack1) tempAssign.
            recoveredBlock112Block121PC := 175.
        ].
        recoveredBlock112Block121Step = 175 ifTrue: [
            recoveredBlock112Block121Stack1 := (recoveredBlock112Block121Stack1) tempVar.
            recoveredBlock112Block121PC := 177.
        ].
        recoveredBlock112Block121Step = 177 ifTrue: [
            recoveredBlock112Block121Stack1 := (recoveredBlock112Block121Stack1) isIleNamedTempIdentifier.
            recoveredBlock112Block121PC := 179.
        ].
        recoveredBlock112Block121Step = 179 ifTrue: [
            (recoveredBlock112Block121Stack1) ifTrue: [recoveredBlock112Block121PC := 200] ifFalse: [recoveredBlock112Block121PC := 182].
        ].
        recoveredBlock112Block121Step = 182 ifTrue: [
            recoveredBlock112Block121Stack1 := recoveredLocal6.
            recoveredBlock112Block121PC := 185.
        ].
        recoveredBlock112Block121Step = 185 ifTrue: [
            recoveredLocal4 := recoveredBlock112Block121Stack1.
            recoveredBlock112Block121PC := 188.
        ].
        recoveredBlock112Block121Step = 188 ifTrue: [
            recoveredBlock112Block121Stack1 := recoveredLocal4.
            recoveredBlock112Block121PC := 191.
        ].
        recoveredBlock112Block121Step = 191 ifTrue: [
            recoveredBlock112Block121Stack1 := (recoveredBlock112Block121Stack1) asIleExprStmnt.
            recoveredBlock112Block121PC := 193.
        ].
        recoveredBlock112Block121Step = 193 ifTrue: [
            recoveredLocal5 := recoveredBlock112Block121Stack1.
            recoveredBlock112Block121PC := 196.
        ].
        recoveredBlock112Block121Step = 196 ifTrue: [
            recoveredBlock112Block121PC := 260.
        ].
        recoveredBlock112Block121Step = 200 ifTrue: [
            recoveredBlock112Block121Stack1 := self.
            recoveredBlock112Block121PC := 201.
        ].
        recoveredBlock112Block121Step = 201 ifTrue: [
            recoveredBlock112Block121Stack1 := (recoveredBlock112Block121Stack1) ileBuilder.
            recoveredBlock112Block121PC := 203.
        ].
        recoveredBlock112Block121Step = 203 ifTrue: [
            recoveredBlock112Block121Stack2 := self.
            recoveredBlock112Block121PC := 204.
        ].
        recoveredBlock112Block121Step = 204 ifTrue: [
            recoveredBlock112Block121Stack2 := (recoveredBlock112Block121Stack2) ileBuilder.
            recoveredBlock112Block121PC := 206.
        ].
        recoveredBlock112Block121Step = 206 ifTrue: [
            recoveredBlock112Block121Stack3 := recoveredArg1.
            recoveredBlock112Block121PC := 209.
        ].
        recoveredBlock112Block121Step = 209 ifTrue: [
            recoveredBlock112Block121Stack3 := (recoveredBlock112Block121Stack3) type.
            recoveredBlock112Block121PC := 211.
        ].
        recoveredBlock112Block121Step = 211 ifTrue: [
            recoveredBlock112Block121Stack2 := (recoveredBlock112Block121Stack2) createDummyExprType: (recoveredBlock112Block121Stack3).
            recoveredBlock112Block121PC := 213.
        ].
        recoveredBlock112Block121Step = 213 ifTrue: [
            recoveredBlock112Block121Stack1 := (recoveredBlock112Block121Stack1) tempAssign: (recoveredBlock112Block121Stack2).
            recoveredBlock112Block121PC := 215.
        ].
        recoveredBlock112Block121Step = 215 ifTrue: [
            recoveredLocal4 := recoveredBlock112Block121Stack1.
            recoveredBlock112Block121PC := 218.
        ].
        recoveredBlock112Block121Step = 218 ifTrue: [
            recoveredBlock112Block121Stack1 := self.
            recoveredBlock112Block121PC := 219.
        ].
        recoveredBlock112Block121Step = 219 ifTrue: [
            recoveredBlock112Block121Stack1 := (recoveredBlock112Block121Stack1) visitedTempAssignExprs.
            recoveredBlock112Block121PC := 221.
        ].
        recoveredBlock112Block121Step = 221 ifTrue: [
            recoveredBlock112Block121Stack2 := recoveredLocal4.
            recoveredBlock112Block121PC := 224.
        ].
        recoveredBlock112Block121Step = 224 ifTrue: [
            recoveredBlock112Block121Stack2 := (recoveredBlock112Block121Stack2) tempAssign.
            recoveredBlock112Block121PC := 226.
        ].
        recoveredBlock112Block121Step = 226 ifTrue: [
            (recoveredBlock112Block121Stack1) add: (recoveredBlock112Block121Stack2).
            recoveredBlock112Block121PC := 228.
        ].
        recoveredBlock112Block121Step = 228 ifTrue: [
            recoveredBlock112Block121Stack1 := recoveredLocal4.
            recoveredBlock112Block121PC := 231.
        ].
        recoveredBlock112Block121Step = 231 ifTrue: [
            recoveredBlock112Block121Stack1 := (recoveredBlock112Block121Stack1) tempAssign.
            recoveredBlock112Block121PC := 233.
        ].
        recoveredBlock112Block121Step = 233 ifTrue: [
            recoveredBlock112Block121Stack2 := self.
            recoveredBlock112Block121PC := 234.
        ].
        recoveredBlock112Block121Step = 234 ifTrue: [
            recoveredBlock112Block121Stack2 := (recoveredBlock112Block121Stack2) ileBuilder.
            recoveredBlock112Block121PC := 236.
        ].
        recoveredBlock112Block121Step = 236 ifTrue: [
            recoveredBlock112Block121Stack3 := recoveredArg1.
            recoveredBlock112Block121PC := 239.
        ].
        recoveredBlock112Block121Step = 239 ifTrue: [
            recoveredBlock112Block121Stack3 := (recoveredBlock112Block121Stack3) type.
            recoveredBlock112Block121PC := 241.
        ].
        recoveredBlock112Block121Step = 241 ifTrue: [
            recoveredBlock112Block121Stack2 := (recoveredBlock112Block121Stack2) tempVar: (recoveredBlock112Block121Stack3).
            recoveredBlock112Block121PC := 243.
        ].
        recoveredBlock112Block121Step = 243 ifTrue: [
            (recoveredBlock112Block121Stack1) tempVar: (recoveredBlock112Block121Stack2).
            recoveredBlock112Block121PC := 245.
        ].
        recoveredBlock112Block121Step = 245 ifTrue: [
            recoveredBlock112Block121Stack1 := recoveredLocal4.
            recoveredBlock112Block121PC := 248.
        ].
        recoveredBlock112Block121Step = 248 ifTrue: [
            recoveredBlock112Block121Stack1 := (recoveredBlock112Block121Stack1) asIleLValue.
            recoveredBlock112Block121PC := 250.
        ].
        recoveredBlock112Block121Step = 250 ifTrue: [
            recoveredBlock112Block121Stack2 := recoveredLocal6.
            recoveredBlock112Block121PC := 253.
        ].
        recoveredBlock112Block121Step = 253 ifTrue: [
            recoveredBlock112Block121Stack1 := (recoveredBlock112Block121Stack1) assign: (recoveredBlock112Block121Stack2).
            recoveredBlock112Block121PC := 255.
        ].
        recoveredBlock112Block121Step = 255 ifTrue: [
            recoveredBlock112Block121Stack1 := (recoveredBlock112Block121Stack1) asIleExprStmnt.
            recoveredBlock112Block121PC := 257.
        ].
        recoveredBlock112Block121Step = 257 ifTrue: [
            recoveredLocal5 := recoveredBlock112Block121Stack1.
            recoveredBlock112Block121PC := 260.
        ].
        recoveredBlock112Block121Step = 260 ifTrue: [
            recoveredBlock112Block121Stack1 := recoveredLocal5.
            recoveredBlock112Block121PC := 263.
        ].
        recoveredBlock112Block121Step = 263 ifTrue: [
            (recoveredBlock112Block121Stack1 == nil) ifTrue: [recoveredBlock112Block121PC := 317] ifFalse: [recoveredBlock112Block121PC := 266].
        ].
        recoveredBlock112Block121Step = 266 ifTrue: [
            recoveredBlock112Block121Stack1 := recoveredLocal3.
            recoveredBlock112Block121PC := 269.
        ].
        recoveredBlock112Block121Step = 269 ifTrue: [
            recoveredBlock112Block121Stack1 := (recoveredBlock112Block121Stack1) notEmpty.
            recoveredBlock112Block121PC := 271.
        ].
        recoveredBlock112Block121Step = 271 ifTrue: [
            (recoveredBlock112Block121Stack1) ifTrue: [recoveredBlock112Block121PC := 274] ifFalse: [recoveredBlock112Block121PC := 317].
        ].
        recoveredBlock112Block121Step = 274 ifTrue: [
            recoveredBlock112Block121Stack1 := recoveredLocal3.
            recoveredBlock112Block121PC := 277.
        ].
        recoveredBlock112Block121Step = 277 ifTrue: [
            recoveredBlock112Block121Stack2 := [:block2811d1ccArg1 | 
    | block2811d1ccValue0 block2811d1ccValue1 |
    block2811d1ccValue0 := block2811d1ccArg1.
    block2811d1ccValue1 := (block2811d1ccValue0) asIleExprStmnt.
    block2811d1ccValue1
].
            recoveredBlock112Block121PC := 279.
        ].
        recoveredBlock112Block121Step = 279 ifTrue: [
            recoveredBlock112Block121PC := 286.
        ].
        recoveredBlock112Block121Step = 286 ifTrue: [
            recoveredBlock112Block121Stack1 := (recoveredBlock112Block121Stack1) collect: (recoveredBlock112Block121Stack2).
            recoveredBlock112Block121PC := 288.
        ].
        recoveredBlock112Block121Step = 288 ifTrue: [
            recoveredLocal3 := recoveredBlock112Block121Stack1.
            recoveredBlock112Block121PC := 291.
        ].
        recoveredBlock112Block121Step = 291 ifTrue: [
            recoveredBlock112Block121Stack1 := recoveredLocal3.
            recoveredBlock112Block121PC := 294.
        ].
        recoveredBlock112Block121Step = 294 ifTrue: [
            recoveredBlock112Block121Stack2 := recoveredLocal5.
            recoveredBlock112Block121PC := 297.
        ].
        recoveredBlock112Block121Step = 297 ifTrue: [
            (recoveredBlock112Block121Stack1) add: (recoveredBlock112Block121Stack2).
            recoveredBlock112Block121PC := 299.
        ].
        recoveredBlock112Block121Step = 299 ifTrue: [
            recoveredBlock112Block121Stack1 := self.
            recoveredBlock112Block121PC := 300.
        ].
        recoveredBlock112Block121Step = 300 ifTrue: [
            recoveredBlock112Block121Stack1 := (recoveredBlock112Block121Stack1) ileBuilder.
            recoveredBlock112Block121PC := 302.
        ].
        recoveredBlock112Block121Step = 302 ifTrue: [
            recoveredBlock112Block121Stack2 := recoveredLocal3.
            recoveredBlock112Block121PC := 305.
        ].
        recoveredBlock112Block121Step = 305 ifTrue: [
            recoveredBlock112Block121Stack1 := (recoveredBlock112Block121Stack1) stmntList: (recoveredBlock112Block121Stack2).
            recoveredBlock112Block121PC := 307.
        ].
        recoveredBlock112Block121Step = 307 ifTrue: [
            recoveredLocal5 := recoveredBlock112Block121Stack1.
            recoveredBlock112Block121PC := 310.
        ].
        recoveredBlock112Block121Step = 310 ifTrue: [
            recoveredBlock112Block121Stack1 := OrderedCollection.
            recoveredBlock112Block121PC := 312.
        ].
        recoveredBlock112Block121Step = 312 ifTrue: [
            recoveredBlock112Block121Stack1 := (recoveredBlock112Block121Stack1) new.
            recoveredBlock112Block121PC := 314.
        ].
        recoveredBlock112Block121Step = 314 ifTrue: [
            recoveredLocal3 := recoveredBlock112Block121Stack1.
            recoveredBlock112Block121PC := 317.
        ].
        recoveredBlock112Block121Step = 317 ifTrue: [
            recoveredBlock112Block121Stack1 := recoveredBlock112Block121Arg1.
            recoveredBlock112Block121PC := 318.
        ].
        recoveredBlock112Block121Step = 318 ifTrue: [
            recoveredBlock112Block121Stack2 := 1.
            recoveredBlock112Block121PC := 320.
        ].
        recoveredBlock112Block121Step = 320 ifTrue: [
            recoveredBlock112Block121Stack3 := self.
            recoveredBlock112Block121PC := 321.
        ].
        recoveredBlock112Block121Step = 321 ifTrue: [
            recoveredBlock112Block121Stack4 := recoveredBlock112Block121Arg1.
            recoveredBlock112Block121PC := 322.
        ].
        recoveredBlock112Block121Step = 322 ifTrue: [
            recoveredBlock112Block121Stack4 := (recoveredBlock112Block121Stack4) first.
            recoveredBlock112Block121PC := 324.
        ].
        recoveredBlock112Block121Step = 324 ifTrue: [
            recoveredBlock112Block121Stack5 := recoveredLocal3.
            recoveredBlock112Block121PC := 327.
        ].
        recoveredBlock112Block121Step = 327 ifTrue: [
            recoveredBlock112Block121Stack3 := (recoveredBlock112Block121Stack3) stripCommaExpr: (recoveredBlock112Block121Stack4) toList: (recoveredBlock112Block121Stack5).
            recoveredBlock112Block121PC := 329.
        ].
        recoveredBlock112Block121Step = 329 ifTrue: [
            (recoveredBlock112Block121Stack1) at: (recoveredBlock112Block121Stack2) put: (recoveredBlock112Block121Stack3).
            recoveredBlock112Block121PC := 331.
        ].
        recoveredBlock112Block121Step = 331 ifTrue: [
            recoveredBlock112Block121Stack1 := recoveredBlock112Block121Arg1.
            recoveredBlock112Block121PC := 332.
        ].
        recoveredBlock112Block121Step = 332 ifTrue: [
            recoveredBlock112Block121Stack2 := self.
            recoveredBlock112Block121PC := 333.
        ].
        recoveredBlock112Block121Step = 333 ifTrue: [
            recoveredBlock112Block121Stack2 := (recoveredBlock112Block121Stack2) ileBuilder.
            recoveredBlock112Block121PC := 335.
        ].
        recoveredBlock112Block121Step = 335 ifTrue: [
            recoveredBlock112Block121Stack2 := (recoveredBlock112Block121Stack2) literalTrue.
            recoveredBlock112Block121PC := 337.
        ].
        recoveredBlock112Block121Step = 337 ifTrue: [
            recoveredBlock112Block121Stack3 := [:block2811d1f0Arg1 :block2811d1f0Arg2 | 
    | block2811d1f0Value0 block2811d1f0Value1 block2811d1f0Value2 |
    block2811d1f0Value0 := block2811d1f0Arg1.
    block2811d1f0Value1 := block2811d1f0Arg2.
    block2811d1f0Value2 := (block2811d1f0Value0) andExpr: (block2811d1f0Value1).
    block2811d1f0Value2
].
            recoveredBlock112Block121PC := 339.
        ].
        recoveredBlock112Block121Step = 339 ifTrue: [
            recoveredBlock112Block121PC := 347.
        ].
        recoveredBlock112Block121Step = 347 ifTrue: [
            recoveredBlock112Block121Stack1 := (recoveredBlock112Block121Stack1) inject: (recoveredBlock112Block121Stack2) into: (recoveredBlock112Block121Stack3).
            recoveredBlock112Block121PC := 349.
        ].
        recoveredBlock112Block121Step = 349 ifTrue: [
            recoveredBlock112Block121Local2 := recoveredBlock112Block121Stack1.
            recoveredBlock112Block121PC := 350.
        ].
        recoveredBlock112Block121Step = 350 ifTrue: [
            recoveredBlock112Block121Stack1 := recoveredLocal6.
            recoveredBlock112Block121PC := 353.
        ].
        recoveredBlock112Block121Step = 353 ifTrue: [
            (recoveredBlock112Block121Stack1 ~~ nil) ifTrue: [recoveredBlock112Block121PC := 364] ifFalse: [recoveredBlock112Block121PC := 356].
        ].
        recoveredBlock112Block121Step = 356 ifTrue: [
            recoveredBlock112Block121Stack1 := recoveredBlock112Block121Local2.
            recoveredBlock112Block121PC := 357.
        ].
        recoveredBlock112Block121Step = 357 ifTrue: [
            recoveredBlock112Block121Stack2 := recoveredBlock112Block121Stack1.
            recoveredBlock112Block121PC := 358.
        ].
        recoveredBlock112Block121Step = 358 ifTrue: [
            recoveredLocal6 := recoveredBlock112Block121Stack2.
            recoveredBlock112Block121PC := 361.
        ].
        recoveredBlock112Block121Step = 361 ifTrue: [
            recoveredBlock112Block121PC := 409.
        ].
        recoveredBlock112Block121Step = 364 ifTrue: [
            recoveredBlock112Block121Stack1 := nil.
            recoveredBlock112Block121PC := 365.
        ].
        recoveredBlock112Block121Step = 365 ifTrue: [
            recoveredBlock112Block121Stack2 := recoveredBlock112Block121Local2.
            recoveredBlock112Block121PC := 366.
        ].
        recoveredBlock112Block121Step = 366 ifTrue: [
            recoveredBlock112Block121Stack2 := (recoveredBlock112Block121Stack2) isIleConstantValueTrue.
            recoveredBlock112Block121PC := 368.
        ].
        recoveredBlock112Block121Step = 368 ifTrue: [
            (recoveredBlock112Block121Stack2) ifTrue: [recoveredBlock112Block121PC := 409] ifFalse: [recoveredBlock112Block121PC := 372].
        ].
        recoveredBlock112Block121Step = 372 ifTrue: [
            recoveredBlock112Block121PC := 373.
        ].
        recoveredBlock112Block121Step = 373 ifTrue: [
            recoveredBlock112Block121Stack1 := recoveredLocal4.
            recoveredBlock112Block121PC := 376.
        ].
        recoveredBlock112Block121Step = 376 ifTrue: [
            recoveredBlock112Block121Stack1 := (recoveredBlock112Block121Stack1) asIleLValue.
            recoveredBlock112Block121PC := 378.
        ].
        recoveredBlock112Block121Step = 378 ifTrue: [
            recoveredBlock112Block121Stack2 := self.
            recoveredBlock112Block121PC := 379.
        ].
        recoveredBlock112Block121Step = 379 ifTrue: [
            recoveredBlock112Block121Stack2 := (recoveredBlock112Block121Stack2) ileBuilder.
            recoveredBlock112Block121PC := 381.
        ].
        recoveredBlock112Block121Step = 381 ifTrue: [
            recoveredBlock112Block121Stack2 := (recoveredBlock112Block121Stack2) literalFalse.
            recoveredBlock112Block121PC := 383.
        ].
        recoveredBlock112Block121Step = 383 ifTrue: [
            recoveredBlock112Block121Stack1 := (recoveredBlock112Block121Stack1) assign: (recoveredBlock112Block121Stack2).
            recoveredBlock112Block121PC := 385.
        ].
        recoveredBlock112Block121Step = 385 ifTrue: [
            recoveredBlock112Block121Local1 := recoveredBlock112Block121Stack1.
            recoveredBlock112Block121PC := 386.
        ].
        recoveredBlock112Block121Step = 386 ifTrue: [
            recoveredBlock112Block121Stack1 := self.
            recoveredBlock112Block121PC := 387.
        ].
        recoveredBlock112Block121Step = 387 ifTrue: [
            recoveredBlock112Block121Stack1 := (recoveredBlock112Block121Stack1) ileBuilder.
            recoveredBlock112Block121PC := 389.
        ].
        recoveredBlock112Block121Step = 389 ifTrue: [
            recoveredBlock112Block121Stack2 := recoveredBlock112Block121Local2.
            recoveredBlock112Block121PC := 390.
        ].
        recoveredBlock112Block121Step = 390 ifTrue: [
            recoveredBlock112Block121Stack3 := recoveredLocal5.
            recoveredBlock112Block121PC := 393.
        ].
        recoveredBlock112Block121Step = 393 ifTrue: [
            recoveredBlock112Block121Stack3 := (recoveredBlock112Block121Stack3) asBlockedStatementList.
            recoveredBlock112Block121PC := 395.
        ].
        recoveredBlock112Block121Step = 395 ifTrue: [
            recoveredBlock112Block121Stack4 := recoveredBlock112Block121Local1.
            recoveredBlock112Block121PC := 396.
        ].
        recoveredBlock112Block121Step = 396 ifTrue: [
            recoveredBlock112Block121Stack4 := (recoveredBlock112Block121Stack4) asIleExprStmnt.
            recoveredBlock112Block121PC := 398.
        ].
        recoveredBlock112Block121Step = 398 ifTrue: [
            recoveredBlock112Block121Stack4 := (recoveredBlock112Block121Stack4) asBlockedStatementList.
            recoveredBlock112Block121PC := 400.
        ].
        recoveredBlock112Block121Step = 400 ifTrue: [
            recoveredBlock112Block121Stack1 := (recoveredBlock112Block121Stack1) createIfExpr: (recoveredBlock112Block121Stack2) thenStmnt: (recoveredBlock112Block121Stack3) elseStmnt: (recoveredBlock112Block121Stack4).
            recoveredBlock112Block121PC := 403.
        ].
        recoveredBlock112Block121Step = 403 ifTrue: [
            recoveredBlock112Block121Stack2 := recoveredBlock112Block121Stack1.
            recoveredBlock112Block121PC := 404.
        ].
        recoveredBlock112Block121Step = 404 ifTrue: [
            recoveredLocal5 := recoveredBlock112Block121Stack2.
            recoveredBlock112Block121PC := 407.
        ].
        recoveredBlock112Block121Step = 407 ifTrue: [
            recoveredBlock112Block121Stack2 := nil.
            recoveredBlock112Block121PC := 408.
        ].
        recoveredBlock112Block121Step = 408 ifTrue: [
            recoveredBlock112Block121Local1 := recoveredBlock112Block121Stack2.
            recoveredBlock112Block121PC := 409.
        ].
        recoveredBlock112Block121Step = 409 ifTrue: [
            recoveredBlock112Block121Result := recoveredBlock112Block121Stack1.
            recoveredBlock112Block121Done := true.
        ].
    ].
    recoveredBlock112Block121Result
].
    recoveredBlock112Value2 := (recoveredBlock112Value0) reverseDo: (recoveredBlock112Value1).
    recoveredBlock112Value2
].
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            (recoveredStack0) executeInContext: (recoveredStack1).
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 434] ifFalse: [recoveredPC := 422].
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredPC := 460.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack3 := (recoveredStack3) type.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack1 := (recoveredStack1) createStatementExpression: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCommaExpr: (recoveredStack1).
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

