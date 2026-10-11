"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001ac78; bytecode file offset 0x92209c"
!SGIlAbstractSpecialCall methodsFor: 'recovered'!
ileRoundedName
    ^'Rounded'
! !

"ASDBase.ic method 0x20024ec0; bytecode file offset 0x92209c"
!SGIlAbstractSpecialCall methodsFor: 'recovered'!
additionalArgs
    ^#()
! !

"ASDBase.ic method 0x20035274; bytecode file offset 0x934580"
!SGIlAbstractSpecialCall methodsFor: 'recovered'!
interpolation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) receiver.
    recoveredValue1 := (recoveredValue0) interpolation.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b9fc; bytecode file offset 0x938608"
!SGIlAbstractSpecialCall methodsFor: 'recovered'!
createNoOpArgs: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createWithArgs: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049e9c; bytecode file offset 0x947128"
!SGIlAbstractSpecialCall methodsFor: 'recovered'!
interpolationServiceTable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) serviceFullKey.
    recoveredValue1 := (self) interpolationServiceTable: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004ff50; bytecode file offset 0x94d048"
!SGIlAbstractSpecialCall methodsFor: 'recovered'!
label
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200555e4; bytecode file offset 0x952a9c"
!SGIlAbstractSpecialCall methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) abstractSpecialCall: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006ba28; bytecode file offset 0x96873c"
!SGIlAbstractSpecialCall methodsFor: 'recovered'!
receiver
    | recoveredValue0 |
    recoveredValue0 := receiver.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073be8; bytecode file offset 0x970b34"
!SGIlAbstractSpecialCall methodsFor: 'recovered'!
serviceFullKey
    ^nil
! !

"ASDBase.ic method 0x2007b584; bytecode file offset 0x97c330"
!SGIlAbstractSpecialCall methodsFor: 'recovered'!
isOptimizedMap
    ^false
! !

"ASDBase.ic method 0x20099948; bytecode file offset 0x996224"
!SGIlAbstractSpecialCall methodsFor: 'recovered'!
expandSpecialCall: recoveredArg1 visitor: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) expander.
    recoveredValue3 := (self) expandSpecialCall: (recoveredValue0) on: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a8774; bytecode file offset 0x9a502c"
!SGIlAbstractSpecialCall methodsFor: 'recovered'!
receiver: recoveredArg1
    | recoveredValue0 |
    (self) assertSetterShouldNotBeUsed.
    recoveredValue0 := recoveredArg1.
    receiver := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d56f0; bytecode file offset 0x9d2050"
!SGIlAbstractSpecialCall methodsFor: 'recovered'!
ileWrapperHash
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super ileWrapperHash.
    recoveredValue1 := (self) receiver.
    recoveredValue2 := (recoveredValue1) ileWrapperHash.
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ebc00; bytecode file offset 0x9e84fc"
!SGIlAbstractSpecialCall methodsFor: 'recovered'!
createNoOpReceiver: recoveredArg1 args: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) goalInterval.
    recoveredValue3 := (self) typeOrNil.
    recoveredValue4 := (self) createNoOpReceiver: (recoveredValue0) args: (recoveredValue1) goalInterval: (recoveredValue2) type: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200fc654; bytecode file offset 0x9f8f48"
!SGIlAbstractSpecialCall methodsFor: 'recovered'!
createOpType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) receiver.
    recoveredValue1 := (self) args.
    recoveredValue2 := (self) goalInterval.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) createNoOpReceiver: (recoveredValue0) args: (recoveredValue1) goalInterval: (recoveredValue2) type: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200fc6ac; bytecode file offset 0x9f8f70"
!SGIlAbstractSpecialCall methodsFor: 'recovered'!
createOpGoalInterval: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) receiver.
    recoveredValue1 := (self) args.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) typeOrNil.
    recoveredValue4 := (self) createNoOpReceiver: (recoveredValue0) args: (recoveredValue1) goalInterval: (recoveredValue2) type: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200fd3b4; bytecode file offset 0x9f9c78"
!SGIlAbstractSpecialCall methodsFor: 'recovered'!
createNoOpReceiver: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) args.
    recoveredValue2 := (self) goalInterval.
    recoveredValue3 := (self) typeOrNil.
    recoveredValue4 := (self) createNoOpReceiver: (recoveredValue0) args: (recoveredValue1) goalInterval: (recoveredValue2) type: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201368b0; bytecode file offset 0xa331bc"
!SGIlAbstractSpecialCall methodsFor: 'recovered'!
initializeSource: recoveredArg1 type: recoveredArg2 args: recoveredArg3 goalInterval: recoveredArg4 receiver: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg5.
    receiver := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    super initializeSource: (recoveredValue1) type: (recoveredValue2) args: (recoveredValue3) goalInterval: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20161ffc; bytecode file offset 0xa5e8d4"
!SGIlAbstractSpecialCall methodsFor: 'recovered'!
hasCustomSearchResult
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) generator.
    recoveredValue1 := (recoveredValue0) genContext.
    recoveredValue2 := (recoveredValue1) serviceSettings.
    recoveredValue3 := (self) interpolation.
    recoveredValue4 := (recoveredValue2) interpolationForId: (recoveredValue3).
    recoveredValue5 := (self) type.
    recoveredValue6 := (recoveredValue5) getImplType.
    recoveredValue7 := (recoveredValue4) searchResultForType: (recoveredValue6).
    recoveredValue8 := (recoveredValue7) notEmpty.
    ^recoveredValue8
! !

"ASDBase.ic method 0x201eddb0; bytecode file offset 0xaea68c"
!SGIlAbstractSpecialCall methodsFor: 'recovered'!
interpolationServiceTable: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) generator.
    recoveredValue1 := (recoveredValue0) genContext.
    recoveredValue2 := (recoveredValue1) serviceSettings.
    recoveredValue3 := (self) interpolation.
    recoveredValue4 := (recoveredValue2) interpolationForId: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) mapping.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue6) resetCurrentArguments.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := recoveredArg1.
    (recoveredValue8) currentServiceKey: (recoveredValue9).
    recoveredValue10 := (self) source.
    (recoveredValue7) errorSource: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

"ASDBase.ic method 0x201f482c; bytecode file offset 0xaf10fc"
!SGIlAbstractSpecialCall methodsFor: 'recovered'!
createWithArgs: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredStack4 := (recoveredStack4) goalInterval.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := (recoveredStack5) receiver.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) args: (recoveredStack3) goalInterval: (recoveredStack4) receiver: (recoveredStack5).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020fbe8; bytecode file offset 0xb0c4b8"
!SGIlAbstractSpecialCall methodsFor: 'recovered'!
expandSpecialCall: recoveredArg1 on: recoveredArg2
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
    recoveredBlock12Value0 := (self) class.
    recoveredBlock12Value1 := (recoveredBlock12Value0) name.
    recoveredBlock12Value2 := (recoveredBlock12Value1) asString.
    recoveredBlock12Value3 := ('Missing method for Special Call ') , (recoveredBlock12Value2).
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

"ASDBase.ic method 0x2023e5b4; bytecode file offset 0xb3ae84"
!SGIlAbstractSpecialCall methodsFor: 'recovered'!
ileMaxSizeRuntimeCosts: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isCgFixedDimension.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileRuntimeCostsOfConstant.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgVariantDimension.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileRuntimeCostsOfExpr.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgVariableDimension.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileRuntimeCostsOfExpr.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := super ileRuntimeCosts.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b60dc; bytecode file offset 0xbb29ac"
!SGIlAbstractSpecialCall methodsFor: 'recovered'!
createNoOpReceiver: recoveredArg1 args: recoveredArg2 goalInterval: recoveredArg3 type: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 10].
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
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 34].
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
            recoveredStack2 := (recoveredStack2) goalInterval.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) args: (recoveredStack3) goalInterval: (recoveredStack4) receiver: (recoveredStack5).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203240d0; bytecode file offset 0xc209c8"
!SGIlAbstractSpecialCall methodsFor: 'recovered'!
addServiceArgs: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) serviceFullKey.
    (recoveredValue1) currentServiceKey: (recoveredValue2).
    recoveredValue3 := (self) source.
    (recoveredValue0) errorSource: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) currentArguments.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := (self) receiver.
    recoveredValue8 := (recoveredValue7) errLabel.
    recoveredValue9 := (recoveredValue8) , ('.').
    recoveredValue10 := (self) label.
    recoveredValue11 := (recoveredValue9) , (recoveredValue10).
    recoveredValue12 := (recoveredValue11) , (' ').
    recoveredValue13 := (self) generalExpansionStrategy.
    recoveredValue14 := (recoveredValue13) commentMarker: (self).
    recoveredValue15 := (recoveredValue12) , (recoveredValue14).
    recoveredValue16 := (recoveredValue15) asANSICString.
    recoveredValue17 := ('"') , (recoveredValue16).
    recoveredValue18 := (recoveredValue17) , ('"').
    (recoveredValue6) at: ('l') put: (recoveredValue18).
    ^recoveredValue5
! !

