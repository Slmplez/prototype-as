"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002758; bytecode file offset 0x8ffcfc"
!SGIlIndexedExpr methodsFor: 'recovered'!
ileExtendedInputValue
    ^self
! !

"ASDBase.ic method 0x2000dca4; bytecode file offset 0x90ab8c"
!SGIlIndexedExpr methodsFor: 'recovered'!
braceForceParenthesisLogicOp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) asBracedExpr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20029124; bytecode file offset 0x934580"
!SGIlIndexedExpr methodsFor: 'recovered'!
isIleZeroInInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) baseExpr.
    recoveredValue1 := (recoveredValue0) isIleZeroInInterval.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002aa24; bytecode file offset 0x934580"
!SGIlIndexedExpr methodsFor: 'recovered'!
elementType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) type.
    recoveredValue1 := (recoveredValue0) getImplType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002cd94; bytecode file offset 0x934580"
!SGIlIndexedExpr methodsFor: 'recovered'!
isIleRedundantData
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) baseExpr.
    recoveredValue1 := (recoveredValue0) isIleRedundantData.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034fb4; bytecode file offset 0x934580"
!SGIlIndexedExpr methodsFor: 'recovered'!
isIleArithmeticExpr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) type.
    recoveredValue1 := (recoveredValue0) isIleArithmeticType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200509e0; bytecode file offset 0x94d4ec"
!SGIlIndexedExpr methodsFor: 'recovered'!
interval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (recoveredValue0) getIntervalFromExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20052050; bytecode file offset 0x94f0e0"
!SGIlIndexedExpr methodsFor: 'recovered'!
isIleBooleanTypedExpr
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) baseExpr.
    recoveredValue1 := (recoveredValue0) type.
    recoveredValue2 := (recoveredValue1) isIleBooleanArrayedType.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200553e0; bytecode file offset 0x952a9c"
!SGIlIndexedExpr methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) assignAtExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005dd50; bytecode file offset 0x95a60c"
!SGIlIndexedExpr methodsFor: 'recovered'!
ileBasicInterval
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := baseExpr.
    recoveredValue1 := (recoveredValue0) elementType.
    recoveredValue2 := (recoveredValue1) getImplInterval.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20064e84; bytecode file offset 0x961970"
!SGIlIndexedExpr methodsFor: 'recovered'!
genIleLazy
    | recoveredValue0 |
    recoveredValue0 := (self) baseExpr.
    (recoveredValue0) genIleLazy.
    ^self
! !

"ASDBase.ic method 0x2006a6bc; bytecode file offset 0x967a18"
!SGIlIndexedExpr methodsFor: 'recovered'!
baseExpr
    | recoveredValue0 |
    recoveredValue0 := baseExpr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b670; bytecode file offset 0x96873c"
!SGIlIndexedExpr methodsFor: 'recovered'!
goalInterval
    | recoveredValue0 |
    recoveredValue0 := goalInterval.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c354; bytecode file offset 0x9692b0"
!SGIlIndexedExpr methodsFor: 'recovered'!
expressionContext
    | recoveredValue0 |
    recoveredValue0 := expressionContext.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d160; bytecode file offset 0x969c04"
!SGIlIndexedExpr methodsFor: 'recovered'!
suppressIndexLimitation
    | recoveredValue0 |
    recoveredValue0 := suppressIndexLimitation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007461c; bytecode file offset 0x970f98"
!SGIlIndexedExpr methodsFor: 'recovered'!
precedenceLevel
    ^10
! !

"ASDBase.ic method 0x20078bec; bytecode file offset 0x9757c8"
!SGIlIndexedExpr methodsFor: 'recovered'!
isIleIndexedExpr
    ^true
! !

"ASDBase.ic method 0x2007c11c; bytecode file offset 0x97c330"
!SGIlIndexedExpr methodsFor: 'recovered'!
isMISRAComplexExpr
    ^false
! !

"ASDBase.ic method 0x20090310; bytecode file offset 0x98ccc4"
!SGIlIndexedExpr methodsFor: 'recovered'!
errLabelImplInfoComment
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) baseExpr.
    recoveredValue1 := (recoveredValue0) errLabelImplInfoComment.
    recoveredValue2 := (recoveredValue1) , ('[]').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200951cc; bytecode file offset 0x991c58"
!SGIlIndexedExpr methodsFor: 'recovered'!
createNoOpBaseExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) typeOrNil.
    recoveredValue2 := (self) createNoOpBaseExpr: (recoveredValue0) type: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a8804; bytecode file offset 0x9a50f8"
!SGIlIndexedExpr methodsFor: 'recovered'!
expressionContext: recoveredArg1
    | recoveredValue0 |
    (self) assertSetterShouldNotBeUsed.
    recoveredValue0 := recoveredArg1.
    expressionContext := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c8cb8; bytecode file offset 0x9c5684"
!SGIlIndexedExpr methodsFor: 'recovered'!
createNoOpBaseExpr: recoveredArg1 args: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) typeOrNil.
    recoveredValue3 := (self) createNoOpBaseExpr: (recoveredValue0) args: (recoveredValue1) type: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d568c; bytecode file offset 0x9d2050"
!SGIlIndexedExpr methodsFor: 'recovered'!
ileWrapperHash
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super ileWrapperHash.
    recoveredValue1 := (self) baseExpr.
    recoveredValue2 := (recoveredValue1) ileWrapperHash.
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d7e98; bytecode file offset 0x9d4794"
!SGIlIndexedExpr methodsFor: 'recovered'!
createOpType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) baseExpr.
    recoveredValue1 := (self) args.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) createNoOpBaseExpr: (recoveredValue0) args: (recoveredValue1) type: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d7f28; bytecode file offset 0x9d4810"
!SGIlIndexedExpr methodsFor: 'recovered'!
createNoOpArgs: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) baseExpr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) typeOrNil.
    recoveredValue3 := (self) createNoOpBaseExpr: (recoveredValue0) args: (recoveredValue1) type: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200fe8c8; bytecode file offset 0x9fb278"
!SGIlIndexedExpr methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) printIntervalOn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2010ead4; bytecode file offset 0xa0b3b0"
!SGIlIndexedExpr methodsFor: 'recovered'!
ileMayAccessPartOfMemory: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgArrayType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) baseExpr.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileMayAccessSameMemory: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201537a8; bytecode file offset 0xa50068"
!SGIlIndexedExpr methodsFor: 'recovered'!
ileDependsOnAccessExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileMayChangeResultOfAccess: (recoveredStack3).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
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
            recoveredStack1 := super ileDependsOnAccessExpr: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20175e04; bytecode file offset 0xa726c8"
!SGIlIndexedExpr methodsFor: 'recovered'!
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
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) baseExpr.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleDereferencedExpr.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) baseExpr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) asIleDereferencedExpr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileMayAccessSameMemory: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileMayAccessSameMemory: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201d7c6c; bytecode file offset 0xad4534"
!SGIlIndexedExpr methodsFor: 'recovered'!
initialize
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initialize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := baseExpr.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleReferencedExpr.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := baseExpr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleDereferencedExpr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := baseExpr.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) expr.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            baseExpr := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f93e4; bytecode file offset 0xaf5cb0"
!SGIlIndexedExpr methodsFor: 'recovered'!
asIleReferencedExpr
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) baseExpr.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgReferenceType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) baseExpr.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) baseExpr.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleReferencedExpr.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWithBaseType: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleReferencedExprType: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20206730; bytecode file offset 0xb03008"
!SGIlIndexedExpr methodsFor: 'recovered'!
asIleRedundantDataExpr
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) baseExpr.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleRedundantDataExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) args.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := [:block280d992cArg1 | 
    | block280d992cValue0 block280d992cValue1 |
    block280d992cValue0 := block280d992cArg1.
    block280d992cValue1 := (block280d992cValue0) asIleCopy.
    block280d992cValue1
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) type.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) componentType.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) createNoOpBaseExpr: (recoveredStack1) args: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021eb98; bytecode file offset 0xb1b458"
!SGIlIndexedExpr methodsFor: 'recovered'!
initializeSource: recoveredArg1 type: recoveredArg2 args: recoveredArg3 baseExpr: recoveredArg4 goalInterval: recoveredArg5 expressionContext: recoveredArg6 suppressIndexLimitation: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg4.
    baseExpr := recoveredValue0.
    recoveredValue1 := recoveredArg5.
    goalInterval := recoveredValue1.
    recoveredValue2 := goalInterval.
    (recoveredValue2) markReadOnly: (true).
    recoveredValue3 := recoveredArg6.
    expressionContext := recoveredValue3.
    recoveredValue4 := recoveredArg7.
    suppressIndexLimitation := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := recoveredArg3.
    super initializeSource: (recoveredValue5) type: (recoveredValue6) args: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x20227620; bytecode file offset 0xb23f24"
!SGIlIndexedExpr methodsFor: 'recovered'!
createOpGoalInterval: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) goalInterval.
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
            recoveredStack3 := (recoveredStack3) args.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := (recoveredStack4) baseExpr.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack6 := (recoveredStack6) expressionContext.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack7 := (recoveredStack7) suppressIndexLimitation.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) args: (recoveredStack3) baseExpr: (recoveredStack4) goalInterval: (recoveredStack5) expressionContext: (recoveredStack6) suppressIndexLimitation: (recoveredStack7).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023df94; bytecode file offset 0xb3a86c"
!SGIlIndexedExpr methodsFor: 'recovered'!
createWithArgs: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) args.
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
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := (recoveredStack4) baseExpr.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := (recoveredStack5) goalInterval.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack6 := (recoveredStack6) expressionContext.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack7 := (recoveredStack7) suppressIndexLimitation.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) args: (recoveredStack3) baseExpr: (recoveredStack4) goalInterval: (recoveredStack5) expressionContext: (recoveredStack6) suppressIndexLimitation: (recoveredStack7).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025ed00; bytecode file offset 0xb5b5cc"
!SGIlIndexedExpr methodsFor: 'recovered'!
hash
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := hash.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) hash.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) baseExpr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) hash.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) args.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := [:block280df818Arg1 :block280df818Arg2 | 
    | block280df818Value0 block280df818Value1 block280df818Value2 block280df818Value3 |
    block280df818Value0 := block280df818Arg1.
    block280df818Value1 := block280df818Arg2.
    block280df818Value2 := (block280df818Value1) hash.
    block280df818Value3 := (block280df818Value0) + (block280df818Value2).
    block280df818Value3
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) inject: (recoveredStack3) into: (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            hash := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := hash.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20262e0c; bytecode file offset 0xb5f6e4"
!SGIlIndexedExpr methodsFor: 'recovered'!
createNoOpBaseExpr: recoveredArg1 type: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) baseExpr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
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
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) args.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack5 := (recoveredStack5) goalInterval.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack6 := (recoveredStack6) expressionContext.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack7 := (recoveredStack7) suppressIndexLimitation.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) args: (recoveredStack3) baseExpr: (recoveredStack4) goalInterval: (recoveredStack5) expressionContext: (recoveredStack6) suppressIndexLimitation: (recoveredStack7).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202652d4; bytecode file offset 0xb61b9c"
!SGIlIndexedExpr methodsFor: 'recovered'!
ileRuntimeCosts
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) baseExpr.
    recoveredValue1 := (recoveredValue0) ileRuntimeCosts.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) args.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) ileRuntimeCosts.
    recoveredBlock11Value3 := (recoveredBlock11Value0) + (recoveredBlock11Value2).
    recoveredBlock11Value4 := recoveredBlock11Value3.
    recoveredLocal1 := recoveredBlock11Value4.
    recoveredBlock11Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) ileRuntimeCostsOfExpr.
    recoveredValue6 := (recoveredValue4) + (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x202abccc; bytecode file offset 0xba85a4"
!SGIlIndexedExpr methodsFor: 'recovered'!
createNoOpBaseExpr: recoveredArg1 args: recoveredArg2 type: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) baseExpr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 10].
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
            recoveredStack2 := (recoveredStack2) args.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack5 := (recoveredStack5) goalInterval.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack6 := (recoveredStack6) expressionContext.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack7 := (recoveredStack7) suppressIndexLimitation.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) args: (recoveredStack3) baseExpr: (recoveredStack4) goalInterval: (recoveredStack5) expressionContext: (recoveredStack6) suppressIndexLimitation: (recoveredStack7).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20333630; bytecode file offset 0xc2ff1c"
!SGIlIndexedExpr methodsFor: 'recovered'!
asIleLValueCopy
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) expressionContext.
    recoveredValue2 := [
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) args.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack1 := [:block280ed03cArg1 | 
    | block280ed03cValue0 block280ed03cValue1 |
    block280ed03cValue0 := block280ed03cArg1.
    block280ed03cValue1 := (block280ed03cValue0) asIleSideEffectFreeBufferedExpr.
    block280ed03cValue1
].
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) collect: (recoveredBlock7Stack1).
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack0.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    recoveredValue3 := (recoveredValue1) executeInContext: (recoveredValue2).
    recoveredValue4 := SGCgExpressionContext.
    recoveredValue5 := (recoveredValue4) nonArithmeticContext.
    recoveredValue6 := [
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 |
    recoveredBlock33Value0 := (self) baseExpr.
    recoveredBlock33Value1 := (recoveredBlock33Value0) asIleReferencedExpr.
    recoveredBlock33Value2 := (recoveredBlock33Value1) asIleSideEffectFreeBufferedExpr.
    recoveredBlock33Value2
].
    recoveredValue7 := (recoveredValue5) executeInContext: (recoveredValue6).
    recoveredValue8 := (self) expressionContext.
    recoveredValue9 := (self) suppressIndexLimitation.
    recoveredValue10 := (self) ileBasicType.
    recoveredValue11 := (recoveredValue0) indexed: (recoveredValue3) expr: (recoveredValue7) expressionContext: (recoveredValue8) suppressIndexLimitation: (recoveredValue9) type: (recoveredValue10).
    ^recoveredValue11
! !

