"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006004; bytecode file offset 0x902de8"
!SGIlMul methodsFor: 'recovered'!
ileOptConstantFoldingDivOpRightConstant: recoveredArg1 type: recoveredArg2 onSuccess: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20008ca8; bytecode file offset 0x908be4"
!SGIlMul methodsFor: 'recovered'!
allOperands
    | recoveredValue0 |
    recoveredValue0 := (self) collectAllOperands.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a91c; bytecode file offset 0x908be4"
!SGIlMul methodsFor: 'recovered'!
precedenceLevel
    | recoveredValue0 |
    recoveredValue0 := (self) precedenceLevelOfMulDiv.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001e0a4; bytecode file offset 0x92209c"
!SGIlMul methodsFor: 'recovered'!
serviceLabel
    ^'*'
! !

"ASDBase.ic method 0x200330d4; bytecode file offset 0x934580"
!SGIlMul methodsFor: 'recovered'!
ileNeutralElement
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (recoveredValue0) literalOne.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003870c; bytecode file offset 0x935c54"
!SGIlMul methodsFor: 'recovered'!
isIleSameOperationalLevel: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isIleMulDivExpr.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200560d0; bytecode file offset 0x952a9c"
!SGIlMul methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mulExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20062668; bytecode file offset 0x95f8b0"
!SGIlMul methodsFor: 'recovered'!
isIleSquare
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) leftExpr.
    recoveredValue1 := (self) rightExpr.
    recoveredValue2 := (recoveredValue0) isIleIdentical: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200651d0; bytecode file offset 0x961acc"
!SGIlMul methodsFor: 'recovered'!
collectAllOperands
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (recoveredValue0) createAnnotatedOperands.
    recoveredValue2 := (recoveredValue1) collectMulOperands: (self).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20075c44; bytecode file offset 0x9757c8"
!SGIlMul methodsFor: 'recovered'!
isIleMulDivExpr
    ^true
! !

"ASDBase.ic method 0x20076f2c; bytecode file offset 0x9757c8"
!SGIlMul methodsFor: 'recovered'!
isIleCommutativeOp
    ^true
! !

"ASDBase.ic method 0x20078dac; bytecode file offset 0x9757c8"
!SGIlMul methodsFor: 'recovered'!
isIleMulExpr
    ^true
! !

"ASDBase.ic method 0x20099508; bytecode file offset 0x995e2c"
!SGIlMul methodsFor: 'recovered'!
div: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) divFromMulExpr: (self) type: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a1ea0; bytecode file offset 0x99e774"
!SGIlMul methodsFor: 'recovered'!
ileConstFactor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) leftExpr.
    recoveredValue1 := (recoveredValue0) ileConstFactor.
    recoveredValue2 := (self) rightExpr.
    recoveredValue3 := (recoveredValue2) ileConstFactor.
    recoveredValue4 := (recoveredValue1) * (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200a1eb4; bytecode file offset 0x99e774"
!SGIlMul methodsFor: 'recovered'!
ileCommonFactor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) leftExpr.
    recoveredValue1 := (recoveredValue0) ileCommonFactor.
    recoveredValue2 := (self) rightExpr.
    recoveredValue3 := (recoveredValue2) ileCommonFactor.
    recoveredValue4 := (recoveredValue1) * (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ad878; bytecode file offset 0x9aa134"
!SGIlMul methodsFor: 'recovered'!
createInverseOpLeftExpr: recoveredArg1 rightExpr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) ileBasicType.
    recoveredValue3 := (recoveredValue0) div: (recoveredValue1) type: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d514c; bytecode file offset 0x9d1a28"
!SGIlMul methodsFor: 'recovered'!
ileDenomExpr
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) leftExpr.
    recoveredValue1 := (recoveredValue0) ileDenomExpr.
    recoveredValue2 := (self) rightExpr.
    recoveredValue3 := (recoveredValue2) ileDenomExpr.
    recoveredValue4 := (recoveredValue1) mul: (recoveredValue3) type: (nil).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d5164; bytecode file offset 0x9d1a28"
!SGIlMul methodsFor: 'recovered'!
ileConstFactorExpr
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) leftExpr.
    recoveredValue1 := (recoveredValue0) ileConstFactorExpr.
    recoveredValue2 := (self) rightExpr.
    recoveredValue3 := (recoveredValue2) ileConstFactorExpr.
    recoveredValue4 := (recoveredValue1) mul: (recoveredValue3) type: (nil).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200fc240; bytecode file offset 0x9f8b0c"
!SGIlMul methodsFor: 'recovered'!
isIleSameOperator: recoveredArg1
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isIleMulExpr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleShiftLeftExpr.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200ff8a8; bytecode file offset 0x9fc26c"
!SGIlMul methodsFor: 'recovered'!
collectMulOnlyOperands: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) leftExpr.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) collectMulOnlyOperands: (recoveredValue1).
    recoveredValue2 := (self) rightExpr.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) collectMulOnlyOperands: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2010b0a0; bytecode file offset 0xa079cc"
!SGIlMul methodsFor: 'recovered'!
calculateInterval
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) generator.
    recoveredValue1 := (recoveredValue0) expressionContext.
    recoveredValue2 := (self) ileBuilder.
    recoveredValue3 := (recoveredValue2) calculateMulIntervalFor: (self).
    recoveredValue4 := (self) typeOrNil.
    recoveredValue5 := (recoveredValue1) adjustInterval: (recoveredValue3) forType: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201232c8; bytecode file offset 0xa1fbb0"
!SGIlMul methodsFor: 'recovered'!
collectFactors: recoveredArg1 inverse: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) leftExpr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) collectFactors: (recoveredValue1) inverse: (recoveredValue2).
    recoveredValue3 := (self) rightExpr.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue3) collectFactors: (recoveredValue4) inverse: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201337e0; bytecode file offset 0xa300ac"
!SGIlMul methodsFor: 'recovered'!
asIleLimitOverflowExprGoalInterval: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) generalOptimizationStrategy.
    recoveredValue1 := (self) ileBuilder.
    recoveredValue2 := (self) leftExpr.
    recoveredValue3 := (self) rightExpr.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue1) createMulNoOverflowLeftExpr: (recoveredValue2) rightExpr: (recoveredValue3) goalInterval: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) anyExpr: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201c8960; bytecode file offset 0xac5224"
!SGIlMul methodsFor: 'recovered'!
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
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) isIleZeroInInterval.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleZeroInInterval.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201dc4fc; bytecode file offset 0xad8dfc"
!SGIlMul methodsFor: 'recovered'!
createOpLeftExpr: recoveredArg1 rightExpr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) source.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := (self) ileBasicType.
    recoveredBlock7Value3 := (recoveredBlock7Value0) mul: (recoveredBlock7Value1) type: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue3 := (recoveredValue0) useSource: (recoveredValue1) for: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20296a04; bytecode file offset 0xb932d0"
!SGIlMul methodsFor: 'recovered'!
ileCalculateGeneralCosts
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleDivExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := super ileCalculateGeneralCosts.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) higherPrecisionCostConstant.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleDivExpr.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := super ileCalculateGeneralCosts.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) higherPrecisionCostConstant.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := super ileCalculateGeneralCosts.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203cec2c; bytecode file offset 0xccb4fc"
!SGIlMul methodsFor: 'recovered'!
ileOptExpressionSimplificationMulDiv: recoveredArg1 rightExponent: recoveredArg2 exponent: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileOptExpressionSimplificationMulDiv: (recoveredStack1) rightExponent: (recoveredStack2) exponent: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBasicType.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) mul: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleSimplificationAcceptable.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileOptExpressionSimplificationMulDiv: (recoveredStack1) rightExponent: (recoveredStack2) exponent: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBasicType.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) mul: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleSimplificationAcceptable.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c1570; bytecode file offset 0xdbde44"
!SGIlMul methodsFor: 'recovered'!
ileOptExpressionSimplificationNoMulDivChildrenDo: recoveredArg1 exponent: recoveredArg2 onSuccess: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := self.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) rightExpr.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack3 := self.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) ileBasicType.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) mul: (recoveredBlock11Stack2) type: (recoveredBlock11Stack3).
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredLocal1 := recoveredBlock11Stack1.
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isIleSimplificationAcceptable.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 42] ifFalse: [recoveredBlock11PC := 36].
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isIleRepresentable.
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 39 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 56] ifFalse: [recoveredBlock11PC := 42].
        ].
        recoveredBlock11Step = 42 ifTrue: [
            recoveredBlock11Stack1 := recoveredArg3.
            recoveredBlock11PC := 45.
        ].
        recoveredBlock11Step = 45 ifTrue: [
            recoveredBlock11Stack2 := recoveredLocal1.
            recoveredBlock11PC := 48.
        ].
        recoveredBlock11Step = 48 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) value: (recoveredBlock11Stack2).
            recoveredBlock11PC := 50.
        ].
        recoveredBlock11Step = 50 ifTrue: [
            recoveredLocal1 := recoveredBlock11Stack1.
            recoveredBlock11PC := 53.
        ].
        recoveredBlock11Step = 53 ifTrue: [
            recoveredBlock11PC := 60.
        ].
        recoveredBlock11Step = 56 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 57.
        ].
        recoveredBlock11Step = 57 ifTrue: [
            recoveredLocal1 := recoveredBlock11Stack1.
            recoveredBlock11PC := 60.
        ].
        recoveredBlock11Step = 60 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 63.
        ].
        recoveredBlock11Step = 63 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) ileOptExpressionSimplificationNoMulDivChildrenDo: (recoveredStack1) exponent: (recoveredStack2) onSuccess: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := [:recoveredBlock84Arg1 | 
    | recoveredBlock84Stack0 recoveredBlock84Stack1 recoveredBlock84Stack2 recoveredBlock84Stack3 recoveredBlock84PC recoveredBlock84Step recoveredBlock84Done recoveredBlock84Result |
    recoveredBlock84Stack0 := self.
    recoveredBlock84PC := 90.
    recoveredBlock84Done := false.
    [recoveredBlock84Done not] whileTrue: [
        recoveredBlock84Step := recoveredBlock84PC.
        recoveredBlock84Step = 90 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) leftExpr.
            recoveredBlock84PC := 91.
        ].
        recoveredBlock84Step = 91 ifTrue: [
            recoveredBlock84Stack1 := recoveredBlock84Arg1.
            recoveredBlock84PC := 92.
        ].
        recoveredBlock84Step = 92 ifTrue: [
            recoveredBlock84Stack2 := self.
            recoveredBlock84PC := 93.
        ].
        recoveredBlock84Step = 93 ifTrue: [
            recoveredBlock84Stack2 := (recoveredBlock84Stack2) ileBasicType.
            recoveredBlock84PC := 94.
        ].
        recoveredBlock84Step = 94 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) mul: (recoveredBlock84Stack1) type: (recoveredBlock84Stack2).
            recoveredBlock84PC := 96.
        ].
        recoveredBlock84Step = 96 ifTrue: [
            recoveredLocal1 := recoveredBlock84Stack0.
            recoveredBlock84PC := 99.
        ].
        recoveredBlock84Step = 99 ifTrue: [
            recoveredBlock84Stack0 := recoveredLocal1.
            recoveredBlock84PC := 102.
        ].
        recoveredBlock84Step = 102 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) isIleSimplificationAcceptable.
            recoveredBlock84PC := 104.
        ].
        recoveredBlock84Step = 104 ifTrue: [
            (recoveredBlock84Stack0) ifTrue: [recoveredBlock84PC := 114] ifFalse: [recoveredBlock84PC := 108].
        ].
        recoveredBlock84Step = 108 ifTrue: [
            recoveredBlock84Stack0 := self.
            recoveredBlock84PC := 109.
        ].
        recoveredBlock84Step = 109 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) isIleRepresentable.
            recoveredBlock84PC := 111.
        ].
        recoveredBlock84Step = 111 ifTrue: [
            (recoveredBlock84Stack0) ifTrue: [recoveredBlock84PC := 128] ifFalse: [recoveredBlock84PC := 114].
        ].
        recoveredBlock84Step = 114 ifTrue: [
            recoveredBlock84Stack0 := recoveredArg3.
            recoveredBlock84PC := 117.
        ].
        recoveredBlock84Step = 117 ifTrue: [
            recoveredBlock84Stack1 := recoveredLocal1.
            recoveredBlock84PC := 120.
        ].
        recoveredBlock84Step = 120 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) value: (recoveredBlock84Stack1).
            recoveredBlock84PC := 122.
        ].
        recoveredBlock84Step = 122 ifTrue: [
            recoveredLocal1 := recoveredBlock84Stack0.
            recoveredBlock84PC := 125.
        ].
        recoveredBlock84Step = 125 ifTrue: [
            recoveredBlock84PC := 132.
        ].
        recoveredBlock84Step = 128 ifTrue: [
            recoveredBlock84Stack0 := nil.
            recoveredBlock84PC := 129.
        ].
        recoveredBlock84Step = 129 ifTrue: [
            recoveredLocal1 := recoveredBlock84Stack0.
            recoveredBlock84PC := 132.
        ].
        recoveredBlock84Step = 132 ifTrue: [
            recoveredBlock84Stack0 := recoveredLocal1.
            recoveredBlock84PC := 135.
        ].
        recoveredBlock84Step = 135 ifTrue: [
            recoveredBlock84Result := recoveredBlock84Stack0.
            recoveredBlock84Done := true.
        ].
    ].
    recoveredBlock84Result
].
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) ileOptExpressionSimplificationNoMulDivChildrenDo: (recoveredStack1) exponent: (recoveredStack2) onSuccess: (recoveredStack3).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205af244; bytecode file offset 0xeabb34"
!SGIlMul methodsFor: 'recovered'!
ileOptConstantFoldingMulOpRightConstant: recoveredArg1 type: recoveredArg2 onSuccess: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFraction.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 135].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileNumExpr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20Stack3 recoveredBlock20Stack4 recoveredBlock20Stack5 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
    recoveredBlock20Stack0 := self.
    recoveredBlock20PC := 26.
    recoveredBlock20Done := false.
    [recoveredBlock20Done not] whileTrue: [
        recoveredBlock20Step := recoveredBlock20PC.
        recoveredBlock20Step = 26 ifTrue: [
            recoveredBlock20Stack1 := nil.
            recoveredBlock20PC := 27.
        ].
        recoveredBlock20Step = 27 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 28.
        ].
        recoveredBlock20Step = 28 ifTrue: [
            recoveredBlock20Stack3 := recoveredArg1.
            recoveredBlock20PC := 31.
        ].
        recoveredBlock20Step = 31 ifTrue: [
            recoveredBlock20Stack3 := (recoveredBlock20Stack3) ileDenomExpr.
            recoveredBlock20PC := 32.
        ].
        recoveredBlock20Step = 32 ifTrue: [
            recoveredBlock20Stack4 := recoveredArg2.
            recoveredBlock20PC := 35.
        ].
        recoveredBlock20Step = 35 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) div: (recoveredBlock20Stack3) type: (recoveredBlock20Stack4).
            recoveredBlock20PC := 37.
        ].
        recoveredBlock20Step = 37 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Stack2.
            recoveredBlock20PC := 38.
        ].
        recoveredBlock20Step = 38 ifTrue: [
            recoveredLocal2 := recoveredBlock20Stack3.
            recoveredBlock20PC := 41.
        ].
        recoveredBlock20Step = 41 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) isIleRepresentable.
            recoveredBlock20PC := 43.
        ].
        recoveredBlock20Step = 43 ifTrue: [
            (recoveredBlock20Stack2) ifTrue: [recoveredBlock20PC := 46] ifFalse: [recoveredBlock20PC := 59].
        ].
        recoveredBlock20Step = 46 ifTrue: [
            recoveredBlock20PC := 47.
        ].
        recoveredBlock20Step = 47 ifTrue: [
            recoveredBlock20Stack1 := recoveredArg3.
            recoveredBlock20PC := 50.
        ].
        recoveredBlock20Step = 50 ifTrue: [
            recoveredBlock20Stack2 := recoveredLocal2.
            recoveredBlock20PC := 53.
        ].
        recoveredBlock20Step = 53 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) value: (recoveredBlock20Stack2).
            recoveredBlock20PC := 55.
        ].
        recoveredBlock20Step = 55 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Stack1.
            recoveredBlock20PC := 56.
        ].
        recoveredBlock20Step = 56 ifTrue: [
            recoveredLocal1 := recoveredBlock20Stack2.
            recoveredBlock20PC := 59.
        ].
        recoveredBlock20Step = 59 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack1.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) ileOptConstantFoldingMulOpRightConstant: (recoveredStack2) type: (recoveredStack3) onSuccess: (recoveredStack4).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDivideConstantExpr.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 135].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 135].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 131].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileCommonFactor.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileDenomExpr.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) rem: (recoveredStack1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 220].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack3 := [:recoveredBlock165Arg1 | 
    | recoveredBlock165Stack0 recoveredBlock165Stack1 recoveredBlock165Stack2 recoveredBlock165Stack3 recoveredBlock165Stack4 recoveredBlock165Stack5 recoveredBlock165PC recoveredBlock165Step recoveredBlock165Done recoveredBlock165Result |
    recoveredBlock165Stack0 := self.
    recoveredBlock165PC := 172.
    recoveredBlock165Done := false.
    [recoveredBlock165Done not] whileTrue: [
        recoveredBlock165Step := recoveredBlock165PC.
        recoveredBlock165Step = 172 ifTrue: [
            recoveredBlock165Stack1 := nil.
            recoveredBlock165PC := 173.
        ].
        recoveredBlock165Step = 173 ifTrue: [
            recoveredBlock165Stack2 := recoveredBlock165Arg1.
            recoveredBlock165PC := 174.
        ].
        recoveredBlock165Step = 174 ifTrue: [
            recoveredBlock165Stack3 := self.
            recoveredBlock165PC := 175.
        ].
        recoveredBlock165Step = 175 ifTrue: [
            recoveredBlock165Stack3 := (recoveredBlock165Stack3) rightExpr.
            recoveredBlock165PC := 177.
        ].
        recoveredBlock165Step = 177 ifTrue: [
            recoveredBlock165Stack4 := self.
            recoveredBlock165PC := 178.
        ].
        recoveredBlock165Step = 178 ifTrue: [
            recoveredBlock165Stack4 := (recoveredBlock165Stack4) ileBasicType.
            recoveredBlock165PC := 180.
        ].
        recoveredBlock165Step = 180 ifTrue: [
            recoveredBlock165Stack2 := (recoveredBlock165Stack2) mul: (recoveredBlock165Stack3) type: (recoveredBlock165Stack4).
            recoveredBlock165PC := 182.
        ].
        recoveredBlock165Step = 182 ifTrue: [
            recoveredBlock165Stack3 := recoveredBlock165Stack2.
            recoveredBlock165PC := 183.
        ].
        recoveredBlock165Step = 183 ifTrue: [
            recoveredLocal2 := recoveredBlock165Stack3.
            recoveredBlock165PC := 186.
        ].
        recoveredBlock165Step = 186 ifTrue: [
            recoveredBlock165Stack2 := (recoveredBlock165Stack2) isIleRepresentable.
            recoveredBlock165PC := 188.
        ].
        recoveredBlock165Step = 188 ifTrue: [
            (recoveredBlock165Stack2) ifTrue: [recoveredBlock165PC := 192] ifFalse: [recoveredBlock165PC := 205].
        ].
        recoveredBlock165Step = 192 ifTrue: [
            recoveredBlock165PC := 193.
        ].
        recoveredBlock165Step = 193 ifTrue: [
            recoveredBlock165Stack1 := recoveredArg3.
            recoveredBlock165PC := 196.
        ].
        recoveredBlock165Step = 196 ifTrue: [
            recoveredBlock165Stack2 := recoveredLocal2.
            recoveredBlock165PC := 199.
        ].
        recoveredBlock165Step = 199 ifTrue: [
            recoveredBlock165Stack1 := (recoveredBlock165Stack1) value: (recoveredBlock165Stack2).
            recoveredBlock165PC := 201.
        ].
        recoveredBlock165Step = 201 ifTrue: [
            recoveredBlock165Stack2 := recoveredBlock165Stack1.
            recoveredBlock165PC := 202.
        ].
        recoveredBlock165Step = 202 ifTrue: [
            recoveredLocal1 := recoveredBlock165Stack2.
            recoveredBlock165PC := 205.
        ].
        recoveredBlock165Step = 205 ifTrue: [
            recoveredBlock165Result := recoveredBlock165Stack1.
            recoveredBlock165Done := true.
        ].
    ].
    recoveredBlock165Result
].
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack0) ileOptConstantFoldingMulOpRightConstant: (recoveredStack1) type: (recoveredStack2) onSuccess: (recoveredStack3).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 220] ifFalse: [recoveredPC := 216].
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileCommonFactor.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileDenomExpr.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := (recoveredStack0) rem: (recoveredStack1).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 242] ifFalse: [recoveredPC := 306].
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack3 := [:recoveredBlock251Arg1 | 
    | recoveredBlock251Stack0 recoveredBlock251Stack1 recoveredBlock251Stack2 recoveredBlock251Stack3 recoveredBlock251Stack4 recoveredBlock251Stack5 recoveredBlock251PC recoveredBlock251Step recoveredBlock251Done recoveredBlock251Result |
    recoveredBlock251Stack0 := self.
    recoveredBlock251PC := 258.
    recoveredBlock251Done := false.
    [recoveredBlock251Done not] whileTrue: [
        recoveredBlock251Step := recoveredBlock251PC.
        recoveredBlock251Step = 258 ifTrue: [
            recoveredBlock251Stack1 := nil.
            recoveredBlock251PC := 259.
        ].
        recoveredBlock251Step = 259 ifTrue: [
            recoveredBlock251Stack2 := self.
            recoveredBlock251PC := 260.
        ].
        recoveredBlock251Step = 260 ifTrue: [
            recoveredBlock251Stack2 := (recoveredBlock251Stack2) leftExpr.
            recoveredBlock251PC := 262.
        ].
        recoveredBlock251Step = 262 ifTrue: [
            recoveredBlock251Stack3 := recoveredBlock251Arg1.
            recoveredBlock251PC := 263.
        ].
        recoveredBlock251Step = 263 ifTrue: [
            recoveredBlock251Stack4 := self.
            recoveredBlock251PC := 264.
        ].
        recoveredBlock251Step = 264 ifTrue: [
            recoveredBlock251Stack4 := (recoveredBlock251Stack4) ileBasicType.
            recoveredBlock251PC := 266.
        ].
        recoveredBlock251Step = 266 ifTrue: [
            recoveredBlock251Stack2 := (recoveredBlock251Stack2) mul: (recoveredBlock251Stack3) type: (recoveredBlock251Stack4).
            recoveredBlock251PC := 268.
        ].
        recoveredBlock251Step = 268 ifTrue: [
            recoveredBlock251Stack3 := recoveredBlock251Stack2.
            recoveredBlock251PC := 269.
        ].
        recoveredBlock251Step = 269 ifTrue: [
            recoveredLocal2 := recoveredBlock251Stack3.
            recoveredBlock251PC := 272.
        ].
        recoveredBlock251Step = 272 ifTrue: [
            recoveredBlock251Stack2 := (recoveredBlock251Stack2) isIleRepresentable.
            recoveredBlock251PC := 274.
        ].
        recoveredBlock251Step = 274 ifTrue: [
            (recoveredBlock251Stack2) ifTrue: [recoveredBlock251PC := 278] ifFalse: [recoveredBlock251PC := 291].
        ].
        recoveredBlock251Step = 278 ifTrue: [
            recoveredBlock251PC := 279.
        ].
        recoveredBlock251Step = 279 ifTrue: [
            recoveredBlock251Stack1 := recoveredArg3.
            recoveredBlock251PC := 282.
        ].
        recoveredBlock251Step = 282 ifTrue: [
            recoveredBlock251Stack2 := recoveredLocal2.
            recoveredBlock251PC := 285.
        ].
        recoveredBlock251Step = 285 ifTrue: [
            recoveredBlock251Stack1 := (recoveredBlock251Stack1) value: (recoveredBlock251Stack2).
            recoveredBlock251PC := 287.
        ].
        recoveredBlock251Step = 287 ifTrue: [
            recoveredBlock251Stack2 := recoveredBlock251Stack1.
            recoveredBlock251PC := 288.
        ].
        recoveredBlock251Step = 288 ifTrue: [
            recoveredLocal1 := recoveredBlock251Stack2.
            recoveredBlock251PC := 291.
        ].
        recoveredBlock251Step = 291 ifTrue: [
            recoveredBlock251Result := recoveredBlock251Stack1.
            recoveredBlock251Done := true.
        ].
    ].
    recoveredBlock251Result
].
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            (recoveredStack0) ileOptConstantFoldingMulOpRightConstant: (recoveredStack1) type: (recoveredStack2) onSuccess: (recoveredStack3).
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 306] ifFalse: [recoveredPC := 302].
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

