"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001bc98; bytecode file offset 0x92209c"
!SGMdDistributionStateAnalysisVisitor methodsFor: 'recovered'!
searchCalls
    ^#('searchOneD' 'searchTwoD' 'searchDistribution')
! !

"ASDBase.ic method 0x2001df54; bytecode file offset 0x92209c"
!SGMdDistributionStateAnalysisVisitor methodsFor: 'recovered'!
interpolateCalls
    ^#('interpolateOneD' 'interpolateTwoD' 'interpolateOneDGroup' 'interpolateTwoDGroup')
! !

"ASDBase.ic method 0x20022574; bytecode file offset 0x92209c"
!SGMdDistributionStateAnalysisVisitor methodsFor: 'recovered'!
adaptiveCalls
    ^#('setXOneD' 'setCurrentSizeOneD' 'setValueOneD' 'setCurrentSizeOneDGroup' 'setValueOneDGroup' 'setXTwoD' 'setValueTwoD' 'setYTwoD' 'setCurrentSizeXTwoD' 'setCurrentSizeYTwoD' 'setValueTwoDGroup' 'setCurrentSizeXTwoDGroup' 'setCurrentSizeYTwoDGroup' 'setXDistribution' 'setCurrentSizeDistribution')
! !

"ASDBase.ic method 0x200b8c60; bytecode file offset 0x9b5520"
!SGMdDistributionStateAnalysisVisitor methodsFor: 'recovered'!
searchSpecialCall: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := state.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) varDecl.
    recoveredValue3 := (recoveredValue2) errLabel.
    (recoveredValue0) searchDistribution: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2017d220; bytecode file offset 0xa79b2c"
!SGMdDistributionStateAnalysisVisitor methodsFor: 'recovered'!
varDeclForAlias: recoveredArg1 scope: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := SGMdBuilder.
    recoveredValue1 := (recoveredValue0) currentMdlBuilder.
    recoveredValue2 := (recoveredValue1) importList.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) mdlKey.
    recoveredValue5 := [].
    recoveredValue6 := (recoveredValue2) lookup: (recoveredValue4) ifFail: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := [].
    recoveredValue10 := (recoveredValue7) lookup: (recoveredValue8) ifFail: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x201d8734; bytecode file offset 0xad5008"
!SGMdDistributionStateAnalysisVisitor methodsFor: 'recovered'!
createNewState: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := SGMdDistributionStateAnalysisState.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) literalTrue.
    (recoveredValue2) literalTrue: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) literalFalse.
    (recoveredValue4) literalFalse: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) currentCondition: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := method.
    (recoveredValue8) initialize: (recoveredValue9).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20204d9c; bytecode file offset 0xb01664"
!SGMdDistributionStateAnalysisVisitor methodsFor: 'recovered'!
merge: recoveredArg1 with: recoveredArg2 condition: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGCgExpressionContext.
    recoveredValue1 := (recoveredValue0) nonArithmeticContext.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := recoveredArg3.
    recoveredBlock7Value3 := (self) asIleExpr: (recoveredBlock7Value2).
    recoveredBlock7Value4 := (recoveredBlock7Value0) merge: (recoveredBlock7Value1) condition: (recoveredBlock7Value3).
    recoveredBlock7Value4
].
    recoveredValue3 := (recoveredValue1) executeInContext: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20210528; bytecode file offset 0xb0cdf0"
!SGMdDistributionStateAnalysisVisitor methodsFor: 'recovered'!
checkDistributionState: recoveredArg1 method: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    method := recoveredValue0.
    recoveredValue1 := (self) literalTrue.
    recoveredValue2 := (self) createNewState: (recoveredValue1).
    state := recoveredValue2.
    recoveredValue3 := (self) generator.
    recoveredValue4 := [
    | recoveredBlock16Value0 recoveredBlock16Value1 |
    recoveredBlock16Value0 := recoveredArg1.
    recoveredBlock16Value1 := (recoveredBlock16Value0) mdlAcceptNodeVisitor: (self).
    recoveredBlock16Value1
].
    (recoveredValue3) disableMemClassReadCostsDo: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x203451ac; bytecode file offset 0xc41a90"
!SGMdDistributionStateAnalysisVisitor methodsFor: 'recovered'!
specialCall: recoveredArg1
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
            super specialCall: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) searchCalls.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlLabel.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) searchSpecialCall: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) adaptiveCalls.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlLabel.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := state.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) adaptiveSpecialCall: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) interpolateCalls.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlLabel.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) interpolateSpecialCall: (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ad9d4; bytecode file offset 0xdaa2cc"
!SGMdDistributionStateAnalysisVisitor methodsFor: 'recovered'!
interpolateSpecialCall: recoveredArg1 source: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlGroupCharTable.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlOneDCharTable.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) xDistributionAlias.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := (recoveredStack4) scope.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) varDeclForAlias: (recoveredStack3) scope: (recoveredStack4).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock45Value0 recoveredBlock45Value1 recoveredBlock45Value2 |
    recoveredBlock45Value0 := recoveredArg1.
    recoveredBlock45Value1 := (recoveredBlock45Value0) mdlClass.
    recoveredBlock45Value2 := (recoveredBlock45Value1) isMdlTwoDCharTable.
    recoveredBlock45Value2
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := [
    'There can be only 1D and 2D group char tables'
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) ileAssert: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := (recoveredStack3) mdlClass.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := (recoveredStack3) xDistributionAlias.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack4 := (recoveredStack4) scope.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) varDeclForAlias: (recoveredStack3) scope: (recoveredStack4).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlClass.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := (recoveredStack4) yDistributionAlias.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack5 := (recoveredStack5) scope.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := (recoveredStack3) varDeclForAlias: (recoveredStack4) scope: (recoveredStack5).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredPC := 120.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) varDecl.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := [:recoveredBlock123Arg1 | 
    | recoveredBlock123Value0 recoveredBlock123Value1 recoveredBlock123Value2 recoveredBlock123Value3 |
    recoveredBlock123Value0 := state.
    recoveredBlock123Value1 := recoveredBlock123Arg1.
    recoveredBlock123Value2 := recoveredArg2.
    recoveredBlock123Value3 := (recoveredBlock123Value0) checkDistribution: (recoveredBlock123Value1) source: (recoveredBlock123Value2).
    recoveredBlock123Value3
].
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

