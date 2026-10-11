"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003688; bytecode file offset 0x90206c"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
methodDecl: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20003698; bytecode file offset 0x90206c"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
continueStmnt: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20003dc8; bytecode file offset 0x90206c"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
labeledStmnt: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004128; bytecode file offset 0x90206c"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
emptyStmnt: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200044b0; bytecode file offset 0x90206c"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
ansiCExpr: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200046e8; bytecode file offset 0x90206c"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
process: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004948; bytecode file offset 0x90206c"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
processBody: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004c10; bytecode file offset 0x90206c"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
method: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005608; bytecode file offset 0x90206c"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
processDecl: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005720; bytecode file offset 0x90206c"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
mdlClass: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2005355c; bytecode file offset 0x9505d0"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
cost: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20066d64; bytecode file offset 0x9646f8"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
value
    | recoveredValue0 |
    recoveredValue0 := totalSize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067c64; bytecode file offset 0x9646f8"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
totalSize
    | recoveredValue0 |
    recoveredValue0 := totalSize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007a03c; bytecode file offset 0x97c330"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
isCalibrating
    ^false
! !

"ASDBase.ic method 0x20084bdc; bytecode file offset 0x981ca4"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
atomStmnt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) blockStmnt: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20084dec; bytecode file offset 0x981ca4"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
varDecl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) logicNode: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20084f78; bytecode file offset 0x981ca4"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
methodBody: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) blockStmnt: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20084ff0; bytecode file offset 0x981ca4"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
binaryRelationExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) binaryEqualityExpr: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20085080; bytecode file offset 0x981ca4"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
expression: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) logicNode: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200852cc; bytecode file offset 0x981ca4"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
enumValue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) literal: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20095c5c; bytecode file offset 0x992608"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
mdlDereferencedExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x20095c8c; bytecode file offset 0x992608"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
exprStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) exprChild.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x20095ccc; bytecode file offset 0x992608"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
mdlReferencedExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x200bef28; bytecode file offset 0x9bc0b4"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
totalSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    totalSize := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e6870; bytecode file offset 0x9e312c"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
initialize
    super initialize.
    totalSize := 0.
    ^self
! !

"ASDBase.ic method 0x200e73ac; bytecode file offset 0x9e3c98"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
logicNode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := totalSize.
    recoveredValue1 := (self) cost: ('logicNode').
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    totalSize := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200e73bc; bytecode file offset 0x9e3c98"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
breakStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := totalSize.
    recoveredValue1 := (self) cost: ('statement').
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    totalSize := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200e73cc; bytecode file offset 0x9e3c98"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
literal: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := totalSize.
    recoveredValue1 := (self) cost: ('literal').
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    totalSize := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200e73dc; bytecode file offset 0x9e3c98"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
exitStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := totalSize.
    recoveredValue1 := (self) cost: ('statement').
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    totalSize := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200e9f3c; bytecode file offset 0x9e6810"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
fieldAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    (self) visitMdlNode: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) identifier: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20141d48; bytecode file offset 0xa3e654"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
unaryLogicExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := totalSize.
    recoveredValue1 := (self) cost: ('operator').
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    totalSize := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) child.
    (recoveredValue4) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x20141d60; bytecode file offset 0xa3e654"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
returnStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := totalSize.
    recoveredValue1 := (self) cost: ('statement').
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    totalSize := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) child.
    (recoveredValue4) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x20141d78; bytecode file offset 0xa3e654"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
unaryArithmeticExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := totalSize.
    recoveredValue1 := (self) cost: ('operator').
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    totalSize := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) child.
    (recoveredValue4) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x20141d90; bytecode file offset 0xa3e654"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
defaultStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := totalSize.
    recoveredValue1 := (self) cost: ('statement').
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    totalSize := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) child.
    (recoveredValue4) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x201453a4; bytecode file offset 0xa41ca0"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
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

"ASDBase.ic method 0x201453cc; bytecode file offset 0xa41ca0"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
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

"ASDBase.ic method 0x201548bc; bytecode file offset 0xa511b0"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
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

"ASDBase.ic method 0x201a3e6c; bytecode file offset 0xaa0814"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
assignExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := totalSize.
    recoveredValue1 := (self) cost: ('assignExpr').
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    totalSize := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) variable.
    (recoveredValue4) mdlAcceptNodeVisitor: (self).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) rightChild.
    (recoveredValue6) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x201a3e88; bytecode file offset 0xaa0814"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
switchStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := totalSize.
    recoveredValue1 := (self) cost: ('statement').
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    totalSize := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) exprChild.
    (recoveredValue4) mdlAcceptNodeVisitor: (self).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) stmntChild.
    (recoveredValue6) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x201a3ea4; bytecode file offset 0xaa0814"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
parmAssign: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := totalSize.
    recoveredValue1 := (self) cost: ('assignExpr').
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    totalSize := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) variable.
    (recoveredValue4) mdlAcceptNodeVisitor: (self).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) rightChild.
    (recoveredValue6) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x201a3ec0; bytecode file offset 0xaa0814"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
binaryEqualityExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := totalSize.
    recoveredValue1 := (self) cost: ('operator').
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    totalSize := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) rightChild.
    (recoveredValue4) mdlAcceptNodeVisitor: (self).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) leftChild.
    (recoveredValue6) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x201a3edc; bytecode file offset 0xaa0814"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
binaryLogicExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := totalSize.
    recoveredValue1 := (self) cost: ('operator').
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    totalSize := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) rightChild.
    (recoveredValue4) mdlAcceptNodeVisitor: (self).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) leftChild.
    (recoveredValue6) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x201a3ef8; bytecode file offset 0xaa0814"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
ifThenStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := totalSize.
    recoveredValue1 := (self) cost: ('statement').
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    totalSize := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) exprChild.
    (recoveredValue4) mdlAcceptNodeVisitor: (self).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) trueChild.
    (recoveredValue6) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x201a3f14; bytecode file offset 0xaa0814"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
whileStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := totalSize.
    recoveredValue1 := (self) cost: ('statement').
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    totalSize := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) exprChild.
    (recoveredValue4) mdlAcceptNodeVisitor: (self).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) stmntChild.
    (recoveredValue6) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x201a3f30; bytecode file offset 0xaa0814"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
caseStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := totalSize.
    recoveredValue1 := (self) cost: ('statement').
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    totalSize := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) literal.
    (recoveredValue4) mdlAcceptNodeVisitor: (self).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) child.
    (recoveredValue6) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x201a3f4c; bytecode file offset 0xaa0814"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
binaryArithmeticExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := totalSize.
    recoveredValue1 := (self) cost: ('operator').
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    totalSize := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) rightChild.
    (recoveredValue4) mdlAcceptNodeVisitor: (self).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) leftChild.
    (recoveredValue6) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x201f3a08; bytecode file offset 0xaf02cc"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
autosarRTECallWithErrorBlock: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := totalSize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := super autosarRTECallWithErrorBlock: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            totalSize := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorBlock.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := totalSize.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) errorBlock.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlAcceptNodeVisitor: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            totalSize := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20200c6c; bytecode file offset 0xafd558"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
muxExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := totalSize.
    recoveredValue1 := (self) cost: ('operator').
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    totalSize := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) exprChild.
    (recoveredValue4) mdlAcceptNodeVisitor: (self).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) rightChild.
    (recoveredValue6) mdlAcceptNodeVisitor: (self).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) leftChild.
    (recoveredValue8) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x20200c8c; bytecode file offset 0xafd558"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
ifThenElseStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := totalSize.
    recoveredValue1 := (self) cost: ('statement').
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    totalSize := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) exprChild.
    (recoveredValue4) mdlAcceptNodeVisitor: (self).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) trueChild.
    (recoveredValue6) mdlAcceptNodeVisitor: (self).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) falseChild.
    (recoveredValue8) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x202324cc; bytecode file offset 0xb2edb8"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
specialCallStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := totalSize.
    recoveredValue1 := (self) cost: ('methodCall').
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    totalSize := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) receiver.
    (recoveredValue4) mdlAcceptNodeVisitor: (self).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) children.
    recoveredValue7 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 |
    recoveredBlock21Value0 := recoveredBlock21Arg1.
    recoveredBlock21Value1 := (recoveredBlock21Value0) mdlAcceptNodeVisitor: (self).
    recoveredBlock21Value1
].
    (recoveredValue6) do: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x202324ec; bytecode file offset 0xb2edb8"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
specialCall: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := totalSize.
    recoveredValue1 := (self) cost: ('methodCall').
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    totalSize := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) receiver.
    (recoveredValue4) mdlAcceptNodeVisitor: (self).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) children.
    recoveredValue7 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 |
    recoveredBlock21Value0 := recoveredBlock21Arg1.
    recoveredBlock21Value1 := (recoveredBlock21Value0) mdlAcceptNodeVisitor: (self).
    recoveredBlock21Value1
].
    (recoveredValue6) do: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x20232530; bytecode file offset 0xb2ee1c"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
forStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := totalSize.
    recoveredValue1 := (self) cost: ('statement').
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    totalSize := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) exprChild.
    recoveredValue5 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := (recoveredBlock15Value0) mdlAcceptNodeVisitor: (self).
    recoveredBlock15Value1
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) stmntChild.
    (recoveredValue7) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x20232550; bytecode file offset 0xb2ee1c"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
indexedExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := totalSize.
    recoveredValue1 := (self) cost: ('operator').
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    totalSize := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) indexChild.
    recoveredValue5 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := (recoveredBlock15Value0) mdlAcceptNodeVisitor: (self).
    recoveredBlock15Value1
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) exprChild.
    (recoveredValue7) mdlAcceptNodeVisitor: (self).
    ^self
! !

"ASDBase.ic method 0x20260a1c; bytecode file offset 0xb5d2e8"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
abstractMethodCall: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := totalSize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := 'methodCall'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) cost: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            totalSize := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) argReceiver.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) argReceiver.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) mdlAcceptNodeVisitor: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) argChildren.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := (recoveredBlock26Value0) mdlAcceptNodeVisitor: (self).
    recoveredBlock26Value1
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20265ed8; bytecode file offset 0xb627a8"
!SGSmAbstractEstimateSize methodsFor: 'recovered'!
identifier: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) accessChain.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := totalSize.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMdlConstant.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMdlSystemConstant.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := 'literal'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) cost: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := 'identifier'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) cost: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            totalSize := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

