"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20039d10; bytecode file offset 0x938608"
!SGIlProtectArrayIndexTransformation methodsFor: 'recovered'!
abstractDistributionSpecialCall: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) limitSpecialCall: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ae68; bytecode file offset 0x938608"
!SGIlProtectArrayIndexTransformation methodsFor: 'recovered'!
abstractOneDSpecialCall: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) limitSpecialCall: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b8c4; bytecode file offset 0x938608"
!SGIlProtectArrayIndexTransformation methodsFor: 'recovered'!
abstractOneDGroupSpecialCall: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) limitSpecialCall: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200824a0; bytecode file offset 0x97ed58"
!SGIlProtectArrayIndexTransformation methodsFor: 'recovered'!
lookup: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := builder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200acab4; bytecode file offset 0x9a9378"
!SGIlProtectArrayIndexTransformation methodsFor: 'recovered'!
replace: recoveredArg1 by: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := builder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20124144; bytecode file offset 0xa20a08"
!SGIlProtectArrayIndexTransformation methodsFor: 'recovered'!
protectIndex: recoveredArg1 array: recoveredArg2 interval: recoveredArg3 indexRange: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) ileBuilder.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue4) right.
    recoveredValue6 := (recoveredValue3) scalarConstant: (recoveredValue5).
    recoveredValue7 := (self) protectIndex: (recoveredValue0) array: (recoveredValue1) interval: (recoveredValue2) indexUpperBound: (recoveredValue6) lessEqual: (true).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201d9f58; bytecode file offset 0xad6824"
!SGIlProtectArrayIndexTransformation methodsFor: 'recovered'!
assertIntervals: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) ileContainsAssignAtExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            builder := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            super assertIntervals: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := builder.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f683c; bytecode file offset 0xbf3118"
!SGIlProtectArrayIndexTransformation methodsFor: 'recovered'!
limitVariableDimension: recoveredArg1 node: recoveredArg2 base: recoveredArg3 dimension: recoveredArg4 range: recoveredArg5
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) protectVecIndex.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerVariant.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := (recoveredStack5) asIleCopy.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileMaxSize: (recoveredStack5).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) protectIndex: (recoveredStack1) array: (recoveredStack2) interval: (recoveredStack3) indexUpperBound: (recoveredStack4) lessEqual: (recoveredStack5).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg5.
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
            recoveredStack6 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack6 := (recoveredStack6) generator.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack6 := (recoveredStack6) maxRepresentableUnsignedInDoubleBitSize.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := (recoveredStack4) left: (recoveredStack5) right: (recoveredStack6).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) protectIndex: (recoveredStack1) array: (recoveredStack2) interval: (recoveredStack3) indexRange: (recoveredStack4).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ecdb8; bytecode file offset 0xce96cc"
!SGIlProtectArrayIndexTransformation methodsFor: 'recovered'!
maxLeftExpr: recoveredArg1 rightExpr: recoveredArg2 source: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) interval.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) interval.
    recoveredValue4 := (recoveredValue1) max: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) ileBuilder.
    recoveredValue6 := (recoveredValue5) optimizeCommonSubexpression.
    recoveredValue7 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 |
    recoveredBlock18Value0 := recoveredArg1.
    recoveredBlock18Value1 := recoveredArg2.
    recoveredBlock18Value2 := (recoveredBlock18Value0) greaterEqualThan: (recoveredBlock18Value1).
    recoveredBlock18Value3 := recoveredBlock18Value2.
    recoveredLocal2 := recoveredBlock18Value3.
    recoveredBlock18Value2
].
    (recoveredValue6) disableOptimizationsDo: (recoveredValue7).
    recoveredValue8 := (self) ileBuilder.
    recoveredValue9 := recoveredArg3.
    recoveredValue10 := [
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 recoveredBlock44Value4 recoveredBlock44Value5 recoveredBlock44Value6 recoveredBlock44Value7 recoveredBlock44Value8 recoveredBlock44Value9 recoveredBlock44Value10 recoveredBlock44Value11 recoveredBlock44Value12 recoveredBlock44Value13 |
    recoveredBlock44Value0 := recoveredLocal2.
    recoveredBlock44Value1 := recoveredArg1.
    recoveredBlock44Value2 := (recoveredBlock44Value1) asIleCopy.
    recoveredBlock44Value3 := recoveredLocal1.
    recoveredBlock44Value4 := (recoveredBlock44Value2) decorateGoalInterval: (recoveredBlock44Value3).
    recoveredBlock44Value5 := recoveredArg2.
    recoveredBlock44Value6 := (recoveredBlock44Value5) asIleCopy.
    recoveredBlock44Value7 := recoveredLocal1.
    recoveredBlock44Value8 := (recoveredBlock44Value6) decorateGoalInterval: (recoveredBlock44Value7).
    recoveredBlock44Value9 := recoveredArg1.
    recoveredBlock44Value10 := (recoveredBlock44Value9) ileBasicType.
    recoveredBlock44Value11 := (recoveredBlock44Value0) artificialMuxLeftExpr: (recoveredBlock44Value4) rightExpr: (recoveredBlock44Value8) type: (recoveredBlock44Value10).
    recoveredBlock44Value12 := recoveredLocal1.
    recoveredBlock44Value13 := (recoveredBlock44Value11) decorateGoalInterval: (recoveredBlock44Value12).
    recoveredBlock44Value13
].
    recoveredValue11 := (recoveredValue8) useSource: (recoveredValue9) for: (recoveredValue10).
    ^recoveredValue11
! !

"ASDBase.ic method 0x203ecdec; bytecode file offset 0xce96cc"
!SGIlProtectArrayIndexTransformation methodsFor: 'recovered'!
minLeftExpr: recoveredArg1 rightExpr: recoveredArg2 source: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) interval.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) interval.
    recoveredValue4 := (recoveredValue1) min: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) ileBuilder.
    recoveredValue6 := (recoveredValue5) optimizeCommonSubexpression.
    recoveredValue7 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 |
    recoveredBlock18Value0 := recoveredArg1.
    recoveredBlock18Value1 := recoveredArg2.
    recoveredBlock18Value2 := (recoveredBlock18Value0) lessEqualThan: (recoveredBlock18Value1).
    recoveredBlock18Value3 := recoveredBlock18Value2.
    recoveredLocal2 := recoveredBlock18Value3.
    recoveredBlock18Value2
].
    (recoveredValue6) disableOptimizationsDo: (recoveredValue7).
    recoveredValue8 := (self) ileBuilder.
    recoveredValue9 := recoveredArg3.
    recoveredValue10 := [
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 recoveredBlock44Value4 recoveredBlock44Value5 recoveredBlock44Value6 recoveredBlock44Value7 recoveredBlock44Value8 recoveredBlock44Value9 recoveredBlock44Value10 recoveredBlock44Value11 recoveredBlock44Value12 recoveredBlock44Value13 |
    recoveredBlock44Value0 := recoveredLocal2.
    recoveredBlock44Value1 := recoveredArg1.
    recoveredBlock44Value2 := (recoveredBlock44Value1) asIleCopy.
    recoveredBlock44Value3 := recoveredLocal1.
    recoveredBlock44Value4 := (recoveredBlock44Value2) decorateGoalInterval: (recoveredBlock44Value3).
    recoveredBlock44Value5 := recoveredArg2.
    recoveredBlock44Value6 := (recoveredBlock44Value5) asIleCopy.
    recoveredBlock44Value7 := recoveredLocal1.
    recoveredBlock44Value8 := (recoveredBlock44Value6) decorateGoalInterval: (recoveredBlock44Value7).
    recoveredBlock44Value9 := recoveredArg1.
    recoveredBlock44Value10 := (recoveredBlock44Value9) ileBasicType.
    recoveredBlock44Value11 := (recoveredBlock44Value0) artificialMuxLeftExpr: (recoveredBlock44Value4) rightExpr: (recoveredBlock44Value8) type: (recoveredBlock44Value10).
    recoveredBlock44Value12 := recoveredLocal1.
    recoveredBlock44Value13 := (recoveredBlock44Value11) decorateGoalInterval: (recoveredBlock44Value12).
    recoveredBlock44Value13
].
    recoveredValue11 := (recoveredValue8) useSource: (recoveredValue9) for: (recoveredValue10).
    ^recoveredValue11
! !

"ASDBase.ic method 0x20408c14; bytecode file offset 0xd05518"
!SGIlProtectArrayIndexTransformation methodsFor: 'recovered'!
experimentError: recoveredArg1 index: recoveredArg2 array: recoveredArg3 result: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) ileBuilder.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue4) debugCode.
    recoveredValue6 := ('asdWriteUserError("<variable <') , (recoveredValue5).
    recoveredValue7 := (recoveredValue6) , ('> in component <').
    recoveredValue8 := (self) expander.
    recoveredValue9 := (recoveredValue8) errLabel.
    recoveredValue10 := (recoveredValue7) , (recoveredValue9).
    recoveredValue11 := (recoveredValue10) , ('>> Index out of range (').
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue11) , (recoveredValue12).
    recoveredValue14 := (recoveredValue13) , (')\n", ').
    recoveredValue15 := (self) ileBuilder.
    recoveredValue16 := (recoveredValue15) ileVoid.
    recoveredValue17 := (recoveredValue3) createANSICExpr: (#()) template: (recoveredValue14) type: (recoveredValue16).
    (recoveredValue2) add: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := recoveredArg2.
    recoveredValue20 := (recoveredValue19) asIleCopy.
    (recoveredValue18) add: (recoveredValue20).
    recoveredValue21 := recoveredValue1.
    recoveredValue22 := (self) ileBuilder.
    recoveredValue23 := (self) ileBuilder.
    recoveredValue24 := (recoveredValue23) ileVoid.
    recoveredValue25 := (recoveredValue22) createANSICExpr: (#()) template: (')') type: (recoveredValue24).
    (recoveredValue21) add: (recoveredValue25).
    recoveredLocal1 := recoveredValue1.
    recoveredValue26 := (self) ileBuilder.
    recoveredValue27 := Array.
    recoveredValue28 := (self) ileBuilder.
    recoveredValue29 := recoveredLocal1.
    recoveredValue30 := (self) ileBuilder.
    recoveredValue31 := (recoveredValue30) ileVoid.
    recoveredValue32 := (recoveredValue28) createANSICExpr: (recoveredValue29) template: (nil) type: (recoveredValue31).
    recoveredValue33 := recoveredArg4.
    recoveredValue34 := (recoveredValue33) asIleCopy.
    recoveredValue35 := (recoveredValue27) with: (recoveredValue32) with: (recoveredValue34).
    recoveredValue36 := (recoveredValue26) createCommaExpr: (recoveredValue35).
    ^recoveredValue36
! !

"ASDBase.ic method 0x20410d44; bytecode file offset 0xd0d628"
!SGIlProtectArrayIndexTransformation methodsFor: 'recovered'!
visitNode: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := super visitNode: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) rebuildNode: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleExpr.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleArithmeticExpr.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleParmAssign.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) representableInDoubleBitSize.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeOrNil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeOrNil.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplInterval.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) intersect: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeRepresentableInDoubleBitSize.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20446ee0; bytecode file offset 0xd437c8"
!SGIlProtectArrayIndexTransformation methodsFor: 'recovered'!
rebuildNode: recoveredArg1 do: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isIleTempAssignedExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitedTempAssignExprs.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := builder.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) intervalForNode: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := builder.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := SGIlRebuildWithNewChildren.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            builder := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock53Local1 recoveredBlock53Stack0 recoveredBlock53Stack1 recoveredBlock53Stack2 recoveredBlock53Stack3 recoveredBlock53PC recoveredBlock53Step recoveredBlock53Done recoveredBlock53Result |
    recoveredBlock53Stack0 := self.
    recoveredBlock53PC := 60.
    recoveredBlock53Done := false.
    [recoveredBlock53Done not] whileTrue: [
        recoveredBlock53Step := recoveredBlock53PC.
        recoveredBlock53Step = 60 ifTrue: [
            recoveredBlock53Stack1 := builder.
            recoveredBlock53PC := 62.
        ].
        recoveredBlock53Step = 62 ifTrue: [
            recoveredBlock53Stack2 := recoveredArg1.
            recoveredBlock53PC := 65.
        ].
        recoveredBlock53Step = 65 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) rebuildNode: (recoveredBlock53Stack2).
            recoveredBlock53PC := 67.
        ].
        recoveredBlock53Step = 67 ifTrue: [
            recoveredBlock53Local1 := recoveredBlock53Stack1.
            recoveredBlock53PC := 68.
        ].
        recoveredBlock53Step = 68 ifTrue: [
            recoveredBlock53Stack1 := recoveredLocal1.
            recoveredBlock53PC := 71.
        ].
        recoveredBlock53Step = 71 ifTrue: [
            builder := recoveredBlock53Stack1.
            recoveredBlock53PC := 73.
        ].
        recoveredBlock53Step = 73 ifTrue: [
            recoveredBlock53Stack1 := [
    | recoveredBlock53Block73Value0 recoveredBlock53Block73Value1 recoveredBlock53Block73Value2 recoveredBlock53Block73Value3 |
    recoveredBlock53Block73Value0 := builder.
    recoveredBlock53Block73Value1 := recoveredArg1.
    recoveredBlock53Block73Value2 := (recoveredBlock53Block73Value0) includes: (recoveredBlock53Block73Value1).
    recoveredBlock53Block73Value3 := (recoveredBlock53Block73Value2) not.
    recoveredBlock53Block73Value3
].
            recoveredBlock53PC := 89.
        ].
        recoveredBlock53Step = 89 ifTrue: [
            recoveredBlock53Stack2 := [
    'Children nodes should be unique.'
].
            recoveredBlock53PC := 91.
        ].
        recoveredBlock53Step = 91 ifTrue: [
            recoveredBlock53PC := 97.
        ].
        recoveredBlock53Step = 97 ifTrue: [
            (recoveredBlock53Stack0) ileAssert: (recoveredBlock53Stack1) message: (recoveredBlock53Stack2).
            recoveredBlock53PC := 99.
        ].
        recoveredBlock53Step = 99 ifTrue: [
            recoveredBlock53Stack0 := builder.
            recoveredBlock53PC := 101.
        ].
        recoveredBlock53Step = 101 ifTrue: [
            recoveredBlock53Stack1 := recoveredArg1.
            recoveredBlock53PC := 104.
        ].
        recoveredBlock53Step = 104 ifTrue: [
            recoveredBlock53Stack2 := recoveredBlock53Local1.
            recoveredBlock53PC := 105.
        ].
        recoveredBlock53Step = 105 ifTrue: [
            recoveredBlock53Stack0 := (recoveredBlock53Stack0) at: (recoveredBlock53Stack1) put: (recoveredBlock53Stack2).
            recoveredBlock53PC := 107.
        ].
        recoveredBlock53Step = 107 ifTrue: [
            recoveredBlock53Result := recoveredBlock53Stack0.
            recoveredBlock53Done := true.
        ].
    ].
    recoveredBlock53Result
].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) ensure: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204b0688; bytecode file offset 0xdacf98"
!SGIlProtectArrayIndexTransformation methodsFor: 'recovered'!
limitSpecialCall: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleReferencedExpr.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) args.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Local1 recoveredBlock37Stack0 recoveredBlock37Stack1 recoveredBlock37Stack2 recoveredBlock37Stack3 recoveredBlock37PC recoveredBlock37Step recoveredBlock37Done recoveredBlock37Result |
    recoveredBlock37Stack0 := self.
    recoveredBlock37PC := 44.
    recoveredBlock37Done := false.
    [recoveredBlock37Done not] whileTrue: [
        recoveredBlock37Step := recoveredBlock37PC.
        recoveredBlock37Step = 44 ifTrue: [
            recoveredBlock37Stack1 := recoveredArg1.
            recoveredBlock37PC := 47.
        ].
        recoveredBlock37Step = 47 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) args.
            recoveredBlock37PC := 48.
        ].
        recoveredBlock37Step = 48 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Arg1.
            recoveredBlock37PC := 51.
        ].
        recoveredBlock37Step = 51 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) at: (recoveredBlock37Stack2).
            recoveredBlock37PC := 53.
        ].
        recoveredBlock37Step = 53 ifTrue: [
            recoveredBlock37Local1 := recoveredBlock37Stack1.
            recoveredBlock37PC := 56.
        ].
        recoveredBlock37Step = 56 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Local1.
            recoveredBlock37PC := 59.
        ].
        recoveredBlock37Step = 59 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) parmAttributes.
            recoveredBlock37PC := 61.
        ].
        recoveredBlock37Step = 61 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) isCgAttrSpecialCallIndexArgument.
            recoveredBlock37PC := 63.
        ].
        recoveredBlock37Step = 63 ifTrue: [
            (recoveredBlock37Stack1) ifTrue: [recoveredBlock37PC := 66] ifFalse: [recoveredBlock37PC := 128].
        ].
        recoveredBlock37Step = 66 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Local1.
            recoveredBlock37PC := 69.
        ].
        recoveredBlock37Step = 69 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) expressionContext.
            recoveredBlock37PC := 71.
        ].
        recoveredBlock37Step = 71 ifTrue: [
            recoveredBlock37Stack2 := [
    | recoveredBlock37Block71Local1 recoveredBlock37Block71Value0 recoveredBlock37Block71Value1 recoveredBlock37Block71Value2 recoveredBlock37Block71Value3 recoveredBlock37Block71Value4 recoveredBlock37Block71Value5 recoveredBlock37Block71Value6 recoveredBlock37Block71Value7 recoveredBlock37Block71Value8 recoveredBlock37Block71Value9 recoveredBlock37Block71Value10 recoveredBlock37Block71Value11 recoveredBlock37Block71Value12 recoveredBlock37Block71Value13 recoveredBlock37Block71Value14 recoveredBlock37Block71Value15 recoveredBlock37Block71Value16 |
    recoveredBlock37Block71Value0 := SGCgTypeFactory.
    recoveredBlock37Block71Value1 := recoveredBlock37Local1.
    recoveredBlock37Block71Value2 := (recoveredBlock37Block71Value1) type.
    recoveredBlock37Block71Value3 := (recoveredBlock37Block71Value2) getImplInterval.
    recoveredBlock37Block71Value4 := (recoveredBlock37Block71Value3) right.
    recoveredBlock37Block71Value5 := (recoveredBlock37Block71Value4) + (1).
    recoveredBlock37Block71Value6 := (recoveredBlock37Block71Value0) arrayDimension: (recoveredBlock37Block71Value5) variant: (nil) specialCallName: ('').
    recoveredBlock37Block71Local1 := recoveredBlock37Block71Value6.
    recoveredBlock37Block71Value7 := recoveredBlock37Local1.
    recoveredBlock37Block71Value8 := recoveredBlock37Local1.
    recoveredBlock37Block71Value9 := recoveredBlock37Local1.
    recoveredBlock37Block71Value10 := (recoveredBlock37Block71Value9) expr.
    recoveredBlock37Block71Value11 := recoveredArg1.
    recoveredBlock37Block71Value12 := recoveredLocal1.
    recoveredBlock37Block71Value13 := recoveredBlock37Block71Local1.
    recoveredBlock37Block71Value14 := (self) limitExpression: (recoveredBlock37Block71Value10) node: (recoveredBlock37Block71Value11) base: (recoveredBlock37Block71Value12) dimension: (recoveredBlock37Block71Value13).
    recoveredBlock37Block71Value15 := (recoveredBlock37Block71Value8) createOp: (recoveredBlock37Block71Value14).
    recoveredBlock37Block71Value16 := (self) replace: (recoveredBlock37Block71Value7) by: (recoveredBlock37Block71Value15).
    recoveredBlock37Block71Value16
].
            recoveredBlock37PC := 123.
        ].
        recoveredBlock37Step = 123 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) executeInContext: (recoveredBlock37Stack2).
            recoveredBlock37PC := 125.
        ].
        recoveredBlock37Step = 125 ifTrue: [
            recoveredBlock37PC := 134.
        ].
        recoveredBlock37Step = 128 ifTrue: [
            recoveredBlock37Stack1 := self.
            recoveredBlock37PC := 129.
        ].
        recoveredBlock37Step = 129 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Local1.
            recoveredBlock37PC := 132.
        ].
        recoveredBlock37Step = 132 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) visitNode: (recoveredBlock37Stack2).
            recoveredBlock37PC := 134.
        ].
        recoveredBlock37Step = 134 ifTrue: [
            recoveredBlock37Result := recoveredBlock37Stack1.
            recoveredBlock37Done := true.
        ].
    ].
    recoveredBlock37Result
].
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) intervalForNode: (recoveredStack1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c4b74; bytecode file offset 0xdc1478"
!SGIlProtectArrayIndexTransformation methodsFor: 'recovered'!
limitFixedDimension: recoveredArg1 node: recoveredArg2 base: recoveredArg3 dimension: recoveredArg4 range: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) intersect: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 77.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabel.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack5 := (recoveredStack5) source.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack7 := 'Allowed index range: '.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack8 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack8 := (recoveredStack8) asString.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack7 := (recoveredStack7) , (recoveredStack8).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack5 := (recoveredStack5) createMultiSource: (recoveredStack6) labels: (recoveredStack7).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ileSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) source: (recoveredStack5).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 101.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredArg5.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 101] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) protectVecIndex.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := ' - will be limited'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := ' - will not be limited'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := 77.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabel.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack6 := (recoveredStack6) source.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack8 := 'Allowed index range: '.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack9 := recoveredLocal2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack9 := (recoveredStack9) asString.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack8 := (recoveredStack8) , (recoveredStack9).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack6 := (recoveredStack6) createMultiSource: (recoveredStack7) labels: (recoveredStack8).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) ileWarningNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) source: (recoveredStack6).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) protectVecIndex.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerVariant.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack4 := (recoveredStack4) right.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) protectIndex: (recoveredStack1) array: (recoveredStack2) interval: (recoveredStack3) indexRange: (recoveredStack4).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) protectIndex: (recoveredStack1) array: (recoveredStack2) interval: (recoveredStack3) indexUpperBound: (recoveredStack4) lessEqual: (recoveredStack5).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ff2e0; bytecode file offset 0xdfbc0c"
!SGIlProtectArrayIndexTransformation methodsFor: 'recovered'!
limitExpression: recoveredArg1 node: recoveredArg2 base: recoveredArg3 dimension: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgVariantDimension.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := SGMdIdentifier.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) create.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := OrderedCollection.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack6 := recoveredArg4.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack6 := (recoveredStack6) sysConstDecl.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack4) accessChain: (recoveredStack5).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileMaxSizeType.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) createModelIdentifier: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := RBInterval.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) createDefault.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := (recoveredStack4) asInterval.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) max: (recoveredStack4).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) restrict: (recoveredStack2) interval: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookup: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 56.
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
            recoveredStack0 := (recoveredStack0) isIntegerVariant.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerVariant.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) protectVecIndex.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 125].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgVariantDimension.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 105].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) resolveSystemConstantsAtRunTime.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 105].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) limitVariantDimension: (recoveredStack1) node: (recoveredStack2) base: (recoveredStack3) dimension: (recoveredStack4) range: (recoveredStack5).
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
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack4 := RBInterval.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack6 := (recoveredStack6) generator.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack6 := (recoveredStack6) maxRepresentableUnsignedInDoubleBitSize.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack6 := (recoveredStack6) + (1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack4 := (recoveredStack4) left: (recoveredStack5) right: (recoveredStack6).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) protectIndex: (recoveredStack1) array: (recoveredStack2) interval: (recoveredStack3) indexRange: (recoveredStack4).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 125 ifTrue: [
            recoveredPC := 174.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgVariantDimension.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 145].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) limitVariantDimension: (recoveredStack1) node: (recoveredStack2) base: (recoveredStack3) dimension: (recoveredStack4) range: (recoveredStack5).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgVariableDimension.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 163].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) limitVariableDimension: (recoveredStack1) node: (recoveredStack2) base: (recoveredStack3) dimension: (recoveredStack4) range: (recoveredStack5).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) limitFixedDimension: (recoveredStack1) node: (recoveredStack2) base: (recoveredStack3) dimension: (recoveredStack4) range: (recoveredStack5).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2052e38c; bytecode file offset 0xe2ac98"
!SGIlProtectArrayIndexTransformation methodsFor: 'recovered'!
assignAtExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) baseExpr.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) type.
    recoveredValue4 := (recoveredValue3) asCgDereferencedType.
    recoveredLocal3 := recoveredValue4.
    recoveredValue5 := SGCgExpressionContext.
    recoveredValue6 := (recoveredValue5) nonArithmeticContext.
    recoveredValue7 := [
    | recoveredBlock23Value0 recoveredBlock23Value1 |
    recoveredBlock23Value0 := recoveredLocal1.
    recoveredBlock23Value1 := (self) visitNode: (recoveredBlock23Value0).
    recoveredBlock23Value1
].
    (recoveredValue6) executeInContext: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) expressionContext.
    recoveredValue10 := [
    | recoveredBlock43Local1 recoveredBlock43Local2 recoveredBlock43Local3 recoveredBlock43Local4 recoveredBlock43Stack0 recoveredBlock43Stack1 recoveredBlock43Stack2 recoveredBlock43Stack3 recoveredBlock43Stack4 recoveredBlock43Stack5 recoveredBlock43Stack6 recoveredBlock43Stack7 recoveredBlock43Stack8 recoveredBlock43PC recoveredBlock43Step recoveredBlock43Done recoveredBlock43Result |
    recoveredBlock43Stack0 := self.
    recoveredBlock43PC := 50.
    recoveredBlock43Done := false.
    [recoveredBlock43Done not] whileTrue: [
        recoveredBlock43Step := recoveredBlock43PC.
        recoveredBlock43Step = 50 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) generator.
            recoveredBlock43PC := 52.
        ].
        recoveredBlock43Step = 52 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) isControllerVariant.
            recoveredBlock43PC := 54.
        ].
        recoveredBlock43Step = 54 ifTrue: [
            (recoveredBlock43Stack0) ifTrue: [recoveredBlock43PC := 58] ifFalse: [recoveredBlock43PC := 104].
        ].
        recoveredBlock43Step = 58 ifTrue: [
            recoveredBlock43Stack0 := recoveredLocal3.
            recoveredBlock43PC := 61.
        ].
        recoveredBlock43Step = 61 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) isCgVariableArray.
            recoveredBlock43PC := 63.
        ].
        recoveredBlock43Step = 63 ifTrue: [
            (recoveredBlock43Stack0) ifTrue: [recoveredBlock43PC := 66] ifFalse: [recoveredBlock43PC := 104].
        ].
        recoveredBlock43Step = 66 ifTrue: [
            recoveredBlock43Stack0 := SGCgExpressionContext.
            recoveredBlock43PC := 68.
        ].
        recoveredBlock43Step = 68 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) nonArithmeticContext.
            recoveredBlock43PC := 70.
        ].
        recoveredBlock43Step = 70 ifTrue: [
            recoveredBlock43Stack1 := [
    | recoveredBlock43Block70Value0 recoveredBlock43Block70Value1 recoveredBlock43Block70Value2 recoveredBlock43Block70Value3 recoveredBlock43Block70Value4 |
    recoveredBlock43Block70Value0 := recoveredLocal1.
    recoveredBlock43Block70Value1 := recoveredLocal1.
    recoveredBlock43Block70Value2 := (recoveredBlock43Block70Value1) receiver.
    recoveredBlock43Block70Value3 := (recoveredBlock43Block70Value2) asIleSideEffectFreeBufferedExpr.
    recoveredBlock43Block70Value4 := (recoveredBlock43Block70Value0) createOpReceiver: (recoveredBlock43Block70Value3).
    recoveredBlock43Block70Value4
].
            recoveredBlock43PC := 89.
        ].
        recoveredBlock43Step = 89 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) executeInContext: (recoveredBlock43Stack1).
            recoveredBlock43PC := 91.
        ].
        recoveredBlock43Step = 91 ifTrue: [
            recoveredLocal1 := recoveredBlock43Stack0.
            recoveredBlock43PC := 94.
        ].
        recoveredBlock43Step = 94 ifTrue: [
            recoveredBlock43Stack0 := self.
            recoveredBlock43PC := 95.
        ].
        recoveredBlock43Step = 95 ifTrue: [
            recoveredBlock43Stack1 := recoveredArg1.
            recoveredBlock43PC := 98.
        ].
        recoveredBlock43Step = 98 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) baseExpr.
            recoveredBlock43PC := 99.
        ].
        recoveredBlock43Step = 99 ifTrue: [
            recoveredBlock43Stack2 := recoveredLocal1.
            recoveredBlock43PC := 102.
        ].
        recoveredBlock43Step = 102 ifTrue: [
            (recoveredBlock43Stack0) replace: (recoveredBlock43Stack1) by: (recoveredBlock43Stack2).
            recoveredBlock43PC := 104.
        ].
        recoveredBlock43Step = 104 ifTrue: [
            recoveredBlock43Stack0 := 0.
            recoveredBlock43PC := 106.
        ].
        recoveredBlock43Step = 106 ifTrue: [
            recoveredBlock43Local4 := recoveredBlock43Stack0.
            recoveredBlock43PC := 107.
        ].
        recoveredBlock43Step = 107 ifTrue: [
            recoveredBlock43Stack0 := recoveredArg1.
            recoveredBlock43PC := 110.
        ].
        recoveredBlock43Step = 110 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) args.
            recoveredBlock43PC := 112.
        ].
        recoveredBlock43Step = 112 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) size.
            recoveredBlock43PC := 114.
        ].
        recoveredBlock43Step = 114 ifTrue: [
            recoveredBlock43PC := 178.
        ].
        recoveredBlock43Step = 118 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal3.
            recoveredBlock43PC := 121.
        ].
        recoveredBlock43Step = 121 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) dimensions.
            recoveredBlock43PC := 123.
        ].
        recoveredBlock43Step = 123 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Local4.
            recoveredBlock43PC := 124.
        ].
        recoveredBlock43Step = 124 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) at: (recoveredBlock43Stack2).
            recoveredBlock43PC := 126.
        ].
        recoveredBlock43Step = 126 ifTrue: [
            recoveredBlock43Local3 := recoveredBlock43Stack1.
            recoveredBlock43PC := 127.
        ].
        recoveredBlock43Step = 127 ifTrue: [
            recoveredBlock43Stack1 := recoveredArg1.
            recoveredBlock43PC := 130.
        ].
        recoveredBlock43Step = 130 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) args.
            recoveredBlock43PC := 132.
        ].
        recoveredBlock43Step = 132 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Local4.
            recoveredBlock43PC := 133.
        ].
        recoveredBlock43Step = 133 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) at: (recoveredBlock43Stack2).
            recoveredBlock43PC := 135.
        ].
        recoveredBlock43Step = 135 ifTrue: [
            recoveredBlock43Local2 := recoveredBlock43Stack1.
            recoveredBlock43PC := 136.
        ].
        recoveredBlock43Step = 136 ifTrue: [
            recoveredBlock43Stack1 := recoveredArg1.
            recoveredBlock43PC := 139.
        ].
        recoveredBlock43Step = 139 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) suppressIndexLimitation.
            recoveredBlock43PC := 141.
        ].
        recoveredBlock43Step = 141 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Local4.
            recoveredBlock43PC := 142.
        ].
        recoveredBlock43Step = 142 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) at: (recoveredBlock43Stack2).
            recoveredBlock43PC := 144.
        ].
        recoveredBlock43Step = 144 ifTrue: [
            (recoveredBlock43Stack1) ifTrue: [recoveredBlock43PC := 148] ifFalse: [recoveredBlock43PC := 156].
        ].
        recoveredBlock43Step = 148 ifTrue: [
            recoveredBlock43Stack1 := self.
            recoveredBlock43PC := 149.
        ].
        recoveredBlock43Step = 149 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Local2.
            recoveredBlock43PC := 150.
        ].
        recoveredBlock43Step = 150 ifTrue: [
            (recoveredBlock43Stack1) visitNode: (recoveredBlock43Stack2).
            recoveredBlock43PC := 152.
        ].
        recoveredBlock43Step = 152 ifTrue: [
            recoveredBlock43PC := 172.
        ].
        recoveredBlock43Step = 156 ifTrue: [
            recoveredBlock43Stack1 := self.
            recoveredBlock43PC := 157.
        ].
        recoveredBlock43Step = 157 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Local2.
            recoveredBlock43PC := 158.
        ].
        recoveredBlock43Step = 158 ifTrue: [
            recoveredBlock43Stack3 := self.
            recoveredBlock43PC := 159.
        ].
        recoveredBlock43Step = 159 ifTrue: [
            recoveredBlock43Stack4 := recoveredBlock43Local2.
            recoveredBlock43PC := 160.
        ].
        recoveredBlock43Step = 160 ifTrue: [
            recoveredBlock43Stack5 := recoveredArg1.
            recoveredBlock43PC := 163.
        ].
        recoveredBlock43Step = 163 ifTrue: [
            recoveredBlock43Stack6 := recoveredLocal1.
            recoveredBlock43PC := 166.
        ].
        recoveredBlock43Step = 166 ifTrue: [
            recoveredBlock43Stack7 := recoveredBlock43Local3.
            recoveredBlock43PC := 167.
        ].
        recoveredBlock43Step = 167 ifTrue: [
            recoveredBlock43Stack3 := (recoveredBlock43Stack3) limitExpression: (recoveredBlock43Stack4) node: (recoveredBlock43Stack5) base: (recoveredBlock43Stack6) dimension: (recoveredBlock43Stack7).
            recoveredBlock43PC := 170.
        ].
        recoveredBlock43Step = 170 ifTrue: [
            (recoveredBlock43Stack1) replace: (recoveredBlock43Stack2) by: (recoveredBlock43Stack3).
            recoveredBlock43PC := 172.
        ].
        recoveredBlock43Step = 172 ifTrue: [
            recoveredBlock43Stack1 := nil.
            recoveredBlock43PC := 173.
        ].
        recoveredBlock43Step = 173 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Stack1.
            recoveredBlock43PC := 174.
        ].
        recoveredBlock43Step = 174 ifTrue: [
            recoveredBlock43Local3 := recoveredBlock43Stack2.
            recoveredBlock43PC := 175.
        ].
        recoveredBlock43Step = 175 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Stack1.
            recoveredBlock43PC := 176.
        ].
        recoveredBlock43Step = 176 ifTrue: [
            recoveredBlock43Local2 := recoveredBlock43Stack2.
            recoveredBlock43PC := 177.
        ].
        recoveredBlock43Step = 177 ifTrue: [
            recoveredBlock43Local1 := recoveredBlock43Stack1.
            recoveredBlock43PC := 178.
        ].
        recoveredBlock43Step = 178 ifTrue: [
            (recoveredBlock43Stack0 isInteger and: [recoveredBlock43Local4 isInteger]) ifTrue: [(recoveredBlock43Local4 + 1 <= recoveredBlock43Stack0) ifTrue: [recoveredBlock43Local4 := recoveredBlock43Local4 + 1. recoveredBlock43PC := 118] ifFalse: [recoveredBlock43Local4 := nil. recoveredBlock43PC := 192]] ifFalse: [recoveredBlock43PC := 182].
        ].
        recoveredBlock43Step = 182 ifTrue: [
            recoveredBlock43Stack1 := recoveredBlock43Stack0.
            recoveredBlock43PC := 183.
        ].
        recoveredBlock43Step = 183 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Local4.
            recoveredBlock43PC := 184.
        ].
        recoveredBlock43Step = 184 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) + (1).
            recoveredBlock43PC := 185.
        ].
        recoveredBlock43Step = 185 ifTrue: [
            recoveredBlock43Stack3 := recoveredBlock43Stack2.
            recoveredBlock43PC := 186.
        ].
        recoveredBlock43Step = 186 ifTrue: [
            recoveredBlock43Local4 := recoveredBlock43Stack3.
            recoveredBlock43PC := 187.
        ].
        recoveredBlock43Step = 187 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) < (recoveredBlock43Stack2).
            recoveredBlock43PC := 188.
        ].
        recoveredBlock43Step = 188 ifTrue: [
            (recoveredBlock43Stack1) ifTrue: [recoveredBlock43PC := 190] ifFalse: [recoveredBlock43PC := 118].
        ].
        recoveredBlock43Step = 190 ifTrue: [
            recoveredBlock43Stack1 := nil.
            recoveredBlock43PC := 191.
        ].
        recoveredBlock43Step = 191 ifTrue: [
            recoveredBlock43Local4 := recoveredBlock43Stack1.
            recoveredBlock43PC := 192.
        ].
        recoveredBlock43Step = 192 ifTrue: [
            recoveredBlock43Result := recoveredBlock43Stack0.
            recoveredBlock43Done := true.
        ].
    ].
    recoveredBlock43Result
].
    (recoveredValue9) executeInContext: (recoveredValue10).
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (self) intervalForNode: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x205c4ad4; bytecode file offset 0xec1414"
!SGIlProtectArrayIndexTransformation methodsFor: 'recovered'!
protectIndex: recoveredArg1 array: recoveredArg2 interval: recoveredArg3 indexUpperBound: recoveredArg4 lessEqual: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleSideEffectFreeBufferedExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizationFactory.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 |
    recoveredBlock18Value0 := (self) ileBuilder.
    recoveredBlock18Value1 := recoveredArg1.
    recoveredBlock18Value2 := (recoveredBlock18Value1) source.
    recoveredBlock18Value3 := [
    | recoveredBlock18Block29Local1 recoveredBlock18Block29Local2 recoveredBlock18Block29Local3 recoveredBlock18Block29Local4 recoveredBlock18Block29Local5 recoveredBlock18Block29Stack0 recoveredBlock18Block29Stack1 recoveredBlock18Block29Stack2 recoveredBlock18Block29Stack3 recoveredBlock18Block29Stack4 recoveredBlock18Block29Stack5 recoveredBlock18Block29PC recoveredBlock18Block29Step recoveredBlock18Block29Done recoveredBlock18Block29Result |
    recoveredBlock18Block29Stack0 := self.
    recoveredBlock18Block29PC := 36.
    recoveredBlock18Block29Done := false.
    [recoveredBlock18Block29Done not] whileTrue: [
        recoveredBlock18Block29Step := recoveredBlock18Block29PC.
        recoveredBlock18Block29Step = 36 ifTrue: [
            recoveredBlock18Block29Stack0 := (recoveredBlock18Block29Stack0) generator.
            recoveredBlock18Block29PC := 38.
        ].
        recoveredBlock18Block29Step = 38 ifTrue: [
            recoveredBlock18Block29Stack0 := (recoveredBlock18Block29Stack0) maxUnsignedImplType.
            recoveredBlock18Block29PC := 40.
        ].
        recoveredBlock18Block29Step = 40 ifTrue: [
            recoveredBlock18Block29Local5 := recoveredBlock18Block29Stack0.
            recoveredBlock18Block29PC := 42.
        ].
        recoveredBlock18Block29Step = 42 ifTrue: [
            recoveredBlock18Block29Stack0 := self.
            recoveredBlock18Block29PC := 43.
        ].
        recoveredBlock18Block29Step = 43 ifTrue: [
            recoveredBlock18Block29Stack0 := (recoveredBlock18Block29Stack0) generator.
            recoveredBlock18Block29PC := 45.
        ].
        recoveredBlock18Block29Step = 45 ifTrue: [
            recoveredBlock18Block29Stack0 := (recoveredBlock18Block29Stack0) isIntegerVariant.
            recoveredBlock18Block29PC := 47.
        ].
        recoveredBlock18Block29Step = 47 ifTrue: [
            (recoveredBlock18Block29Stack0) ifTrue: [recoveredBlock18Block29PC := 64] ifFalse: [recoveredBlock18Block29PC := 50].
        ].
        recoveredBlock18Block29Step = 50 ifTrue: [
            recoveredBlock18Block29Stack0 := SGCgTypeFactory.
            recoveredBlock18Block29PC := 52.
        ].
        recoveredBlock18Block29Step = 52 ifTrue: [
            recoveredBlock18Block29Stack1 := recoveredBlock18Block29Local5.
            recoveredBlock18Block29PC := 54.
        ].
        recoveredBlock18Block29Step = 54 ifTrue: [
            recoveredBlock18Block29Stack2 := recoveredBlock18Block29Local5.
            recoveredBlock18Block29PC := 56.
        ].
        recoveredBlock18Block29Step = 56 ifTrue: [
            recoveredBlock18Block29Stack2 := (recoveredBlock18Block29Stack2) getInterval.
            recoveredBlock18Block29PC := 58.
        ].
        recoveredBlock18Block29Step = 58 ifTrue: [
            recoveredBlock18Block29Stack3 := nil.
            recoveredBlock18Block29PC := 59.
        ].
        recoveredBlock18Block29Step = 59 ifTrue: [
            recoveredBlock18Block29Stack0 := (recoveredBlock18Block29Stack0) createUDiscType: (recoveredBlock18Block29Stack1) interval: (recoveredBlock18Block29Stack2) physicalUnit: (recoveredBlock18Block29Stack3).
            recoveredBlock18Block29PC := 62.
        ].
        recoveredBlock18Block29Step = 62 ifTrue: [
            recoveredBlock18Block29Local5 := recoveredBlock18Block29Stack0.
            recoveredBlock18Block29PC := 64.
        ].
        recoveredBlock18Block29Step = 64 ifTrue: [
            recoveredBlock18Block29Stack0 := recoveredArg4.
            recoveredBlock18Block29PC := 67.
        ].
        recoveredBlock18Block29Step = 67 ifTrue: [
            (recoveredBlock18Block29Stack0 == nil) ifTrue: [recoveredBlock18Block29PC := 216] ifFalse: [recoveredBlock18Block29PC := 70].
        ].
        recoveredBlock18Block29Step = 70 ifTrue: [
            recoveredBlock18Block29Stack0 := self.
            recoveredBlock18Block29PC := 71.
        ].
        recoveredBlock18Block29Step = 71 ifTrue: [
            recoveredBlock18Block29Stack0 := (recoveredBlock18Block29Stack0) state.
            recoveredBlock18Block29PC := 73.
        ].
        recoveredBlock18Block29Step = 73 ifTrue: [
            recoveredBlock18Block29Stack1 := recoveredArg1.
            recoveredBlock18Block29PC := 76.
        ].
        recoveredBlock18Block29Step = 76 ifTrue: [
            recoveredBlock18Block29Stack2 := recoveredArg4.
            recoveredBlock18Block29PC := 79.
        ].
        recoveredBlock18Block29Step = 79 ifTrue: [
            recoveredBlock18Block29Stack0 := (recoveredBlock18Block29Stack0) check: (recoveredBlock18Block29Stack1) isLessThan: (recoveredBlock18Block29Stack2).
            recoveredBlock18Block29PC := 81.
        ].
        recoveredBlock18Block29Step = 81 ifTrue: [
            (recoveredBlock18Block29Stack0) ifTrue: [recoveredBlock18Block29PC := 216] ifFalse: [recoveredBlock18Block29PC := 84].
        ].
        recoveredBlock18Block29Step = 84 ifTrue: [
            recoveredBlock18Block29Stack0 := recoveredArg3.
            recoveredBlock18Block29PC := 87.
        ].
        recoveredBlock18Block29Step = 87 ifTrue: [
            recoveredBlock18Block29Stack0 := (recoveredBlock18Block29Stack0) right.
            recoveredBlock18Block29PC := 89.
        ].
        recoveredBlock18Block29Step = 89 ifTrue: [
            recoveredBlock18Block29Stack1 := recoveredArg4.
            recoveredBlock18Block29PC := 92.
        ].
        recoveredBlock18Block29Step = 92 ifTrue: [
            recoveredBlock18Block29Stack1 := (recoveredBlock18Block29Stack1) interval.
            recoveredBlock18Block29PC := 94.
        ].
        recoveredBlock18Block29Step = 94 ifTrue: [
            recoveredBlock18Block29Stack1 := (recoveredBlock18Block29Stack1) left.
            recoveredBlock18Block29PC := 96.
        ].
        recoveredBlock18Block29Step = 96 ifTrue: [
            recoveredBlock18Block29Stack0 := (recoveredBlock18Block29Stack0) >= (recoveredBlock18Block29Stack1).
            recoveredBlock18Block29PC := 97.
        ].
        recoveredBlock18Block29Step = 97 ifTrue: [
            (recoveredBlock18Block29Stack0) ifTrue: [recoveredBlock18Block29PC := 100] ifFalse: [recoveredBlock18Block29PC := 216].
        ].
        recoveredBlock18Block29Step = 100 ifTrue: [
            recoveredBlock18Block29Stack0 := recoveredArg4.
            recoveredBlock18Block29PC := 103.
        ].
        recoveredBlock18Block29Step = 103 ifTrue: [
            recoveredBlock18Block29Stack1 := self.
            recoveredBlock18Block29PC := 104.
        ].
        recoveredBlock18Block29Step = 104 ifTrue: [
            recoveredBlock18Block29Stack1 := (recoveredBlock18Block29Stack1) ileBuilder.
            recoveredBlock18Block29PC := 105.
        ].
        recoveredBlock18Block29Step = 105 ifTrue: [
            recoveredBlock18Block29Stack1 := (recoveredBlock18Block29Stack1) literalOne.
            recoveredBlock18Block29PC := 107.
        ].
        recoveredBlock18Block29Step = 107 ifTrue: [
            recoveredBlock18Block29Stack2 := recoveredBlock18Block29Local5.
            recoveredBlock18Block29PC := 109.
        ].
        recoveredBlock18Block29Step = 109 ifTrue: [
            recoveredBlock18Block29Stack0 := (recoveredBlock18Block29Stack0) sub: (recoveredBlock18Block29Stack1) type: (recoveredBlock18Block29Stack2).
            recoveredBlock18Block29PC := 111.
        ].
        recoveredBlock18Block29Step = 111 ifTrue: [
            recoveredLocal1 := recoveredBlock18Block29Stack0.
            recoveredBlock18Block29PC := 114.
        ].
        recoveredBlock18Block29Step = 114 ifTrue: [
            recoveredBlock18Block29Stack0 := self.
            recoveredBlock18Block29PC := 115.
        ].
        recoveredBlock18Block29Step = 115 ifTrue: [
            recoveredBlock18Block29Stack0 := (recoveredBlock18Block29Stack0) ileBuilder.
            recoveredBlock18Block29PC := 116.
        ].
        recoveredBlock18Block29Step = 116 ifTrue: [
            recoveredBlock18Block29Stack1 := recoveredLocal1.
            recoveredBlock18Block29PC := 119.
        ].
        recoveredBlock18Block29Step = 119 ifTrue: [
            recoveredBlock18Block29Stack2 := recoveredArg2.
            recoveredBlock18Block29PC := 122.
        ].
        recoveredBlock18Block29Step = 122 ifTrue: [
            recoveredBlock18Block29Stack3 := recoveredArg4.
            recoveredBlock18Block29PC := 125.
        ].
        recoveredBlock18Block29Step = 125 ifTrue: [
            recoveredBlock18Block29Stack4 := recoveredLocal3.
            recoveredBlock18Block29PC := 128.
        ].
        recoveredBlock18Block29Step = 128 ifTrue: [
            recoveredBlock18Block29Stack0 := (recoveredBlock18Block29Stack0) createSaveIndexUpper: (recoveredBlock18Block29Stack1) arrayAccess: (recoveredBlock18Block29Stack2) indexBound: (recoveredBlock18Block29Stack3) indexExpr: (recoveredBlock18Block29Stack4).
            recoveredBlock18Block29PC := 131.
        ].
        recoveredBlock18Block29Step = 131 ifTrue: [
            recoveredBlock18Block29Local4 := recoveredBlock18Block29Stack0.
            recoveredBlock18Block29PC := 132.
        ].
        recoveredBlock18Block29Step = 132 ifTrue: [
            recoveredBlock18Block29Stack0 := recoveredLocal3.
            recoveredBlock18Block29PC := 135.
        ].
        recoveredBlock18Block29Step = 135 ifTrue: [
            recoveredBlock18Block29Stack0 := (recoveredBlock18Block29Stack0) interval.
            recoveredBlock18Block29PC := 137.
        ].
        recoveredBlock18Block29Step = 137 ifTrue: [
            recoveredBlock18Block29Stack1 := recoveredBlock18Block29Local4.
            recoveredBlock18Block29PC := 138.
        ].
        recoveredBlock18Block29Step = 138 ifTrue: [
            recoveredBlock18Block29Stack1 := (recoveredBlock18Block29Stack1) interval.
            recoveredBlock18Block29PC := 140.
        ].
        recoveredBlock18Block29Step = 140 ifTrue: [
            recoveredBlock18Block29Stack0 := (recoveredBlock18Block29Stack0) min: (recoveredBlock18Block29Stack1).
            recoveredBlock18Block29PC := 142.
        ].
        recoveredBlock18Block29Step = 142 ifTrue: [
            recoveredBlock18Block29Local1 := recoveredBlock18Block29Stack0.
            recoveredBlock18Block29PC := 143.
        ].
        recoveredBlock18Block29Step = 143 ifTrue: [
            recoveredBlock18Block29Stack0 := recoveredLocal3.
            recoveredBlock18Block29PC := 146.
        ].
        recoveredBlock18Block29Step = 146 ifTrue: [
            recoveredBlock18Block29Stack1 := recoveredBlock18Block29Local1.
            recoveredBlock18Block29PC := 147.
        ].
        recoveredBlock18Block29Step = 147 ifTrue: [
            recoveredBlock18Block29Stack2 := 0.
            recoveredBlock18Block29PC := 149.
        ].
        recoveredBlock18Block29Step = 149 ifTrue: [
            recoveredBlock18Block29Stack2 := (recoveredBlock18Block29Stack2) asTempInterval.
            recoveredBlock18Block29PC := 151.
        ].
        recoveredBlock18Block29Step = 151 ifTrue: [
            recoveredBlock18Block29Stack1 := (recoveredBlock18Block29Stack1) max: (recoveredBlock18Block29Stack2).
            recoveredBlock18Block29PC := 153.
        ].
        recoveredBlock18Block29Step = 153 ifTrue: [
            recoveredBlock18Block29Stack0 := (recoveredBlock18Block29Stack0) decorateGoalInterval: (recoveredBlock18Block29Stack1).
            recoveredBlock18Block29PC := 155.
        ].
        recoveredBlock18Block29Step = 155 ifTrue: [
            recoveredBlock18Block29Local3 := recoveredBlock18Block29Stack0.
            recoveredBlock18Block29PC := 156.
        ].
        recoveredBlock18Block29Step = 156 ifTrue: [
            recoveredBlock18Block29Stack0 := recoveredBlock18Block29Local4.
            recoveredBlock18Block29PC := 157.
        ].
        recoveredBlock18Block29Step = 157 ifTrue: [
            recoveredBlock18Block29Stack1 := recoveredBlock18Block29Local1.
            recoveredBlock18Block29PC := 158.
        ].
        recoveredBlock18Block29Step = 158 ifTrue: [
            recoveredBlock18Block29Stack0 := (recoveredBlock18Block29Stack0) decorateGoalInterval: (recoveredBlock18Block29Stack1).
            recoveredBlock18Block29PC := 160.
        ].
        recoveredBlock18Block29Step = 160 ifTrue: [
            recoveredBlock18Block29Local2 := recoveredBlock18Block29Stack0.
            recoveredBlock18Block29PC := 161.
        ].
        recoveredBlock18Block29Step = 161 ifTrue: [
            recoveredBlock18Block29Stack0 := recoveredArg5.
            recoveredBlock18Block29PC := 164.
        ].
        recoveredBlock18Block29Step = 164 ifTrue: [
            (recoveredBlock18Block29Stack0) ifTrue: [recoveredBlock18Block29PC := 168] ifFalse: [recoveredBlock18Block29PC := 190].
        ].
        recoveredBlock18Block29Step = 168 ifTrue: [
            recoveredBlock18Block29Stack0 := recoveredLocal3.
            recoveredBlock18Block29PC := 171.
        ].
        recoveredBlock18Block29Step = 171 ifTrue: [
            recoveredBlock18Block29Stack1 := recoveredLocal1.
            recoveredBlock18Block29PC := 174.
        ].
        recoveredBlock18Block29Step = 174 ifTrue: [
            recoveredBlock18Block29Stack0 := (recoveredBlock18Block29Stack0) lessEqualThan: (recoveredBlock18Block29Stack1).
            recoveredBlock18Block29PC := 176.
        ].
        recoveredBlock18Block29Step = 176 ifTrue: [
            recoveredBlock18Block29Stack1 := recoveredBlock18Block29Local3.
            recoveredBlock18Block29PC := 177.
        ].
        recoveredBlock18Block29Step = 177 ifTrue: [
            recoveredBlock18Block29Stack2 := recoveredBlock18Block29Local2.
            recoveredBlock18Block29PC := 178.
        ].
        recoveredBlock18Block29Step = 178 ifTrue: [
            recoveredBlock18Block29Stack3 := recoveredBlock18Block29Local5.
            recoveredBlock18Block29PC := 180.
        ].
        recoveredBlock18Block29Step = 180 ifTrue: [
            recoveredBlock18Block29Stack0 := (recoveredBlock18Block29Stack0) artificialMuxLeftExpr: (recoveredBlock18Block29Stack1) rightExpr: (recoveredBlock18Block29Stack2) type: (recoveredBlock18Block29Stack3).
            recoveredBlock18Block29PC := 183.
        ].
        recoveredBlock18Block29Step = 183 ifTrue: [
            recoveredLocal2 := recoveredBlock18Block29Stack0.
            recoveredBlock18Block29PC := 186.
        ].
        recoveredBlock18Block29Step = 186 ifTrue: [
            recoveredBlock18Block29PC := 208.
        ].
        recoveredBlock18Block29Step = 190 ifTrue: [
            recoveredBlock18Block29Stack0 := recoveredLocal3.
            recoveredBlock18Block29PC := 193.
        ].
        recoveredBlock18Block29Step = 193 ifTrue: [
            recoveredBlock18Block29Stack1 := recoveredArg4.
            recoveredBlock18Block29PC := 196.
        ].
        recoveredBlock18Block29Step = 196 ifTrue: [
            recoveredBlock18Block29Stack0 := (recoveredBlock18Block29Stack0) lessThan: (recoveredBlock18Block29Stack1).
            recoveredBlock18Block29PC := 198.
        ].
        recoveredBlock18Block29Step = 198 ifTrue: [
            recoveredBlock18Block29Stack1 := recoveredBlock18Block29Local3.
            recoveredBlock18Block29PC := 199.
        ].
        recoveredBlock18Block29Step = 199 ifTrue: [
            recoveredBlock18Block29Stack2 := recoveredBlock18Block29Local2.
            recoveredBlock18Block29PC := 200.
        ].
        recoveredBlock18Block29Step = 200 ifTrue: [
            recoveredBlock18Block29Stack3 := recoveredBlock18Block29Local5.
            recoveredBlock18Block29PC := 202.
        ].
        recoveredBlock18Block29Step = 202 ifTrue: [
            recoveredBlock18Block29Stack0 := (recoveredBlock18Block29Stack0) artificialMuxLeftExpr: (recoveredBlock18Block29Stack1) rightExpr: (recoveredBlock18Block29Stack2) type: (recoveredBlock18Block29Stack3).
            recoveredBlock18Block29PC := 205.
        ].
        recoveredBlock18Block29Step = 205 ifTrue: [
            recoveredLocal2 := recoveredBlock18Block29Stack0.
            recoveredBlock18Block29PC := 208.
        ].
        recoveredBlock18Block29Step = 208 ifTrue: [
            recoveredBlock18Block29Stack0 := nil.
            recoveredBlock18Block29PC := 209.
        ].
        recoveredBlock18Block29Step = 209 ifTrue: [
            recoveredBlock18Block29Stack1 := recoveredBlock18Block29Stack0.
            recoveredBlock18Block29PC := 210.
        ].
        recoveredBlock18Block29Step = 210 ifTrue: [
            recoveredBlock18Block29Local4 := recoveredBlock18Block29Stack1.
            recoveredBlock18Block29PC := 211.
        ].
        recoveredBlock18Block29Step = 211 ifTrue: [
            recoveredBlock18Block29Stack1 := recoveredBlock18Block29Stack0.
            recoveredBlock18Block29PC := 212.
        ].
        recoveredBlock18Block29Step = 212 ifTrue: [
            recoveredBlock18Block29Local3 := recoveredBlock18Block29Stack1.
            recoveredBlock18Block29PC := 213.
        ].
        recoveredBlock18Block29Step = 213 ifTrue: [
            recoveredBlock18Block29Stack1 := recoveredBlock18Block29Stack0.
            recoveredBlock18Block29PC := 214.
        ].
        recoveredBlock18Block29Step = 214 ifTrue: [
            recoveredBlock18Block29Local2 := recoveredBlock18Block29Stack1.
            recoveredBlock18Block29PC := 215.
        ].
        recoveredBlock18Block29Step = 215 ifTrue: [
            recoveredBlock18Block29Local1 := recoveredBlock18Block29Stack0.
            recoveredBlock18Block29PC := 216.
        ].
        recoveredBlock18Block29Step = 216 ifTrue: [
            recoveredBlock18Block29Stack0 := nil.
            recoveredBlock18Block29PC := 217.
        ].
        recoveredBlock18Block29Step = 217 ifTrue: [
            recoveredBlock18Block29Stack1 := recoveredArg3.
            recoveredBlock18Block29PC := 220.
        ].
        recoveredBlock18Block29Step = 220 ifTrue: [
            recoveredBlock18Block29Stack1 := (recoveredBlock18Block29Stack1) left.
            recoveredBlock18Block29PC := 222.
        ].
        recoveredBlock18Block29Step = 222 ifTrue: [
            recoveredBlock18Block29Stack2 := 0.
            recoveredBlock18Block29PC := 224.
        ].
        recoveredBlock18Block29Step = 224 ifTrue: [
            recoveredBlock18Block29Stack1 := (recoveredBlock18Block29Stack1) < (recoveredBlock18Block29Stack2).
            recoveredBlock18Block29PC := 225.
        ].
        recoveredBlock18Block29Step = 225 ifTrue: [
            (recoveredBlock18Block29Stack1) ifTrue: [recoveredBlock18Block29PC := 228] ifFalse: [recoveredBlock18Block29PC := 304].
        ].
        recoveredBlock18Block29Step = 228 ifTrue: [
            recoveredBlock18Block29PC := 229.
        ].
        recoveredBlock18Block29Step = 229 ifTrue: [
            recoveredBlock18Block29Stack0 := self.
            recoveredBlock18Block29PC := 230.
        ].
        recoveredBlock18Block29Step = 230 ifTrue: [
            recoveredBlock18Block29Stack0 := (recoveredBlock18Block29Stack0) ileBuilder.
            recoveredBlock18Block29PC := 231.
        ].
        recoveredBlock18Block29Step = 231 ifTrue: [
            recoveredBlock18Block29Stack1 := self.
            recoveredBlock18Block29PC := 232.
        ].
        recoveredBlock18Block29Step = 232 ifTrue: [
            recoveredBlock18Block29Stack1 := (recoveredBlock18Block29Stack1) ileBuilder.
            recoveredBlock18Block29PC := 233.
        ].
        recoveredBlock18Block29Step = 233 ifTrue: [
            recoveredBlock18Block29Stack2 := 0.
            recoveredBlock18Block29PC := 235.
        ].
        recoveredBlock18Block29Step = 235 ifTrue: [
            recoveredBlock18Block29Stack3 := recoveredBlock18Block29Local5.
            recoveredBlock18Block29PC := 237.
        ].
        recoveredBlock18Block29Step = 237 ifTrue: [
            recoveredBlock18Block29Stack1 := (recoveredBlock18Block29Stack1) createIntConstant: (recoveredBlock18Block29Stack2) type: (recoveredBlock18Block29Stack3).
            recoveredBlock18Block29PC := 239.
        ].
        recoveredBlock18Block29Step = 239 ifTrue: [
            recoveredBlock18Block29Stack2 := recoveredArg2.
            recoveredBlock18Block29PC := 242.
        ].
        recoveredBlock18Block29Step = 242 ifTrue: [
            recoveredBlock18Block29Stack3 := self.
            recoveredBlock18Block29PC := 243.
        ].
        recoveredBlock18Block29Step = 243 ifTrue: [
            recoveredBlock18Block29Stack3 := (recoveredBlock18Block29Stack3) ileBuilder.
            recoveredBlock18Block29PC := 244.
        ].
        recoveredBlock18Block29Step = 244 ifTrue: [
            recoveredBlock18Block29Stack3 := (recoveredBlock18Block29Stack3) literalZero.
            recoveredBlock18Block29PC := 246.
        ].
        recoveredBlock18Block29Step = 246 ifTrue: [
            recoveredBlock18Block29Stack4 := recoveredLocal3.
            recoveredBlock18Block29PC := 249.
        ].
        recoveredBlock18Block29Step = 249 ifTrue: [
            recoveredBlock18Block29Stack0 := (recoveredBlock18Block29Stack0) createSaveIndexLower: (recoveredBlock18Block29Stack1) arrayAccess: (recoveredBlock18Block29Stack2) indexBound: (recoveredBlock18Block29Stack3) indexExpr: (recoveredBlock18Block29Stack4).
            recoveredBlock18Block29PC := 252.
        ].
        recoveredBlock18Block29Step = 252 ifTrue: [
            recoveredBlock18Block29Local4 := recoveredBlock18Block29Stack0.
            recoveredBlock18Block29PC := 253.
        ].
        recoveredBlock18Block29Step = 253 ifTrue: [
            recoveredBlock18Block29Stack0 := recoveredLocal2.
            recoveredBlock18Block29PC := 256.
        ].
        recoveredBlock18Block29Step = 256 ifTrue: [
            recoveredBlock18Block29Stack0 := (recoveredBlock18Block29Stack0) interval.
            recoveredBlock18Block29PC := 258.
        ].
        recoveredBlock18Block29Step = 258 ifTrue: [
            recoveredBlock18Block29Stack1 := recoveredBlock18Block29Local4.
            recoveredBlock18Block29PC := 259.
        ].
        recoveredBlock18Block29Step = 259 ifTrue: [
            recoveredBlock18Block29Stack1 := (recoveredBlock18Block29Stack1) interval.
            recoveredBlock18Block29PC := 261.
        ].
        recoveredBlock18Block29Step = 261 ifTrue: [
            recoveredBlock18Block29Stack0 := (recoveredBlock18Block29Stack0) max: (recoveredBlock18Block29Stack1).
            recoveredBlock18Block29PC := 263.
        ].
        recoveredBlock18Block29Step = 263 ifTrue: [
            recoveredBlock18Block29Local1 := recoveredBlock18Block29Stack0.
            recoveredBlock18Block29PC := 264.
        ].
        recoveredBlock18Block29Step = 264 ifTrue: [
            recoveredBlock18Block29Stack0 := recoveredLocal2.
            recoveredBlock18Block29PC := 267.
        ].
        recoveredBlock18Block29Step = 267 ifTrue: [
            recoveredBlock18Block29Stack1 := recoveredBlock18Block29Local1.
            recoveredBlock18Block29PC := 268.
        ].
        recoveredBlock18Block29Step = 268 ifTrue: [
            recoveredBlock18Block29Stack0 := (recoveredBlock18Block29Stack0) decorateGoalInterval: (recoveredBlock18Block29Stack1).
            recoveredBlock18Block29PC := 270.
        ].
        recoveredBlock18Block29Step = 270 ifTrue: [
            recoveredBlock18Block29Local3 := recoveredBlock18Block29Stack0.
            recoveredBlock18Block29PC := 271.
        ].
        recoveredBlock18Block29Step = 271 ifTrue: [
            recoveredBlock18Block29Stack0 := recoveredBlock18Block29Local4.
            recoveredBlock18Block29PC := 272.
        ].
        recoveredBlock18Block29Step = 272 ifTrue: [
            recoveredBlock18Block29Stack1 := recoveredBlock18Block29Local1.
            recoveredBlock18Block29PC := 273.
        ].
        recoveredBlock18Block29Step = 273 ifTrue: [
            recoveredBlock18Block29Stack0 := (recoveredBlock18Block29Stack0) decorateGoalInterval: (recoveredBlock18Block29Stack1).
            recoveredBlock18Block29PC := 275.
        ].
        recoveredBlock18Block29Step = 275 ifTrue: [
            recoveredBlock18Block29Local2 := recoveredBlock18Block29Stack0.
            recoveredBlock18Block29PC := 276.
        ].
        recoveredBlock18Block29Step = 276 ifTrue: [
            recoveredBlock18Block29Stack0 := recoveredLocal3.
            recoveredBlock18Block29PC := 279.
        ].
        recoveredBlock18Block29Step = 279 ifTrue: [
            recoveredBlock18Block29Stack1 := self.
            recoveredBlock18Block29PC := 280.
        ].
        recoveredBlock18Block29Step = 280 ifTrue: [
            recoveredBlock18Block29Stack1 := (recoveredBlock18Block29Stack1) ileBuilder.
            recoveredBlock18Block29PC := 281.
        ].
        recoveredBlock18Block29Step = 281 ifTrue: [
            recoveredBlock18Block29Stack1 := (recoveredBlock18Block29Stack1) literalZero.
            recoveredBlock18Block29PC := 283.
        ].
        recoveredBlock18Block29Step = 283 ifTrue: [
            recoveredBlock18Block29Stack0 := (recoveredBlock18Block29Stack0) greaterEqualThan: (recoveredBlock18Block29Stack1).
            recoveredBlock18Block29PC := 285.
        ].
        recoveredBlock18Block29Step = 285 ifTrue: [
            recoveredBlock18Block29Stack1 := recoveredBlock18Block29Local3.
            recoveredBlock18Block29PC := 286.
        ].
        recoveredBlock18Block29Step = 286 ifTrue: [
            recoveredBlock18Block29Stack2 := recoveredBlock18Block29Local2.
            recoveredBlock18Block29PC := 287.
        ].
        recoveredBlock18Block29Step = 287 ifTrue: [
            recoveredBlock18Block29Stack3 := recoveredBlock18Block29Local5.
            recoveredBlock18Block29PC := 289.
        ].
        recoveredBlock18Block29Step = 289 ifTrue: [
            recoveredBlock18Block29Stack0 := (recoveredBlock18Block29Stack0) artificialMuxLeftExpr: (recoveredBlock18Block29Stack1) rightExpr: (recoveredBlock18Block29Stack2) type: (recoveredBlock18Block29Stack3).
            recoveredBlock18Block29PC := 292.
        ].
        recoveredBlock18Block29Step = 292 ifTrue: [
            recoveredBlock18Block29Stack1 := recoveredBlock18Block29Stack0.
            recoveredBlock18Block29PC := 293.
        ].
        recoveredBlock18Block29Step = 293 ifTrue: [
            recoveredLocal2 := recoveredBlock18Block29Stack1.
            recoveredBlock18Block29PC := 296.
        ].
        recoveredBlock18Block29Step = 296 ifTrue: [
            recoveredBlock18Block29Stack1 := nil.
            recoveredBlock18Block29PC := 297.
        ].
        recoveredBlock18Block29Step = 297 ifTrue: [
            recoveredBlock18Block29Stack2 := recoveredBlock18Block29Stack1.
            recoveredBlock18Block29PC := 298.
        ].
        recoveredBlock18Block29Step = 298 ifTrue: [
            recoveredBlock18Block29Local4 := recoveredBlock18Block29Stack2.
            recoveredBlock18Block29PC := 299.
        ].
        recoveredBlock18Block29Step = 299 ifTrue: [
            recoveredBlock18Block29Stack2 := recoveredBlock18Block29Stack1.
            recoveredBlock18Block29PC := 300.
        ].
        recoveredBlock18Block29Step = 300 ifTrue: [
            recoveredBlock18Block29Local3 := recoveredBlock18Block29Stack2.
            recoveredBlock18Block29PC := 301.
        ].
        recoveredBlock18Block29Step = 301 ifTrue: [
            recoveredBlock18Block29Stack2 := recoveredBlock18Block29Stack1.
            recoveredBlock18Block29PC := 302.
        ].
        recoveredBlock18Block29Step = 302 ifTrue: [
            recoveredBlock18Block29Local2 := recoveredBlock18Block29Stack2.
            recoveredBlock18Block29PC := 303.
        ].
        recoveredBlock18Block29Step = 303 ifTrue: [
            recoveredBlock18Block29Local1 := recoveredBlock18Block29Stack1.
            recoveredBlock18Block29PC := 304.
        ].
        recoveredBlock18Block29Step = 304 ifTrue: [
            recoveredBlock18Block29Result := recoveredBlock18Block29Stack0.
            recoveredBlock18Block29Done := true.
        ].
    ].
    recoveredBlock18Block29Result
].
    recoveredBlock18Value4 := (recoveredBlock18Value0) useSource: (recoveredBlock18Value2) for: (recoveredBlock18Value3).
    recoveredBlock18Value4
].
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            (recoveredStack0) disableAllOptimizationsDo: (recoveredStack1).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleTempVarIdentifier.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 318] ifFalse: [recoveredPC := 322].
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack0 := (recoveredStack0) transformationFactory.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack0 := (recoveredStack0) resolveMixedSignedTypesVisitor.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack0 := (recoveredStack0) anyExpr: (recoveredStack1).
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20600e24; bytecode file offset 0xefd774"
!SGIlProtectArrayIndexTransformation methodsFor: 'recovered'!
limitVariantDimension: recoveredArg1 node: recoveredArg2 base: recoveredArg3 dimension: recoveredArg4 range: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerVariant.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) suppressCheckForUpperVariantBound.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxSizeInterval.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxSizeInterval.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := [:recoveredBlock41Arg1 :recoveredBlock41Arg2 :recoveredBlock41Arg3 | 
    | recoveredBlock41Stack0 recoveredBlock41Stack1 recoveredBlock41Stack2 recoveredBlock41Stack3 recoveredBlock41PC recoveredBlock41Step recoveredBlock41Done recoveredBlock41Result |
    recoveredBlock41Stack0 := self.
    recoveredBlock41PC := 48.
    recoveredBlock41Done := false.
    [recoveredBlock41Done not] whileTrue: [
        recoveredBlock41Step := recoveredBlock41PC.
        recoveredBlock41Step = 48 ifTrue: [
            recoveredBlock41Stack1 := recoveredBlock41Arg2.
            recoveredBlock41PC := 49.
        ].
        recoveredBlock41Step = 49 ifTrue: [
            (recoveredBlock41Stack1) ifTrue: [recoveredBlock41PC := 52] ifFalse: [recoveredBlock41PC := 56].
        ].
        recoveredBlock41Step = 52 ifTrue: [
            recoveredBlock41Stack1 := recoveredBlock41Arg1.
            recoveredBlock41PC := 53.
        ].
        recoveredBlock41Step = 53 ifTrue: [
            recoveredLocal4 := recoveredBlock41Stack1.
            recoveredBlock41PC := 56.
        ].
        recoveredBlock41Step = 56 ifTrue: [
            recoveredBlock41Stack1 := recoveredBlock41Arg1.
            recoveredBlock41PC := 57.
        ].
        recoveredBlock41Step = 57 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Stack1.
            recoveredBlock41PC := 58.
        ].
        recoveredBlock41Step = 58 ifTrue: [
            recoveredLocal3 := recoveredBlock41Stack2.
            recoveredBlock41PC := 61.
        ].
        recoveredBlock41Step = 61 ifTrue: [
            recoveredBlock41Result := recoveredBlock41Stack1.
            recoveredBlock41Done := true.
        ].
    ].
    recoveredBlock41Result
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) maxSizeValuesDo: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileMaxSize: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) state.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) check: (recoveredStack1) isLessOrEqualThan: (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := 77.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredArg5.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := (recoveredStack3) debugCode.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack4 := (recoveredStack4) source.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack6 := 'Allowed index range: [0..'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack7 := recoveredLocal3.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack7 := (recoveredStack7) + (-1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack7 := (recoveredStack7) asString.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack6 := (recoveredStack6) , (recoveredStack7).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack7 := ']'.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack6 := (recoveredStack6) , (recoveredStack7).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack4 := (recoveredStack4) createMultiSource: (recoveredStack5) labels: (recoveredStack6).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0) ileSemErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredPC := 263.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 263] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := (recoveredStack0) state.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) check: (recoveredStack1) isLessThan: (recoveredStack2).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 263] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := (recoveredStack0) protectVecIndex.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 208].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := ' - will be limited'.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredPC := 210.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := ' - will not be limited'.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := 77.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := recoveredArg5.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack3 := (recoveredStack3) debugCode.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack5 := (recoveredStack5) source.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack7 := 'Allowed index range: [0..('.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack8 := recoveredArg4.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack8 := (recoveredStack8) sysConstDecl.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack8 := (recoveredStack8) errLabel.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack7 := (recoveredStack7) , (recoveredStack8).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack8 := '-1)]'.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack7 := (recoveredStack7) , (recoveredStack8).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack5 := (recoveredStack5) createMultiSource: (recoveredStack6) labels: (recoveredStack7).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            (recoveredStack0) ileWarningNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) source: (recoveredStack5).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack0 := (recoveredStack0) protectVecIndex.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 270] ifFalse: [recoveredPC := 440].
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerVariant.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 276] ifFalse: [recoveredPC := 366].
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := (recoveredStack0) resolveSystemConstantsAtRunTime.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 284] ifFalse: [recoveredPC := 345].
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBuilder.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack4 := (recoveredStack4) maxSize.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack3 := (recoveredStack3) scalarConstant: (recoveredStack4).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack4 := (recoveredStack4) source.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := (recoveredStack1) minLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack2 := (recoveredStack2) scalarConstant: (recoveredStack3).
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxLeftExpr: (recoveredStack1) rightExpr: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIleSideEffectFreeBufferedExpr.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack5 := false.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack0 := (recoveredStack0) protectIndex: (recoveredStack1) array: (recoveredStack2) interval: (recoveredStack3) indexUpperBound: (recoveredStack4) lessEqual: (recoveredStack5).
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack5 := false.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack0 := (recoveredStack0) protectIndex: (recoveredStack1) array: (recoveredStack2) interval: (recoveredStack3) indexUpperBound: (recoveredStack4) lessEqual: (recoveredStack5).
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack0 := (recoveredStack0) resolveSystemConstantsAtRunTime.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 374] ifFalse: [recoveredPC := 416].
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack2 := (recoveredStack2) scalarConstant: (recoveredStack3).
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxLeftExpr: (recoveredStack1) rightExpr: (recoveredStack2) source: (recoveredStack3).
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIleSideEffectFreeBufferedExpr.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack5 := false.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack0 := (recoveredStack0) protectIndex: (recoveredStack1) array: (recoveredStack2) interval: (recoveredStack3) indexUpperBound: (recoveredStack4) lessEqual: (recoveredStack5).
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack4 := RBInterval.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack6 := (recoveredStack6) generator.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack6 := (recoveredStack6) maxRepresentableUnsignedInDoubleBitSize.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack4 := (recoveredStack4) left: (recoveredStack5) right: (recoveredStack6).
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack0 := (recoveredStack0) protectIndex: (recoveredStack1) array: (recoveredStack2) interval: (recoveredStack3) indexRange: (recoveredStack4).
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

