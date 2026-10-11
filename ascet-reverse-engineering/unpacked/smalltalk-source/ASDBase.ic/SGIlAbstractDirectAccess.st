"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000b294; bytecode file offset 0x908be4"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
precedenceLevel
    | recoveredValue0 |
    recoveredValue0 := (self) precedenceLevelOfFieldAccess.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000bfc0; bytecode file offset 0x908be4"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
elementDecl
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20031424; bytecode file offset 0x934580"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
isIleBooleanTypedExpr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) type.
    recoveredValue1 := (recoveredValue0) isIleBooleanType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200344e4; bytecode file offset 0x934580"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
source
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlNode.
    recoveredValue1 := (recoveredValue0) source.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037e5c; bytecode file offset 0x934768"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
ileElementKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlNode.
    recoveredValue1 := (recoveredValue0) errLabelChained.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ab14; bytecode file offset 0x938608"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
ileConvertEnumTo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createOpType: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050a40; bytecode file offset 0x94d4ec"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
interval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (recoveredValue0) getIntervalFromExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20051830; bytecode file offset 0x94f0e0"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
scope
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) mdlNode.
    recoveredValue1 := (recoveredValue0) varDecl.
    recoveredValue2 := (recoveredValue1) scope.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20054d80; bytecode file offset 0x952a9c"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
ileDependsOnAccessExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) ileMayChangeResultOfAccess: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005553c; bytecode file offset 0x952a9c"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) abstractDirectAccess: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200570e0; bytecode file offset 0x9539d4"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
hasSameScope: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) scope.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20069fb0; bytecode file offset 0x966bdc"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
receiver
    | recoveredValue0 |
    recoveredValue0 := receiver.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006aafc; bytecode file offset 0x967a18"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
mdlNode
    | recoveredValue0 |
    recoveredValue0 := mdlNode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c9a4; bytecode file offset 0x9692b0"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
goalInterval
    | recoveredValue0 |
    recoveredValue0 := goalInterval.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007c104; bytecode file offset 0x97c330"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
isMISRAComplexExpr
    ^false
! !

"ASDBase.ic method 0x20090d80; bytecode file offset 0x98d690"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
genIleLazy
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlNode.
    recoveredValue1 := (recoveredValue0) varDecl.
    (recoveredValue1) genIleLazy.
    ^self
! !

"ASDBase.ic method 0x200939d0; bytecode file offset 0x9904ac"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
createOpGoalInterval: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) typeOrNil.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) createOpType: (recoveredValue0) goalInterval: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20094f9c; bytecode file offset 0x991c58"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
createOpType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) goalInterval.
    recoveredValue2 := (self) createOpType: (recoveredValue0) goalInterval: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a866c; bytecode file offset 0x9a4f24"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
receiver: recoveredArg1
    | recoveredValue0 |
    (self) assertSetterShouldNotBeUsed.
    recoveredValue0 := recoveredArg1.
    receiver := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200a8690; bytecode file offset 0x9a4fa8"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
mdlNode: recoveredArg1
    | recoveredValue0 |
    (self) assertSetterShouldNotBeUsed.
    recoveredValue0 := recoveredArg1.
    mdlNode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20105f44; bytecode file offset 0xa027f8"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
containsZero
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := containsZero.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            containsZero := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := containsZero.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011c170; bytecode file offset 0xa18a3c"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
ileRuntimeCosts
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) receiver.
    recoveredValue1 := (recoveredValue0) ileRuntimeCosts.
    recoveredValue2 := (self) mdlNode.
    recoveredValue3 := (recoveredValue2) accessChain.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (self) ileRuntimeCostsOfExpr.
    recoveredValue6 := (recoveredValue4) * (recoveredValue5).
    recoveredValue7 := (recoveredValue1) + (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2012beb0; bytecode file offset 0xa28798"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
isIleZeroInInterval
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := super isIleZeroInInterval.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) containsZero.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20151770; bytecode file offset 0xa4e03c"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
ileWrapperHash
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := super ileWrapperHash.
    recoveredValue1 := (self) receiver.
    recoveredValue2 := (recoveredValue1) ileWrapperHash.
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    recoveredValue4 := (self) mdlNode.
    recoveredValue5 := (recoveredValue4) varDecl.
    recoveredValue6 := (recoveredValue5) hash.
    recoveredValue7 := (recoveredValue3) + (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2015274c; bytecode file offset 0xa4f098"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
hasIleLoggableVariable
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) mdlNode.
    recoveredValue1 := [
    ^false
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := (self) mdlNode.
    recoveredValue3 := (recoveredValue2) isMdlLoggable.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2015edfc; bytecode file offset 0xa5b6e8"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
isIleCompileTimeConstantExpr
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlNode.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isMdlSystemConstant.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) genContext.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) generationSettings.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) resolveSystemConstantsAtCompileTime.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20161898; bytecode file offset 0xa5e164"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
asIleReferencedExpr
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgReferenceType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlNode.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asMdlReferencedExpr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleReferencedExprType: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201945a0; bytecode file offset 0xa90e60"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
ileMayAccessSameMemory: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isIleIndexedExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDereferencedExpr.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileMayAccessSameMemory: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202018a4; bytecode file offset 0xafe178"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
createNoOpMdlNode: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) mdlNode.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) receiver.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := (recoveredStack5) containsZero.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack6 := (recoveredStack6) goalInterval.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) receiver: (recoveredStack3) mdlNode: (recoveredStack4) containsZero: (recoveredStack5) goalInterval: (recoveredStack6).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202018ec; bytecode file offset 0xafe1c0"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
createOpReceiver: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) receiver.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlNode.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := (recoveredStack5) containsZero.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack6 := (recoveredStack6) goalInterval.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) receiver: (recoveredStack3) mdlNode: (recoveredStack4) containsZero: (recoveredStack5) goalInterval: (recoveredStack6).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20205298; bytecode file offset 0xb01b58"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
initializeSource: recoveredArg1 type: recoveredArg2 receiver: recoveredArg3 mdlNode: recoveredArg4 containsZero: recoveredArg5 goalInterval: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg3.
    receiver := recoveredValue0.
    recoveredValue1 := recoveredArg4.
    mdlNode := recoveredValue1.
    recoveredValue2 := recoveredArg5.
    containsZero := recoveredValue2.
    recoveredValue3 := recoveredArg6.
    goalInterval := recoveredValue3.
    recoveredValue4 := goalInterval.
    (recoveredValue4) markReadOnly: (true).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    super initializeSource: (recoveredValue5) type: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20257b94; bytecode file offset 0xb54468"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
createOpType: recoveredArg1 goalInterval: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) goalInterval.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
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
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) receiver.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlNode.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack5 := (recoveredStack5) containsZero.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) receiver: (recoveredStack3) mdlNode: (recoveredStack4) containsZero: (recoveredStack5) goalInterval: (recoveredStack6).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f7b2c; bytecode file offset 0xbf440c"
!SGIlAbstractDirectAccess methodsFor: 'recovered'!
errLabelImplInfoComment
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := (recoveredValue0) reserveTempStream.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) receiver.
    recoveredValue4 := (recoveredValue3) errLabelImplInfoComment.
    (recoveredValue2) nextPutAll: (recoveredValue4).
    recoveredValue5 := (self) mdlNode.
    recoveredValue6 := (recoveredValue5) accessChain.
    recoveredValue7 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 recoveredBlock22Value4 |
    recoveredBlock22Value0 := recoveredLocal1.
    (recoveredBlock22Value0) nextPut: ($.).
    recoveredBlock22Value1 := recoveredLocal1.
    recoveredBlock22Value2 := recoveredBlock22Arg1.
    recoveredBlock22Value3 := (recoveredBlock22Value2) errLabel.
    recoveredBlock22Value4 := (recoveredBlock22Value1) nextPutAll: (recoveredBlock22Value3).
    recoveredBlock22Value4
].
    (recoveredValue6) reverseDo: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) contents.
    ^recoveredValue9
! !

