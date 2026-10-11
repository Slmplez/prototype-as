"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000dcc8; bytecode file offset 0x90ab8c"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
ansiCExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) createNoSideEffectInfo.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000ddd0; bytecode file offset 0x90ab8c"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
exitStmnt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) createNoSideEffectInfo.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000dee4; bytecode file offset 0x90ab8c"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
emptyStmnt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) createNoSideEffectInfo.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000defc; bytecode file offset 0x90ab8c"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
logicNode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) createInfo.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000dfd4; bytecode file offset 0x90ab8c"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
literal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) createNoSideEffectInfo.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000e124; bytecode file offset 0x90ab8c"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
breakStmnt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) createNoSideEffectInfo.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003dd78; bytecode file offset 0x93bf94"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
mdlBuilder
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMdBuilder.
    recoveredValue1 := (recoveredValue0) currentMdlBuilder.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e298; bytecode file offset 0x93bf94"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
createNoSideEffectInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMdNoSideEffectAnalysisInfo.
    recoveredValue1 := (recoveredValue0) create.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e3d8; bytecode file offset 0x93bf94"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
createInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMdSideEffectAnalysisInfo.
    recoveredValue1 := (recoveredValue0) create.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f418; bytecode file offset 0x93bf94"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
createAssignmentInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMdAssignmentSideEffectAnalysisInfo.
    recoveredValue1 := (recoveredValue0) create.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200569b0; bytecode file offset 0x9536dc"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
implCast: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) rightChild.
    recoveredValue2 := (self) visitMdlNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20056a40; bytecode file offset 0x9536dc"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
mdlDereferencedExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    recoveredValue2 := (self) visitMdlNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20056aa0; bytecode file offset 0x9536dc"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
caseStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) child.
    recoveredValue2 := (self) visitMdlNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20056b30; bytecode file offset 0x9536dc"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
assertIntervalSpecialCall: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) receiver.
    recoveredValue2 := (self) visitMdlNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20056b50; bytecode file offset 0x9536dc"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
exprStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) exprChild.
    recoveredValue2 := (self) visitMdlNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20056c20; bytecode file offset 0x9536dc"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
choiceExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) exprChild.
    recoveredValue2 := (self) visitMdlNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20056c50; bytecode file offset 0x9536dc"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
unaryLogicExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) child.
    recoveredValue2 := (self) visitMdlNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20056cd0; bytecode file offset 0x9536dc"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
compoundArithmethicExpression: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) rootExpr.
    recoveredValue2 := (self) visitMdlNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20056d20; bytecode file offset 0x9536dc"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
specialConvertContCall: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) receiver.
    recoveredValue2 := (self) visitMdlNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20056db0; bytecode file offset 0x9536dc"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
defaultStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) child.
    recoveredValue2 := (self) visitMdlNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20056e10; bytecode file offset 0x9536dc"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
mdlReferencedExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    recoveredValue2 := (self) visitMdlNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20066cec; bytecode file offset 0x9646f8"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
methodDecl
    | recoveredValue0 |
    recoveredValue0 := methodDecl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068824; bytecode file offset 0x965b90"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
verifyCalls
    | recoveredValue0 |
    recoveredValue0 := verifyCalls.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a924; bytecode file offset 0x967a18"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
referenceAnalysis
    | recoveredValue0 |
    recoveredValue0 := referenceAnalysis.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20081718; bytecode file offset 0x97e234"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
createUnarySideEffectInfo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMdUnarySideEffectAnalysisInfo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ac518; bytecode file offset 0x9a8ea4"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
createUndefinedOrderInfo: recoveredArg1 source: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGMdUndefinedOrderSideEffectAnalysisInfo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) create: (recoveredValue1) source: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ac598; bytecode file offset 0x9a8ea4"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
createDefinedOrderInfo: recoveredArg1 source: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGMdDefinedOrderSideEffectAnalysisInfo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) create: (recoveredValue1) source: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b7e50; bytecode file offset 0x9b479c"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
createDefinedOrderInfo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGMdDefinedOrderSideEffectAnalysisInfo.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) source: (recoveredValue3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20134f68; bytecode file offset 0xa31828"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
analyzeSideEffects: recoveredArg1 methodDecl: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorHandler.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasCurrentErrors.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            methodDecl := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitMdlNode: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20145460; bytecode file offset 0xa41d44"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
parmAssign: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) rightChild.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) variable.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) source.
    (self) assignExpression: (recoveredValue1) to: (recoveredValue3) source: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) rightChild.
    recoveredValue8 := (self) visitMdlNode: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2014547c; bytecode file offset 0xa41d44"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
returnStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) child.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) methodDecl.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) source.
    (self) assignExpression: (recoveredValue1) to: (recoveredValue3) source: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) child.
    recoveredValue8 := (self) visitMdlNode: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2018dbf8; bytecode file offset 0xa8a4c0"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
globalTypeElementCollector
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := globalTypeElementCollector.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGMdGlobalTypeElementCollector.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlBuilder.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) genContext.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) methodDecl.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2) forMethodDecl: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            globalTypeElementCollector := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := globalTypeElementCollector.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201d2120; bytecode file offset 0xace9ec"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
methodCall: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) abstractMethodCall: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) concreteReceiver.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) concreteReceiver.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitMdlNode: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) receiver: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodDecl.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) methodDecl: (recoveredStack1).
            recoveredPC := 25.
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

"ASDBase.ic method 0x201d88bc; bytecode file offset 0xad518c"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
mdlRedundantVerifyExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := verifyCalls.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            verifyCalls := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := verifyCalls.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) identifier.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) varDecl.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := super mdlRedundantVerifyExpr: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20206cb0; bytecode file offset 0xb0358c"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
fieldAccess: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := SGMdSideEffectRecordAccess.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) accessChain.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) expr.
    recoveredValue5 := (self) visitMdlNode: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) create: (recoveredValue2) expr: (recoveredValue5).
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) source.
    (recoveredValue7) source: (recoveredValue9).
    recoveredLocal1 := recoveredValue6.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (self) globalTypeElementCollector.
    recoveredValue12 := (self) methodDecl.
    recoveredValue13 := (recoveredValue10) localSideEffects: (recoveredValue11) inMethod: (recoveredValue12).
    ^recoveredValue13
! !

"ASDBase.ic method 0x20212898; bytecode file offset 0xb0f1a4"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
binaryEqualityExpr: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) leftChild.
    recoveredValue3 := (self) visitMdlNode: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) rightChild.
    recoveredValue6 := (self) visitMdlNode: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) with: (recoveredValue3) with: (recoveredValue6).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) source.
    recoveredValue10 := (self) createUndefinedOrderInfo: (recoveredValue7) source: (recoveredValue9).
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (self) globalTypeElementCollector.
    recoveredValue13 := (self) methodDecl.
    recoveredValue14 := (recoveredValue11) localSideEffects: (recoveredValue12) inMethod: (recoveredValue13).
    ^recoveredValue14
! !

"ASDBase.ic method 0x202128c8; bytecode file offset 0xb0f1a4"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
binaryArithmeticExpr: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) leftChild.
    recoveredValue3 := (self) visitMdlNode: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) rightChild.
    recoveredValue6 := (self) visitMdlNode: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) with: (recoveredValue3) with: (recoveredValue6).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) source.
    recoveredValue10 := (self) createUndefinedOrderInfo: (recoveredValue7) source: (recoveredValue9).
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (self) globalTypeElementCollector.
    recoveredValue13 := (self) methodDecl.
    recoveredValue14 := (recoveredValue11) localSideEffects: (recoveredValue12) inMethod: (recoveredValue13).
    ^recoveredValue14
! !

"ASDBase.ic method 0x20223048; bytecode file offset 0xb1f91c"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
commaExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) children.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (self) visitMdlNode: (recoveredBlock6Value0).
    recoveredBlock6Value1
].
    recoveredValue3 := (recoveredValue1) collect: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) source.
    recoveredValue7 := (self) createDefinedOrderInfo: (recoveredValue4) source: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (self) globalTypeElementCollector.
    recoveredValue10 := (self) methodDecl.
    recoveredValue11 := (recoveredValue8) localSideEffects: (recoveredValue9) inMethod: (recoveredValue10).
    ^recoveredValue11
! !

"ASDBase.ic method 0x20237b24; bytecode file offset 0xb34404"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
binaryLogicExpr: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) leftChild.
    recoveredValue3 := (self) visitMdlNode: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) rightChild.
    recoveredValue6 := (self) visitMdlNode: (recoveredValue5).
    recoveredValue7 := (recoveredValue6) conditional: (true).
    recoveredValue8 := (recoveredValue0) with: (recoveredValue3) with: (recoveredValue7).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) source.
    recoveredValue11 := (self) createDefinedOrderInfo: (recoveredValue8) source: (recoveredValue10).
    recoveredLocal1 := recoveredValue11.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (self) globalTypeElementCollector.
    recoveredValue14 := (self) methodDecl.
    recoveredValue15 := (recoveredValue12) localSideEffects: (recoveredValue13) inMethod: (recoveredValue14).
    ^recoveredValue15
! !

"ASDBase.ic method 0x2025a750; bytecode file offset 0xb57030"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
betweenAndExpr: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) leftChild.
    recoveredValue3 := (self) visitMdlNode: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) exprChild.
    recoveredValue6 := (self) visitMdlNode: (recoveredValue5).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) rightChild.
    recoveredValue9 := (self) visitMdlNode: (recoveredValue8).
    recoveredValue10 := (recoveredValue0) with: (recoveredValue3) with: (recoveredValue6) with: (recoveredValue9).
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) source.
    recoveredValue13 := (self) createUndefinedOrderInfo: (recoveredValue10) source: (recoveredValue12).
    recoveredLocal1 := recoveredValue13.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (self) globalTypeElementCollector.
    recoveredValue16 := (self) methodDecl.
    recoveredValue17 := (recoveredValue14) localSideEffects: (recoveredValue15) inMethod: (recoveredValue16).
    ^recoveredValue17
! !

"ASDBase.ic method 0x202653c0; bytecode file offset 0xb61ca4"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
repeatStmnt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) stmntChild.
    recoveredValue3 := (self) visitMdlNode: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) stmntChild.
    recoveredValue7 := (recoveredValue6) hasReturnStmnt.
    (recoveredValue4) hasValues: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) exprChild.
    recoveredValue10 := (self) visitMdlNode: (recoveredValue9).
    recoveredValue11 := (recoveredValue0) with: (recoveredValue3) with: (recoveredValue10).
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) source.
    recoveredValue14 := (self) createDefinedOrderInfo: (recoveredValue11) source: (recoveredValue13).
    recoveredLocal1 := recoveredValue14.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (self) globalTypeElementCollector.
    recoveredValue17 := (self) methodDecl.
    recoveredValue18 := (recoveredValue15) localSideEffects: (recoveredValue16) inMethod: (recoveredValue17).
    ^recoveredValue18
! !

"ASDBase.ic method 0x2026cbf0; bytecode file offset 0xb694cc"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
identifier: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isMdlConstantValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSystemConstant.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDecl.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlParameter.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) createNoSideEffectInfo.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := SGMdSideEffectVarAccess.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) accessChain.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2026ed0c; bytecode file offset 0xb6b5d8"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
assignExpression: recoveredArg1 to: recoveredArg2 source: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgReferenceType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSelfDecl.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := referenceAnalysis.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := SGMdReferenceAnalysisCollection.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            referenceAnalysis := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) assignReferenceExpression: (recoveredStack1) to: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20287718; bytecode file offset 0xb83ff8"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
indexedExpr: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := SGMdSideEffectIndexAccess.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) exprChild.
    recoveredValue3 := (self) visitMdlNode: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) indexChild.
    recoveredValue6 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := (self) visitMdlNode: (recoveredBlock12Value0).
    recoveredBlock12Value1
].
    recoveredValue7 := (recoveredValue5) collect: (recoveredValue6).
    recoveredValue8 := (recoveredValue0) create: (recoveredValue3) index: (recoveredValue7).
    recoveredValue9 := recoveredValue8.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) source.
    (recoveredValue9) source: (recoveredValue11).
    recoveredLocal1 := recoveredValue8.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (self) globalTypeElementCollector.
    recoveredValue14 := (self) methodDecl.
    recoveredValue15 := (recoveredValue12) localSideEffects: (recoveredValue13) inMethod: (recoveredValue14).
    ^recoveredValue15
! !

"ASDBase.ic method 0x20292378; bytecode file offset 0xb8ec9c"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
ifThenStmnt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) exprChild.
    recoveredValue3 := (self) visitMdlNode: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) trueChild.
    recoveredValue6 := (self) visitMdlNode: (recoveredValue5).
    recoveredValue7 := recoveredValue6.
    (recoveredValue7) conditional: (true).
    recoveredValue8 := recoveredValue6.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) trueChild.
    recoveredValue11 := (recoveredValue10) hasReturnStmnt.
    (recoveredValue8) hasValues: (recoveredValue11).
    recoveredValue12 := (recoveredValue0) with: (recoveredValue3) with: (recoveredValue6).
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) source.
    recoveredValue15 := (self) createDefinedOrderInfo: (recoveredValue12) source: (recoveredValue14).
    recoveredLocal1 := recoveredValue15.
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := (self) globalTypeElementCollector.
    recoveredValue18 := (self) methodDecl.
    recoveredValue19 := (recoveredValue16) localSideEffects: (recoveredValue17) inMethod: (recoveredValue18).
    ^recoveredValue19
! !

"ASDBase.ic method 0x202923b4; bytecode file offset 0xb8ec9c"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
whileStmnt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) exprChild.
    recoveredValue3 := (self) visitMdlNode: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) stmntChild.
    recoveredValue6 := (self) visitMdlNode: (recoveredValue5).
    recoveredValue7 := recoveredValue6.
    (recoveredValue7) conditional: (true).
    recoveredValue8 := recoveredValue6.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) stmntChild.
    recoveredValue11 := (recoveredValue10) hasReturnStmnt.
    (recoveredValue8) hasValues: (recoveredValue11).
    recoveredValue12 := (recoveredValue0) with: (recoveredValue3) with: (recoveredValue6).
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) source.
    recoveredValue15 := (self) createDefinedOrderInfo: (recoveredValue12) source: (recoveredValue14).
    recoveredLocal1 := recoveredValue15.
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := (self) globalTypeElementCollector.
    recoveredValue18 := (self) methodDecl.
    recoveredValue19 := (recoveredValue16) localSideEffects: (recoveredValue17) inMethod: (recoveredValue18).
    ^recoveredValue19
! !

"ASDBase.ic method 0x202c958c; bytecode file offset 0xbc5e6c"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
unaryArithmeticExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := #('preDec' 'postDec' 'preInc' 'postInc').
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) operator.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) child.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) visitMdlNode: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) createUnarySideEffectInfo: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) globalTypeElementCollector.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) methodDecl.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) localSideEffects: (recoveredStack2) inMethod: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) child.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitMdlNode: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202d65e4; bytecode file offset 0xbd2ecc"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
assignExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) rightChild.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) variable.
    recoveredValue4 := (recoveredValue3) varDecl.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) source.
    (self) assignExpression: (recoveredValue1) to: (recoveredValue4) source: (recoveredValue6).
    recoveredValue7 := (self) createAssignmentInfo.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) source.
    (recoveredValue8) source: (recoveredValue10).
    recoveredLocal3 := recoveredValue7.
    recoveredValue11 := recoveredLocal3.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) rightChild.
    recoveredValue14 := (self) visitMdlNode: (recoveredValue13).
    (recoveredValue11) expr: (recoveredValue14).
    recoveredValue15 := recoveredLocal3.
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := (recoveredValue16) variable.
    recoveredValue18 := (self) visitMdlNode: (recoveredValue17).
    (recoveredValue15) lValue: (recoveredValue18).
    recoveredValue19 := recoveredLocal3.
    recoveredValue20 := (self) globalTypeElementCollector.
    recoveredValue21 := (self) methodDecl.
    recoveredValue22 := (recoveredValue19) localSideEffects: (recoveredValue20) inMethod: (recoveredValue21).
    ^recoveredValue22
! !

"ASDBase.ic method 0x202eeab0; bytecode file offset 0xbeb3a0"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
muxExpr: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) exprChild.
    recoveredValue3 := (self) visitMdlNode: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) leftChild.
    recoveredValue6 := (self) visitMdlNode: (recoveredValue5).
    recoveredValue7 := (recoveredValue6) conditional: (true).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) rightChild.
    recoveredValue10 := (self) visitMdlNode: (recoveredValue9).
    recoveredValue11 := (recoveredValue10) conditional: (true).
    recoveredValue12 := (recoveredValue0) with: (recoveredValue3) with: (recoveredValue7) with: (recoveredValue11).
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) source.
    recoveredValue15 := (self) createDefinedOrderInfo: (recoveredValue12) source: (recoveredValue14).
    recoveredValue16 := recoveredValue15.
    recoveredValue17 := recoveredArg1.
    recoveredValue18 := (recoveredValue17) mdlClass.
    recoveredValue19 := (recoveredValue18) isMdlTypeNeedsReference.
    (recoveredValue16) hasValues: (recoveredValue19).
    recoveredLocal1 := recoveredValue15.
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := (self) globalTypeElementCollector.
    recoveredValue22 := (self) methodDecl.
    recoveredValue23 := (recoveredValue20) localSideEffects: (recoveredValue21) inMethod: (recoveredValue22).
    ^recoveredValue23
! !

"ASDBase.ic method 0x20321164; bytecode file offset 0xc1da58"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
switchStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) exprChild.
    recoveredValue3 := (self) visitMdlNode: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) with: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) stmntChild.
    recoveredValue8 := (recoveredValue7) children.
    recoveredValue9 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 recoveredBlock18Value5 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := (self) visitMdlNode: (recoveredBlock18Value0).
    recoveredBlock18Value2 := recoveredBlock18Value1.
    (recoveredBlock18Value2) conditional: (true).
    recoveredBlock18Value3 := recoveredBlock18Value1.
    recoveredBlock18Value4 := recoveredBlock18Arg1.
    recoveredBlock18Value5 := (recoveredBlock18Value4) hasReturnStmnt.
    (recoveredBlock18Value3) hasValues: (recoveredBlock18Value5).
    recoveredBlock18Value1
].
    recoveredValue10 := (recoveredValue8) collect: (recoveredValue9).
    (recoveredValue5) addAll: (recoveredValue10).
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) source.
    recoveredValue14 := (self) createDefinedOrderInfo: (recoveredValue11) source: (recoveredValue13).
    recoveredLocal1 := recoveredValue14.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (self) globalTypeElementCollector.
    recoveredValue17 := (self) methodDecl.
    recoveredValue18 := (recoveredValue15) localSideEffects: (recoveredValue16) inMethod: (recoveredValue17).
    ^recoveredValue18
! !

"ASDBase.ic method 0x20327028; bytecode file offset 0xc23914"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
autosarRTECallWithErrorBlock: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorBlock.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
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
            recoveredStack1 := super autosarRTECallWithErrorBlock: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := super autosarRTECallWithErrorBlock: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := (recoveredStack4) errorBlock.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) visitMdlNode: (recoveredStack4).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack4) conditional: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := (recoveredStack5) errorBlock.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack5 := (recoveredStack5) hasReturnStmnt.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack4) hasValues: (recoveredStack5).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDefinedOrderInfo: (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalTypeElementCollector.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodDecl.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) localSideEffects: (recoveredStack1) inMethod: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203290f0; bytecode file offset 0xc259dc"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
forStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) exprChild.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (self) visitMdlNode: (recoveredBlock6Value0).
    recoveredBlock6Value1
].
    recoveredValue3 := (recoveredValue1) collect: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := (recoveredValue4) last.
    (recoveredValue5) conditional: (true).
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) stmntChild.
    recoveredValue9 := (self) visitMdlNode: (recoveredValue8).
    recoveredValue10 := recoveredValue9.
    (recoveredValue10) conditional: (true).
    recoveredValue11 := recoveredValue9.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) stmntChild.
    recoveredValue14 := (recoveredValue13) hasReturnStmnt.
    (recoveredValue11) hasValues: (recoveredValue14).
    (recoveredValue6) add: (recoveredValue9).
    recoveredValue15 := recoveredLocal2.
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := (recoveredValue16) source.
    recoveredValue18 := (self) createDefinedOrderInfo: (recoveredValue15) source: (recoveredValue17).
    recoveredLocal1 := recoveredValue18.
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := (self) globalTypeElementCollector.
    recoveredValue21 := (self) methodDecl.
    recoveredValue22 := (recoveredValue19) localSideEffects: (recoveredValue20) inMethod: (recoveredValue21).
    ^recoveredValue22
! !

"ASDBase.ic method 0x20336368; bytecode file offset 0xc32c54"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
ifThenElseStmnt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) exprChild.
    recoveredValue3 := (self) visitMdlNode: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) trueChild.
    recoveredValue6 := (self) visitMdlNode: (recoveredValue5).
    recoveredValue7 := recoveredValue6.
    (recoveredValue7) conditional: (true).
    recoveredValue8 := recoveredValue6.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) trueChild.
    recoveredValue11 := (recoveredValue10) hasReturnStmnt.
    (recoveredValue8) hasValues: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) falseChild.
    recoveredValue14 := (self) visitMdlNode: (recoveredValue13).
    recoveredValue15 := recoveredValue14.
    (recoveredValue15) conditional: (true).
    recoveredValue16 := recoveredValue14.
    recoveredValue17 := recoveredArg1.
    recoveredValue18 := (recoveredValue17) falseChild.
    recoveredValue19 := (recoveredValue18) hasReturnStmnt.
    (recoveredValue16) hasValues: (recoveredValue19).
    recoveredValue20 := (recoveredValue0) with: (recoveredValue3) with: (recoveredValue6) with: (recoveredValue14).
    recoveredValue21 := recoveredArg1.
    recoveredValue22 := (recoveredValue21) source.
    recoveredValue23 := (self) createDefinedOrderInfo: (recoveredValue20) source: (recoveredValue22).
    recoveredLocal1 := recoveredValue23.
    recoveredValue24 := recoveredLocal1.
    recoveredValue25 := (self) globalTypeElementCollector.
    recoveredValue26 := (self) methodDecl.
    recoveredValue27 := (recoveredValue24) localSideEffects: (recoveredValue25) inMethod: (recoveredValue26).
    ^recoveredValue27
! !

"ASDBase.ic method 0x20372924; bytecode file offset 0xc6f204"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
abstractMethodCall: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGMdSideEffectMethodCall.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) argReceiver.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) argReceiver.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) visitMdlNode: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) receiver: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) argChildren.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 recoveredBlock44Value4 recoveredBlock44Value5 |
    recoveredBlock44Value0 := recoveredLocal1.
    recoveredBlock44Value1 := recoveredBlock44Arg1.
    recoveredBlock44Value2 := (recoveredBlock44Value1) variable.
    recoveredBlock44Value3 := recoveredBlock44Arg1.
    recoveredBlock44Value4 := (self) visitMdlNode: (recoveredBlock44Value3).
    recoveredBlock44Value5 := (recoveredBlock44Value0) addArgument: (recoveredBlock44Value2) sideEffect: (recoveredBlock44Value4).
    recoveredBlock44Value5
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2038844c; bytecode file offset 0xc84d48"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
multiplexExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) switchExprChild.
    recoveredValue3 := (self) visitMdlNode: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) with: (recoveredValue3).
    recoveredLocal4 := recoveredValue4.
    recoveredValue5 := recoveredLocal4.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) defaultExprChild.
    recoveredValue8 := (self) visitMdlNode: (recoveredValue7).
    (recoveredValue5) add: (recoveredValue8).
    recoveredValue9 := recoveredLocal4.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) choiceChildren.
    recoveredValue12 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 |
    recoveredBlock27Value0 := recoveredBlock27Arg1.
    recoveredBlock27Value1 := (self) visitMdlNode: (recoveredBlock27Value0).
    recoveredBlock27Value2 := recoveredBlock27Value1.
    (recoveredBlock27Value2) conditional: (true).
    recoveredBlock27Value1
].
    recoveredValue13 := (recoveredValue11) collect: (recoveredValue12).
    (recoveredValue9) addAll: (recoveredValue13).
    recoveredValue14 := recoveredLocal4.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := (recoveredValue15) source.
    recoveredValue17 := (self) createDefinedOrderInfo: (recoveredValue14) source: (recoveredValue16).
    recoveredValue18 := recoveredValue17.
    recoveredValue19 := recoveredArg1.
    recoveredValue20 := (recoveredValue19) mdlClass.
    recoveredValue21 := (recoveredValue20) isMdlTypeNeedsReference.
    (recoveredValue18) hasValues: (recoveredValue21).
    recoveredLocal1 := recoveredValue17.
    recoveredValue22 := recoveredLocal1.
    recoveredValue23 := (self) globalTypeElementCollector.
    recoveredValue24 := (self) methodDecl.
    recoveredValue25 := (recoveredValue22) localSideEffects: (recoveredValue23) inMethod: (recoveredValue24).
    ^recoveredValue25
! !

"ASDBase.ic method 0x203c8430; bytecode file offset 0xcc4d20"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
externBlock: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) children.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Local1 recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack2 := self.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) mdlAcceptNodeVisitor: (recoveredBlock14Stack2).
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local1.
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) isMdlSideEffectVarAccess.
            recoveredBlock14PC := 27.
        ].
        recoveredBlock14Step = 27 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 30] ifFalse: [recoveredBlock14PC := 49].
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14Stack1 := SGMdPossibleReadWriteAnalysisInfo.
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) create.
            recoveredBlock14PC := 34.
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Local1.
            recoveredBlock14PC := 36.
        ].
        recoveredBlock14Step = 36 ifTrue: [
            (recoveredBlock14Stack2) expr: (recoveredBlock14Stack3).
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 39.
        ].
        recoveredBlock14Step = 39 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local1.
            recoveredBlock14PC := 40.
        ].
        recoveredBlock14Step = 40 ifTrue: [
            recoveredBlock14Stack2 := self.
            recoveredBlock14PC := 41.
        ].
        recoveredBlock14Step = 41 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) globalTypeElementCollector.
            recoveredBlock14PC := 43.
        ].
        recoveredBlock14Step = 43 ifTrue: [
            recoveredBlock14Stack3 := self.
            recoveredBlock14PC := 44.
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) methodDecl.
            recoveredBlock14PC := 46.
        ].
        recoveredBlock14Step = 46 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) localSideEffects: (recoveredBlock14Stack2) inMethod: (recoveredBlock14Stack3).
            recoveredBlock14PC := 48.
        ].
        recoveredBlock14Step = 48 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 49.
        ].
        recoveredBlock14Step = 49 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 52.
        ].
        recoveredBlock14Step = 52 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local1.
            recoveredBlock14PC := 53.
        ].
        recoveredBlock14Step = 53 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) add: (recoveredBlock14Stack2).
            recoveredBlock14PC := 55.
        ].
        recoveredBlock14Step = 55 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) source.
    recoveredValue8 := (self) createDefinedOrderInfo: (recoveredValue5) source: (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (self) globalTypeElementCollector.
    recoveredValue11 := (self) methodDecl.
    recoveredValue12 := (recoveredValue9) localSideEffects: (recoveredValue10) inMethod: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x20413310; bytecode file offset 0xd0fc00"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
blockStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal3 := recoveredValue1.
    recoveredLocal1 := false.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) children.
    recoveredValue4 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18Stack5 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal3.
            recoveredBlock18PC := 27.
        ].
        recoveredBlock18Step = 27 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 28.
        ].
        recoveredBlock18Step = 28 ifTrue: [
            recoveredBlock18Stack3 := self.
            recoveredBlock18PC := 29.
        ].
        recoveredBlock18Step = 29 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) mdlAcceptNodeVisitor: (recoveredBlock18Stack3).
            recoveredBlock18PC := 30.
        ].
        recoveredBlock18Step = 30 ifTrue: [
            recoveredBlock18Stack3 := recoveredBlock18Stack2.
            recoveredBlock18PC := 31.
        ].
        recoveredBlock18Step = 31 ifTrue: [
            recoveredBlock18Stack4 := recoveredLocal1.
            recoveredBlock18PC := 34.
        ].
        recoveredBlock18Step = 34 ifTrue: [
            (recoveredBlock18Stack3) conditional: (recoveredBlock18Stack4).
            recoveredBlock18Stack3 := recoveredBlock18Stack2.
            recoveredBlock18PC := 37.
        ].
        recoveredBlock18Step = 37 ifTrue: [
            recoveredBlock18Stack4 := recoveredBlock18Arg1.
            recoveredBlock18PC := 38.
        ].
        recoveredBlock18Step = 38 ifTrue: [
            recoveredBlock18Stack4 := (recoveredBlock18Stack4) hasReturnStmnt.
            recoveredBlock18PC := 40.
        ].
        recoveredBlock18Step = 40 ifTrue: [
            (recoveredBlock18Stack3) hasValues: (recoveredBlock18Stack4).
            recoveredBlock18PC := 42.
        ].
        recoveredBlock18Step = 42 ifTrue: [
            (recoveredBlock18Stack1) add: (recoveredBlock18Stack2).
            recoveredBlock18PC := 44.
        ].
        recoveredBlock18Step = 44 ifTrue: [
            recoveredBlock18Stack1 := true.
            recoveredBlock18PC := 45.
        ].
        recoveredBlock18Step = 45 ifTrue: [
            recoveredBlock18Stack2 := recoveredLocal1.
            recoveredBlock18PC := 48.
        ].
        recoveredBlock18Step = 48 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 56] ifFalse: [recoveredBlock18PC := 52].
        ].
        recoveredBlock18Step = 52 ifTrue: [
            recoveredBlock18PC := 53.
        ].
        recoveredBlock18Step = 53 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 54.
        ].
        recoveredBlock18Step = 54 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) hasMdlConditionalExitOrReturnStmnt.
            recoveredBlock18PC := 56.
        ].
        recoveredBlock18Step = 56 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Stack1.
            recoveredBlock18PC := 57.
        ].
        recoveredBlock18Step = 57 ifTrue: [
            recoveredLocal1 := recoveredBlock18Stack2.
            recoveredBlock18PC := 60.
        ].
        recoveredBlock18Step = 60 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal3.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) source.
    recoveredValue8 := (self) createDefinedOrderInfo: (recoveredValue5) source: (recoveredValue7).
    recoveredLocal2 := recoveredValue8.
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) hasReturnStmnt.
    (recoveredValue9) hasValues: (recoveredValue11).
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := (self) globalTypeElementCollector.
    recoveredValue14 := (self) methodDecl.
    recoveredValue15 := (recoveredValue12) localSideEffects: (recoveredValue13) inMethod: (recoveredValue14).
    ^recoveredValue15
! !

"ASDBase.ic method 0x2046a47c; bytecode file offset 0xd66d84"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
specialCall: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGMdSideEffectMethodCall.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) receiver.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) visitMdlNode: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) receiver: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := [:recoveredBlock44Arg1 :recoveredBlock44Arg2 | 
    | recoveredBlock44Stack0 recoveredBlock44Stack1 recoveredBlock44Stack2 recoveredBlock44Stack3 recoveredBlock44Stack4 recoveredBlock44Stack5 recoveredBlock44Stack6 recoveredBlock44PC recoveredBlock44Step recoveredBlock44Done recoveredBlock44Result |
    recoveredBlock44Stack0 := self.
    recoveredBlock44PC := 50.
    recoveredBlock44Done := false.
    [recoveredBlock44Done not] whileTrue: [
        recoveredBlock44Step := recoveredBlock44PC.
        recoveredBlock44Step = 50 ifTrue: [
            recoveredBlock44Stack1 := recoveredBlock44Arg1.
            recoveredBlock44PC := 51.
        ].
        recoveredBlock44Step = 51 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) isMdlParmAssign.
            recoveredBlock44PC := 53.
        ].
        recoveredBlock44Step = 53 ifTrue: [
            (recoveredBlock44Stack1) ifTrue: [recoveredBlock44PC := 56] ifFalse: [recoveredBlock44PC := 72].
        ].
        recoveredBlock44Step = 56 ifTrue: [
            recoveredBlock44Stack1 := recoveredLocal1.
            recoveredBlock44PC := 59.
        ].
        recoveredBlock44Step = 59 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Arg1.
            recoveredBlock44PC := 60.
        ].
        recoveredBlock44Step = 60 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) variable.
            recoveredBlock44PC := 62.
        ].
        recoveredBlock44Step = 62 ifTrue: [
            recoveredBlock44Stack3 := self.
            recoveredBlock44PC := 63.
        ].
        recoveredBlock44Step = 63 ifTrue: [
            recoveredBlock44Stack4 := recoveredBlock44Arg1.
            recoveredBlock44PC := 64.
        ].
        recoveredBlock44Step = 64 ifTrue: [
            recoveredBlock44Stack3 := (recoveredBlock44Stack3) visitMdlNode: (recoveredBlock44Stack4).
            recoveredBlock44PC := 66.
        ].
        recoveredBlock44Step = 66 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) addArgument: (recoveredBlock44Stack2) sideEffect: (recoveredBlock44Stack3).
            recoveredBlock44PC := 68.
        ].
        recoveredBlock44Step = 68 ifTrue: [
            recoveredBlock44PC := 114.
        ].
        recoveredBlock44Step = 72 ifTrue: [
            recoveredBlock44Stack1 := self.
            recoveredBlock44PC := 73.
        ].
        recoveredBlock44Step = 73 ifTrue: [
            recoveredBlock44Stack2 := [
    false
].
            recoveredBlock44PC := 75.
        ].
        recoveredBlock44Step = 75 ifTrue: [
            recoveredBlock44PC := 80.
        ].
        recoveredBlock44Step = 80 ifTrue: [
            recoveredBlock44Stack3 := [
    'Special calls should always have a parmAssign.'
].
            recoveredBlock44PC := 82.
        ].
        recoveredBlock44Step = 82 ifTrue: [
            recoveredBlock44PC := 89.
        ].
        recoveredBlock44Step = 89 ifTrue: [
            (recoveredBlock44Stack1) ileAssert: (recoveredBlock44Stack2) message: (recoveredBlock44Stack3).
            recoveredBlock44PC := 91.
        ].
        recoveredBlock44Step = 91 ifTrue: [
            recoveredBlock44Stack1 := recoveredLocal1.
            recoveredBlock44PC := 94.
        ].
        recoveredBlock44Step = 94 ifTrue: [
            recoveredBlock44Stack2 := SGMdParmDecl.
            recoveredBlock44PC := 96.
        ].
        recoveredBlock44Step = 96 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) create.
            recoveredBlock44PC := 97.
        ].
        recoveredBlock44Step = 97 ifTrue: [
            recoveredBlock44Stack3 := recoveredBlock44Stack2.
            recoveredBlock44PC := 98.
        ].
        recoveredBlock44Step = 98 ifTrue: [
            recoveredBlock44Stack4 := SGCgName.
            recoveredBlock44PC := 100.
        ].
        recoveredBlock44Step = 100 ifTrue: [
            recoveredBlock44Stack4 := (recoveredBlock44Stack4) create.
            recoveredBlock44PC := 101.
        ].
        recoveredBlock44Step = 101 ifTrue: [
            recoveredBlock44Stack5 := recoveredBlock44Arg2.
            recoveredBlock44PC := 102.
        ].
        recoveredBlock44Step = 102 ifTrue: [
            recoveredBlock44Stack5 := (recoveredBlock44Stack5) asString.
            recoveredBlock44PC := 104.
        ].
        recoveredBlock44Step = 104 ifTrue: [
            recoveredBlock44Stack4 := (recoveredBlock44Stack4) label: (recoveredBlock44Stack5).
            recoveredBlock44PC := 106.
        ].
        recoveredBlock44Step = 106 ifTrue: [
            (recoveredBlock44Stack3) mdlName: (recoveredBlock44Stack4).
            recoveredBlock44PC := 108.
        ].
        recoveredBlock44Step = 108 ifTrue: [
            recoveredBlock44Stack3 := self.
            recoveredBlock44PC := 109.
        ].
        recoveredBlock44Step = 109 ifTrue: [
            recoveredBlock44Stack4 := recoveredBlock44Arg1.
            recoveredBlock44PC := 110.
        ].
        recoveredBlock44Step = 110 ifTrue: [
            recoveredBlock44Stack3 := (recoveredBlock44Stack3) visitMdlNode: (recoveredBlock44Stack4).
            recoveredBlock44PC := 112.
        ].
        recoveredBlock44Step = 112 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) addArgument: (recoveredBlock44Stack2) sideEffect: (recoveredBlock44Stack3).
            recoveredBlock44PC := 114.
        ].
        recoveredBlock44Step = 114 ifTrue: [
            recoveredBlock44Result := recoveredBlock44Stack1.
            recoveredBlock44Done := true.
        ].
    ].
    recoveredBlock44Result
].
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205d90e8; bytecode file offset 0xed5a18"
!SGMdSideEffectAnalysisVisitor methodsFor: 'recovered'!
assignReferenceExpression: recoveredArg1 to: recoveredArg2 source: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlFieldAccess.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 30].
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
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) assignReferenceExpression: (recoveredStack2) to: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 363.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlIdentifier.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) referenceAnalysis.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) varDecl.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) addAssignmentOf: (recoveredStack2) to: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 363.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlMethodCall.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) referenceAnalysis.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodDecl.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) addAssignmentOf: (recoveredStack2) to: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 363.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlReferencedExpr.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) assignReferenceExpression: (recoveredStack2) to: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredPC := 363.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlVariableReferenceCast.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) referenceAnalysis.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlVariableArrayMatrixVarDecl.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) addAssignmentOf: (recoveredStack2) to: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredPC := 363.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlCommaExpr.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := (recoveredStack2) args.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack1) assignReferenceExpression: (recoveredStack2) to: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredPC := 363.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlAssignExpr.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack1) assignReferenceExpression: (recoveredStack2) to: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredPC := 363.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlMuxExpr.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 236].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftChild.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack1) assignReferenceExpression: (recoveredStack2) to: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack1) assignReferenceExpression: (recoveredStack2) to: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredPC := 363.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlMultiplexExpr.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 244] ifFalse: [recoveredPC := 290].
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := (recoveredStack1) choiceChildren.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := [:recoveredBlock249Arg1 | 
    | recoveredBlock249Value0 recoveredBlock249Value1 recoveredBlock249Value2 recoveredBlock249Value3 recoveredBlock249Value4 |
    recoveredBlock249Value0 := recoveredBlock249Arg1.
    recoveredBlock249Value1 := (recoveredBlock249Value0) exprChild.
    recoveredBlock249Value2 := recoveredArg2.
    recoveredBlock249Value3 := recoveredArg3.
    recoveredBlock249Value4 := (self) assignReferenceExpression: (recoveredBlock249Value1) to: (recoveredBlock249Value2) source: (recoveredBlock249Value3).
    recoveredBlock249Value4
].
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultExprChild.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            (recoveredStack1) assignReferenceExpression: (recoveredStack2) to: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredPC := 363.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlRTEMacroCall.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 298] ifFalse: [recoveredPC := 318].
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := (recoveredStack1) referenceAnalysis.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlRTEVarDecl.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            (recoveredStack1) addAssignmentOf: (recoveredStack2) to: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredPC := 363.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlIndexedExpr.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 326] ifFalse: [recoveredPC := 344].
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack2 := (recoveredStack2) exprChild.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            (recoveredStack1) assignReferenceExpression: (recoveredStack2) to: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredPC := 363.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack3 := [
    'Unexpected expression type in reference assignment'
].
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            (recoveredStack1) ileAssert: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

