"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003648; bytecode file offset 0x90206c"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
logicNode: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20003740; bytecode file offset 0x90206c"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
continueStmnt: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200038f0; bytecode file offset 0x90206c"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
breakStmnt: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20003c68; bytecode file offset 0x90206c"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
ansiCExpr: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20003ec8; bytecode file offset 0x90206c"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
identifier: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004000; bytecode file offset 0x90206c"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
varDecl: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200042a8; bytecode file offset 0x90206c"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
emptyStmnt: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004620; bytecode file offset 0x90206c"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
literal: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004c90; bytecode file offset 0x90206c"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
processDecl: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004ca8; bytecode file offset 0x90206c"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
expression: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004ef8; bytecode file offset 0x90206c"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
labeledStmnt: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200051a0; bytecode file offset 0x90206c"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
exitStmnt: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200052d0; bytecode file offset 0x90206c"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
methodDecl: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20056d40; bytecode file offset 0x9536dc"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
compoundArithmethicExpression: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) rootExpr.
    recoveredValue2 := (self) visitMdlNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200843cc; bytecode file offset 0x981ca4"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
binaryRelationExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) binaryEqualityExpr: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200845dc; bytecode file offset 0x981ca4"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
atomStmnt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) blockStmnt: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200846c0; bytecode file offset 0x981ca4"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
parmAssign: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) assignExpr: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20084c6c; bytecode file offset 0x981ca4"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
methodBody: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) blockStmnt: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200852d8; bytecode file offset 0x981ca4"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
enumValue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) literal: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200853c8; bytecode file offset 0x981ca4"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
process: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) method: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200856d0; bytecode file offset 0x98204c"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
mdlTransformedExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    recoveredValue2 := (recoveredValue1) mdlAcceptNodeVisitor: (self).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20085730; bytecode file offset 0x98204c"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
choiceExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) exprChild.
    recoveredValue2 := (recoveredValue1) mdlAcceptNodeVisitor: (self).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20095cac; bytecode file offset 0x992608"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
returnStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) child.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x20095cbc; bytecode file offset 0x992608"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
exprStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) exprChild.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x20095cec; bytecode file offset 0x992608"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
unaryLogicExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) child.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x20095cfc; bytecode file offset 0x992608"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
unaryArithmeticExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) child.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x20095d2c; bytecode file offset 0x992608"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
defaultStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) child.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x20095d3c; bytecode file offset 0x992608"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
mdlRedundantVerifyExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) identifier.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x20095f30; bytecode file offset 0x992bec"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
fieldAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    (self) visitMdlNode: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200fdfcc; bytecode file offset 0x9fa968"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
assignExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) variable.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) rightChild.
    (recoveredValue3) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x200fdfe0; bytecode file offset 0x9fa968"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
binaryLogicExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) rightChild.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) leftChild.
    (recoveredValue3) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x200fdff4; bytecode file offset 0x9fa968"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
binaryEqualityExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) rightChild.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) leftChild.
    (recoveredValue3) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x200fe008; bytecode file offset 0x9fa968"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
ifThenStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) exprChild.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) trueChild.
    (recoveredValue3) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x200fe01c; bytecode file offset 0x9fa968"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
switchStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) exprChild.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) stmntChild.
    (recoveredValue3) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x200fe044; bytecode file offset 0x9fa968"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
whileStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) exprChild.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) stmntChild.
    (recoveredValue3) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x200fe058; bytecode file offset 0x9fa968"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
caseStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) literal.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) child.
    (recoveredValue3) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x200fe080; bytecode file offset 0x9fa968"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
binaryArithmeticExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) rightChild.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) leftChild.
    (recoveredValue3) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x200fe0a8; bytecode file offset 0x9fa968"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
repeatStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) exprChild.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) stmntChild.
    (recoveredValue3) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x20145354; bytecode file offset 0xa41ca0"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
commaExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) children.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) mdlAcceptNodeVisitor: (self).
    recoveredBlock6Value1
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2014537c; bytecode file offset 0xa41ca0"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
mdlClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) sortedMethods.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) mdlAcceptNodeVisitor: (self).
    recoveredBlock6Value1
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201453b8; bytecode file offset 0xa41ca0"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
blockStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) children.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) mdlAcceptNodeVisitor: (self).
    recoveredBlock6Value1
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201548a4; bytecode file offset 0xa511b0"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
muxExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) exprChild.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) rightChild.
    (recoveredValue3) mdlAcceptNodeVisitor: (self).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) leftChild.
    (recoveredValue5) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x201548d4; bytecode file offset 0xa511b0"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
ifThenElseStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) exprChild.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) trueChild.
    (recoveredValue3) mdlAcceptNodeVisitor: (self).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) falseChild.
    (recoveredValue5) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x201548ec; bytecode file offset 0xa511b0"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
betweenAndExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) exprChild.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) rightChild.
    (recoveredValue3) mdlAcceptNodeVisitor: (self).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) leftChild.
    (recoveredValue5) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x20166420; bytecode file offset 0xa62ce4"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
autosarRTECallWithErrorBlock: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) errorBlock.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorBlock.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) mdlAcceptNodeVisitor: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := super autosarRTECallWithErrorBlock: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20194a9c; bytecode file offset 0xa91378"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
forStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) exprChild.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) mdlAcceptNodeVisitor: (self).
    recoveredBlock6Value1
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) stmntChild.
    (recoveredValue4) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x20194ab4; bytecode file offset 0xa91378"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
indexedExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) indexChild.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) mdlAcceptNodeVisitor: (self).
    recoveredBlock6Value1
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) exprChild.
    (recoveredValue4) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x201a64c8; bytecode file offset 0xaa2d8c"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
specialCall: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) receiver.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) children.
    recoveredValue4 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) mdlAcceptNodeVisitor: (self).
    recoveredBlock11Value1
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x202020b0; bytecode file offset 0xafe978"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
multiplexExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) switchExprChild.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) choiceChildren.
    recoveredValue4 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) mdlAcceptNodeVisitor: (self).
    recoveredBlock11Value1
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) defaultExprChild.
    (recoveredValue6) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x20202174; bytecode file offset 0xafea38"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
abstractMethodCall: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) argReceiver.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) argReceiver.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) mdlAcceptNodeVisitor: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) argChildren.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 |
    recoveredBlock17Value0 := recoveredBlock17Arg1.
    recoveredBlock17Value1 := (recoveredBlock17Value0) mdlAcceptNodeVisitor: (self).
    recoveredBlock17Value1
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20203460; bytecode file offset 0xaffd2c"
!SGMdAbstractStructureVisitor methodsFor: 'recovered'!
method: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) errorHandler.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) mdlName.
    recoveredValue4 := (recoveredValue3) errLabel.
    recoveredValue5 := [
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := recoveredArg1.
    recoveredBlock13Value1 := (recoveredBlock13Value0) child.
    recoveredBlock13Value2 := (recoveredBlock13Value1) mdlAcceptNodeVisitor: (self).
    recoveredBlock13Value2
].
    (recoveredValue1) collectMessagesInSubUnit: (recoveredValue4) do: (recoveredValue5).
    ^self
! !

