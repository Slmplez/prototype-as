"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003748; bytecode file offset 0x90206c"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
emptyStmnt: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004140; bytecode file offset 0x90206c"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
literal: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200043e8; bytecode file offset 0x90206c"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
externBlock: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004ac0; bytecode file offset 0x90206c"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
enumValue: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004c28; bytecode file offset 0x90206c"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
identifier: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005528; bytecode file offset 0x90206c"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
breakStmnt: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000d85c; bytecode file offset 0x90a4b8"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
ansiCExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20051b14; bytecode file offset 0x94f0e0"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
literalFalse
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) generator.
    recoveredValue1 := (recoveredValue0) ileBuilder.
    recoveredValue2 := (recoveredValue1) literalFalse.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20052280; bytecode file offset 0x94f0e0"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
literalTrue
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) generator.
    recoveredValue1 := (recoveredValue0) ileBuilder.
    recoveredValue2 := (recoveredValue1) literalTrue.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20052f44; bytecode file offset 0x9505d0"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
createNewState: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20053c7c; bytecode file offset 0x9505d0"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
exitStmnt: recoveredArg1
    (self) setStateForReturn.
    ^self
! !

"ASDBase.ic method 0x20054a08; bytecode file offset 0x952a9c"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
readingFromMdlNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlAcceptNodeVisitor: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20068634; bytecode file offset 0x965b90"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
state
    | recoveredValue0 |
    recoveredValue0 := state.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20084be8; bytecode file offset 0x981ca4"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
atomStmnt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) blockStmnt: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200853b0; bytecode file offset 0x981ca4"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
caseStmnt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) defaultStmnt: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20085700; bytecode file offset 0x98204c"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
mdlReferencedExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    recoveredValue2 := (recoveredValue1) mdlAcceptNodeVisitor: (self).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20085710; bytecode file offset 0x98204c"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
choiceExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) exprChild.
    recoveredValue2 := (recoveredValue1) mdlAcceptNodeVisitor: (self).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20085750; bytecode file offset 0x98204c"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
mdlDereferencedExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    recoveredValue2 := (recoveredValue1) mdlAcceptNodeVisitor: (self).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20085770; bytecode file offset 0x98204c"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
compoundArithmethicExpression: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) rootExpr.
    recoveredValue2 := (recoveredValue1) mdlAcceptNodeVisitor: (self).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20085780; bytecode file offset 0x98204c"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
mdlVariableReferenceCast: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    recoveredValue2 := (recoveredValue1) mdlAcceptNodeVisitor: (self).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20095c3c; bytecode file offset 0x992608"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
implCast: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) rightChild.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x20095c9c; bytecode file offset 0x992608"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
exprStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) exprChild.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x20095cdc; bytecode file offset 0x992608"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
parmAssign: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) rightChild.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x20095d0c; bytecode file offset 0x992608"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
unaryArithmeticExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) child.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x20095d1c; bytecode file offset 0x992608"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
defaultStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) child.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x20095d4c; bytecode file offset 0x992608"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
mdlRedundantVerifyExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) identifier.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x200962a0; bytecode file offset 0x992bec"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
fieldAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    (self) visitMdlNode: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200accf4; bytecode file offset 0x9a95ac"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
falseDo: recoveredArg1 and: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) boolean: (false) do: (recoveredValue0) and: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ace3c; bytecode file offset 0x9a96f4"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
trueDo: recoveredArg1 and: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) boolean: (true) do: (recoveredValue0) and: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c7ca0; bytecode file offset 0x9c4588"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
mergeUnion: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) mergeUnion: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c7cc8; bytecode file offset 0x9c4588"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
merge: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) merge: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d96d8; bytecode file offset 0x9d5f98"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
returnStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) child.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    (self) setStateForReturn.
    ^self
! !

"ASDBase.ic method 0x200ec694; bytecode file offset 0x9e8f54"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
merge: recoveredArg1 with: recoveredArg2 condition: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (self) merge: (recoveredValue3) condition: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200fe06c; bytecode file offset 0x9fa968"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
binaryEqualityExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) leftChild.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) rightChild.
    (recoveredValue3) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x200fe094; bytecode file offset 0x9fa968"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
binaryArithmeticExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) leftChild.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) rightChild.
    (recoveredValue3) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x201298e8; bytecode file offset 0xa261a4"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
returnStates
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := returnStates.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            returnStates := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := returnStates.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20145368; bytecode file offset 0xa41ca0"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
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

"ASDBase.ic method 0x201453e0; bytecode file offset 0xa41ca0"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2014bb64; bytecode file offset 0xa48420"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
doProtected: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) value.
    recoveredValue3 := state.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    state := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2016a8c0; bytecode file offset 0xa6718c"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
generator
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGGeneratorFactory.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeGeneratorStrategy.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := SGIleBuilder.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) createIleExpander.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a1810; bytecode file offset 0xa9e0dc"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
setStateForReturn
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) returnStates.
    recoveredValue1 := state.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := state.
    recoveredValue3 := (recoveredValue2) currentCondition.
    recoveredValue4 := (self) createNewState: (recoveredValue3).
    state := recoveredValue4.
    recoveredValue5 := state.
    recoveredValue6 := (self) literalFalse.
    (recoveredValue5) currentCondition: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2020f2ec; bytecode file offset 0xb0bbb8"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
logicNode: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := recoveredArg1.
    recoveredBlock12Value1 := (recoveredBlock12Value0) class.
    recoveredBlock12Value2 := (recoveredBlock12Value1) name.
    recoveredBlock12Value3 := ('Unknown expression of class ') , (recoveredBlock12Value2).
    recoveredBlock12Value3
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023faf8; bytecode file offset 0xb3c3c4"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
expression: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isMdlANSICCCode.
    recoveredBlock4Value1
].
    recoveredValue1 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 |
    recoveredBlock15Value0 := recoveredArg1.
    recoveredBlock15Value1 := (recoveredBlock15Value0) class.
    recoveredBlock15Value2 := (recoveredBlock15Value1) name.
    recoveredBlock15Value3 := ('Unknown expression of class ') , (recoveredBlock15Value2).
    recoveredBlock15Value3
].
    (self) ileAssert: (recoveredValue0) message: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20267a7c; bytecode file offset 0xb64358"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
merge: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) merge: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 16] ifFalse: [recoveredLocal1 := nil. recoveredPC := 36]] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20267a94; bytecode file offset 0xb64358"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
mergeUnion: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) mergeUnion: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 16] ifFalse: [recoveredLocal1 := nil. recoveredPC := 36]] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2028a2ac; bytecode file offset 0xb86b78"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
autosarRTECallWithErrorBlock: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            super autosarRTECallWithErrorBlock: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := state.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorBlock.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) mdlAcceptNodeVisitor: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := state.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) merge: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            state := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := state.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e4534; bytecode file offset 0xbe0dfc"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
expr: recoveredArg1 equals: recoveredArg2 do: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) generator.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Local1 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) asIleExpr: (recoveredBlock8Stack1).
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Stack0.
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack1.
            recoveredBlock8PC := 20.
        ].
        recoveredBlock8Step = 20 ifTrue: [
            (recoveredBlock8Stack0 == nil) ifTrue: [recoveredBlock8PC := 40] ifFalse: [recoveredBlock8PC := 24].
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local1.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Stack2 := self.
            recoveredBlock8PC := 27.
        ].
        recoveredBlock8Step = 27 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg2.
            recoveredBlock8PC := 30.
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) asIleExpr: (recoveredBlock8Stack3).
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) equal: (recoveredBlock8Stack2).
            recoveredBlock8PC := 32.
        ].
        recoveredBlock8Step = 32 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg3.
            recoveredBlock8PC := 35.
        ].
        recoveredBlock8Step = 35 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) expr: (recoveredBlock8Stack1) do: (recoveredBlock8Stack2).
            recoveredBlock8PC := 37.
        ].
        recoveredBlock8Step = 37 ifTrue: [
            recoveredBlock8PC := 47.
        ].
        recoveredBlock8Step = 40 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 41.
        ].
        recoveredBlock8Step = 41 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 42.
        ].
        recoveredBlock8Step = 42 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg3.
            recoveredBlock8PC := 45.
        ].
        recoveredBlock8Step = 45 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) expr: (recoveredBlock8Stack1) do: (recoveredBlock8Stack2).
            recoveredBlock8PC := 47.
        ].
        recoveredBlock8Step = 47 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack0.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    recoveredValue3 := (recoveredValue0) withExpressionContextFrom: (recoveredValue1) do: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x202f1c10; bytecode file offset 0xbee4d8"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
assignExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) variable.
    recoveredBlock4Value2 := (recoveredBlock4Value1) mdlAcceptNodeVisitor: (self).
    recoveredBlock4Value2
].
    recoveredValue1 := (self) doProtected: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := [
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := recoveredArg1.
    recoveredBlock22Value1 := (recoveredBlock22Value0) rightChild.
    recoveredBlock22Value2 := (recoveredBlock22Value1) mdlAcceptNodeVisitor: (self).
    recoveredBlock22Value2
].
    recoveredValue3 := (self) doProtected: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) mergeUnion: (recoveredValue4) with: (recoveredValue5).
    state := recoveredValue6.
    ^self
! !

"ASDBase.ic method 0x2032bc28; bytecode file offset 0xc28500"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
unaryLogicExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) operator.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'not'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := booleanMode.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := booleanMode.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            booleanMode := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) child.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) mdlAcceptNodeVisitor: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := booleanMode.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := booleanMode.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            booleanMode := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 'Local variable initialized: unknown unary logic operator '.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := (recoveredStack3) operator.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) mdlFatalExpect: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203388d8; bytecode file offset 0xc351a4"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
betweenAndExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) exprChild.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    recoveredValue2 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredArg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) leftChild.
    recoveredBlock11Value2 := (recoveredBlock11Value1) mdlAcceptNodeVisitor: (self).
    recoveredBlock11Value2
].
    recoveredValue3 := (self) doProtected: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := [
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 |
    recoveredBlock30Value0 := recoveredArg1.
    recoveredBlock30Value1 := (recoveredBlock30Value0) rightChild.
    recoveredBlock30Value2 := (recoveredBlock30Value1) mdlAcceptNodeVisitor: (self).
    recoveredBlock30Value2
].
    recoveredValue5 := (self) doProtected: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (self) mergeUnion: (recoveredValue6) with: (recoveredValue7).
    state := recoveredValue8.
    ^self
! !

"ASDBase.ic method 0x2036e0f0; bytecode file offset 0xc6a9c0"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
analyzeCase: recoveredArg1 index: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := [
    | recoveredBlock10Local1 recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := recoveredArg1.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) children.
            recoveredBlock10PC := 20.
        ].
        recoveredBlock10Step = 20 ifTrue: [
            recoveredBlock10Stack2 := recoveredLocal2.
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) at: (recoveredBlock10Stack2).
            recoveredBlock10PC := 24.
        ].
        recoveredBlock10Step = 24 ifTrue: [
            recoveredBlock10Local1 := recoveredBlock10Stack1.
            recoveredBlock10PC := 25.
        ].
        recoveredBlock10Step = 25 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Local1.
            recoveredBlock10PC := 26.
        ].
        recoveredBlock10Step = 26 ifTrue: [
            recoveredBlock10Stack2 := self.
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            (recoveredBlock10Stack1) mdlAcceptNodeVisitor: (recoveredBlock10Stack2).
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal2.
            recoveredBlock10PC := 32.
        ].
        recoveredBlock10Step = 32 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) + (1).
            recoveredBlock10PC := 33.
        ].
        recoveredBlock10Step = 33 ifTrue: [
            recoveredLocal2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 36.
        ].
        recoveredBlock10Step = 36 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Local1.
            recoveredBlock10PC := 37.
        ].
        recoveredBlock10Step = 37 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) hasMdlUnconditionalReturn.
            recoveredBlock10PC := 38.
        ].
        recoveredBlock10Step = 38 ifTrue: [
            recoveredLocal1 := recoveredBlock10Stack1.
            recoveredBlock10PC := 41.
        ].
        recoveredBlock10Step = 41 ifTrue: [
            recoveredBlock10Stack1 := false.
            recoveredBlock10PC := 42.
        ].
        recoveredBlock10Step = 42 ifTrue: [
            recoveredBlock10Stack2 := recoveredLocal2.
            recoveredBlock10PC := 45.
        ].
        recoveredBlock10Step = 45 ifTrue: [
            recoveredBlock10Stack3 := recoveredArg1.
            recoveredBlock10PC := 48.
        ].
        recoveredBlock10Step = 48 ifTrue: [
            recoveredBlock10Stack3 := (recoveredBlock10Stack3) children.
            recoveredBlock10PC := 49.
        ].
        recoveredBlock10Step = 49 ifTrue: [
            recoveredBlock10Stack3 := (recoveredBlock10Stack3) size.
            recoveredBlock10PC := 51.
        ].
        recoveredBlock10Step = 51 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) < (recoveredBlock10Stack3).
            recoveredBlock10PC := 52.
        ].
        recoveredBlock10Step = 52 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 56] ifFalse: [recoveredBlock10PC := 61].
        ].
        recoveredBlock10Step = 56 ifTrue: [
            recoveredBlock10PC := 57.
        ].
        recoveredBlock10Step = 57 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Local1.
            recoveredBlock10PC := 58.
        ].
        recoveredBlock10Step = 58 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) hasEndCaseStmnt.
            recoveredBlock10PC := 60.
        ].
        recoveredBlock10Step = 60 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) not.
            recoveredBlock10PC := 61.
        ].
        recoveredBlock10Step = 61 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    (recoveredValue1) whileTrue.
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20391378; bytecode file offset 0xc8dc50"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
indexedExpr: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := [
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 |
    recoveredBlock14Value0 := recoveredArg1.
    recoveredBlock14Value1 := (recoveredBlock14Value0) exprChild.
    recoveredBlock14Value2 := (recoveredBlock14Value1) mdlAcceptNodeVisitor: (self).
    recoveredBlock14Value2
].
    recoveredValue4 := (self) doProtected: (recoveredValue3).
    (recoveredValue2) add: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) indexChild.
    recoveredValue7 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 |
    recoveredBlock36Value0 := recoveredLocal1.
    recoveredBlock36Value1 := [
    | recoveredBlock36Block46Value0 recoveredBlock36Block46Value1 |
    recoveredBlock36Block46Value0 := recoveredBlock36Arg1.
    recoveredBlock36Block46Value1 := (recoveredBlock36Block46Value0) mdlAcceptNodeVisitor: (self).
    recoveredBlock36Block46Value1
].
    recoveredBlock36Value2 := (self) doProtected: (recoveredBlock36Value1).
    recoveredBlock36Value3 := (recoveredBlock36Value0) add: (recoveredBlock36Value2).
    recoveredBlock36Value3
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (self) mergeUnion: (recoveredValue8).
    state := recoveredValue9.
    ^self
! !

"ASDBase.ic method 0x2039185c; bytecode file offset 0xc8e13c"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
defaultCondition: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) generator.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) switchExprChild.
    recoveredValue3 := [
    | recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9Stack4 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 17.
        ].
        recoveredBlock9Step = 17 ifTrue: [
            recoveredBlock9Stack2 := self.
            recoveredBlock9PC := 18.
        ].
        recoveredBlock9Step = 18 ifTrue: [
            recoveredBlock9Stack3 := recoveredArg1.
            recoveredBlock9PC := 21.
        ].
        recoveredBlock9Step = 21 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) switchExprChild.
            recoveredBlock9PC := 22.
        ].
        recoveredBlock9Step = 22 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) asIleExpr: (recoveredBlock9Stack3).
            recoveredBlock9PC := 23.
        ].
        recoveredBlock9Step = 23 ifTrue: [
            recoveredBlock9Stack3 := recoveredBlock9Stack2.
            recoveredBlock9PC := 24.
        ].
        recoveredBlock9Step = 24 ifTrue: [
            recoveredLocal1 := recoveredBlock9Stack3.
            recoveredBlock9PC := 27.
        ].
        recoveredBlock9Step = 27 ifTrue: [
            (recoveredBlock9Stack2 == nil) ifTrue: [recoveredBlock9PC := 67] ifFalse: [recoveredBlock9PC := 30].
        ].
        recoveredBlock9Step = 30 ifTrue: [
            recoveredBlock9PC := 31.
        ].
        recoveredBlock9Step = 31 ifTrue: [
            recoveredBlock9Stack1 := recoveredArg1.
            recoveredBlock9PC := 34.
        ].
        recoveredBlock9Step = 34 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) choiceChildren.
            recoveredBlock9PC := 35.
        ].
        recoveredBlock9Step = 35 ifTrue: [
            recoveredBlock9Stack2 := self.
            recoveredBlock9PC := 36.
        ].
        recoveredBlock9Step = 36 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) literalTrue.
            recoveredBlock9PC := 38.
        ].
        recoveredBlock9Step = 38 ifTrue: [
            recoveredBlock9Stack3 := [:recoveredBlock9Block38Arg1 :recoveredBlock9Block38Arg2 | 
    | recoveredBlock9Block38Value0 recoveredBlock9Block38Value1 recoveredBlock9Block38Value2 recoveredBlock9Block38Value3 recoveredBlock9Block38Value4 recoveredBlock9Block38Value5 recoveredBlock9Block38Value6 recoveredBlock9Block38Value7 recoveredBlock9Block38Value8 |
    recoveredBlock9Block38Value0 := recoveredBlock9Block38Arg1.
    recoveredBlock9Block38Value1 := recoveredLocal1.
    recoveredBlock9Block38Value2 := (recoveredBlock9Block38Value1) asIleCopy.
    recoveredBlock9Block38Value3 := recoveredBlock9Block38Arg2.
    recoveredBlock9Block38Value4 := (recoveredBlock9Block38Value3) literal.
    recoveredBlock9Block38Value5 := (self) asIleExpr: (recoveredBlock9Block38Value4).
    recoveredBlock9Block38Value6 := (recoveredBlock9Block38Value2) equal: (recoveredBlock9Block38Value5).
    recoveredBlock9Block38Value7 := (recoveredBlock9Block38Value6) not.
    recoveredBlock9Block38Value8 := (recoveredBlock9Block38Value0) andExpr: (recoveredBlock9Block38Value7).
    recoveredBlock9Block38Value8
].
            recoveredBlock9PC := 61.
        ].
        recoveredBlock9Step = 61 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) inject: (recoveredBlock9Stack2) into: (recoveredBlock9Stack3).
            recoveredBlock9PC := 63.
        ].
        recoveredBlock9Step = 63 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Stack1.
            recoveredBlock9PC := 64.
        ].
        recoveredBlock9Step = 64 ifTrue: [
            recoveredLocal1 := recoveredBlock9Stack2.
            recoveredBlock9PC := 67.
        ].
        recoveredBlock9Step = 67 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
    (recoveredValue0) withExpressionContextFrom: (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20392f60; bytecode file offset 0xc8f838"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
repeatStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) stmntChild.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) exprChild.
    (self) readingFromMdlNode: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) exprChild.
    recoveredValue6 := [].
    recoveredValue7 := (self) falseDo: (recoveredValue5) and: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) exprChild.
    recoveredValue10 := [
    | recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 recoveredBlock34Value3 |
    recoveredBlock34Value0 := state.
    recoveredBlock34Value1 := recoveredLocal1.
    recoveredBlock34Value2 := (self) mergeUnion: (recoveredBlock34Value0) with: (recoveredBlock34Value1).
    recoveredBlock34Value3 := recoveredBlock34Value2.
    state := recoveredBlock34Value3.
    recoveredBlock34Value2
].
    recoveredValue11 := (self) trueDo: (recoveredValue9) and: (recoveredValue10).
    recoveredLocal2 := recoveredValue11.
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) exprChild.
    recoveredValue16 := (self) merge: (recoveredValue12) with: (recoveredValue13) condition: (recoveredValue15).
    state := recoveredValue16.
    ^self
! !

"ASDBase.ic method 0x2039f800; bytecode file offset 0xc9c0d8"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
whileStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) exprChild.
    (self) readingFromMdlNode: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) exprChild.
    recoveredValue4 := [].
    recoveredValue5 := (self) falseDo: (recoveredValue3) and: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) exprChild.
    recoveredValue8 := [
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 recoveredBlock27Value4 recoveredBlock27Value5 |
    recoveredBlock27Value0 := recoveredArg1.
    recoveredBlock27Value1 := (recoveredBlock27Value0) stmntChild.
    (recoveredBlock27Value1) mdlAcceptNodeVisitor: (self).
    recoveredBlock27Value2 := state.
    recoveredBlock27Value3 := recoveredLocal1.
    recoveredBlock27Value4 := (self) mergeUnion: (recoveredBlock27Value2) with: (recoveredBlock27Value3).
    recoveredBlock27Value5 := recoveredBlock27Value4.
    state := recoveredBlock27Value5.
    recoveredBlock27Value4
].
    recoveredValue9 := (self) trueDo: (recoveredValue7) and: (recoveredValue8).
    recoveredLocal2 := recoveredValue9.
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) exprChild.
    recoveredValue14 := (self) merge: (recoveredValue10) with: (recoveredValue11) condition: (recoveredValue13).
    state := recoveredValue14.
    ^self
! !

"ASDBase.ic method 0x203a55c0; bytecode file offset 0xca1e94"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
muxExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) exprChild.
    (self) readingFromMdlNode: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) exprChild.
    recoveredValue4 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 |
    recoveredBlock15Value0 := recoveredArg1.
    recoveredBlock15Value1 := (recoveredBlock15Value0) leftChild.
    recoveredBlock15Value2 := (recoveredBlock15Value1) mdlAcceptNodeVisitor: (self).
    recoveredBlock15Value2
].
    recoveredValue5 := (self) trueDo: (recoveredValue3) and: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) exprChild.
    recoveredValue8 := [
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 |
    recoveredBlock39Value0 := recoveredArg1.
    recoveredBlock39Value1 := (recoveredBlock39Value0) rightChild.
    recoveredBlock39Value2 := (recoveredBlock39Value1) mdlAcceptNodeVisitor: (self).
    recoveredBlock39Value2
].
    recoveredValue9 := (self) falseDo: (recoveredValue7) and: (recoveredValue8).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) exprChild.
    recoveredValue14 := (self) merge: (recoveredValue10) with: (recoveredValue11) condition: (recoveredValue13).
    state := recoveredValue14.
    ^self
! !

"ASDBase.ic method 0x203a59f0; bytecode file offset 0xca22bc"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
merge: recoveredArg1 condition: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlNonModifiableExpr.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) merge: (recoveredStack3) condition: (recoveredStack4).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 20] ifFalse: [recoveredLocal1 := nil. recoveredPC := 41]] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack2) merge: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 54] ifFalse: [recoveredLocal1 := nil. recoveredPC := 74]] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203bd538; bytecode file offset 0xcb9e10"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
ifThenStmnt: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) readingFromMdlNode: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 |
    recoveredBlock15Value0 := recoveredArg1.
    recoveredBlock15Value1 := (recoveredBlock15Value0) trueChild.
    recoveredBlock15Value2 := (recoveredBlock15Value1) mdlAcceptNodeVisitor: (self).
    recoveredBlock15Value2
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) trueDo: (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) falseDo: (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) trueChild.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasMdlUnconditionalReturn.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            state := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) exprChild.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) merge: (recoveredStack1) with: (recoveredStack2) condition: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            state := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c15cc; bytecode file offset 0xcbdea4"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
specialCall: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := recoveredArg1.
    recoveredBlock22Value1 := (recoveredBlock22Value0) receiver.
    recoveredBlock22Value2 := (recoveredBlock22Value1) mdlAcceptNodeVisitor: (self).
    recoveredBlock22Value2
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) doProtected: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
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
            recoveredStack2 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 |
    recoveredBlock44Value0 := recoveredLocal1.
    recoveredBlock44Value1 := [
    | recoveredBlock44Block54Value0 recoveredBlock44Block54Value1 |
    recoveredBlock44Block54Value0 := recoveredBlock44Arg1.
    recoveredBlock44Block54Value1 := (recoveredBlock44Block54Value0) mdlAcceptNodeVisitor: (self).
    recoveredBlock44Block54Value1
].
    recoveredBlock44Value2 := (self) doProtected: (recoveredBlock44Value1).
    recoveredBlock44Value3 := (recoveredBlock44Value0) add: (recoveredBlock44Value2).
    recoveredBlock44Value3
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) mergeUnion: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            state := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203cc7e4; bytecode file offset 0xcc90e8"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
methodCall: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := state.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) argReceiver.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 |
    recoveredBlock24Value0 := recoveredArg1.
    recoveredBlock24Value1 := (recoveredBlock24Value0) argReceiver.
    recoveredBlock24Value2 := (recoveredBlock24Value1) mdlAcceptNodeVisitor: (self).
    recoveredBlock24Value2
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) doProtected: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) argChildren.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 recoveredBlock46Value3 |
    recoveredBlock46Value0 := recoveredLocal1.
    recoveredBlock46Value1 := [
    | recoveredBlock46Block56Value0 recoveredBlock46Block56Value1 |
    recoveredBlock46Block56Value0 := recoveredBlock46Arg1.
    recoveredBlock46Block56Value1 := (recoveredBlock46Block56Value0) mdlAcceptNodeVisitor: (self).
    recoveredBlock46Block56Value1
].
    recoveredBlock46Value2 := (self) doProtected: (recoveredBlock46Value1).
    recoveredBlock46Value3 := (recoveredBlock46Value0) add: (recoveredBlock46Value2).
    recoveredBlock46Value3
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) mergeUnion: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            state := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203cc810; bytecode file offset 0xcc90e8"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
abstractMethodCall: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := state.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) argReceiver.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 |
    recoveredBlock24Value0 := recoveredArg1.
    recoveredBlock24Value1 := (recoveredBlock24Value0) argReceiver.
    recoveredBlock24Value2 := (recoveredBlock24Value1) mdlAcceptNodeVisitor: (self).
    recoveredBlock24Value2
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) doProtected: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) argChildren.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 recoveredBlock46Value3 |
    recoveredBlock46Value0 := recoveredLocal1.
    recoveredBlock46Value1 := [
    | recoveredBlock46Block56Value0 recoveredBlock46Block56Value1 |
    recoveredBlock46Block56Value0 := recoveredBlock46Arg1.
    recoveredBlock46Block56Value1 := (recoveredBlock46Block56Value0) mdlAcceptNodeVisitor: (self).
    recoveredBlock46Block56Value1
].
    recoveredBlock46Value2 := (self) doProtected: (recoveredBlock46Value1).
    recoveredBlock46Value3 := (recoveredBlock46Value0) add: (recoveredBlock46Value2).
    recoveredBlock46Value3
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) mergeUnion: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            state := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f2428; bytecode file offset 0xceecf4"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
expr: recoveredArg1 do: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := state.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := booleanMode.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            booleanMode := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := state.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentCondition.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := state.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := state.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentCondition.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) andExpr: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) currentCondition: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock41Value0 recoveredBlock41Value1 |
    recoveredBlock41Value0 := recoveredArg2.
    recoveredBlock41Value1 := (recoveredBlock41Value0) value.
    recoveredBlock41Value1
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock54Value0 recoveredBlock54Value1 recoveredBlock54Value2 recoveredBlock54Value3 recoveredBlock54Value4 recoveredBlock54Value5 |
    recoveredBlock54Value0 := state.
    recoveredLocal1 := recoveredBlock54Value0.
    recoveredBlock54Value1 := recoveredLocal1.
    recoveredBlock54Value2 := recoveredLocal2.
    (recoveredBlock54Value1) currentCondition: (recoveredBlock54Value2).
    recoveredBlock54Value3 := recoveredLocal3.
    booleanMode := recoveredBlock54Value3.
    recoveredBlock54Value4 := recoveredLocal4.
    recoveredBlock54Value5 := recoveredBlock54Value4.
    state := recoveredBlock54Value5.
    recoveredBlock54Value4
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) ensure: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2040f3cc; bytecode file offset 0xd0bca4"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
boolean: recoveredArg1 do: recoveredArg2 and: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredLocal4 := recoveredValue1.
    recoveredValue2 := state.
    recoveredValue3 := (recoveredValue2) currentCondition.
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := SGCgExpressionContext.
    recoveredValue5 := (recoveredValue4) nonArithmeticContext.
    recoveredValue6 := [
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack2 := self.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack3 := recoveredArg2.
            recoveredBlock19PC := 31.
        ].
        recoveredBlock19Step = 31 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) asIleExpr: (recoveredBlock19Stack3).
            recoveredBlock19PC := 33.
        ].
        recoveredBlock19Step = 33 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Stack2.
            recoveredBlock19PC := 34.
        ].
        recoveredBlock19Step = 34 ifTrue: [
            recoveredLocal2 := recoveredBlock19Stack3.
            recoveredBlock19PC := 37.
        ].
        recoveredBlock19Step = 37 ifTrue: [
            (recoveredBlock19Stack2 == nil) ifTrue: [recoveredBlock19PC := 67] ifFalse: [recoveredBlock19PC := 40].
        ].
        recoveredBlock19Step = 40 ifTrue: [
            recoveredBlock19PC := 41.
        ].
        recoveredBlock19Step = 41 ifTrue: [
            recoveredBlock19Stack1 := recoveredArg1.
            recoveredBlock19PC := 44.
        ].
        recoveredBlock19Step = 44 ifTrue: [
            (recoveredBlock19Stack1) ifTrue: [recoveredBlock19PC := 55] ifFalse: [recoveredBlock19PC := 48].
        ].
        recoveredBlock19Step = 48 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal2.
            recoveredBlock19PC := 51.
        ].
        recoveredBlock19Step = 51 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) not.
            recoveredBlock19PC := 52.
        ].
        recoveredBlock19Step = 52 ifTrue: [
            recoveredLocal2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 55.
        ].
        recoveredBlock19Step = 55 ifTrue: [
            recoveredBlock19Stack1 := state.
            recoveredBlock19PC := 57.
        ].
        recoveredBlock19Step = 57 ifTrue: [
            recoveredBlock19Stack2 := state.
            recoveredBlock19PC := 59.
        ].
        recoveredBlock19Step = 59 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) currentCondition.
            recoveredBlock19PC := 60.
        ].
        recoveredBlock19Step = 60 ifTrue: [
            recoveredBlock19Stack3 := recoveredLocal2.
            recoveredBlock19PC := 63.
        ].
        recoveredBlock19Step = 63 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) andExpr: (recoveredBlock19Stack3).
            recoveredBlock19PC := 65.
        ].
        recoveredBlock19Step = 65 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) currentCondition: (recoveredBlock19Stack2).
            recoveredBlock19PC := 67.
        ].
        recoveredBlock19Step = 67 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
    (recoveredValue5) executeInContext: (recoveredValue6).
    recoveredValue7 := recoveredArg3.
    (recoveredValue7) value.
    recoveredValue8 := state.
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredLocal3.
    (recoveredValue9) currentCondition: (recoveredValue10).
    recoveredValue11 := recoveredLocal4.
    state := recoveredValue11.
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"ASDBase.ic method 0x2042c170; bytecode file offset 0xd28a54"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
forStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) exprChild.
    recoveredValue2 := (recoveredValue1) first.
    (recoveredValue2) mdlAcceptNodeVisitor: (self).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) exprChild.
    recoveredValue5 := (recoveredValue4) at: (2).
    (self) readingFromMdlNode: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) exprChild.
    recoveredValue8 := (recoveredValue7) at: (2).
    recoveredValue9 := [].
    recoveredValue10 := (self) falseDo: (recoveredValue8) and: (recoveredValue9).
    recoveredLocal2 := recoveredValue10.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) exprChild.
    recoveredValue13 := (recoveredValue12) at: (2).
    recoveredValue14 := [
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 recoveredBlock44Value4 recoveredBlock44Value5 recoveredBlock44Value6 recoveredBlock44Value7 recoveredBlock44Value8 |
    recoveredBlock44Value0 := recoveredArg1.
    recoveredBlock44Value1 := (recoveredBlock44Value0) stmntChild.
    (recoveredBlock44Value1) mdlAcceptNodeVisitor: (self).
    recoveredBlock44Value2 := recoveredArg1.
    recoveredBlock44Value3 := (recoveredBlock44Value2) exprChild.
    recoveredBlock44Value4 := (recoveredBlock44Value3) last.
    (recoveredBlock44Value4) mdlAcceptNodeVisitor: (self).
    recoveredBlock44Value5 := state.
    recoveredBlock44Value6 := recoveredLocal2.
    recoveredBlock44Value7 := (self) mergeUnion: (recoveredBlock44Value5) with: (recoveredBlock44Value6).
    recoveredBlock44Value8 := recoveredBlock44Value7.
    state := recoveredBlock44Value8.
    recoveredBlock44Value7
].
    recoveredValue15 := (self) trueDo: (recoveredValue13) and: (recoveredValue14).
    recoveredLocal1 := recoveredValue15.
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := recoveredLocal2.
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := (recoveredValue18) exprChild.
    recoveredValue20 := (recoveredValue19) at: (2).
    recoveredValue21 := (self) merge: (recoveredValue16) with: (recoveredValue17) condition: (recoveredValue20).
    state := recoveredValue21.
    ^self
! !

"ASDBase.ic method 0x204441e4; bytecode file offset 0xd40acc"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
multiplexExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) switchExprChild.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) choiceChildren.
    recoveredValue6 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 recoveredBlock22Value4 recoveredBlock22Value5 recoveredBlock22Value6 recoveredBlock22Value7 |
    recoveredBlock22Value0 := recoveredLocal2.
    recoveredBlock22Value1 := recoveredArg1.
    recoveredBlock22Value2 := (recoveredBlock22Value1) switchExprChild.
    recoveredBlock22Value3 := recoveredBlock22Arg1.
    recoveredBlock22Value4 := (recoveredBlock22Value3) literal.
    recoveredBlock22Value5 := [
    | recoveredBlock22Block41Value0 recoveredBlock22Block41Value1 |
    recoveredBlock22Block41Value0 := recoveredBlock22Arg1.
    recoveredBlock22Block41Value1 := (recoveredBlock22Block41Value0) mdlAcceptNodeVisitor: (self).
    recoveredBlock22Block41Value1
].
    recoveredBlock22Value6 := (self) expr: (recoveredBlock22Value2) equals: (recoveredBlock22Value4) do: (recoveredBlock22Value5).
    recoveredBlock22Value7 := (recoveredBlock22Value0) add: (recoveredBlock22Value6).
    recoveredBlock22Value7
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (self) defaultCondition: (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := [
    | recoveredBlock77Value0 recoveredBlock77Value1 recoveredBlock77Value2 |
    recoveredBlock77Value0 := recoveredArg1.
    recoveredBlock77Value1 := (recoveredBlock77Value0) defaultExprChild.
    recoveredBlock77Value2 := (recoveredBlock77Value1) mdlAcceptNodeVisitor: (self).
    recoveredBlock77Value2
].
    recoveredValue12 := (self) expr: (recoveredValue10) do: (recoveredValue11).
    (recoveredValue9) add: (recoveredValue12).
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) switchExprChild.
    recoveredValue16 := (self) merge: (recoveredValue13) condition: (recoveredValue15).
    state := recoveredValue16.
    ^self
! !

"ASDBase.ic method 0x2046f12c; bytecode file offset 0xd6ba14"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
asIleExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isMdlNonModifiableExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) genContext.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) generationSettings.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 recoveredBlock25Value7 recoveredBlock25Value8 recoveredBlock25Value9 recoveredBlock25Value10 recoveredBlock25Value11 recoveredBlock25Value12 |
    recoveredBlock25Value0 := recoveredLocal4.
    recoveredBlock25Value1 := (recoveredBlock25Value0) resolveSystemConstantsAtGenerationTime.
    recoveredLocal3 := recoveredBlock25Value1.
    recoveredBlock25Value2 := recoveredLocal4.
    recoveredBlock25Value3 := (recoveredBlock25Value2) resolveSystemConstantsAtCompileTime.
    recoveredLocal2 := recoveredBlock25Value3.
    recoveredBlock25Value4 := recoveredLocal4.
    recoveredBlock25Value5 := (recoveredBlock25Value4) resolveSystemConstantsAtRunTime.
    recoveredLocal1 := recoveredBlock25Value5.
    recoveredBlock25Value6 := recoveredLocal4.
    (recoveredBlock25Value6) resolveSystemConstantsAtGenerationTime: (false).
    recoveredBlock25Value7 := recoveredLocal4.
    (recoveredBlock25Value7) resolveSystemConstantsAtCompileTime: (false).
    recoveredBlock25Value8 := recoveredLocal4.
    (recoveredBlock25Value8) resolveSystemConstantsAtRunTime: (true).
    recoveredBlock25Value9 := recoveredLocal5.
    recoveredBlock25Value10 := recoveredArg1.
    recoveredBlock25Value11 := (recoveredBlock25Value9) visitMdlNode: (recoveredBlock25Value10).
    recoveredBlock25Value12 := (recoveredBlock25Value11) ileExpr.
    recoveredBlock25Value12
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock85Value0 recoveredBlock85Value1 recoveredBlock85Value2 recoveredBlock85Value3 recoveredBlock85Value4 recoveredBlock85Value5 recoveredBlock85Value6 |
    recoveredBlock85Value0 := recoveredLocal4.
    recoveredBlock85Value1 := recoveredLocal3.
    (recoveredBlock85Value0) resolveSystemConstantsAtGenerationTime: (recoveredBlock85Value1).
    recoveredBlock85Value2 := recoveredLocal4.
    recoveredBlock85Value3 := recoveredLocal2.
    (recoveredBlock85Value2) resolveSystemConstantsAtCompileTime: (recoveredBlock85Value3).
    recoveredBlock85Value4 := recoveredLocal4.
    recoveredBlock85Value5 := recoveredLocal1.
    recoveredBlock85Value6 := (recoveredBlock85Value4) resolveSystemConstantsAtRunTime: (recoveredBlock85Value5).
    recoveredBlock85Value6
].
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) ensure: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20471204; bytecode file offset 0xd6dadc"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
ifThenElseStmnt: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) readingFromMdlNode: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 |
    recoveredBlock15Value0 := recoveredArg1.
    recoveredBlock15Value1 := (recoveredBlock15Value0) trueChild.
    recoveredBlock15Value2 := (recoveredBlock15Value1) mdlAcceptNodeVisitor: (self).
    recoveredBlock15Value2
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) trueDo: (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 |
    recoveredBlock39Value0 := recoveredArg1.
    recoveredBlock39Value1 := (recoveredBlock39Value0) falseChild.
    recoveredBlock39Value2 := (recoveredBlock39Value1) mdlAcceptNodeVisitor: (self).
    recoveredBlock39Value2
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) falseDo: (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) trueChild.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasMdlUnconditionalReturn.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) falseChild.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasMdlUnconditionalReturn.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            state := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 105.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) falseChild.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasMdlUnconditionalReturn.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 105].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            state := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := (recoveredStack3) exprChild.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) merge: (recoveredStack1) with: (recoveredStack2) condition: (recoveredStack3).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            state := recoveredStack0.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20542060; bytecode file offset 0xe3e94c"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
binaryLogicExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) operator.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 'and'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := booleanMode.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := booleanMode.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftChild.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) mdlAcceptNodeVisitor: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftChild.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 |
    recoveredBlock38Value0 := recoveredArg1.
    recoveredBlock38Value1 := (recoveredBlock38Value0) rightChild.
    recoveredBlock38Value2 := (recoveredBlock38Value1) mdlAcceptNodeVisitor: (self).
    recoveredBlock38Value2
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) trueDo: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := state.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := (recoveredStack4) leftChild.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) merge: (recoveredStack2) with: (recoveredStack3) condition: (recoveredStack4).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            state := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftChild.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) mdlAcceptNodeVisitor: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) mdlAcceptNodeVisitor: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 213.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) operator.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := 'or'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := booleanMode.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := booleanMode.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftChild.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack1) mdlAcceptNodeVisitor: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftChild.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock132Value0 recoveredBlock132Value1 recoveredBlock132Value2 |
    recoveredBlock132Value0 := recoveredArg1.
    recoveredBlock132Value1 := (recoveredBlock132Value0) rightChild.
    recoveredBlock132Value2 := (recoveredBlock132Value1) mdlAcceptNodeVisitor: (self).
    recoveredBlock132Value2
].
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) falseDo: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := state.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack4 := (recoveredStack4) leftChild.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := (recoveredStack1) merge: (recoveredStack2) with: (recoveredStack3) condition: (recoveredStack4).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            state := recoveredStack1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredPC := 189.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftChild.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack1) mdlAcceptNodeVisitor: (recoveredStack2).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack1) mdlAcceptNodeVisitor: (recoveredStack2).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredPC := 213.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 213] ifFalse: [recoveredPC := 200].
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := 'Local variable initialized: unknown binary logic operator '.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := (recoveredStack3) operator.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack1) mdlFatalExpect: (recoveredStack2).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205c9120; bytecode file offset 0xec5a5c"
!SGAbstractDataFlowVisitor methodsFor: 'recovered'!
switchStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) mdlAcceptNodeVisitor: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntChild.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlBlockStmnt.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 340].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := [:block28118b7cArg1 | 
    | block28118b7cValue0 block28118b7cValue1 |
    block28118b7cValue0 := block28118b7cArg1.
    block28118b7cValue1 := (block28118b7cValue0) isMdlLabelStmnt.
    block28118b7cValue1
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSatisfy: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 340].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 272.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := (recoveredStack3) children.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := (recoveredStack3) isMdlDefaultStmnt.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 206].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := (recoveredStack3) generator.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := (recoveredStack4) exprChild.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock91Stack0 recoveredBlock91Stack1 recoveredBlock91Stack2 recoveredBlock91Stack3 recoveredBlock91Stack4 recoveredBlock91PC recoveredBlock91Step recoveredBlock91Done recoveredBlock91Result |
    recoveredBlock91Stack0 := self.
    recoveredBlock91PC := 98.
    recoveredBlock91Done := false.
    [recoveredBlock91Done not] whileTrue: [
        recoveredBlock91Step := recoveredBlock91PC.
        recoveredBlock91Step = 98 ifTrue: [
            recoveredBlock91Stack1 := nil.
            recoveredBlock91PC := 99.
        ].
        recoveredBlock91Step = 99 ifTrue: [
            recoveredBlock91Stack2 := self.
            recoveredBlock91PC := 100.
        ].
        recoveredBlock91Step = 100 ifTrue: [
            recoveredBlock91Stack3 := recoveredArg1.
            recoveredBlock91PC := 103.
        ].
        recoveredBlock91Step = 103 ifTrue: [
            recoveredBlock91Stack3 := (recoveredBlock91Stack3) exprChild.
            recoveredBlock91PC := 104.
        ].
        recoveredBlock91Step = 104 ifTrue: [
            recoveredBlock91Stack2 := (recoveredBlock91Stack2) asIleExpr: (recoveredBlock91Stack3).
            recoveredBlock91PC := 106.
        ].
        recoveredBlock91Step = 106 ifTrue: [
            recoveredBlock91Stack3 := recoveredBlock91Stack2.
            recoveredBlock91PC := 107.
        ].
        recoveredBlock91Step = 107 ifTrue: [
            recoveredLocal1 := recoveredBlock91Stack3.
            recoveredBlock91PC := 110.
        ].
        recoveredBlock91Step = 110 ifTrue: [
            (recoveredBlock91Stack2 == nil) ifTrue: [recoveredBlock91PC := 166] ifFalse: [recoveredBlock91PC := 114].
        ].
        recoveredBlock91Step = 114 ifTrue: [
            recoveredBlock91PC := 115.
        ].
        recoveredBlock91Step = 115 ifTrue: [
            recoveredBlock91Stack1 := recoveredLocal5.
            recoveredBlock91PC := 118.
        ].
        recoveredBlock91Step = 118 ifTrue: [
            recoveredBlock91Stack1 := (recoveredBlock91Stack1) children.
            recoveredBlock91PC := 120.
        ].
        recoveredBlock91Step = 120 ifTrue: [
            recoveredBlock91Stack2 := [:block28118ba0Arg1 | 
    | block28118ba0Value0 block28118ba0Value1 |
    block28118ba0Value0 := block28118ba0Arg1.
    block28118ba0Value1 := (block28118ba0Value0) isMdlCaseStmnt.
    block28118ba0Value1
].
            recoveredBlock91PC := 122.
        ].
        recoveredBlock91Step = 122 ifTrue: [
            recoveredBlock91PC := 130.
        ].
        recoveredBlock91Step = 130 ifTrue: [
            recoveredBlock91Stack1 := (recoveredBlock91Stack1) select: (recoveredBlock91Stack2).
            recoveredBlock91PC := 132.
        ].
        recoveredBlock91Step = 132 ifTrue: [
            recoveredBlock91Stack2 := self.
            recoveredBlock91PC := 133.
        ].
        recoveredBlock91Step = 133 ifTrue: [
            recoveredBlock91Stack2 := (recoveredBlock91Stack2) literalTrue.
            recoveredBlock91PC := 135.
        ].
        recoveredBlock91Step = 135 ifTrue: [
            recoveredBlock91Stack3 := [:recoveredBlock91Block135Arg1 :recoveredBlock91Block135Arg2 | 
    | recoveredBlock91Block135Value0 recoveredBlock91Block135Value1 recoveredBlock91Block135Value2 recoveredBlock91Block135Value3 recoveredBlock91Block135Value4 recoveredBlock91Block135Value5 recoveredBlock91Block135Value6 recoveredBlock91Block135Value7 recoveredBlock91Block135Value8 |
    recoveredBlock91Block135Value0 := recoveredBlock91Block135Arg1.
    recoveredBlock91Block135Value1 := recoveredLocal1.
    recoveredBlock91Block135Value2 := (recoveredBlock91Block135Value1) asIleCopy.
    recoveredBlock91Block135Value3 := recoveredBlock91Block135Arg2.
    recoveredBlock91Block135Value4 := (recoveredBlock91Block135Value3) literal.
    recoveredBlock91Block135Value5 := (self) asIleExpr: (recoveredBlock91Block135Value4).
    recoveredBlock91Block135Value6 := (recoveredBlock91Block135Value2) equal: (recoveredBlock91Block135Value5).
    recoveredBlock91Block135Value7 := (recoveredBlock91Block135Value6) not.
    recoveredBlock91Block135Value8 := (recoveredBlock91Block135Value0) andExpr: (recoveredBlock91Block135Value7).
    recoveredBlock91Block135Value8
].
            recoveredBlock91PC := 160.
        ].
        recoveredBlock91Step = 160 ifTrue: [
            recoveredBlock91Stack1 := (recoveredBlock91Stack1) inject: (recoveredBlock91Stack2) into: (recoveredBlock91Stack3).
            recoveredBlock91PC := 162.
        ].
        recoveredBlock91Step = 162 ifTrue: [
            recoveredBlock91Stack2 := recoveredBlock91Stack1.
            recoveredBlock91PC := 163.
        ].
        recoveredBlock91Step = 163 ifTrue: [
            recoveredLocal1 := recoveredBlock91Stack2.
            recoveredBlock91PC := 166.
        ].
        recoveredBlock91Step = 166 ifTrue: [
            recoveredBlock91Result := recoveredBlock91Stack1.
            recoveredBlock91Done := true.
        ].
    ].
    recoveredBlock91Result
].
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack3) withExpressionContextFrom: (recoveredStack4) do: (recoveredStack5).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock173Value0 recoveredBlock173Value1 recoveredBlock173Value2 recoveredBlock173Value3 |
    recoveredBlock173Value0 := recoveredLocal5.
    recoveredBlock173Value1 := recoveredLocal4.
    recoveredBlock173Value2 := (self) analyzeCase: (recoveredBlock173Value0) index: (recoveredBlock173Value1).
    recoveredBlock173Value3 := recoveredBlock173Value2.
    recoveredLocal2 := recoveredBlock173Value3.
    recoveredBlock173Value2
].
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack3 := (recoveredStack3) expr: (recoveredStack4) do: (recoveredStack5).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredPC := 249.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack4 := (recoveredStack4) exprChild.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack5 := (recoveredStack5) children.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack6 := recoveredLocal4.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack5 := (recoveredStack5) literal.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock223Value0 recoveredBlock223Value1 recoveredBlock223Value2 recoveredBlock223Value3 |
    recoveredBlock223Value0 := recoveredLocal5.
    recoveredBlock223Value1 := recoveredLocal4.
    recoveredBlock223Value2 := (self) analyzeCase: (recoveredBlock223Value0) index: (recoveredBlock223Value1).
    recoveredBlock223Value3 := recoveredBlock223Value2.
    recoveredLocal2 := recoveredBlock223Value3.
    recoveredBlock223Value2
].
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack3 := (recoveredStack3) expr: (recoveredStack4) equals: (recoveredStack5) do: (recoveredStack6).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 264] ifFalse: [recoveredPC := 256].
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack3) add: (recoveredStack4).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 66] ifFalse: [recoveredPC := 304]] ifFalse: [recoveredPC := 277].
        ].
        recoveredStep = 277 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredLocal4 := recoveredStack4.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 300] ifFalse: [recoveredPC := 294].
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 314] ifFalse: [recoveredPC := 328].
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack2 := (recoveredStack2) state.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentCondition.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := (recoveredStack1) createNewState: (recoveredStack2).
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            state := recoveredStack1.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredPC := 340.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack3 := (recoveredStack3) exprChild.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := (recoveredStack1) merge: (recoveredStack2) condition: (recoveredStack3).
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            state := recoveredStack1.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

