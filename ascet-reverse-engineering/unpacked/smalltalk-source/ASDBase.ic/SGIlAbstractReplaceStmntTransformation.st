"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200016c0; bytecode file offset 0x8ffcfc"
!SGIlAbstractReplaceStmntTransformation methodsFor: 'recovered'!
prepareCodeGeneration
    ^self
! !

"ASDBase.ic method 0x2003c020; bytecode file offset 0x938914"
!SGIlAbstractReplaceStmntTransformation methodsFor: 'recovered'!
stmnt: recoveredArg1 expr: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) visitNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200aab98; bytecode file offset 0x9a7454"
!SGIlAbstractReplaceStmntTransformation methodsFor: 'recovered'!
pmiCodeBlock: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    super pmiCodeBlock: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20138700; bytecode file offset 0xa3501c"
!SGIlAbstractReplaceStmntTransformation methodsFor: 'recovered'!
caseStmnt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super caseStmnt: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) constantExpr.
    recoveredValue5 := (self) visitNode: (recoveredValue4).
    recoveredValue6 := (recoveredValue2) createNoOpConstantExpr: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20138738; bytecode file offset 0xa3501c"
!SGIlAbstractReplaceStmntTransformation methodsFor: 'recovered'!
abstractLabeledStatement: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super abstractLabeledStatement: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) stmnt.
    recoveredValue5 := (self) visitNode: (recoveredValue4).
    recoveredValue6 := (recoveredValue2) createNoOpStmnt: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2015a908; bytecode file offset 0xa571d0"
!SGIlAbstractReplaceStmntTransformation methodsFor: 'recovered'!
abstractExpressionStatement: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super abstractExpressionStatement: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) expr.
    recoveredValue6 := (self) stmnt: (recoveredValue3) expr: (recoveredValue5).
    recoveredValue7 := (recoveredValue2) createNoOpExpr: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201d1ed4; bytecode file offset 0xace7f8"
!SGIlAbstractReplaceStmntTransformation methodsFor: 'recovered'!
ifThenStmnt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    (recoveredValue1) assertCondContext: (true) message: ('The context of the if condition lost').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := super ifThenStmnt: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) thenStmnt.
    recoveredValue7 := (self) visitNode: (recoveredValue6).
    recoveredValue8 := (recoveredValue4) createNoOpThenStmnt: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201d1efc; bytecode file offset 0xace7f8"
!SGIlAbstractReplaceStmntTransformation methodsFor: 'recovered'!
whileStmnt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    (recoveredValue1) assertCondContext: (true) message: ('The context of the while condition lost').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := super whileStmnt: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) doStmnt.
    recoveredValue7 := (self) visitNode: (recoveredValue6).
    recoveredValue8 := (recoveredValue4) createNoOpDoStmnt: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201d1f24; bytecode file offset 0xace7f8"
!SGIlAbstractReplaceStmntTransformation methodsFor: 'recovered'!
repeatStmnt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    (recoveredValue1) assertCondContext: (true) message: ('The context of the repeat condition lost').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := super repeatStmnt: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) doStmnt.
    recoveredValue7 := (self) visitNode: (recoveredValue6).
    recoveredValue8 := (recoveredValue4) createNoOpDoStmnt: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201d2288; bytecode file offset 0xaceb54"
!SGIlAbstractReplaceStmntTransformation methodsFor: 'recovered'!
ifThenElseStmnt: recoveredArg1
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
            recoveredStack0 := super ifThenElseStmnt: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleIfElseStmnt.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) elseStmnt.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) createNoOpElseStmnt: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20292cc8; bytecode file offset 0xb8f5a4"
!SGIlAbstractReplaceStmntTransformation methodsFor: 'recovered'!
forStmnt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    (recoveredValue1) assertCondContext: (true) message: ('The context of the for condition lost').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := super forStmnt: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) firstExpr.
    recoveredValue8 := (self) stmnt: (recoveredValue5) expr: (recoveredValue7).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) lastExpr.
    recoveredValue12 := (self) stmnt: (recoveredValue9) expr: (recoveredValue11).
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (recoveredValue14) doStmnt.
    recoveredValue16 := (self) stmnt: (recoveredValue13) expr: (recoveredValue15).
    recoveredValue17 := (recoveredValue4) createNoOpFirstExpr: (recoveredValue8) lastExpr: (recoveredValue12) doStmnt: (recoveredValue16).
    ^recoveredValue17
! !

"ASDBase.ic method 0x202e6c90; bytecode file offset 0xbe3568"
!SGIlAbstractReplaceStmntTransformation methodsFor: 'recovered'!
switchStmnt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) expressionContext.
    recoveredValue3 := recoveredArg1.
    (recoveredValue0) assertContext: (recoveredValue2) on: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) expressionContext.
    recoveredValue6 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 |
    recoveredBlock18Value0 := recoveredArg1.
    recoveredBlock18Value1 := super switchStmnt: (recoveredBlock18Value0).
    recoveredBlock18Value1
].
    recoveredValue7 := (recoveredValue5) executeInContext: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) stmnt.
    recoveredValue11 := (self) visitNode: (recoveredValue10).
    recoveredValue12 := (recoveredValue8) createNoOpStmnt: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x20300e28; bytecode file offset 0xbfd700"
!SGIlAbstractReplaceStmntTransformation methodsFor: 'recovered'!
abstractStatementList: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super abstractStatementList: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) stmntList.
    recoveredValue5 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 |
    recoveredBlock21Value0 := (self) ileBuilder.
    recoveredBlock21Value1 := recoveredBlock21Arg1.
    recoveredBlock21Value2 := (recoveredBlock21Value1) source.
    recoveredBlock21Value3 := [
    | recoveredBlock21Block34Value0 recoveredBlock21Block34Value1 |
    recoveredBlock21Block34Value0 := recoveredBlock21Arg1.
    recoveredBlock21Block34Value1 := (self) visitNode: (recoveredBlock21Block34Value0).
    recoveredBlock21Block34Value1
].
    recoveredBlock21Value4 := (recoveredBlock21Value0) useSource: (recoveredBlock21Value2) for: (recoveredBlock21Value3).
    recoveredBlock21Value4
].
    recoveredValue6 := (recoveredValue4) collect: (recoveredValue5).
    recoveredValue7 := (recoveredValue2) createNoOpStmntList: (recoveredValue6).
    ^recoveredValue7
! !

