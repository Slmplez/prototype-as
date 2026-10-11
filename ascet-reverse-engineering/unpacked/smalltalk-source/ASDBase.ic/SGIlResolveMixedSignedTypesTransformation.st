"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000b33c; bytecode file offset 0x908be4"
!SGIlResolveMixedSignedTypesTransformation methodsFor: 'recovered'!
isResolving
    | recoveredValue0 |
    recoveredValue0 := (self) isIntContext.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20147a5c; bytecode file offset 0xa4431c"
!SGIlResolveMixedSignedTypesTransformation methodsFor: 'recovered'!
unionRepresentableLeftExpr: recoveredArg1 rightExpr: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
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
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) union: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) representableInDoubleBitSize.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2027c85c; bytecode file offset 0xb7912c"
!SGIlResolveMixedSignedTypesTransformation methodsFor: 'recovered'!
mux: recoveredArg1 leftExpr: recoveredArg2 rightExpr: recoveredArg3 type: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizationFactory.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) constantFoldingScalarVisitor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEnabled.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) artificialMuxLeftExpr: (recoveredStack1) rightExpr: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := SGIlOptimizeConstFoldingScalar.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) artificialMuxLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203303ac; bytecode file offset 0xc2cc8c"
!SGIlResolveMixedSignedTypesTransformation methodsFor: 'recovered'!
relOpRightSigned: recoveredArg1 left: recoveredArg2 right: recoveredArg3 transformed: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempAssignExpressions.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) asIleCopy.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempAssignExpressions.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) asIleCopy.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) commaExpr: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033041c; bytecode file offset 0xc2ccfc"
!SGIlResolveMixedSignedTypesTransformation methodsFor: 'recovered'!
relOpLeftSigned: recoveredArg1 left: recoveredArg2 right: recoveredArg3 transformed: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempAssignExpressions.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) asIleCopy.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) tempAssignExpressions.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) asIleCopy.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) commaExpr: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20403104; bytecode file offset 0xcffa08"
!SGIlResolveMixedSignedTypesTransformation methodsFor: 'recovered'!
anyExpr: recoveredArg1
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
            recoveredStack0 := super anyExpr: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRuntime.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 93] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := SGIlAnyStructureVisitor.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21Stack4 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := nil.
            recoveredBlock21PC := 29.
        ].
        recoveredBlock21Step = 29 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 30.
        ].
        recoveredBlock21Step = 30 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) isIleExpr.
            recoveredBlock21PC := 32.
        ].
        recoveredBlock21Step = 32 ifTrue: [
            (recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 36] ifFalse: [recoveredBlock21PC := 90].
        ].
        recoveredBlock21Step = 36 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 37.
        ].
        recoveredBlock21Step = 37 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) isIleDivisionExpr.
            recoveredBlock21PC := 39.
        ].
        recoveredBlock21Step = 39 ifTrue: [
            (recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 42] ifFalse: [recoveredBlock21PC := 90].
        ].
        recoveredBlock21Step = 42 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 43.
        ].
        recoveredBlock21Step = 43 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) isIleRepresentableFraction.
            recoveredBlock21PC := 45.
        ].
        recoveredBlock21Step = 45 ifTrue: [
            (recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 90] ifFalse: [recoveredBlock21PC := 48].
        ].
        recoveredBlock21Step = 48 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 49.
        ].
        recoveredBlock21Step = 49 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) leftExpr.
            recoveredBlock21PC := 51.
        ].
        recoveredBlock21Step = 51 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) interval.
            recoveredBlock21PC := 53.
        ].
        recoveredBlock21Step = 53 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) left.
            recoveredBlock21PC := 55.
        ].
        recoveredBlock21Step = 55 ifTrue: [
            recoveredBlock21Stack3 := -1.
            recoveredBlock21PC := 57.
        ].
        recoveredBlock21Step = 57 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) equals: (recoveredBlock21Stack3).
            recoveredBlock21PC := 59.
        ].
        recoveredBlock21Step = 59 ifTrue: [
            (recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 62] ifFalse: [recoveredBlock21PC := 90].
        ].
        recoveredBlock21Step = 62 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 63.
        ].
        recoveredBlock21Step = 63 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) rightExpr.
            recoveredBlock21PC := 65.
        ].
        recoveredBlock21Step = 65 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) interval.
            recoveredBlock21PC := 67.
        ].
        recoveredBlock21Step = 67 ifTrue: [
            recoveredBlock21Stack3 := self.
            recoveredBlock21PC := 68.
        ].
        recoveredBlock21Step = 68 ifTrue: [
            recoveredBlock21Stack3 := (recoveredBlock21Stack3) generator.
            recoveredBlock21PC := 70.
        ].
        recoveredBlock21Step = 70 ifTrue: [
            recoveredBlock21Stack3 := (recoveredBlock21Stack3) maxRepresentableSigned.
            recoveredBlock21PC := 72.
        ].
        recoveredBlock21Step = 72 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) > (recoveredBlock21Stack3).
            recoveredBlock21PC := 73.
        ].
        recoveredBlock21Step = 73 ifTrue: [
            (recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 76] ifFalse: [recoveredBlock21PC := 90].
        ].
        recoveredBlock21Step = 76 ifTrue: [
            recoveredBlock21PC := 77.
        ].
        recoveredBlock21Step = 77 ifTrue: [
            recoveredBlock21Stack1 := self.
            recoveredBlock21PC := 78.
        ].
        recoveredBlock21Step = 78 ifTrue: [
            recoveredBlock21Stack2 := [
    false
].
            recoveredBlock21PC := 80.
        ].
        recoveredBlock21Step = 80 ifTrue: [
            recoveredBlock21PC := 86.
        ].
        recoveredBlock21Step = 86 ifTrue: [
            recoveredBlock21Stack3 := 'Mixed signed types visitor should have resolved expression.'.
            recoveredBlock21PC := 88.
        ].
        recoveredBlock21Step = 88 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) ileAssert: (recoveredBlock21Stack2) message: (recoveredBlock21Stack3).
            recoveredBlock21PC := 90.
        ].
        recoveredBlock21Step = 90 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) visitNode: (recoveredStack1) check: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20426138; bytecode file offset 0xd22b24"
!SGIlResolveMixedSignedTypesTransformation methodsFor: 'recovered'!
lessEqualExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expressionContext.
    recoveredValue2 := [
    | recoveredBlock8Local1 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
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
            recoveredBlock8Stack0 := super binaryExpr: (recoveredBlock8Stack1).
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack0.
            recoveredBlock8PC := 24.
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) isResolving.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            (recoveredBlock8Stack0) ifTrue: [recoveredBlock8PC := 30] ifFalse: [recoveredBlock8PC := 96].
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Local1.
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) isIleLessEqualExpr.
            recoveredBlock8PC := 35.
        ].
        recoveredBlock8Step = 35 ifTrue: [
            (recoveredBlock8Stack0) ifTrue: [recoveredBlock8PC := 38] ifFalse: [recoveredBlock8PC := 86].
        ].
        recoveredBlock8Step = 38 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 39.
        ].
        recoveredBlock8Step = 39 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local1.
            recoveredBlock8PC := 42.
        ].
        recoveredBlock8Step = 42 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) leftExpr.
            recoveredBlock8PC := 44.
        ].
        recoveredBlock8Step = 44 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local1.
            recoveredBlock8PC := 47.
        ].
        recoveredBlock8Step = 47 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) rightExpr.
            recoveredBlock8PC := 49.
        ].
        recoveredBlock8Step = 49 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) unionRepresentableLeftExpr: (recoveredBlock8Stack1) rightExpr: (recoveredBlock8Stack2).
            recoveredBlock8PC := 51.
        ].
        recoveredBlock8Step = 51 ifTrue: [
            (recoveredBlock8Stack0) ifTrue: [recoveredBlock8PC := 54] ifFalse: [recoveredBlock8PC := 60].
        ].
        recoveredBlock8Step = 54 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Local1.
            recoveredBlock8PC := 57.
        ].
        recoveredBlock8Step = 57 ifTrue: [
            recoveredBlock8PC := 82.
        ].
        recoveredBlock8Step = 60 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 61.
        ].
        recoveredBlock8Step = 61 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) ileBuilder.
            recoveredBlock8PC := 63.
        ].
        recoveredBlock8Step = 63 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 66.
        ].
        recoveredBlock8Step = 66 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) source.
            recoveredBlock8PC := 68.
        ].
        recoveredBlock8Step = 68 ifTrue: [
            recoveredBlock8Stack2 := [
    | recoveredBlock8Block68Value0 recoveredBlock8Block68Value1 |
    recoveredBlock8Block68Value0 := recoveredBlock8Local1.
    recoveredBlock8Block68Value1 := (self) lessOpNotRepresentableExpr: (recoveredBlock8Block68Value0).
    recoveredBlock8Block68Value1
].
            recoveredBlock8PC := 80.
        ].
        recoveredBlock8Step = 80 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) useSource: (recoveredBlock8Stack1) for: (recoveredBlock8Stack2).
            recoveredBlock8PC := 82.
        ].
        recoveredBlock8Step = 82 ifTrue: [
            recoveredBlock8PC := 92.
        ].
        recoveredBlock8Step = 86 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Local1.
            recoveredBlock8PC := 89.
        ].
        recoveredBlock8Step = 89 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 90.
        ].
        recoveredBlock8Step = 90 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) ileAcceptNodeVisitor: (recoveredBlock8Stack1).
            recoveredBlock8PC := 92.
        ].
        recoveredBlock8Step = 92 ifTrue: [
            recoveredBlock8PC := 99.
        ].
        recoveredBlock8Step = 96 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Local1.
            recoveredBlock8PC := 99.
        ].
        recoveredBlock8Step = 99 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack0.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    recoveredValue3 := (recoveredValue1) executeInContext: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20426178; bytecode file offset 0xd22b24"
!SGIlResolveMixedSignedTypesTransformation methodsFor: 'recovered'!
lessExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expressionContext.
    recoveredValue2 := [
    | recoveredBlock8Local1 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
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
            recoveredBlock8Stack0 := super binaryExpr: (recoveredBlock8Stack1).
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack0.
            recoveredBlock8PC := 24.
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) isResolving.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            (recoveredBlock8Stack0) ifTrue: [recoveredBlock8PC := 30] ifFalse: [recoveredBlock8PC := 96].
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Local1.
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) isIleLessExpr.
            recoveredBlock8PC := 35.
        ].
        recoveredBlock8Step = 35 ifTrue: [
            (recoveredBlock8Stack0) ifTrue: [recoveredBlock8PC := 38] ifFalse: [recoveredBlock8PC := 86].
        ].
        recoveredBlock8Step = 38 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 39.
        ].
        recoveredBlock8Step = 39 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local1.
            recoveredBlock8PC := 42.
        ].
        recoveredBlock8Step = 42 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) leftExpr.
            recoveredBlock8PC := 44.
        ].
        recoveredBlock8Step = 44 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local1.
            recoveredBlock8PC := 47.
        ].
        recoveredBlock8Step = 47 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) rightExpr.
            recoveredBlock8PC := 49.
        ].
        recoveredBlock8Step = 49 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) unionRepresentableLeftExpr: (recoveredBlock8Stack1) rightExpr: (recoveredBlock8Stack2).
            recoveredBlock8PC := 51.
        ].
        recoveredBlock8Step = 51 ifTrue: [
            (recoveredBlock8Stack0) ifTrue: [recoveredBlock8PC := 54] ifFalse: [recoveredBlock8PC := 60].
        ].
        recoveredBlock8Step = 54 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Local1.
            recoveredBlock8PC := 57.
        ].
        recoveredBlock8Step = 57 ifTrue: [
            recoveredBlock8PC := 82.
        ].
        recoveredBlock8Step = 60 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 61.
        ].
        recoveredBlock8Step = 61 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) ileBuilder.
            recoveredBlock8PC := 63.
        ].
        recoveredBlock8Step = 63 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 66.
        ].
        recoveredBlock8Step = 66 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) source.
            recoveredBlock8PC := 68.
        ].
        recoveredBlock8Step = 68 ifTrue: [
            recoveredBlock8Stack2 := [
    | recoveredBlock8Block68Value0 recoveredBlock8Block68Value1 |
    recoveredBlock8Block68Value0 := recoveredBlock8Local1.
    recoveredBlock8Block68Value1 := (self) lessOpNotRepresentableExpr: (recoveredBlock8Block68Value0).
    recoveredBlock8Block68Value1
].
            recoveredBlock8PC := 80.
        ].
        recoveredBlock8Step = 80 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) useSource: (recoveredBlock8Stack1) for: (recoveredBlock8Stack2).
            recoveredBlock8PC := 82.
        ].
        recoveredBlock8Step = 82 ifTrue: [
            recoveredBlock8PC := 92.
        ].
        recoveredBlock8Step = 86 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Local1.
            recoveredBlock8PC := 89.
        ].
        recoveredBlock8Step = 89 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 90.
        ].
        recoveredBlock8Step = 90 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) ileAcceptNodeVisitor: (recoveredBlock8Stack1).
            recoveredBlock8PC := 92.
        ].
        recoveredBlock8Step = 92 ifTrue: [
            recoveredBlock8PC := 99.
        ].
        recoveredBlock8Step = 96 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Local1.
            recoveredBlock8PC := 99.
        ].
        recoveredBlock8Step = 99 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack0.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    recoveredValue3 := (recoveredValue1) executeInContext: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x204261b8; bytecode file offset 0xd22b24"
!SGIlResolveMixedSignedTypesTransformation methodsFor: 'recovered'!
equalExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expressionContext.
    recoveredValue2 := [
    | recoveredBlock8Local1 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
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
            recoveredBlock8Stack0 := super binaryExpr: (recoveredBlock8Stack1).
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack0.
            recoveredBlock8PC := 24.
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) isResolving.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            (recoveredBlock8Stack0) ifTrue: [recoveredBlock8PC := 30] ifFalse: [recoveredBlock8PC := 96].
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Local1.
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) isIleEqualExpr.
            recoveredBlock8PC := 35.
        ].
        recoveredBlock8Step = 35 ifTrue: [
            (recoveredBlock8Stack0) ifTrue: [recoveredBlock8PC := 38] ifFalse: [recoveredBlock8PC := 86].
        ].
        recoveredBlock8Step = 38 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 39.
        ].
        recoveredBlock8Step = 39 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local1.
            recoveredBlock8PC := 42.
        ].
        recoveredBlock8Step = 42 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) leftExpr.
            recoveredBlock8PC := 44.
        ].
        recoveredBlock8Step = 44 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local1.
            recoveredBlock8PC := 47.
        ].
        recoveredBlock8Step = 47 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) rightExpr.
            recoveredBlock8PC := 49.
        ].
        recoveredBlock8Step = 49 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) unionRepresentableLeftExpr: (recoveredBlock8Stack1) rightExpr: (recoveredBlock8Stack2).
            recoveredBlock8PC := 51.
        ].
        recoveredBlock8Step = 51 ifTrue: [
            (recoveredBlock8Stack0) ifTrue: [recoveredBlock8PC := 54] ifFalse: [recoveredBlock8PC := 60].
        ].
        recoveredBlock8Step = 54 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Local1.
            recoveredBlock8PC := 57.
        ].
        recoveredBlock8Step = 57 ifTrue: [
            recoveredBlock8PC := 82.
        ].
        recoveredBlock8Step = 60 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 61.
        ].
        recoveredBlock8Step = 61 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) ileBuilder.
            recoveredBlock8PC := 63.
        ].
        recoveredBlock8Step = 63 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 66.
        ].
        recoveredBlock8Step = 66 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) source.
            recoveredBlock8PC := 68.
        ].
        recoveredBlock8Step = 68 ifTrue: [
            recoveredBlock8Stack2 := [
    | recoveredBlock8Block68Value0 recoveredBlock8Block68Value1 |
    recoveredBlock8Block68Value0 := recoveredBlock8Local1.
    recoveredBlock8Block68Value1 := (self) equalOpNotRepresentableExpr: (recoveredBlock8Block68Value0).
    recoveredBlock8Block68Value1
].
            recoveredBlock8PC := 80.
        ].
        recoveredBlock8Step = 80 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) useSource: (recoveredBlock8Stack1) for: (recoveredBlock8Stack2).
            recoveredBlock8PC := 82.
        ].
        recoveredBlock8Step = 82 ifTrue: [
            recoveredBlock8PC := 92.
        ].
        recoveredBlock8Step = 86 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Local1.
            recoveredBlock8PC := 89.
        ].
        recoveredBlock8Step = 89 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 90.
        ].
        recoveredBlock8Step = 90 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) ileAcceptNodeVisitor: (recoveredBlock8Stack1).
            recoveredBlock8PC := 92.
        ].
        recoveredBlock8Step = 92 ifTrue: [
            recoveredBlock8PC := 99.
        ].
        recoveredBlock8Step = 96 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Local1.
            recoveredBlock8PC := 99.
        ].
        recoveredBlock8Step = 99 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack0.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    recoveredValue3 := (recoveredValue1) executeInContext: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x204261f8; bytecode file offset 0xd22b24"
!SGIlResolveMixedSignedTypesTransformation methodsFor: 'recovered'!
greaterExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expressionContext.
    recoveredValue2 := [
    | recoveredBlock8Local1 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
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
            recoveredBlock8Stack0 := super binaryExpr: (recoveredBlock8Stack1).
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack0.
            recoveredBlock8PC := 24.
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) isResolving.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            (recoveredBlock8Stack0) ifTrue: [recoveredBlock8PC := 30] ifFalse: [recoveredBlock8PC := 96].
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Local1.
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) isIleGreaterExpr.
            recoveredBlock8PC := 35.
        ].
        recoveredBlock8Step = 35 ifTrue: [
            (recoveredBlock8Stack0) ifTrue: [recoveredBlock8PC := 38] ifFalse: [recoveredBlock8PC := 86].
        ].
        recoveredBlock8Step = 38 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 39.
        ].
        recoveredBlock8Step = 39 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local1.
            recoveredBlock8PC := 42.
        ].
        recoveredBlock8Step = 42 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) leftExpr.
            recoveredBlock8PC := 44.
        ].
        recoveredBlock8Step = 44 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local1.
            recoveredBlock8PC := 47.
        ].
        recoveredBlock8Step = 47 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) rightExpr.
            recoveredBlock8PC := 49.
        ].
        recoveredBlock8Step = 49 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) unionRepresentableLeftExpr: (recoveredBlock8Stack1) rightExpr: (recoveredBlock8Stack2).
            recoveredBlock8PC := 51.
        ].
        recoveredBlock8Step = 51 ifTrue: [
            (recoveredBlock8Stack0) ifTrue: [recoveredBlock8PC := 54] ifFalse: [recoveredBlock8PC := 60].
        ].
        recoveredBlock8Step = 54 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Local1.
            recoveredBlock8PC := 57.
        ].
        recoveredBlock8Step = 57 ifTrue: [
            recoveredBlock8PC := 82.
        ].
        recoveredBlock8Step = 60 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 61.
        ].
        recoveredBlock8Step = 61 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) ileBuilder.
            recoveredBlock8PC := 63.
        ].
        recoveredBlock8Step = 63 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 66.
        ].
        recoveredBlock8Step = 66 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) source.
            recoveredBlock8PC := 68.
        ].
        recoveredBlock8Step = 68 ifTrue: [
            recoveredBlock8Stack2 := [
    | recoveredBlock8Block68Value0 recoveredBlock8Block68Value1 |
    recoveredBlock8Block68Value0 := recoveredBlock8Local1.
    recoveredBlock8Block68Value1 := (self) greaterOpNotRepresentableExpr: (recoveredBlock8Block68Value0).
    recoveredBlock8Block68Value1
].
            recoveredBlock8PC := 80.
        ].
        recoveredBlock8Step = 80 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) useSource: (recoveredBlock8Stack1) for: (recoveredBlock8Stack2).
            recoveredBlock8PC := 82.
        ].
        recoveredBlock8Step = 82 ifTrue: [
            recoveredBlock8PC := 92.
        ].
        recoveredBlock8Step = 86 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Local1.
            recoveredBlock8PC := 89.
        ].
        recoveredBlock8Step = 89 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 90.
        ].
        recoveredBlock8Step = 90 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) ileAcceptNodeVisitor: (recoveredBlock8Stack1).
            recoveredBlock8PC := 92.
        ].
        recoveredBlock8Step = 92 ifTrue: [
            recoveredBlock8PC := 99.
        ].
        recoveredBlock8Step = 96 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Local1.
            recoveredBlock8PC := 99.
        ].
        recoveredBlock8Step = 99 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack0.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    recoveredValue3 := (recoveredValue1) executeInContext: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20426238; bytecode file offset 0xd22b24"
!SGIlResolveMixedSignedTypesTransformation methodsFor: 'recovered'!
greaterEqualExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expressionContext.
    recoveredValue2 := [
    | recoveredBlock8Local1 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
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
            recoveredBlock8Stack0 := super binaryExpr: (recoveredBlock8Stack1).
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack0.
            recoveredBlock8PC := 24.
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) isResolving.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            (recoveredBlock8Stack0) ifTrue: [recoveredBlock8PC := 30] ifFalse: [recoveredBlock8PC := 96].
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Local1.
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) isIleGreaterEqualExpr.
            recoveredBlock8PC := 35.
        ].
        recoveredBlock8Step = 35 ifTrue: [
            (recoveredBlock8Stack0) ifTrue: [recoveredBlock8PC := 38] ifFalse: [recoveredBlock8PC := 86].
        ].
        recoveredBlock8Step = 38 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 39.
        ].
        recoveredBlock8Step = 39 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local1.
            recoveredBlock8PC := 42.
        ].
        recoveredBlock8Step = 42 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) leftExpr.
            recoveredBlock8PC := 44.
        ].
        recoveredBlock8Step = 44 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local1.
            recoveredBlock8PC := 47.
        ].
        recoveredBlock8Step = 47 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) rightExpr.
            recoveredBlock8PC := 49.
        ].
        recoveredBlock8Step = 49 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) unionRepresentableLeftExpr: (recoveredBlock8Stack1) rightExpr: (recoveredBlock8Stack2).
            recoveredBlock8PC := 51.
        ].
        recoveredBlock8Step = 51 ifTrue: [
            (recoveredBlock8Stack0) ifTrue: [recoveredBlock8PC := 54] ifFalse: [recoveredBlock8PC := 60].
        ].
        recoveredBlock8Step = 54 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Local1.
            recoveredBlock8PC := 57.
        ].
        recoveredBlock8Step = 57 ifTrue: [
            recoveredBlock8PC := 82.
        ].
        recoveredBlock8Step = 60 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 61.
        ].
        recoveredBlock8Step = 61 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) ileBuilder.
            recoveredBlock8PC := 63.
        ].
        recoveredBlock8Step = 63 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 66.
        ].
        recoveredBlock8Step = 66 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) source.
            recoveredBlock8PC := 68.
        ].
        recoveredBlock8Step = 68 ifTrue: [
            recoveredBlock8Stack2 := [
    | recoveredBlock8Block68Value0 recoveredBlock8Block68Value1 |
    recoveredBlock8Block68Value0 := recoveredBlock8Local1.
    recoveredBlock8Block68Value1 := (self) greaterOpNotRepresentableExpr: (recoveredBlock8Block68Value0).
    recoveredBlock8Block68Value1
].
            recoveredBlock8PC := 80.
        ].
        recoveredBlock8Step = 80 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) useSource: (recoveredBlock8Stack1) for: (recoveredBlock8Stack2).
            recoveredBlock8PC := 82.
        ].
        recoveredBlock8Step = 82 ifTrue: [
            recoveredBlock8PC := 92.
        ].
        recoveredBlock8Step = 86 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Local1.
            recoveredBlock8PC := 89.
        ].
        recoveredBlock8Step = 89 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 90.
        ].
        recoveredBlock8Step = 90 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) ileAcceptNodeVisitor: (recoveredBlock8Stack1).
            recoveredBlock8PC := 92.
        ].
        recoveredBlock8Step = 92 ifTrue: [
            recoveredBlock8PC := 99.
        ].
        recoveredBlock8Step = 96 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Local1.
            recoveredBlock8PC := 99.
        ].
        recoveredBlock8Step = 99 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack0.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    recoveredValue3 := (recoveredValue1) executeInContext: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2043e994; bytecode file offset 0xd3b288"
!SGIlResolveMixedSignedTypesTransformation methodsFor: 'recovered'!
notEqualExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expressionContext.
    recoveredValue2 := [
    | recoveredBlock8Local1 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
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
            recoveredBlock8Stack0 := super binaryExpr: (recoveredBlock8Stack1).
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack0.
            recoveredBlock8PC := 24.
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) isResolving.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            (recoveredBlock8Stack0) ifTrue: [recoveredBlock8PC := 30] ifFalse: [recoveredBlock8PC := 102].
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Local1.
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) isIleNotEqualExpr.
            recoveredBlock8PC := 35.
        ].
        recoveredBlock8Step = 35 ifTrue: [
            (recoveredBlock8Stack0) ifTrue: [recoveredBlock8PC := 38] ifFalse: [recoveredBlock8PC := 92].
        ].
        recoveredBlock8Step = 38 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 39.
        ].
        recoveredBlock8Step = 39 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local1.
            recoveredBlock8PC := 42.
        ].
        recoveredBlock8Step = 42 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) leftExpr.
            recoveredBlock8PC := 44.
        ].
        recoveredBlock8Step = 44 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local1.
            recoveredBlock8PC := 47.
        ].
        recoveredBlock8Step = 47 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) rightExpr.
            recoveredBlock8PC := 49.
        ].
        recoveredBlock8Step = 49 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) unionRepresentableLeftExpr: (recoveredBlock8Stack1) rightExpr: (recoveredBlock8Stack2).
            recoveredBlock8PC := 51.
        ].
        recoveredBlock8Step = 51 ifTrue: [
            (recoveredBlock8Stack0) ifTrue: [recoveredBlock8PC := 54] ifFalse: [recoveredBlock8PC := 60].
        ].
        recoveredBlock8Step = 54 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Local1.
            recoveredBlock8PC := 57.
        ].
        recoveredBlock8Step = 57 ifTrue: [
            recoveredBlock8PC := 88.
        ].
        recoveredBlock8Step = 60 ifTrue: [
            recoveredBlock8Stack0 := 'Rl'.
            recoveredBlock8PC := 62.
        ].
        recoveredBlock8Step = 62 ifTrue: [
            recoveredBlock8Stack1 := 'Call_63604'.
            recoveredBlock8PC := 64.
        ].
        recoveredBlock8Step = 64 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) == (recoveredBlock8Stack1).
            recoveredBlock8PC := 65.
        ].
        recoveredBlock8Step = 65 ifTrue: [
            recoveredBlock8PC := 66.
        ].
        recoveredBlock8Step = 66 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 67.
        ].
        recoveredBlock8Step = 67 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) ileBuilder.
            recoveredBlock8PC := 69.
        ].
        recoveredBlock8Step = 69 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 72.
        ].
        recoveredBlock8Step = 72 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) source.
            recoveredBlock8PC := 74.
        ].
        recoveredBlock8Step = 74 ifTrue: [
            recoveredBlock8Stack2 := [
    | recoveredBlock8Block74Value0 recoveredBlock8Block74Value1 |
    recoveredBlock8Block74Value0 := recoveredBlock8Local1.
    recoveredBlock8Block74Value1 := (self) notEqualOpNotRepresentableExpr: (recoveredBlock8Block74Value0).
    recoveredBlock8Block74Value1
].
            recoveredBlock8PC := 86.
        ].
        recoveredBlock8Step = 86 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) useSource: (recoveredBlock8Stack1) for: (recoveredBlock8Stack2).
            recoveredBlock8PC := 88.
        ].
        recoveredBlock8Step = 88 ifTrue: [
            recoveredBlock8PC := 98.
        ].
        recoveredBlock8Step = 92 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Local1.
            recoveredBlock8PC := 95.
        ].
        recoveredBlock8Step = 95 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 96.
        ].
        recoveredBlock8Step = 96 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) ileAcceptNodeVisitor: (recoveredBlock8Stack1).
            recoveredBlock8PC := 98.
        ].
        recoveredBlock8Step = 98 ifTrue: [
            recoveredBlock8PC := 105.
        ].
        recoveredBlock8Step = 102 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Local1.
            recoveredBlock8PC := 105.
        ].
        recoveredBlock8Step = 105 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack0.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    recoveredValue3 := (recoveredValue1) executeInContext: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x204ab5c4; bytecode file offset 0xda7ec8"
!SGIlResolveMixedSignedTypesTransformation methodsFor: 'recovered'!
lessOpNotRepresentableExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleCopy.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleSideEffectFreeBufferedExpr.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleCopy.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleSideEffectFreeExpr.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := RBInterval.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack6 := (recoveredStack6) rightExpr.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack6 := (recoveredStack6) interval.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack6 := (recoveredStack6) right.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := (recoveredStack4) left: (recoveredStack5) right: (recoveredStack6).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) decorateGoalInterval: (recoveredStack4).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) literalZero.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := (recoveredStack3) expressionContext.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) lessThan: (recoveredStack2) expressionContext: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) andExpr: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) relOpRightSigned: (recoveredStack2) left: (recoveredStack3) right: (recoveredStack4) transformed: (recoveredStack5).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 139].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleCopy.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleSideEffectFreeBufferedExpr.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleCopy.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleSideEffectFreeExpr.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := RBInterval.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack5 := (recoveredStack5) leftExpr.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack5 := (recoveredStack5) interval.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack5 := (recoveredStack5) right.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := (recoveredStack3) left: (recoveredStack4) right: (recoveredStack5).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := (recoveredStack2) decorateGoalInterval: (recoveredStack3).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := (recoveredStack2) literalZero.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := (recoveredStack3) expressionContext.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) lessThan: (recoveredStack2) expressionContext: (recoveredStack3).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) orExpr: (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) relOpLeftSigned: (recoveredStack2) left: (recoveredStack3) right: (recoveredStack4) transformed: (recoveredStack5).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204ba1c8; bytecode file offset 0xdb6ac8"
!SGIlResolveMixedSignedTypesTransformation methodsFor: 'recovered'!
muxExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := super muxExpr: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleArithmeticExpr.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isResolving.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleMuxExpr.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntegerVariant.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 143].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsIntegerCode.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 143].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) expressionContext.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLimitedDiscreteContext.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 143] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) unionRepresentableLeftExpr: (recoveredStack1) rightExpr: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 143] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock83Value0 recoveredBlock83Value1 recoveredBlock83Value2 recoveredBlock83Value3 recoveredBlock83Value4 |
    recoveredBlock83Value0 := recoveredLocal1.
    recoveredBlock83Value1 := (recoveredBlock83Value0) leftExpr.
    recoveredBlock83Value2 := recoveredLocal1.
    recoveredBlock83Value3 := (recoveredBlock83Value2) rightExpr.
    recoveredBlock83Value4 := (self) unionRepresentableLeftExpr: (recoveredBlock83Value1) rightExpr: (recoveredBlock83Value3).
    recoveredBlock83Value4
].
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := [
    'Mux operands have no common representable interval.'
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) decorateGoalInterval: (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := (recoveredStack3) interval.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := (recoveredStack2) decorateGoalInterval: (recoveredStack3).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOpLeftExpr: (recoveredStack1) rightExpr: (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204cd864; bytecode file offset 0xdca16c"
!SGIlResolveMixedSignedTypesTransformation methodsFor: 'recovered'!
notEqualOpNotRepresentableExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Rl'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_63604'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 81].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleCopy.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleSideEffectFreeBufferedExpr.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleCopy.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleSideEffectFreeExpr.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := RBInterval.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack6 := (recoveredStack6) rightExpr.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack6 := (recoveredStack6) interval.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack6 := (recoveredStack6) right.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := (recoveredStack4) left: (recoveredStack5) right: (recoveredStack6).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) decorateGoalInterval: (recoveredStack4).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) literalZero.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) expressionContext.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) lessThan: (recoveredStack2) expressionContext: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) orExpr: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) relOpRightSigned: (recoveredStack2) left: (recoveredStack3) right: (recoveredStack4) transformed: (recoveredStack5).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleCopy.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleSideEffectFreeBufferedExpr.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleCopy.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleSideEffectFreeExpr.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := RBInterval.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack5 := (recoveredStack5) leftExpr.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack5 := (recoveredStack5) interval.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack5 := (recoveredStack5) right.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := (recoveredStack3) left: (recoveredStack4) right: (recoveredStack5).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := (recoveredStack2) decorateGoalInterval: (recoveredStack3).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := (recoveredStack2) literalZero.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := (recoveredStack3) expressionContext.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) lessThan: (recoveredStack2) expressionContext: (recoveredStack3).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) orExpr: (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) relOpLeftSigned: (recoveredStack2) left: (recoveredStack3) right: (recoveredStack4) transformed: (recoveredStack5).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204d2b6c; bytecode file offset 0xdcf474"
!SGIlResolveMixedSignedTypesTransformation methodsFor: 'recovered'!
greaterOpNotRepresentableExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleCopy.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleSideEffectFreeBufferedExpr.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleCopy.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleSideEffectFreeExpr.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := RBInterval.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack6 := (recoveredStack6) rightExpr.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack6 := (recoveredStack6) interval.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack6 := (recoveredStack6) right.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := (recoveredStack4) left: (recoveredStack5) right: (recoveredStack6).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) decorateGoalInterval: (recoveredStack4).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) literalZero.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) expressionContext.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) lessThan: (recoveredStack2) expressionContext: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) orExpr: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) relOpRightSigned: (recoveredStack2) left: (recoveredStack3) right: (recoveredStack4) transformed: (recoveredStack5).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 153].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleCopy.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleSideEffectFreeBufferedExpr.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleCopy.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleSideEffectFreeExpr.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := RBInterval.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack5 := (recoveredStack5) leftExpr.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack5 := (recoveredStack5) interval.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack5 := (recoveredStack5) right.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := (recoveredStack3) left: (recoveredStack4) right: (recoveredStack5).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := (recoveredStack2) decorateGoalInterval: (recoveredStack3).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := (recoveredStack2) literalZero.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := (recoveredStack3) expressionContext.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) greaterEqualThan: (recoveredStack2) expressionContext: (recoveredStack3).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) andExpr: (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) relOpLeftSigned: (recoveredStack2) left: (recoveredStack3) right: (recoveredStack4) transformed: (recoveredStack5).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204d2c64; bytecode file offset 0xdcf564"
!SGIlResolveMixedSignedTypesTransformation methodsFor: 'recovered'!
equalOpNotRepresentableExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleCopy.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleSideEffectFreeBufferedExpr.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleCopy.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleSideEffectFreeExpr.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := RBInterval.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack6 := (recoveredStack6) rightExpr.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack6 := (recoveredStack6) interval.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack6 := (recoveredStack6) right.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := (recoveredStack4) left: (recoveredStack5) right: (recoveredStack6).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) decorateGoalInterval: (recoveredStack4).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) literalZero.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) expressionContext.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) greaterEqualThan: (recoveredStack2) expressionContext: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) andExpr: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) relOpRightSigned: (recoveredStack2) left: (recoveredStack3) right: (recoveredStack4) transformed: (recoveredStack5).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 153].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleCopy.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleSideEffectFreeBufferedExpr.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleCopy.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleSideEffectFreeExpr.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := RBInterval.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack5 := (recoveredStack5) leftExpr.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack5 := (recoveredStack5) interval.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack5 := (recoveredStack5) right.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := (recoveredStack3) left: (recoveredStack4) right: (recoveredStack5).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := (recoveredStack2) decorateGoalInterval: (recoveredStack3).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := (recoveredStack2) literalZero.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := (recoveredStack3) expressionContext.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) greaterEqualThan: (recoveredStack2) expressionContext: (recoveredStack3).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) andExpr: (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) relOpLeftSigned: (recoveredStack2) left: (recoveredStack3) right: (recoveredStack4) transformed: (recoveredStack5).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x206346ac; bytecode file offset 0xf31014"
!SGIlResolveMixedSignedTypesTransformation methodsFor: 'recovered'!
remExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) expressionContext.
    recoveredBlock4Value2 := (recoveredBlock4Value1) notNil.
    recoveredBlock4Value2
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    'The context of a rem was lost'
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) expressionContext.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock31Local1 recoveredBlock31Local2 recoveredBlock31Local3 recoveredBlock31Stack0 recoveredBlock31Stack1 recoveredBlock31Stack2 recoveredBlock31Stack3 recoveredBlock31Stack4 recoveredBlock31Stack5 recoveredBlock31PC recoveredBlock31Step recoveredBlock31Done recoveredBlock31Result |
    recoveredBlock31Stack0 := self.
    recoveredBlock31PC := 38.
    recoveredBlock31Done := false.
    [recoveredBlock31Done not] whileTrue: [
        recoveredBlock31Step := recoveredBlock31PC.
        recoveredBlock31Step = 38 ifTrue: [
            recoveredBlock31Stack1 := recoveredArg1.
            recoveredBlock31PC := 41.
        ].
        recoveredBlock31Step = 41 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) interval.
            recoveredBlock31PC := 43.
        ].
        recoveredBlock31Step = 43 ifTrue: [
            recoveredBlock31Stack2 := recoveredArg1.
            recoveredBlock31PC := 46.
        ].
        recoveredBlock31Step = 46 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) leftExpr.
            recoveredBlock31PC := 48.
        ].
        recoveredBlock31Step = 48 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) interval.
            recoveredBlock31PC := 50.
        ].
        recoveredBlock31Step = 50 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) union: (recoveredBlock31Stack2).
            recoveredBlock31PC := 52.
        ].
        recoveredBlock31Step = 52 ifTrue: [
            recoveredBlock31Stack2 := recoveredArg1.
            recoveredBlock31PC := 55.
        ].
        recoveredBlock31Step = 55 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) rightExpr.
            recoveredBlock31PC := 57.
        ].
        recoveredBlock31Step = 57 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) interval.
            recoveredBlock31PC := 59.
        ].
        recoveredBlock31Step = 59 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) union: (recoveredBlock31Stack2).
            recoveredBlock31PC := 61.
        ].
        recoveredBlock31Step = 61 ifTrue: [
            recoveredLocal1 := recoveredBlock31Stack1.
            recoveredBlock31PC := 64.
        ].
        recoveredBlock31Step = 64 ifTrue: [
            recoveredBlock31Stack1 := nil.
            recoveredBlock31PC := 65.
        ].
        recoveredBlock31Step = 65 ifTrue: [
            recoveredBlock31Stack2 := recoveredArg1.
            recoveredBlock31PC := 68.
        ].
        recoveredBlock31Step = 68 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) isIleRepresentable.
            recoveredBlock31PC := 70.
        ].
        recoveredBlock31Step = 70 ifTrue: [
            (recoveredBlock31Stack2) ifTrue: [recoveredBlock31PC := 74] ifFalse: [recoveredBlock31PC := 628].
        ].
        recoveredBlock31Step = 74 ifTrue: [
            recoveredBlock31Stack2 := recoveredArg1.
            recoveredBlock31PC := 77.
        ].
        recoveredBlock31Step = 77 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) leftExpr.
            recoveredBlock31PC := 79.
        ].
        recoveredBlock31Step = 79 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) interval.
            recoveredBlock31PC := 81.
        ].
        recoveredBlock31Step = 81 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) representableInDoubleBitSize.
            recoveredBlock31PC := 83.
        ].
        recoveredBlock31Step = 83 ifTrue: [
            (recoveredBlock31Stack2) ifTrue: [recoveredBlock31PC := 86] ifFalse: [recoveredBlock31PC := 628].
        ].
        recoveredBlock31Step = 86 ifTrue: [
            recoveredBlock31Stack2 := recoveredArg1.
            recoveredBlock31PC := 89.
        ].
        recoveredBlock31Step = 89 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) rightExpr.
            recoveredBlock31PC := 91.
        ].
        recoveredBlock31Step = 91 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) interval.
            recoveredBlock31PC := 93.
        ].
        recoveredBlock31Step = 93 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) representableInDoubleBitSize.
            recoveredBlock31PC := 95.
        ].
        recoveredBlock31Step = 95 ifTrue: [
            (recoveredBlock31Stack2) ifTrue: [recoveredBlock31PC := 98] ifFalse: [recoveredBlock31PC := 628].
        ].
        recoveredBlock31Step = 98 ifTrue: [
            recoveredBlock31Stack2 := recoveredLocal1.
            recoveredBlock31PC := 101.
        ].
        recoveredBlock31Step = 101 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) representableInDoubleBitSize.
            recoveredBlock31PC := 103.
        ].
        recoveredBlock31Step = 103 ifTrue: [
            (recoveredBlock31Stack2) ifTrue: [recoveredBlock31PC := 628] ifFalse: [recoveredBlock31PC := 106].
        ].
        recoveredBlock31Step = 106 ifTrue: [
            recoveredBlock31PC := 107.
        ].
        recoveredBlock31Step = 107 ifTrue: [
            recoveredBlock31Stack1 := self.
            recoveredBlock31PC := 108.
        ].
        recoveredBlock31Step = 108 ifTrue: [
            recoveredBlock31Stack2 := recoveredArg1.
            recoveredBlock31PC := 111.
        ].
        recoveredBlock31Step = 111 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) leftExpr.
            recoveredBlock31PC := 113.
        ].
        recoveredBlock31Step = 113 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) visitNode: (recoveredBlock31Stack2).
            recoveredBlock31PC := 115.
        ].
        recoveredBlock31Step = 115 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) asIleSideEffectFreeBufferedExpr.
            recoveredBlock31PC := 117.
        ].
        recoveredBlock31Step = 117 ifTrue: [
            recoveredBlock31Local3 := recoveredBlock31Stack1.
            recoveredBlock31PC := 120.
        ].
        recoveredBlock31Step = 120 ifTrue: [
            recoveredBlock31Stack1 := self.
            recoveredBlock31PC := 121.
        ].
        recoveredBlock31Step = 121 ifTrue: [
            recoveredBlock31Stack2 := recoveredArg1.
            recoveredBlock31PC := 124.
        ].
        recoveredBlock31Step = 124 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) rightExpr.
            recoveredBlock31PC := 126.
        ].
        recoveredBlock31Step = 126 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) visitNode: (recoveredBlock31Stack2).
            recoveredBlock31PC := 128.
        ].
        recoveredBlock31Step = 128 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) asIleSideEffectFreeBufferedExpr.
            recoveredBlock31PC := 130.
        ].
        recoveredBlock31Step = 130 ifTrue: [
            recoveredBlock31Local2 := recoveredBlock31Stack1.
            recoveredBlock31PC := 133.
        ].
        recoveredBlock31Step = 133 ifTrue: [
            recoveredBlock31Stack1 := recoveredArg1.
            recoveredBlock31PC := 136.
        ].
        recoveredBlock31Step = 136 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) rightExpr.
            recoveredBlock31PC := 138.
        ].
        recoveredBlock31Step = 138 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) interval.
            recoveredBlock31PC := 140.
        ].
        recoveredBlock31Step = 140 ifTrue: [
            recoveredBlock31Stack2 := 0.
            recoveredBlock31PC := 142.
        ].
        recoveredBlock31Step = 142 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) >= (recoveredBlock31Stack2).
            recoveredBlock31PC := 143.
        ].
        recoveredBlock31Step = 143 ifTrue: [
            (recoveredBlock31Stack1) ifTrue: [recoveredBlock31PC := 146] ifFalse: [recoveredBlock31PC := 260].
        ].
        recoveredBlock31Step = 146 ifTrue: [
            recoveredBlock31Stack1 := self.
            recoveredBlock31PC := 147.
        ].
        recoveredBlock31Step = 147 ifTrue: [
            recoveredBlock31Stack2 := [
    | recoveredBlock31Block147Value0 recoveredBlock31Block147Value1 recoveredBlock31Block147Value2 recoveredBlock31Block147Value3 recoveredBlock31Block147Value4 |
    recoveredBlock31Block147Value0 := recoveredArg1.
    recoveredBlock31Block147Value1 := (recoveredBlock31Block147Value0) leftExpr.
    recoveredBlock31Block147Value2 := (recoveredBlock31Block147Value1) interval.
    recoveredBlock31Block147Value3 := (recoveredBlock31Block147Value2) left.
    recoveredBlock31Block147Value4 := (recoveredBlock31Block147Value3) < (0).
    recoveredBlock31Block147Value4
].
            recoveredBlock31PC := 167.
        ].
        recoveredBlock31Step = 167 ifTrue: [
            recoveredBlock31Stack3 := [
    'This is arithmetically impossible'
].
            recoveredBlock31PC := 169.
        ].
        recoveredBlock31Step = 169 ifTrue: [
            recoveredBlock31PC := 175.
        ].
        recoveredBlock31Step = 175 ifTrue: [
            (recoveredBlock31Stack1) ileAssert: (recoveredBlock31Stack2) message: (recoveredBlock31Stack3).
            recoveredBlock31PC := 177.
        ].
        recoveredBlock31Step = 177 ifTrue: [
            recoveredBlock31Stack1 := self.
            recoveredBlock31PC := 178.
        ].
        recoveredBlock31Step = 178 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) ileBuilder.
            recoveredBlock31PC := 180.
        ].
        recoveredBlock31Step = 180 ifTrue: [
            recoveredBlock31Stack2 := recoveredArg1.
            recoveredBlock31PC := 183.
        ].
        recoveredBlock31Step = 183 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) source.
            recoveredBlock31PC := 185.
        ].
        recoveredBlock31Step = 185 ifTrue: [
            recoveredBlock31Stack3 := [
    | recoveredBlock31Block185Value0 recoveredBlock31Block185Value1 recoveredBlock31Block185Value2 recoveredBlock31Block185Value3 recoveredBlock31Block185Value4 recoveredBlock31Block185Value5 recoveredBlock31Block185Value6 recoveredBlock31Block185Value7 recoveredBlock31Block185Value8 recoveredBlock31Block185Value9 recoveredBlock31Block185Value10 recoveredBlock31Block185Value11 recoveredBlock31Block185Value12 recoveredBlock31Block185Value13 recoveredBlock31Block185Value14 recoveredBlock31Block185Value15 recoveredBlock31Block185Value16 recoveredBlock31Block185Value17 recoveredBlock31Block185Value18 recoveredBlock31Block185Value19 recoveredBlock31Block185Value20 recoveredBlock31Block185Value21 recoveredBlock31Block185Value22 |
    recoveredBlock31Block185Value0 := recoveredBlock31Local2.
    recoveredBlock31Block185Value1 := (self) ileBuilder.
    recoveredBlock31Block185Value2 := (recoveredBlock31Block185Value1) createScalarConstant: (2147483647).
    recoveredBlock31Block185Value3 := (self) generator.
    recoveredBlock31Block185Value4 := (recoveredBlock31Block185Value3) expressionContext.
    recoveredBlock31Block185Value5 := (recoveredBlock31Block185Value0) lessEqualThan: (recoveredBlock31Block185Value2) expressionContext: (recoveredBlock31Block185Value4).
    recoveredBlock31Block185Value6 := recoveredBlock31Local3.
    recoveredBlock31Block185Value7 := (recoveredBlock31Block185Value6) asIleCopy.
    recoveredBlock31Block185Value8 := recoveredBlock31Local2.
    recoveredBlock31Block185Value9 := RBInterval.
    recoveredBlock31Block185Value10 := recoveredBlock31Local2.
    recoveredBlock31Block185Value11 := (recoveredBlock31Block185Value10) interval.
    recoveredBlock31Block185Value12 := (recoveredBlock31Block185Value11) left.
    recoveredBlock31Block185Value13 := (recoveredBlock31Block185Value9) left: (recoveredBlock31Block185Value12) right: (2147483647).
    recoveredBlock31Block185Value14 := (recoveredBlock31Block185Value8) decorateGoalInterval: (recoveredBlock31Block185Value13).
    recoveredBlock31Block185Value15 := recoveredArg1.
    recoveredBlock31Block185Value16 := (recoveredBlock31Block185Value15) ileBasicType.
    recoveredBlock31Block185Value17 := (recoveredBlock31Block185Value7) rem: (recoveredBlock31Block185Value14) type: (recoveredBlock31Block185Value16).
    recoveredBlock31Block185Value18 := recoveredBlock31Local3.
    recoveredBlock31Block185Value19 := (recoveredBlock31Block185Value18) asIleCopy.
    recoveredBlock31Block185Value20 := recoveredArg1.
    recoveredBlock31Block185Value21 := (recoveredBlock31Block185Value20) ileBasicType.
    recoveredBlock31Block185Value22 := (recoveredBlock31Block185Value5) artificialMuxLeftExpr: (recoveredBlock31Block185Value17) rightExpr: (recoveredBlock31Block185Value19) type: (recoveredBlock31Block185Value21).
    recoveredBlock31Block185Value22
].
            recoveredBlock31PC := 252.
        ].
        recoveredBlock31Step = 252 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) useSource: (recoveredBlock31Stack2) for: (recoveredBlock31Stack3).
            recoveredBlock31PC := 254.
        ].
        recoveredBlock31Step = 254 ifTrue: [
            recoveredBlock31Local1 := recoveredBlock31Stack1.
            recoveredBlock31PC := 257.
        ].
        recoveredBlock31Step = 257 ifTrue: [
            recoveredBlock31PC := 595.
        ].
        recoveredBlock31Step = 260 ifTrue: [
            recoveredBlock31Stack1 := self.
            recoveredBlock31PC := 261.
        ].
        recoveredBlock31Step = 261 ifTrue: [
            recoveredBlock31Stack2 := [
    | recoveredBlock31Block261Stack0 recoveredBlock31Block261Stack1 recoveredBlock31Block261Stack2 recoveredBlock31Block261Stack3 recoveredBlock31Block261Stack4 recoveredBlock31Block261PC recoveredBlock31Block261Step recoveredBlock31Block261Done recoveredBlock31Block261Result |
    recoveredBlock31Block261Stack0 := nil.
    recoveredBlock31Block261PC := 268.
    recoveredBlock31Block261Done := false.
    [recoveredBlock31Block261Done not] whileTrue: [
        recoveredBlock31Block261Step := recoveredBlock31Block261PC.
        recoveredBlock31Block261Step = 268 ifTrue: [
            recoveredBlock31Block261Stack1 := false.
            recoveredBlock31Block261PC := 269.
        ].
        recoveredBlock31Block261Step = 269 ifTrue: [
            recoveredBlock31Block261Stack2 := recoveredArg1.
            recoveredBlock31Block261PC := 272.
        ].
        recoveredBlock31Block261Step = 272 ifTrue: [
            recoveredBlock31Block261Stack2 := (recoveredBlock31Block261Stack2) leftExpr.
            recoveredBlock31Block261PC := 274.
        ].
        recoveredBlock31Block261Step = 274 ifTrue: [
            recoveredBlock31Block261Stack2 := (recoveredBlock31Block261Stack2) interval.
            recoveredBlock31Block261PC := 276.
        ].
        recoveredBlock31Block261Step = 276 ifTrue: [
            recoveredBlock31Block261Stack3 := 0.
            recoveredBlock31Block261PC := 278.
        ].
        recoveredBlock31Block261Step = 278 ifTrue: [
            recoveredBlock31Block261Stack2 := (recoveredBlock31Block261Stack2) >= (recoveredBlock31Block261Stack3).
            recoveredBlock31Block261PC := 279.
        ].
        recoveredBlock31Block261Step = 279 ifTrue: [
            (recoveredBlock31Block261Stack2) ifTrue: [recoveredBlock31Block261PC := 282] ifFalse: [recoveredBlock31Block261PC := 295].
        ].
        recoveredBlock31Block261Step = 282 ifTrue: [
            recoveredBlock31Block261PC := 283.
        ].
        recoveredBlock31Block261Step = 283 ifTrue: [
            recoveredBlock31Block261Stack1 := recoveredArg1.
            recoveredBlock31Block261PC := 286.
        ].
        recoveredBlock31Block261Step = 286 ifTrue: [
            recoveredBlock31Block261Stack1 := (recoveredBlock31Block261Stack1) rightExpr.
            recoveredBlock31Block261PC := 288.
        ].
        recoveredBlock31Block261Step = 288 ifTrue: [
            recoveredBlock31Block261Stack1 := (recoveredBlock31Block261Stack1) interval.
            recoveredBlock31Block261PC := 290.
        ].
        recoveredBlock31Block261Step = 290 ifTrue: [
            recoveredBlock31Block261Stack1 := (recoveredBlock31Block261Stack1) left.
            recoveredBlock31Block261PC := 292.
        ].
        recoveredBlock31Block261Step = 292 ifTrue: [
            recoveredBlock31Block261Stack2 := 0.
            recoveredBlock31Block261PC := 294.
        ].
        recoveredBlock31Block261Step = 294 ifTrue: [
            recoveredBlock31Block261Stack1 := (recoveredBlock31Block261Stack1) < (recoveredBlock31Block261Stack2).
            recoveredBlock31Block261PC := 295.
        ].
        recoveredBlock31Block261Step = 295 ifTrue: [
            recoveredBlock31Block261Result := recoveredBlock31Block261Stack1.
            recoveredBlock31Block261Done := true.
        ].
    ].
    recoveredBlock31Block261Result
].
            recoveredBlock31PC := 296.
        ].
        recoveredBlock31Step = 296 ifTrue: [
            recoveredBlock31Stack3 := [
    'This is arithmetically impossible'
].
            recoveredBlock31PC := 298.
        ].
        recoveredBlock31Step = 298 ifTrue: [
            recoveredBlock31PC := 305.
        ].
        recoveredBlock31Step = 305 ifTrue: [
            (recoveredBlock31Stack1) ileAssert: (recoveredBlock31Stack2) message: (recoveredBlock31Stack3).
            recoveredBlock31PC := 307.
        ].
        recoveredBlock31Step = 307 ifTrue: [
            recoveredBlock31Stack1 := Integer.
            recoveredBlock31PC := 309.
        ].
        recoveredBlock31Step = 309 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) optionTruncatedDivision.
            recoveredBlock31PC := 311.
        ].
        recoveredBlock31Step = 311 ifTrue: [
            (recoveredBlock31Stack1) ifTrue: [recoveredBlock31PC := 314] ifFalse: [recoveredBlock31PC := 426].
        ].
        recoveredBlock31Step = 314 ifTrue: [
            recoveredBlock31Stack1 := self.
            recoveredBlock31PC := 315.
        ].
        recoveredBlock31Step = 315 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) ileBuilder.
            recoveredBlock31PC := 317.
        ].
        recoveredBlock31Step = 317 ifTrue: [
            recoveredBlock31Stack2 := recoveredArg1.
            recoveredBlock31PC := 320.
        ].
        recoveredBlock31Step = 320 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) source.
            recoveredBlock31PC := 322.
        ].
        recoveredBlock31Step = 322 ifTrue: [
            recoveredBlock31Stack3 := [
    | recoveredBlock31Block322Value0 recoveredBlock31Block322Value1 recoveredBlock31Block322Value2 recoveredBlock31Block322Value3 recoveredBlock31Block322Value4 recoveredBlock31Block322Value5 recoveredBlock31Block322Value6 recoveredBlock31Block322Value7 recoveredBlock31Block322Value8 recoveredBlock31Block322Value9 recoveredBlock31Block322Value10 recoveredBlock31Block322Value11 recoveredBlock31Block322Value12 recoveredBlock31Block322Value13 recoveredBlock31Block322Value14 recoveredBlock31Block322Value15 recoveredBlock31Block322Value16 recoveredBlock31Block322Value17 recoveredBlock31Block322Value18 recoveredBlock31Block322Value19 recoveredBlock31Block322Value20 recoveredBlock31Block322Value21 recoveredBlock31Block322Value22 recoveredBlock31Block322Value23 recoveredBlock31Block322Value24 recoveredBlock31Block322Value25 recoveredBlock31Block322Value26 recoveredBlock31Block322Value27 recoveredBlock31Block322Value28 recoveredBlock31Block322Value29 recoveredBlock31Block322Value30 recoveredBlock31Block322Value31 recoveredBlock31Block322Value32 recoveredBlock31Block322Value33 recoveredBlock31Block322Value34 recoveredBlock31Block322Value35 |
    recoveredBlock31Block322Value0 := recoveredBlock31Local2.
    recoveredBlock31Block322Value1 := (self) ileBuilder.
    recoveredBlock31Block322Value2 := (recoveredBlock31Block322Value1) literalZero.
    recoveredBlock31Block322Value3 := (self) generator.
    recoveredBlock31Block322Value4 := (recoveredBlock31Block322Value3) expressionContext.
    recoveredBlock31Block322Value5 := (recoveredBlock31Block322Value0) greaterEqualThan: (recoveredBlock31Block322Value2) expressionContext: (recoveredBlock31Block322Value4).
    recoveredBlock31Block322Value6 := recoveredBlock31Local3.
    recoveredBlock31Block322Value7 := (recoveredBlock31Block322Value6) asIleCopy.
    recoveredBlock31Block322Value8 := recoveredBlock31Local2.
    recoveredBlock31Block322Value9 := RBInterval.
    recoveredBlock31Block322Value10 := (0) left.
    recoveredBlock31Block322Value11 := recoveredBlock31Local2.
    recoveredBlock31Block322Value12 := (recoveredBlock31Block322Value11) interval.
    recoveredBlock31Block322Value13 := (recoveredBlock31Block322Value12) right.
    recoveredBlock31Block322Value14 := (recoveredBlock31Block322Value9) left: (recoveredBlock31Block322Value10) right: (recoveredBlock31Block322Value13).
    recoveredBlock31Block322Value15 := (recoveredBlock31Block322Value8) decorateGoalInterval: (recoveredBlock31Block322Value14).
    recoveredBlock31Block322Value16 := recoveredArg1.
    recoveredBlock31Block322Value17 := (recoveredBlock31Block322Value16) ileBasicType.
    recoveredBlock31Block322Value18 := (recoveredBlock31Block322Value7) rem: (recoveredBlock31Block322Value15) type: (recoveredBlock31Block322Value17).
    recoveredBlock31Block322Value19 := recoveredBlock31Local3.
    recoveredBlock31Block322Value20 := (recoveredBlock31Block322Value19) asIleCopy.
    recoveredBlock31Block322Value21 := recoveredBlock31Local2.
    recoveredBlock31Block322Value22 := RBInterval.
    recoveredBlock31Block322Value23 := recoveredBlock31Local2.
    recoveredBlock31Block322Value24 := (recoveredBlock31Block322Value23) interval.
    recoveredBlock31Block322Value25 := (recoveredBlock31Block322Value24) left.
    recoveredBlock31Block322Value26 := (recoveredBlock31Block322Value22) left: (recoveredBlock31Block322Value25) right: (-1).
    recoveredBlock31Block322Value27 := (recoveredBlock31Block322Value21) decorateGoalInterval: (recoveredBlock31Block322Value26).
    recoveredBlock31Block322Value28 := (recoveredBlock31Block322Value27) neg.
    recoveredBlock31Block322Value29 := (self) visitNode: (recoveredBlock31Block322Value28).
    recoveredBlock31Block322Value30 := recoveredArg1.
    recoveredBlock31Block322Value31 := (recoveredBlock31Block322Value30) ileBasicType.
    recoveredBlock31Block322Value32 := (recoveredBlock31Block322Value20) rem: (recoveredBlock31Block322Value29) type: (recoveredBlock31Block322Value31).
    recoveredBlock31Block322Value33 := recoveredArg1.
    recoveredBlock31Block322Value34 := (recoveredBlock31Block322Value33) ileBasicType.
    recoveredBlock31Block322Value35 := (recoveredBlock31Block322Value5) artificialMuxLeftExpr: (recoveredBlock31Block322Value18) rightExpr: (recoveredBlock31Block322Value32) type: (recoveredBlock31Block322Value34).
    recoveredBlock31Block322Value35
].
            recoveredBlock31PC := 418.
        ].
        recoveredBlock31Step = 418 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) useSource: (recoveredBlock31Stack2) for: (recoveredBlock31Stack3).
            recoveredBlock31PC := 420.
        ].
        recoveredBlock31Step = 420 ifTrue: [
            recoveredBlock31Local1 := recoveredBlock31Stack1.
            recoveredBlock31PC := 423.
        ].
        recoveredBlock31Step = 423 ifTrue: [
            recoveredBlock31PC := 595.
        ].
        recoveredBlock31Step = 426 ifTrue: [
            recoveredBlock31Stack1 := self.
            recoveredBlock31PC := 427.
        ].
        recoveredBlock31Step = 427 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) ileBuilder.
            recoveredBlock31PC := 429.
        ].
        recoveredBlock31Step = 429 ifTrue: [
            recoveredBlock31Stack2 := recoveredArg1.
            recoveredBlock31PC := 432.
        ].
        recoveredBlock31Step = 432 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) source.
            recoveredBlock31PC := 434.
        ].
        recoveredBlock31Step = 434 ifTrue: [
            recoveredBlock31Stack3 := [
    | recoveredBlock31Block434Local1 recoveredBlock31Block434Value0 recoveredBlock31Block434Value1 recoveredBlock31Block434Value2 recoveredBlock31Block434Value3 recoveredBlock31Block434Value4 recoveredBlock31Block434Value5 recoveredBlock31Block434Value6 recoveredBlock31Block434Value7 recoveredBlock31Block434Value8 recoveredBlock31Block434Value9 recoveredBlock31Block434Value10 recoveredBlock31Block434Value11 recoveredBlock31Block434Value12 recoveredBlock31Block434Value13 recoveredBlock31Block434Value14 recoveredBlock31Block434Value15 recoveredBlock31Block434Value16 recoveredBlock31Block434Value17 recoveredBlock31Block434Value18 recoveredBlock31Block434Value19 recoveredBlock31Block434Value20 recoveredBlock31Block434Value21 recoveredBlock31Block434Value22 recoveredBlock31Block434Value23 recoveredBlock31Block434Value24 recoveredBlock31Block434Value25 recoveredBlock31Block434Value26 recoveredBlock31Block434Value27 recoveredBlock31Block434Value28 recoveredBlock31Block434Value29 recoveredBlock31Block434Value30 recoveredBlock31Block434Value31 recoveredBlock31Block434Value32 recoveredBlock31Block434Value33 recoveredBlock31Block434Value34 recoveredBlock31Block434Value35 recoveredBlock31Block434Value36 recoveredBlock31Block434Value37 recoveredBlock31Block434Value38 recoveredBlock31Block434Value39 recoveredBlock31Block434Value40 recoveredBlock31Block434Value41 recoveredBlock31Block434Value42 recoveredBlock31Block434Value43 recoveredBlock31Block434Value44 recoveredBlock31Block434Value45 recoveredBlock31Block434Value46 recoveredBlock31Block434Value47 recoveredBlock31Block434Value48 recoveredBlock31Block434Value49 recoveredBlock31Block434Value50 recoveredBlock31Block434Value51 recoveredBlock31Block434Value52 recoveredBlock31Block434Value53 recoveredBlock31Block434Value54 recoveredBlock31Block434Value55 recoveredBlock31Block434Value56 recoveredBlock31Block434Value57 recoveredBlock31Block434Value58 recoveredBlock31Block434Value59 recoveredBlock31Block434Value60 recoveredBlock31Block434Value61 |
    recoveredBlock31Block434Value0 := recoveredBlock31Local3.
    recoveredBlock31Block434Value1 := (recoveredBlock31Block434Value0) asIleCopy.
    recoveredBlock31Block434Value2 := recoveredBlock31Local2.
    recoveredBlock31Block434Value3 := RBInterval.
    recoveredBlock31Block434Value4 := recoveredBlock31Local2.
    recoveredBlock31Block434Value5 := (recoveredBlock31Block434Value4) interval.
    recoveredBlock31Block434Value6 := (recoveredBlock31Block434Value5) left.
    recoveredBlock31Block434Value7 := (recoveredBlock31Block434Value3) left: (recoveredBlock31Block434Value6) right: (-1).
    recoveredBlock31Block434Value8 := (recoveredBlock31Block434Value2) decorateGoalInterval: (recoveredBlock31Block434Value7).
    recoveredBlock31Block434Value9 := (recoveredBlock31Block434Value8) neg.
    recoveredBlock31Block434Value10 := (self) visitNode: (recoveredBlock31Block434Value9).
    recoveredBlock31Block434Value11 := recoveredArg1.
    recoveredBlock31Block434Value12 := (recoveredBlock31Block434Value11) ileBasicType.
    recoveredBlock31Block434Value13 := (recoveredBlock31Block434Value1) rem: (recoveredBlock31Block434Value10) type: (recoveredBlock31Block434Value12).
    recoveredBlock31Block434Value14 := (recoveredBlock31Block434Value13) asIleSideEffectFreeBufferedExpr.
    recoveredBlock31Block434Local1 := recoveredBlock31Block434Value14.
    recoveredBlock31Block434Value15 := recoveredBlock31Local2.
    recoveredBlock31Block434Value16 := (self) ileBuilder.
    recoveredBlock31Block434Value17 := (recoveredBlock31Block434Value16) literalZero.
    recoveredBlock31Block434Value18 := (self) generator.
    recoveredBlock31Block434Value19 := (recoveredBlock31Block434Value18) expressionContext.
    recoveredBlock31Block434Value20 := (recoveredBlock31Block434Value15) greaterEqualThan: (recoveredBlock31Block434Value17) expressionContext: (recoveredBlock31Block434Value19).
    recoveredBlock31Block434Value21 := recoveredBlock31Local3.
    recoveredBlock31Block434Value22 := (recoveredBlock31Block434Value21) asIleCopy.
    recoveredBlock31Block434Value23 := recoveredBlock31Local2.
    recoveredBlock31Block434Value24 := RBInterval.
    recoveredBlock31Block434Value25 := (0) left.
    recoveredBlock31Block434Value26 := recoveredBlock31Local2.
    recoveredBlock31Block434Value27 := (recoveredBlock31Block434Value26) interval.
    recoveredBlock31Block434Value28 := (recoveredBlock31Block434Value27) right.
    recoveredBlock31Block434Value29 := (recoveredBlock31Block434Value24) left: (recoveredBlock31Block434Value25) right: (recoveredBlock31Block434Value28).
    recoveredBlock31Block434Value30 := (recoveredBlock31Block434Value23) decorateGoalInterval: (recoveredBlock31Block434Value29).
    recoveredBlock31Block434Value31 := recoveredArg1.
    recoveredBlock31Block434Value32 := (recoveredBlock31Block434Value31) ileBasicType.
    recoveredBlock31Block434Value33 := (recoveredBlock31Block434Value22) rem: (recoveredBlock31Block434Value30) type: (recoveredBlock31Block434Value32).
    recoveredBlock31Block434Value34 := recoveredBlock31Block434Local1.
    recoveredBlock31Block434Value35 := (recoveredBlock31Block434Value34) asIleCopy.
    recoveredBlock31Block434Value36 := (self) ileBuilder.
    recoveredBlock31Block434Value37 := (recoveredBlock31Block434Value36) literalZero.
    recoveredBlock31Block434Value38 := (self) generator.
    recoveredBlock31Block434Value39 := (recoveredBlock31Block434Value38) expressionContext.
    recoveredBlock31Block434Value40 := (recoveredBlock31Block434Value35) equal: (recoveredBlock31Block434Value37) expressionContext: (recoveredBlock31Block434Value39).
    recoveredBlock31Block434Value41 := (self) ileBuilder.
    recoveredBlock31Block434Value42 := (recoveredBlock31Block434Value41) literalZero.
    recoveredBlock31Block434Value43 := recoveredBlock31Block434Local1.
    recoveredBlock31Block434Value44 := (recoveredBlock31Block434Value43) asIleCopy.
    recoveredBlock31Block434Value45 := recoveredBlock31Local2.
    recoveredBlock31Block434Value46 := RBInterval.
    recoveredBlock31Block434Value47 := (0) left.
    recoveredBlock31Block434Value48 := recoveredBlock31Local2.
    recoveredBlock31Block434Value49 := (recoveredBlock31Block434Value48) interval.
    recoveredBlock31Block434Value50 := (recoveredBlock31Block434Value49) right.
    recoveredBlock31Block434Value51 := (recoveredBlock31Block434Value46) left: (recoveredBlock31Block434Value47) right: (recoveredBlock31Block434Value50).
    recoveredBlock31Block434Value52 := (recoveredBlock31Block434Value45) decorateGoalInterval: (recoveredBlock31Block434Value51).
    recoveredBlock31Block434Value53 := recoveredArg1.
    recoveredBlock31Block434Value54 := (recoveredBlock31Block434Value53) ileBasicType.
    recoveredBlock31Block434Value55 := (recoveredBlock31Block434Value44) add: (recoveredBlock31Block434Value52) type: (recoveredBlock31Block434Value54).
    recoveredBlock31Block434Value56 := recoveredArg1.
    recoveredBlock31Block434Value57 := (recoveredBlock31Block434Value56) ileBasicType.
    recoveredBlock31Block434Value58 := (recoveredBlock31Block434Value40) artificialMuxLeftExpr: (recoveredBlock31Block434Value42) rightExpr: (recoveredBlock31Block434Value55) type: (recoveredBlock31Block434Value57).
    recoveredBlock31Block434Value59 := recoveredArg1.
    recoveredBlock31Block434Value60 := (recoveredBlock31Block434Value59) ileBasicType.
    recoveredBlock31Block434Value61 := (recoveredBlock31Block434Value20) artificialMuxLeftExpr: (recoveredBlock31Block434Value33) rightExpr: (recoveredBlock31Block434Value58) type: (recoveredBlock31Block434Value60).
    ^recoveredBlock31Block434Value61
].
            recoveredBlock31PC := 590.
        ].
        recoveredBlock31Step = 590 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) useSource: (recoveredBlock31Stack2) for: (recoveredBlock31Stack3).
            recoveredBlock31PC := 592.
        ].
        recoveredBlock31Step = 592 ifTrue: [
            recoveredBlock31Local1 := recoveredBlock31Stack1.
            recoveredBlock31PC := 595.
        ].
        recoveredBlock31Step = 595 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Local3.
            recoveredBlock31PC := 598.
        ].
        recoveredBlock31Step = 598 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) isIleTempVarIdentifier.
            recoveredBlock31PC := 600.
        ].
        recoveredBlock31Step = 600 ifTrue: [
            (recoveredBlock31Stack1) ifTrue: [recoveredBlock31PC := 604] ifFalse: [recoveredBlock31PC := 624].
        ].
        recoveredBlock31Step = 604 ifTrue: [
            recoveredBlock31Stack1 := self.
            recoveredBlock31PC := 605.
        ].
        recoveredBlock31Step = 605 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) ileBuilder.
            recoveredBlock31PC := 607.
        ].
        recoveredBlock31Step = 607 ifTrue: [
            recoveredBlock31Stack2 := Array.
            recoveredBlock31PC := 609.
        ].
        recoveredBlock31Step = 609 ifTrue: [
            recoveredBlock31Stack3 := recoveredBlock31Local3.
            recoveredBlock31PC := 612.
        ].
        recoveredBlock31Step = 612 ifTrue: [
            recoveredBlock31Stack3 := (recoveredBlock31Stack3) asIleCopy.
            recoveredBlock31PC := 614.
        ].
        recoveredBlock31Step = 614 ifTrue: [
            recoveredBlock31Stack4 := recoveredBlock31Local1.
            recoveredBlock31PC := 617.
        ].
        recoveredBlock31Step = 617 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) with: (recoveredBlock31Stack3) with: (recoveredBlock31Stack4).
            recoveredBlock31PC := 619.
        ].
        recoveredBlock31Step = 619 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) commaExpr: (recoveredBlock31Stack2).
            recoveredBlock31PC := 621.
        ].
        recoveredBlock31Step = 621 ifTrue: [
            recoveredBlock31Local1 := recoveredBlock31Stack1.
            recoveredBlock31PC := 624.
        ].
        recoveredBlock31Step = 624 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Local1.
            recoveredBlock31PC := 627.
        ].
        recoveredBlock31Step = 627 ifTrue: [
            ^recoveredBlock31Stack1
        ].
        recoveredBlock31Step = 628 ifTrue: [
            recoveredBlock31Result := recoveredBlock31Stack1.
            recoveredBlock31Done := true.
        ].
    ].
    recoveredBlock31Result
].
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            (recoveredStack0) executeInContext: (recoveredStack1).
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            recoveredStack0 := super remExpr: (recoveredStack1).
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20637828; bytecode file offset 0xf34184"
!SGIlResolveMixedSignedTypesTransformation methodsFor: 'recovered'!
divExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isResolving.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleShiftRightExpr.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := super divExpr: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := super divExpr: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleDivisionExpr.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) union: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) union: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) usesArithOpServices.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 650] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) representableInDoubleBitSize.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 650].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) representableInDoubleBitSize.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 650].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) representableInDoubleBitSize.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 650].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) representableInDoubleBitSize.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 650] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleSideEffectFreeBufferedExpr.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleSideEffectFreeBufferedExpr.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 164] ifFalse: [recoveredPC := 299].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock165Value0 recoveredBlock165Value1 recoveredBlock165Value2 recoveredBlock165Value3 recoveredBlock165Value4 |
    recoveredBlock165Value0 := recoveredLocal8.
    recoveredBlock165Value1 := (recoveredBlock165Value0) rightExpr.
    recoveredBlock165Value2 := (recoveredBlock165Value1) interval.
    recoveredBlock165Value3 := (recoveredBlock165Value2) left.
    recoveredBlock165Value4 := (recoveredBlock165Value3) >= (0).
    recoveredBlock165Value4
].
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := [
    'This is arithmetically impossible'
].
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizationFactory.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := (recoveredStack0) constantFoldingScalarVisitor.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock200Local1 recoveredBlock200Stack0 recoveredBlock200Stack1 recoveredBlock200Stack2 recoveredBlock200Stack3 recoveredBlock200Stack4 recoveredBlock200PC recoveredBlock200Step recoveredBlock200Done recoveredBlock200Result |
    recoveredBlock200Stack0 := self.
    recoveredBlock200PC := 206.
    recoveredBlock200Done := false.
    [recoveredBlock200Done not] whileTrue: [
        recoveredBlock200Step := recoveredBlock200PC.
        recoveredBlock200Step = 206 ifTrue: [
            recoveredBlock200Stack1 := recoveredLocal4.
            recoveredBlock200PC := 209.
        ].
        recoveredBlock200Step = 209 ifTrue: [
            recoveredBlock200Stack2 := self.
            recoveredBlock200PC := 210.
        ].
        recoveredBlock200Step = 210 ifTrue: [
            recoveredBlock200Stack2 := (recoveredBlock200Stack2) ileBuilder.
            recoveredBlock200PC := 212.
        ].
        recoveredBlock200Step = 212 ifTrue: [
            recoveredBlock200Stack3 := 2147483647.
            recoveredBlock200PC := 214.
        ].
        recoveredBlock200Step = 214 ifTrue: [
            recoveredBlock200Stack2 := (recoveredBlock200Stack2) createScalarConstant: (recoveredBlock200Stack3).
            recoveredBlock200PC := 216.
        ].
        recoveredBlock200Step = 216 ifTrue: [
            recoveredBlock200Stack3 := self.
            recoveredBlock200PC := 217.
        ].
        recoveredBlock200Step = 217 ifTrue: [
            recoveredBlock200Stack3 := (recoveredBlock200Stack3) generator.
            recoveredBlock200PC := 219.
        ].
        recoveredBlock200Step = 219 ifTrue: [
            recoveredBlock200Stack3 := (recoveredBlock200Stack3) expressionContext.
            recoveredBlock200PC := 221.
        ].
        recoveredBlock200Step = 221 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) lessEqualThan: (recoveredBlock200Stack2) expressionContext: (recoveredBlock200Stack3).
            recoveredBlock200PC := 223.
        ].
        recoveredBlock200Step = 223 ifTrue: [
            recoveredLocal7 := recoveredBlock200Stack1.
            recoveredBlock200PC := 226.
        ].
        recoveredBlock200Step = 226 ifTrue: [
            recoveredBlock200Stack1 := RBInterval.
            recoveredBlock200PC := 228.
        ].
        recoveredBlock200Step = 228 ifTrue: [
            recoveredBlock200Stack2 := 0.
            recoveredBlock200PC := 230.
        ].
        recoveredBlock200Step = 230 ifTrue: [
            recoveredBlock200Stack3 := 2147483647.
            recoveredBlock200PC := 232.
        ].
        recoveredBlock200Step = 232 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) left: (recoveredBlock200Stack2) right: (recoveredBlock200Stack3).
            recoveredBlock200PC := 234.
        ].
        recoveredBlock200Step = 234 ifTrue: [
            recoveredBlock200Local1 := recoveredBlock200Stack1.
            recoveredBlock200PC := 235.
        ].
        recoveredBlock200Step = 235 ifTrue: [
            recoveredBlock200Stack1 := recoveredLocal4.
            recoveredBlock200PC := 238.
        ].
        recoveredBlock200Step = 238 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) hasIleAnnotatedGoalInterval.
            recoveredBlock200PC := 240.
        ].
        recoveredBlock200Step = 240 ifTrue: [
            (recoveredBlock200Stack1) ifTrue: [recoveredBlock200PC := 244] ifFalse: [recoveredBlock200PC := 253].
        ].
        recoveredBlock200Step = 244 ifTrue: [
            recoveredBlock200Stack1 := recoveredBlock200Local1.
            recoveredBlock200PC := 245.
        ].
        recoveredBlock200Step = 245 ifTrue: [
            recoveredBlock200Stack2 := recoveredLocal4.
            recoveredBlock200PC := 248.
        ].
        recoveredBlock200Step = 248 ifTrue: [
            recoveredBlock200Stack2 := (recoveredBlock200Stack2) goalInterval.
            recoveredBlock200PC := 250.
        ].
        recoveredBlock200Step = 250 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) intersect: (recoveredBlock200Stack2).
            recoveredBlock200PC := 252.
        ].
        recoveredBlock200Step = 252 ifTrue: [
            recoveredBlock200Local1 := recoveredBlock200Stack1.
            recoveredBlock200PC := 253.
        ].
        recoveredBlock200Step = 253 ifTrue: [
            recoveredBlock200Stack1 := recoveredLocal6.
            recoveredBlock200PC := 256.
        ].
        recoveredBlock200Step = 256 ifTrue: [
            recoveredBlock200Stack2 := recoveredLocal4.
            recoveredBlock200PC := 259.
        ].
        recoveredBlock200Step = 259 ifTrue: [
            recoveredBlock200Stack3 := recoveredBlock200Local1.
            recoveredBlock200PC := 260.
        ].
        recoveredBlock200Step = 260 ifTrue: [
            recoveredBlock200Stack2 := (recoveredBlock200Stack2) decorateGoalInterval: (recoveredBlock200Stack3).
            recoveredBlock200PC := 262.
        ].
        recoveredBlock200Step = 262 ifTrue: [
            recoveredBlock200Stack3 := recoveredLocal8.
            recoveredBlock200PC := 265.
        ].
        recoveredBlock200Step = 265 ifTrue: [
            recoveredBlock200Stack3 := (recoveredBlock200Stack3) ileBasicType.
            recoveredBlock200PC := 267.
        ].
        recoveredBlock200Step = 267 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) div: (recoveredBlock200Stack2) type: (recoveredBlock200Stack3).
            recoveredBlock200PC := 269.
        ].
        recoveredBlock200Step = 269 ifTrue: [
            recoveredBlock200Stack2 := recoveredBlock200Stack1.
            recoveredBlock200PC := 270.
        ].
        recoveredBlock200Step = 270 ifTrue: [
            recoveredLocal3 := recoveredBlock200Stack2.
            recoveredBlock200PC := 273.
        ].
        recoveredBlock200Step = 273 ifTrue: [
            recoveredBlock200Result := recoveredBlock200Stack1.
            recoveredBlock200Done := true.
        ].
    ].
    recoveredBlock200Result
].
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            (recoveredStack0) disableOptimizationsDo: (recoveredStack1).
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBuilder.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack3 := (recoveredStack3) createScalarConstant: (recoveredStack4).
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack4 := recoveredLocal8.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileBasicType.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack0 := (recoveredStack0) mux: (recoveredStack1) leftExpr: (recoveredStack2) rightExpr: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock300Value0 recoveredBlock300Value1 recoveredBlock300Value2 recoveredBlock300Value3 recoveredBlock300Value4 |
    recoveredBlock300Value0 := recoveredLocal8.
    recoveredBlock300Value1 := (recoveredBlock300Value0) leftExpr.
    recoveredBlock300Value2 := (recoveredBlock300Value1) interval.
    recoveredBlock300Value3 := (recoveredBlock300Value2) left.
    recoveredBlock300Value4 := (recoveredBlock300Value3) >= (0).
    recoveredBlock300Value4
].
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack2 := [
    'This is arithmetically impossible'
].
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 344] ifFalse: [recoveredPC := 570].
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 358] ifFalse: [recoveredPC := 437].
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizationFactory.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack0 := (recoveredStack0) constantFoldingScalarVisitor.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock363Value0 recoveredBlock363Value1 recoveredBlock363Value2 recoveredBlock363Value3 recoveredBlock363Value4 recoveredBlock363Value5 recoveredBlock363Value6 |
    recoveredBlock363Value0 := recoveredLocal4.
    recoveredBlock363Value1 := (self) ileBuilder.
    recoveredBlock363Value2 := (recoveredBlock363Value1) createScalarConstant: (0).
    recoveredBlock363Value3 := (self) generator.
    recoveredBlock363Value4 := (recoveredBlock363Value3) expressionContext.
    recoveredBlock363Value5 := (recoveredBlock363Value0) greaterEqualThan: (recoveredBlock363Value2) expressionContext: (recoveredBlock363Value4).
    recoveredBlock363Value6 := recoveredBlock363Value5.
    recoveredLocal7 := recoveredBlock363Value6.
    recoveredBlock363Value5
].
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            (recoveredStack0) disableOptimizationsDo: (recoveredStack1).
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack4 := RBInterval.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack6 := 2147483647.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack4 := (recoveredStack4) left: (recoveredStack5) right: (recoveredStack6).
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack3 := (recoveredStack3) decorateGoalInterval: (recoveredStack4).
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack4 := recoveredLocal8.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileBasicType.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack2 := (recoveredStack2) div: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBuilder.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack3 := (recoveredStack3) createScalarConstant: (recoveredStack4).
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack4 := recoveredLocal8.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileBasicType.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack0 := (recoveredStack0) mux: (recoveredStack1) leftExpr: (recoveredStack2) rightExpr: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizationFactory.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack0 := (recoveredStack0) constantFoldingScalarVisitor.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock442Value0 recoveredBlock442Value1 recoveredBlock442Value2 recoveredBlock442Value3 recoveredBlock442Value4 recoveredBlock442Value5 recoveredBlock442Value6 |
    recoveredBlock442Value0 := recoveredLocal4.
    recoveredBlock442Value1 := (self) ileBuilder.
    recoveredBlock442Value2 := (recoveredBlock442Value1) createScalarConstant: (0).
    recoveredBlock442Value3 := (self) generator.
    recoveredBlock442Value4 := (recoveredBlock442Value3) expressionContext.
    recoveredBlock442Value5 := (recoveredBlock442Value0) greaterEqualThan: (recoveredBlock442Value2) expressionContext: (recoveredBlock442Value4).
    recoveredBlock442Value6 := recoveredBlock442Value5.
    recoveredLocal7 := recoveredBlock442Value6.
    recoveredBlock442Value5
].
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            (recoveredStack0) disableOptimizationsDo: (recoveredStack1).
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack2 := RBInterval.
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack4 := 2147483647.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack2 := (recoveredStack2) left: (recoveredStack3) right: (recoveredStack4).
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack1 := (recoveredStack1) decorateGoalInterval: (recoveredStack2).
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBasicType.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack0 := (recoveredStack0) div: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack1 := RBInterval.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack2 := -2147483648.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack3 := -1.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack1 := (recoveredStack1) left: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack0 := (recoveredStack0) decorateGoalInterval: (recoveredStack1).
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack0 := (recoveredStack0) neg.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBasicType.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack0 := (recoveredStack0) div: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack3 := (recoveredStack3) goalInterval.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack2 := (recoveredStack2) decorateGoalInterval: (recoveredStack3).
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredStack4 := recoveredLocal8.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack4 := (recoveredStack4) goalInterval.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack3 := (recoveredStack3) decorateGoalInterval: (recoveredStack4).
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack3 := (recoveredStack3) neg.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack4 := recoveredLocal8.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileBasicType.
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            recoveredStack0 := (recoveredStack0) mux: (recoveredStack1) leftExpr: (recoveredStack2) rightExpr: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock571Stack0 recoveredBlock571Stack1 recoveredBlock571Stack2 recoveredBlock571Stack3 recoveredBlock571PC recoveredBlock571Step recoveredBlock571Done recoveredBlock571Result |
    recoveredBlock571Stack0 := self.
    recoveredBlock571PC := 578.
    recoveredBlock571Done := false.
    [recoveredBlock571Done not] whileTrue: [
        recoveredBlock571Step := recoveredBlock571PC.
        recoveredBlock571Step = 578 ifTrue: [
            recoveredBlock571Stack1 := true.
            recoveredBlock571PC := 579.
        ].
        recoveredBlock571Step = 579 ifTrue: [
            recoveredBlock571Stack2 := self.
            recoveredBlock571PC := 580.
        ].
        recoveredBlock571Step = 580 ifTrue: [
            recoveredBlock571Stack2 := (recoveredBlock571Stack2) generator.
            recoveredBlock571PC := 582.
        ].
        recoveredBlock571Step = 582 ifTrue: [
            recoveredBlock571Stack2 := (recoveredBlock571Stack2) needsIntegerCode.
            recoveredBlock571PC := 584.
        ].
        recoveredBlock571Step = 584 ifTrue: [
            (recoveredBlock571Stack2) ifTrue: [recoveredBlock571PC := 588] ifFalse: [recoveredBlock571PC := 601].
        ].
        recoveredBlock571Step = 588 ifTrue: [
            recoveredBlock571PC := 589.
        ].
        recoveredBlock571Step = 589 ifTrue: [
            recoveredBlock571Stack1 := recoveredLocal8.
            recoveredBlock571PC := 592.
        ].
        recoveredBlock571Step = 592 ifTrue: [
            recoveredBlock571Stack1 := (recoveredBlock571Stack1) rightExpr.
            recoveredBlock571PC := 594.
        ].
        recoveredBlock571Step = 594 ifTrue: [
            recoveredBlock571Stack1 := (recoveredBlock571Stack1) interval.
            recoveredBlock571PC := 596.
        ].
        recoveredBlock571Step = 596 ifTrue: [
            recoveredBlock571Stack1 := (recoveredBlock571Stack1) left.
            recoveredBlock571PC := 598.
        ].
        recoveredBlock571Step = 598 ifTrue: [
            recoveredBlock571Stack2 := 0.
            recoveredBlock571PC := 600.
        ].
        recoveredBlock571Step = 600 ifTrue: [
            recoveredBlock571Stack1 := (recoveredBlock571Stack1) = (recoveredBlock571Stack2).
            recoveredBlock571PC := 601.
        ].
        recoveredBlock571Step = 601 ifTrue: [
            recoveredBlock571Result := recoveredBlock571Stack1.
            recoveredBlock571Done := true.
        ].
    ].
    recoveredBlock571Result
].
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack2 := [
    'The division of two unsigned expressions shall lead to an unsigned result'
].
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack1 := RBInterval.
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack3 := (recoveredStack3) generator.
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredStack3 := (recoveredStack3) maxRepresentableUnsignedInDoubleBitSize.
            recoveredPC := 625.
        ].
        recoveredStep = 625 ifTrue: [
            recoveredStack1 := (recoveredStack1) left: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack0 := (recoveredStack0) decorateGoalInterval: (recoveredStack1).
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 650 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

