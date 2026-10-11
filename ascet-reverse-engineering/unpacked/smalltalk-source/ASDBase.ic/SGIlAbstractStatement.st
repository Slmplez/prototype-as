"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000e20; bytecode file offset 0x8ffcfc"
!SGIlAbstractStatement methodsFor: 'recovered'!
asIleOptimizedStmntlist
    ^self
! !

"ASDBase.ic method 0x20001b88; bytecode file offset 0x8ffcfc"
!SGIlAbstractStatement methodsFor: 'recovered'!
asIleOpimizedLabeledStmnt
    ^self
! !

"ASDBase.ic method 0x20002f10; bytecode file offset 0x8ffcfc"
!SGIlAbstractStatement methodsFor: 'recovered'!
asIleExprStmnt
    ^self
! !

"ASDBase.ic method 0x20004888; bytecode file offset 0x90206c"
!SGIlAbstractStatement methodsFor: 'recovered'!
asIleExprStmntWithSource: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200069d4; bytecode file offset 0x908be4"
!SGIlAbstractStatement methodsFor: 'recovered'!
hasIleUnconditionalExitStmnt
    | recoveredValue0 |
    recoveredValue0 := (self) hasIleExitStmnt.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20007574; bytecode file offset 0x908be4"
!SGIlAbstractStatement methodsFor: 'recovered'!
hasIleEndCaseStmnt
    | recoveredValue0 |
    recoveredValue0 := (self) hasIleExitStmnt.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000ab8c; bytecode file offset 0x908be4"
!SGIlAbstractStatement methodsFor: 'recovered'!
hasIleUnconditionalEndCaseStmnt
    | recoveredValue0 |
    recoveredValue0 := (self) hasIleExitStmnt.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001cd30; bytecode file offset 0x92209c"
!SGIlAbstractStatement methodsFor: 'recovered'!
errLabel
    ^'STATEMENT'
! !

"ASDBase.ic method 0x20030da4; bytecode file offset 0x934580"
!SGIlAbstractStatement methodsFor: 'recovered'!
executableContainsCode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (recoveredValue0) literalTrue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032bc4; bytecode file offset 0x934580"
!SGIlAbstractStatement methodsFor: 'recovered'!
createAsBreakStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (recoveredValue0) breakStmnt.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055578; bytecode file offset 0x952a9c"
!SGIlAbstractStatement methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) abstractStmnt: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200687bc; bytecode file offset 0x965b90"
!SGIlAbstractStatement methodsFor: 'recovered'!
comments
    | recoveredValue0 |
    recoveredValue0 := comments.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200730a8; bytecode file offset 0x970b34"
!SGIlAbstractStatement methodsFor: 'recovered'!
ileUnpackStatementList
    ^nil
! !

"ASDBase.ic method 0x200755bc; bytecode file offset 0x9757c8"
!SGIlAbstractStatement methodsFor: 'recovered'!
isIleStatement
    ^true
! !

"ASDBase.ic method 0x20077454; bytecode file offset 0x9757c8"
!SGIlAbstractStatement methodsFor: 'recovered'!
isIleOpimizableLabeledStmnt
    ^true
! !

"ASDBase.ic method 0x2007939c; bytecode file offset 0x97c330"
!SGIlAbstractStatement methodsFor: 'recovered'!
hasIleConditionalEndCaseStmntOnly
    ^false
! !

"ASDBase.ic method 0x20079404; bytecode file offset 0x97c330"
!SGIlAbstractStatement methodsFor: 'recovered'!
isIleForStmnt
    ^false
! !

"ASDBase.ic method 0x2007979c; bytecode file offset 0x97c330"
!SGIlAbstractStatement methodsFor: 'recovered'!
hasIleConditionalExitStmnt
    ^false
! !

"ASDBase.ic method 0x200798ac; bytecode file offset 0x97c330"
!SGIlAbstractStatement methodsFor: 'recovered'!
hasIleCompileTimeConstantExpr
    ^false
! !

"ASDBase.ic method 0x200799a4; bytecode file offset 0x97c330"
!SGIlAbstractStatement methodsFor: 'recovered'!
isIlePMICodeBlockWithMessageCopies
    ^false
! !

"ASDBase.ic method 0x200799cc; bytecode file offset 0x97c330"
!SGIlAbstractStatement methodsFor: 'recovered'!
hasIleExitStmnt
    ^false
! !

"ASDBase.ic method 0x2007a06c; bytecode file offset 0x97c330"
!SGIlAbstractStatement methodsFor: 'recovered'!
isIleWhileStmnt
    ^false
! !

"ASDBase.ic method 0x2007a404; bytecode file offset 0x97c330"
!SGIlAbstractStatement methodsFor: 'recovered'!
isIleIfElseStmnt
    ^false
! !

"ASDBase.ic method 0x2007a4ec; bytecode file offset 0x97c330"
!SGIlAbstractStatement methodsFor: 'recovered'!
isIlePMICodeBlock
    ^false
! !

"ASDBase.ic method 0x2007a79c; bytecode file offset 0x97c330"
!SGIlAbstractStatement methodsFor: 'recovered'!
isIleDefaultStmnt
    ^false
! !

"ASDBase.ic method 0x2007a7dc; bytecode file offset 0x97c330"
!SGIlAbstractStatement methodsFor: 'recovered'!
isIleStatementList
    ^false
! !

"ASDBase.ic method 0x2007a9c4; bytecode file offset 0x97c330"
!SGIlAbstractStatement methodsFor: 'recovered'!
isIleCppIfStmnt
    ^false
! !

"ASDBase.ic method 0x2007aacc; bytecode file offset 0x97c330"
!SGIlAbstractStatement methodsFor: 'recovered'!
hasIleConditionalEndCaseStmnt
    ^false
! !

"ASDBase.ic method 0x2007ab84; bytecode file offset 0x97c330"
!SGIlAbstractStatement methodsFor: 'recovered'!
isIleIfThenStmnt
    ^false
! !

"ASDBase.ic method 0x2007b06c; bytecode file offset 0x97c330"
!SGIlAbstractStatement methodsFor: 'recovered'!
isIleMethodBody
    ^false
! !

"ASDBase.ic method 0x2007b08c; bytecode file offset 0x97c330"
!SGIlAbstractStatement methodsFor: 'recovered'!
isIleExitStmnt
    ^false
! !

"ASDBase.ic method 0x2007b7dc; bytecode file offset 0x97c330"
!SGIlAbstractStatement methodsFor: 'recovered'!
isIleAbstractLabeledStmnt
    ^false
! !

"ASDBase.ic method 0x2007ba94; bytecode file offset 0x97c330"
!SGIlAbstractStatement methodsFor: 'recovered'!
isIleVarBlockedStmntList
    ^false
! !

"ASDBase.ic method 0x2007c034; bytecode file offset 0x97c330"
!SGIlAbstractStatement methodsFor: 'recovered'!
isIleAtomicStatementList
    ^false
! !

"ASDBase.ic method 0x2007c634; bytecode file offset 0x97c330"
!SGIlAbstractStatement methodsFor: 'recovered'!
hasIleEndCaseStmntOnly
    ^false
! !

"ASDBase.ic method 0x2007cdcc; bytecode file offset 0x97c330"
!SGIlAbstractStatement methodsFor: 'recovered'!
isIleCCodeBlock
    ^false
! !

"ASDBase.ic method 0x2007d0dc; bytecode file offset 0x97c330"
!SGIlAbstractStatement methodsFor: 'recovered'!
isIleBreakStmnt
    ^false
! !

"ASDBase.ic method 0x2007d2a4; bytecode file offset 0x97c330"
!SGIlAbstractStatement methodsFor: 'recovered'!
isIleGotoStmnt
    ^false
! !

"ASDBase.ic method 0x2007d2d4; bytecode file offset 0x97c330"
!SGIlAbstractStatement methodsFor: 'recovered'!
isIleEmptyStmnt
    ^false
! !

"ASDBase.ic method 0x2007d6dc; bytecode file offset 0x97c330"
!SGIlAbstractStatement methodsFor: 'recovered'!
isIleSwitchStmnt
    ^false
! !

"ASDBase.ic method 0x2007d9cc; bytecode file offset 0x97c330"
!SGIlAbstractStatement methodsFor: 'recovered'!
isIleReturnStmnt
    ^false
! !

"ASDBase.ic method 0x2007dfac; bytecode file offset 0x97c330"
!SGIlAbstractStatement methodsFor: 'recovered'!
isIleCppIfElseStmnt
    ^false
! !

"ASDBase.ic method 0x2007e1cc; bytecode file offset 0x97c330"
!SGIlAbstractStatement methodsFor: 'recovered'!
isIleCaseStmnt
    ^false
! !

"ASDBase.ic method 0x2007e2d4; bytecode file offset 0x97c330"
!SGIlAbstractStatement methodsFor: 'recovered'!
hasIleUnconditionalEndCaseStmntOnly
    ^false
! !

"ASDBase.ic method 0x2007ebfc; bytecode file offset 0x97c330"
!SGIlAbstractStatement methodsFor: 'recovered'!
isIleRepeatStmnt
    ^false
! !

"ASDBase.ic method 0x200a0bdc; bytecode file offset 0x99d4b8"
!SGIlAbstractStatement methodsFor: 'recovered'!
asBlockedStatementList
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) with: (self).
    recoveredValue3 := (recoveredValue0) blockedStmntList: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a143c; bytecode file offset 0x99dfb8"
!SGIlAbstractStatement methodsFor: 'recovered'!
expandSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentIleExpander.
    recoveredValue1 := (self) source.
    (recoveredValue0) expandSpecificationSource: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a85dc; bytecode file offset 0x9a4e94"
!SGIlAbstractStatement methodsFor: 'recovered'!
comments: recoveredArg1
    | recoveredValue0 |
    (self) assertSetterShouldNotBeUsed.
    recoveredValue0 := recoveredArg1.
    comments := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200eb75c; bytecode file offset 0x9e8038"
!SGIlAbstractStatement methodsFor: 'recovered'!
initializeSource: recoveredArg1 comments: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    comments := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    super initializeSource: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20109f2c; bytecode file offset 0xa067ec"
!SGIlAbstractStatement methodsFor: 'recovered'!
expandComments
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) comments.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) comments: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010fb50; bytecode file offset 0xa0c4d4"
!SGIlAbstractStatement methodsFor: 'recovered'!
mdlWarningNo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) source.
    (recoveredValue0) warningNo: (recoveredValue1) args: (nil) category: ('Mdl') source: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010fb68; bytecode file offset 0xa0c4d4"
!SGIlAbstractStatement methodsFor: 'recovered'!
mdlSemErrNo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) source.
    (recoveredValue0) semErrorNo: (recoveredValue1) args: (nil) category: ('Mdl') source: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010fbe0; bytecode file offset 0xa0c4d4"
!SGIlAbstractStatement methodsFor: 'recovered'!
mdlInfoNo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) source.
    (recoveredValue0) infoNo: (recoveredValue1) args: (nil) category: ('Mdl') source: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201574bc; bytecode file offset 0xa53fc8"
!SGIlAbstractStatement methodsFor: 'recovered'!
mdlWarningNo: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) source.
    (recoveredValue0) warningNo: (recoveredValue1) args: (recoveredValue4) category: ('Mdl') source: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201574fc; bytecode file offset 0xa53fc8"
!SGIlAbstractStatement methodsFor: 'recovered'!
mdlSemErrNo: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) source.
    (recoveredValue0) semErrorNo: (recoveredValue1) args: (recoveredValue4) category: ('Mdl') source: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201576dc; bytecode file offset 0xa53fc8"
!SGIlAbstractStatement methodsFor: 'recovered'!
mdlInfoNo: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) source.
    (recoveredValue0) infoNo: (recoveredValue1) args: (recoveredValue4) category: ('Mdl') source: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201659b0; bytecode file offset 0xa62274"
!SGIlAbstractStatement methodsFor: 'recovered'!
createNoOpComments: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) comments.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) comments: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201659e0; bytecode file offset 0xa622a4"
!SGIlAbstractStatement methodsFor: 'recovered'!
createNoOpSource: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) comments.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) comments: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20176968; bytecode file offset 0xa73234"
!SGIlAbstractStatement methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) cr.
    recoveredValue2 := SGIlDebugCodeWithInlineTempAssignVisitor.
    recoveredValue3 := (recoveredValue2) create.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) ileErrorLabelFor: (self) on: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201797f0; bytecode file offset 0xa7623c"
!SGIlAbstractStatement methodsFor: 'recovered'!
mdlWarningNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := (self) source.
    (recoveredValue0) warningNo: (recoveredValue1) args: (recoveredValue5) category: ('Mdl') source: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x201798d0; bytecode file offset 0xa7623c"
!SGIlAbstractStatement methodsFor: 'recovered'!
mdlInfoNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := (self) source.
    (recoveredValue0) infoNo: (recoveredValue1) args: (recoveredValue5) category: ('Mdl') source: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x202513a4; bytecode file offset 0xb4dc80"
!SGIlAbstractStatement methodsFor: 'recovered'!
asIleSwitchWrapped
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) ileBuilder.
    recoveredValue2 := (recoveredValue1) literalZero.
    recoveredValue3 := (self) asBlockedStatementList.
    recoveredValue4 := (recoveredValue0) expr: (recoveredValue2) caseStmnt: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := (self) ileBuilder.
    recoveredValue6 := (self) ileBuilder.
    recoveredValue7 := (recoveredValue6) literalZero.
    recoveredValue8 := (self) ileBuilder.
    recoveredValue9 := OrderedCollection.
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := (recoveredValue9) with: (recoveredValue10).
    recoveredValue12 := (recoveredValue8) blockedStmntList: (recoveredValue11).
    recoveredValue13 := SGCgExpressionContext.
    recoveredValue14 := (recoveredValue13) uintContext.
    recoveredValue15 := (recoveredValue5) switchExpr: (recoveredValue7) stmnt: (recoveredValue12) expressionContext: (recoveredValue14).
    recoveredLocal1 := recoveredValue15.
    recoveredValue16 := recoveredLocal1.
    ^recoveredValue16
! !

