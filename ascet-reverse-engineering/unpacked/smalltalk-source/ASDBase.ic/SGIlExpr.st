"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002828; bytecode file offset 0x8ffcfc"
!SGIlExpr methodsFor: 'recovered'!
rootExpr
    ^self
! !

"ASDBase.ic method 0x20004418; bytecode file offset 0x90206c"
!SGIlExpr methodsFor: 'recovered'!
createOpLimitOverflow: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20007718; bytecode file offset 0x908be4"
!SGIlExpr methodsFor: 'recovered'!
ileAllowsControlFlowOptimization
    | recoveredValue0 |
    recoveredValue0 := (self) hasIleNoSideEffectsWithoutTempAssignments.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20007bbc; bytecode file offset 0x908be4"
!SGIlExpr methodsFor: 'recovered'!
getInterval
    | recoveredValue0 |
    recoveredValue0 := (self) interval.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b480; bytecode file offset 0x908be4"
!SGIlExpr methodsFor: 'recovered'!
interval
    | recoveredValue0 |
    recoveredValue0 := (self) ileBasicInterval.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200300b4; bytecode file offset 0x934580"
!SGIlExpr methodsFor: 'recovered'!
ileBasicInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) type.
    recoveredValue1 := (recoveredValue0) getImplInterval.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033314; bytecode file offset 0x934580"
!SGIlExpr methodsFor: 'recovered'!
ilePhysModelInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) type.
    recoveredValue1 := (recoveredValue0) ilePhysModelInterval.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050b50; bytecode file offset 0x94d4ec"
!SGIlExpr methodsFor: 'recovered'!
asIleLValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (recoveredValue0) createLValue: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050e30; bytecode file offset 0x94d84c"
!SGIlExpr methodsFor: 'recovered'!
isIleUnsignedTypedExpr
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) interval.
    recoveredValue1 := (recoveredValue0) needsSigned.
    recoveredValue2 := (recoveredValue1) not.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005316c; bytecode file offset 0x9505d0"
!SGIlExpr methodsFor: 'recovered'!
limitOverflow: recoveredArg1
    (self) assertSetterShouldNotBeUsed.
    ^self
! !

"ASDBase.ic method 0x200533c4; bytecode file offset 0x9505d0"
!SGIlExpr methodsFor: 'recovered'!
interval: recoveredArg1
    (self) assertSetterShouldNotBeUsed.
    ^self
! !

"ASDBase.ic method 0x20055d7c; bytecode file offset 0x952a9c"
!SGIlExpr methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expression: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20068b24; bytecode file offset 0x965b90"
!SGIlExpr methodsFor: 'recovered'!
typeOrNil
    | recoveredValue0 |
    recoveredValue0 := type.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068b9c; bytecode file offset 0x965b90"
!SGIlExpr methodsFor: 'recovered'!
ileBasicType
    | recoveredValue0 |
    recoveredValue0 := type.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20079dec; bytecode file offset 0x97c330"
!SGIlExpr methodsFor: 'recovered'!
isIleBooleanTypedExpr
    ^false
! !

"ASDBase.ic method 0x2007ceec; bytecode file offset 0x97c330"
!SGIlExpr methodsFor: 'recovered'!
isIleFloatConstant
    ^false
! !

"ASDBase.ic method 0x2007dde4; bytecode file offset 0x97c330"
!SGIlExpr methodsFor: 'recovered'!
isIleRteMacroCall
    ^false
! !

"ASDBase.ic method 0x20089cf4; bytecode file offset 0x986668"
!SGIlExpr methodsFor: 'recovered'!
asIleReplacedLengthSpecialCalls
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGIlReplaceLengthSpecialCallsVisitor.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (recoveredValue1) visitNode: (self).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009709c; bytecode file offset 0x9939e8"
!SGIlExpr methodsFor: 'recovered'!
asIleReferencedExprType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createReferencedExpr: (self) type: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a85d0; bytecode file offset 0x9a4e94"
!SGIlExpr methodsFor: 'recovered'!
type: recoveredArg1
    | recoveredValue0 |
    (self) assertSetterShouldNotBeUsed.
    recoveredValue0 := recoveredArg1.
    type := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200eb76c; bytecode file offset 0x9e8038"
!SGIlExpr methodsFor: 'recovered'!
initializeSource: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    type := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    super initializeSource: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ed7e4; bytecode file offset 0x9ea0a0"
!SGIlExpr methodsFor: 'recovered'!
forStmnt: recoveredArg1 firstExpr: recoveredArg2 lastExpr: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue0) forExpr: (self) firstExpr: (recoveredValue1) lastExpr: (recoveredValue2) doStmnt: (recoveredValue3) protectLoop: (true).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20105ae4; bytecode file offset 0xa0239c"
!SGIlExpr methodsFor: 'recovered'!
isIleMoebiusFixedPointTypeExpr
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := type.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := type.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgContMoebiusFixedPointType.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20105ba4; bytecode file offset 0xa02468"
!SGIlExpr methodsFor: 'recovered'!
type
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := type.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) etasCodeGenHalt.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := type.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2010f7f0; bytecode file offset 0xa0c0b8"
!SGIlExpr methodsFor: 'recovered'!
asIleInitValueAssignType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := SGCgExpressionContext.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) getImplType.
    recoveredValue5 := (recoveredValue2) forContextType: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) createInitValueAssign: (self) type: (recoveredValue1) expressionContext: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2011c010; bytecode file offset 0xa188d4"
!SGIlExpr methodsFor: 'recovered'!
asIleDereferencedExpr
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
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
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
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDereferencedExpr: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012c248; bytecode file offset 0xa28b08"
!SGIlExpr methodsFor: 'recovered'!
isIleZeroInInterval
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) contains: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a1684; bytecode file offset 0xa9df4c"
!SGIlExpr methodsFor: 'recovered'!
asIleReferencedExpr
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := (self) type.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isCgReferenceType.
    recoveredBlock4Value1
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [
    'Unable to build reference expression'
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201c7460; bytecode file offset 0xac3d30"
!SGIlExpr methodsFor: 'recovered'!
getIntervalFromType
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := type.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) expander.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorHandler.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) fatalNo: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := RBInterval.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) emptyInterval.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplInterval.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c4240; bytecode file offset 0xbc0b2c"
!SGIlExpr methodsFor: 'recovered'!
isIleEnumExpr
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := (self) typeOrNil.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isNil.
    recoveredBlock4Value2 := (recoveredBlock4Value1) not.
    recoveredBlock4Value2
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [
    'Type must not be nil'
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeOrNil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeOrNil.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleEnumType.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeOrNil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBEnumeration.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202cdda4; bytecode file offset 0xbca670"
!SGIlExpr methodsFor: 'recovered'!
isIleArithmeticExpr
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := (self) typeOrNil.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isNil.
    recoveredBlock4Value2 := (recoveredBlock4Value1) not.
    recoveredBlock4Value2
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [
    'Missing type on expression'
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeOrNil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeOrNil.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleArithmeticType.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeOrNil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgReferenceType.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203362a0; bytecode file offset 0xc32b6c"
!SGIlExpr methodsFor: 'recovered'!
assertGoalInterval
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) goalInterval.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := [
    | recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9Stack4 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := true.
            recoveredBlock9PC := 17.
        ].
        recoveredBlock9Step = 17 ifTrue: [
            recoveredBlock9Stack2 := recoveredLocal1.
            recoveredBlock9PC := 20.
        ].
        recoveredBlock9Step = 20 ifTrue: [
            (recoveredBlock9Stack2 == nil) ifTrue: [recoveredBlock9PC := 54] ifFalse: [recoveredBlock9PC := 24].
        ].
        recoveredBlock9Step = 24 ifTrue: [
            recoveredBlock9PC := 25.
        ].
        recoveredBlock9Step = 25 ifTrue: [
            recoveredBlock9Stack1 := true.
            recoveredBlock9PC := 26.
        ].
        recoveredBlock9Step = 26 ifTrue: [
            recoveredBlock9Stack2 := recoveredLocal1.
            recoveredBlock9PC := 29.
        ].
        recoveredBlock9Step = 29 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) isEmpty.
            recoveredBlock9PC := 30.
        ].
        recoveredBlock9Step = 30 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 34] ifFalse: [recoveredBlock9PC := 54].
        ].
        recoveredBlock9Step = 34 ifTrue: [
            recoveredBlock9PC := 35.
        ].
        recoveredBlock9Step = 35 ifTrue: [
            recoveredBlock9Stack1 := false.
            recoveredBlock9PC := 36.
        ].
        recoveredBlock9Step = 36 ifTrue: [
            recoveredBlock9Stack2 := recoveredLocal1.
            recoveredBlock9PC := 39.
        ].
        recoveredBlock9Step = 39 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) left.
            recoveredBlock9PC := 40.
        ].
        recoveredBlock9Step = 40 ifTrue: [
            recoveredBlock9Stack3 := 1.
            recoveredBlock9PC := 42.
        ].
        recoveredBlock9Step = 42 ifTrue: [
            (recoveredBlock9Stack2 ~~ recoveredBlock9Stack3) ifTrue: [recoveredBlock9PC := 54] ifFalse: [recoveredBlock9PC := 46].
        ].
        recoveredBlock9Step = 46 ifTrue: [
            recoveredBlock9PC := 47.
        ].
        recoveredBlock9Step = 47 ifTrue: [
            recoveredBlock9Stack1 := recoveredLocal1.
            recoveredBlock9PC := 50.
        ].
        recoveredBlock9Step = 50 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) right.
            recoveredBlock9PC := 51.
        ].
        recoveredBlock9Step = 51 ifTrue: [
            recoveredBlock9Stack2 := 0.
            recoveredBlock9PC := 53.
        ].
        recoveredBlock9Step = 53 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) == (recoveredBlock9Stack2).
            recoveredBlock9PC := 54.
        ].
        recoveredBlock9Step = 54 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
    (self) ileAssert: (recoveredValue1) message: ('Wrong empty goal interval').
    ^self
! !

"ASDBase.ic method 0x204156fc; bytecode file offset 0xd11ff0"
!SGIlExpr methodsFor: 'recovered'!
isIleFloatTypedExpr
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) expressionContext.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFloatContext.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := type.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 73] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := type.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBDataVector.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := type.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBDataMatrix.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := type.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleCharTable.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := type.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleComplexClassType.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFloatType.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleQuantFloatType.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := [
    'The interval is not suitable to determine the floatness of an expression'
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFloat.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2049923c; bytecode file offset 0xd95b34"
!SGIlExpr methodsFor: 'recovered'!
ileOptimizeExprByTrueFalseDistinction
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGIlNodeLookupTable.
    recoveredValue1 := (recoveredValue0) createIsIleIdentical.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := SGIlAnyStructureVisitor.
    recoveredValue3 := (recoveredValue2) create.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14Stack5 recoveredBlock14Stack6 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) isIleBooleanTypedExpr.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 28] ifFalse: [recoveredBlock14PC := 50].
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack3 := recoveredLocal2.
            recoveredBlock14PC := 36.
        ].
        recoveredBlock14Step = 36 ifTrue: [
            recoveredBlock14Stack4 := recoveredBlock14Arg1.
            recoveredBlock14PC := 37.
        ].
        recoveredBlock14Step = 37 ifTrue: [
            recoveredBlock14Stack5 := [
    0
].
            recoveredBlock14PC := 39.
        ].
        recoveredBlock14Step = 39 ifTrue: [
            recoveredBlock14PC := 45.
        ].
        recoveredBlock14Step = 45 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) at: (recoveredBlock14Stack4) ifAbsent: (recoveredBlock14Stack5).
            recoveredBlock14PC := 47.
        ].
        recoveredBlock14Step = 47 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) + (1).
            recoveredBlock14PC := 48.
        ].
        recoveredBlock14Step = 48 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) at: (recoveredBlock14Stack2) put: (recoveredBlock14Stack3).
            recoveredBlock14PC := 50.
        ].
        recoveredBlock14Step = 50 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue3) visitNode: (self) check: (recoveredValue4).
    recoveredLocal1 := self.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := [:recoveredBlock59Arg1 :recoveredBlock59Arg2 | 
    | recoveredBlock59Local1 recoveredBlock59Local2 recoveredBlock59Stack0 recoveredBlock59Stack1 recoveredBlock59Stack2 recoveredBlock59Stack3 recoveredBlock59Stack4 recoveredBlock59Stack5 recoveredBlock59PC recoveredBlock59Step recoveredBlock59Done recoveredBlock59Result |
    recoveredBlock59Stack0 := self.
    recoveredBlock59PC := 66.
    recoveredBlock59Done := false.
    [recoveredBlock59Done not] whileTrue: [
        recoveredBlock59Step := recoveredBlock59PC.
        recoveredBlock59Step = 66 ifTrue: [
            recoveredBlock59Stack1 := nil.
            recoveredBlock59PC := 67.
        ].
        recoveredBlock59Step = 67 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Arg2.
            recoveredBlock59PC := 68.
        ].
        recoveredBlock59Step = 68 ifTrue: [
            recoveredBlock59Stack3 := 1.
            recoveredBlock59PC := 70.
        ].
        recoveredBlock59Step = 70 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) > (recoveredBlock59Stack3).
            recoveredBlock59PC := 71.
        ].
        recoveredBlock59Step = 71 ifTrue: [
            (recoveredBlock59Stack2) ifTrue: [recoveredBlock59PC := 74] ifFalse: [recoveredBlock59PC := 128].
        ].
        recoveredBlock59Step = 74 ifTrue: [
            recoveredBlock59PC := 75.
        ].
        recoveredBlock59Step = 75 ifTrue: [
            recoveredBlock59Stack1 := SGIlReplaceSystemConstantTransformation.
            recoveredBlock59PC := 77.
        ].
        recoveredBlock59Step = 77 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) new.
            recoveredBlock59PC := 79.
        ].
        recoveredBlock59Step = 79 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Arg1.
            recoveredBlock59PC := 80.
        ].
        recoveredBlock59Step = 80 ifTrue: [
            recoveredBlock59Stack3 := self.
            recoveredBlock59PC := 81.
        ].
        recoveredBlock59Step = 81 ifTrue: [
            recoveredBlock59Stack3 := (recoveredBlock59Stack3) ileBuilder.
            recoveredBlock59PC := 83.
        ].
        recoveredBlock59Step = 83 ifTrue: [
            recoveredBlock59Stack3 := (recoveredBlock59Stack3) literalTrue.
            recoveredBlock59PC := 85.
        ].
        recoveredBlock59Step = 85 ifTrue: [
            recoveredBlock59Stack4 := recoveredLocal1.
            recoveredBlock59PC := 88.
        ].
        recoveredBlock59Step = 88 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) replace: (recoveredBlock59Stack2) with: (recoveredBlock59Stack3) in: (recoveredBlock59Stack4).
            recoveredBlock59PC := 91.
        ].
        recoveredBlock59Step = 91 ifTrue: [
            recoveredBlock59Local2 := recoveredBlock59Stack1.
            recoveredBlock59PC := 92.
        ].
        recoveredBlock59Step = 92 ifTrue: [
            recoveredBlock59Stack1 := SGIlReplaceSystemConstantTransformation.
            recoveredBlock59PC := 94.
        ].
        recoveredBlock59Step = 94 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) new.
            recoveredBlock59PC := 96.
        ].
        recoveredBlock59Step = 96 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Arg1.
            recoveredBlock59PC := 97.
        ].
        recoveredBlock59Step = 97 ifTrue: [
            recoveredBlock59Stack3 := self.
            recoveredBlock59PC := 98.
        ].
        recoveredBlock59Step = 98 ifTrue: [
            recoveredBlock59Stack3 := (recoveredBlock59Stack3) ileBuilder.
            recoveredBlock59PC := 100.
        ].
        recoveredBlock59Step = 100 ifTrue: [
            recoveredBlock59Stack3 := (recoveredBlock59Stack3) literalFalse.
            recoveredBlock59PC := 102.
        ].
        recoveredBlock59Step = 102 ifTrue: [
            recoveredBlock59Stack4 := recoveredLocal1.
            recoveredBlock59PC := 105.
        ].
        recoveredBlock59Step = 105 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) replace: (recoveredBlock59Stack2) with: (recoveredBlock59Stack3) in: (recoveredBlock59Stack4).
            recoveredBlock59PC := 108.
        ].
        recoveredBlock59Step = 108 ifTrue: [
            recoveredBlock59Local1 := recoveredBlock59Stack1.
            recoveredBlock59PC := 109.
        ].
        recoveredBlock59Step = 109 ifTrue: [
            recoveredBlock59Stack1 := nil.
            recoveredBlock59PC := 110.
        ].
        recoveredBlock59Step = 110 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Local2.
            recoveredBlock59PC := 111.
        ].
        recoveredBlock59Step = 111 ifTrue: [
            recoveredBlock59Stack3 := recoveredBlock59Local1.
            recoveredBlock59PC := 112.
        ].
        recoveredBlock59Step = 112 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) isIleIdentical: (recoveredBlock59Stack3).
            recoveredBlock59PC := 114.
        ].
        recoveredBlock59Step = 114 ifTrue: [
            (recoveredBlock59Stack2) ifTrue: [recoveredBlock59PC := 118] ifFalse: [recoveredBlock59PC := 124].
        ].
        recoveredBlock59Step = 118 ifTrue: [
            recoveredBlock59PC := 119.
        ].
        recoveredBlock59Step = 119 ifTrue: [
            recoveredBlock59Stack1 := recoveredBlock59Local2.
            recoveredBlock59PC := 120.
        ].
        recoveredBlock59Step = 120 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Stack1.
            recoveredBlock59PC := 121.
        ].
        recoveredBlock59Step = 121 ifTrue: [
            recoveredLocal1 := recoveredBlock59Stack2.
            recoveredBlock59PC := 124.
        ].
        recoveredBlock59Step = 124 ifTrue: [
            recoveredBlock59Stack2 := nil.
            recoveredBlock59PC := 125.
        ].
        recoveredBlock59Step = 125 ifTrue: [
            recoveredBlock59Stack3 := recoveredBlock59Stack2.
            recoveredBlock59PC := 126.
        ].
        recoveredBlock59Step = 126 ifTrue: [
            recoveredBlock59Local2 := recoveredBlock59Stack3.
            recoveredBlock59PC := 127.
        ].
        recoveredBlock59Step = 127 ifTrue: [
            recoveredBlock59Local1 := recoveredBlock59Stack2.
            recoveredBlock59PC := 128.
        ].
        recoveredBlock59Step = 128 ifTrue: [
            recoveredBlock59Result := recoveredBlock59Stack1.
            recoveredBlock59Done := true.
        ].
    ].
    recoveredBlock59Result
].
    (recoveredValue5) keysAndValuesDo: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

