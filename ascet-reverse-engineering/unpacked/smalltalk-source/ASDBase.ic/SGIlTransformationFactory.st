"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d894; bytecode file offset 0x90a4b8"
!SGIlTransformationFactory methodsFor: 'recovered'!
anyStmnt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200522bc; bytecode file offset 0x94f0e0"
!SGIlTransformationFactory methodsFor: 'recovered'!
createBasicArithmeticVisitor
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (recoveredValue0) transformationNodeVisitorClass.
    recoveredValue2 := (recoveredValue1) create.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20066afc; bytecode file offset 0x963428"
!SGIlTransformationFactory methodsFor: 'recovered'!
basicArithmeticVisitor
    | recoveredValue0 |
    recoveredValue0 := basicArithmeticVisitor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006852c; bytecode file offset 0x965b90"
!SGIlTransformationFactory methodsFor: 'recovered'!
replaceFractionVisitor
    | recoveredValue0 |
    recoveredValue0 := replaceFractionVisitor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069680; bytecode file offset 0x966bdc"
!SGIlTransformationFactory methodsFor: 'recovered'!
resolveMixedSignedTypesVisitor
    | recoveredValue0 |
    recoveredValue0 := resolveMixedSignedTypesVisitor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a3ac; bytecode file offset 0x967a18"
!SGIlTransformationFactory methodsFor: 'recovered'!
secureDivVisitor
    | recoveredValue0 |
    recoveredValue0 := secureDivVisitor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b1c8; bytecode file offset 0x96873c"
!SGIlTransformationFactory methodsFor: 'recovered'!
replaceComplexWithMuxVisitor
    | recoveredValue0 |
    recoveredValue0 := replaceComplexWithMuxVisitor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c6b4; bytecode file offset 0x9692b0"
!SGIlTransformationFactory methodsFor: 'recovered'!
serviceVisitor
    | recoveredValue0 |
    recoveredValue0 := serviceVisitor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d0f8; bytecode file offset 0x969c04"
!SGIlTransformationFactory methodsFor: 'recovered'!
approximationVisitor
    | recoveredValue0 |
    recoveredValue0 := approximationVisitor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d7a4; bytecode file offset 0x96a390"
!SGIlTransformationFactory methodsFor: 'recovered'!
tempVarRangeVisitor
    | recoveredValue0 |
    recoveredValue0 := tempVarRangeVisitor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dc40; bytecode file offset 0x96a9dc"
!SGIlTransformationFactory methodsFor: 'recovered'!
castingTransformation
    | recoveredValue0 |
    recoveredValue0 := castingTransformation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20144e1c; bytecode file offset 0xa41704"
!SGIlTransformationFactory methodsFor: 'recovered'!
anyNode: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isIleStatement.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
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
            recoveredStack1 := (recoveredStack1) anyStmnt: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) anyExpr: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20233c6c; bytecode file offset 0xb3053c"
!SGIlTransformationFactory methodsFor: 'recovered'!
expansionPreparationPhaseDo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicArithmeticVisitor.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isActiveTransformation.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := SGIlTransformBasicArithmeticImplAwareExpansionPhase.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            basicArithmeticVisitor := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock20Value0 recoveredBlock20Value1 |
    recoveredBlock20Value0 := (self) createBasicArithmeticVisitor.
    recoveredBlock20Value1 := recoveredBlock20Value0.
    basicArithmeticVisitor := recoveredBlock20Value1.
    recoveredBlock20Value0
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) ensure: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029c79c; bytecode file offset 0xb99064"
!SGIlTransformationFactory methodsFor: 'recovered'!
optimizationPhaseDo: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicArithmeticVisitor.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isActiveTransformation.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := basicArithmeticVisitor.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) createBasicArithmeticVisitor.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            basicArithmeticVisitor := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock27Value0 recoveredBlock27Value1 |
    recoveredBlock27Value0 := recoveredLocal1.
    recoveredBlock27Value1 := recoveredBlock27Value0.
    basicArithmeticVisitor := recoveredBlock27Value1.
    recoveredBlock27Value0
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) ensure: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203475c4; bytecode file offset 0xc43ea8"
!SGIlTransformationFactory methodsFor: 'recovered'!
anyExpr: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) basicArithmeticVisitor.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := (self) ileBuilder.
    recoveredBlock5Value1 := [
    | recoveredBlock5Block13Value0 recoveredBlock5Block13Value1 recoveredBlock5Block13Value2 recoveredBlock5Block13Value3 recoveredBlock5Block13Value4 recoveredBlock5Block13Value5 recoveredBlock5Block13Value6 recoveredBlock5Block13Value7 recoveredBlock5Block13Value8 recoveredBlock5Block13Value9 recoveredBlock5Block13Value10 recoveredBlock5Block13Value11 recoveredBlock5Block13Value12 recoveredBlock5Block13Value13 recoveredBlock5Block13Value14 recoveredBlock5Block13Value15 |
    recoveredBlock5Block13Value0 := (self) serviceVisitor.
    recoveredBlock5Block13Value1 := (self) secureDivVisitor.
    recoveredBlock5Block13Value2 := (self) resolveMixedSignedTypesVisitor.
    recoveredBlock5Block13Value3 := (self) transformationFactory.
    recoveredBlock5Block13Value4 := (recoveredBlock5Block13Value3) replaceFractionVisitor.
    recoveredBlock5Block13Value5 := (self) transformationFactory.
    recoveredBlock5Block13Value6 := (recoveredBlock5Block13Value5) approximationVisitor.
    recoveredBlock5Block13Value7 := (self) transformationFactory.
    recoveredBlock5Block13Value8 := (recoveredBlock5Block13Value7) replaceComplexWithMuxVisitor.
    recoveredBlock5Block13Value9 := recoveredArg1.
    recoveredBlock5Block13Value10 := (recoveredBlock5Block13Value8) anyExpr: (recoveredBlock5Block13Value9).
    recoveredBlock5Block13Value11 := (recoveredBlock5Block13Value6) anyExpr: (recoveredBlock5Block13Value10).
    recoveredBlock5Block13Value12 := (recoveredBlock5Block13Value4) anyExpr: (recoveredBlock5Block13Value11).
    recoveredBlock5Block13Value13 := (recoveredBlock5Block13Value2) anyExpr: (recoveredBlock5Block13Value12).
    recoveredBlock5Block13Value14 := (recoveredBlock5Block13Value1) anyExpr: (recoveredBlock5Block13Value13).
    recoveredBlock5Block13Value15 := (recoveredBlock5Block13Value0) anyExpr: (recoveredBlock5Block13Value14).
    recoveredBlock5Block13Value15
].
    recoveredBlock5Value2 := (recoveredBlock5Value0) disableFractionsDo: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    recoveredValue2 := (recoveredValue0) disableTransformationDo: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2044a6b8; bytecode file offset 0xd46fb8"
!SGIlTransformationFactory methodsFor: 'recovered'!
initialize: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) createBasicArithmeticVisitor.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            basicArithmeticVisitor := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := SGIleBuilder.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) replaceFractionTransformationVisitorClassOrNil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := SGIleBuilder.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) replaceFractionTransformationVisitorClassOrNil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            replaceFractionVisitor := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) inactiveNodeVisitorSingleton.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            replaceFractionVisitor := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) usesArithOpServices.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := SGIlArithmeticServiceTransformation.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            serviceVisitor := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) inactiveNodeVisitorSingleton.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            serviceVisitor := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := SGIlAbstractCastExprTransformation.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForCodeGenerator: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            castingTransformation := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := SGIlSecureDivExprTransformation.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            secureDivVisitor := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := SGIlReplaceComplexExprWithMuxTransformation.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) genContext.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithContext: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            replaceComplexWithMuxVisitor := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntegerVariant.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := SGIlResolveMixedSignedTypesImplAwareTransformation.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            resolveMixedSignedTypesVisitor := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := SGIlResolveMixedSignedTypesTransformation.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            resolveMixedSignedTypesVisitor := recoveredStack0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := SGIlApproximationTransformation.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            approximationVisitor := recoveredStack0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := SGIlUsageRangeVisitor.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            tempVarRangeVisitor := recoveredStack0.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

