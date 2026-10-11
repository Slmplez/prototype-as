"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d804; bytecode file offset 0x90a4b8"
!SGIlTransformBasicArithmeticImplAware methodsFor: 'recovered'!
binaryArithExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x201546dc; bytecode file offset 0xa50f9c"
!SGIlTransformBasicArithmeticImplAware methodsFor: 'recovered'!
anyExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isIleArithmeticTransformableExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 17].
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
            recoveredStack1 := super anyExpr: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a78ac; bytecode file offset 0xaa4270"
!SGIlTransformBasicArithmeticImplAware methodsFor: 'recovered'!
muxExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := super muxExpr: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue2 := (self) minMaxExpr: (recoveredValue0) else: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201a7938; bytecode file offset 0xaa4270"
!SGIlTransformBasicArithmeticImplAware methodsFor: 'recovered'!
minExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := super minExpr: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue2 := (self) minMaxExpr: (recoveredValue0) else: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201a799c; bytecode file offset 0xaa4270"
!SGIlTransformBasicArithmeticImplAware methodsFor: 'recovered'!
maxExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := super maxExpr: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue2 := (self) minMaxExpr: (recoveredValue0) else: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201f3a40; bytecode file offset 0xaf02f8"
!SGIlTransformBasicArithmeticImplAware methodsFor: 'recovered'!
tryOnce: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := insideTestCommonDevisor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            insideTestCommonDevisor := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    insideTestCommonDevisor := false.
    false
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ensure: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202998e8; bytecode file offset 0xb961b0"
!SGIlTransformBasicArithmeticImplAware methodsFor: 'recovered'!
addSubExpr: recoveredArg1 else: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Local3 recoveredBlock4Local4 recoveredBlock4Local5 recoveredBlock4Local6 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4Stack5 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) collectAllOperands.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) operands.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Local6 := recoveredBlock4Stack1.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack3 := recoveredArg1.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack4 := recoveredBlock4Local6.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) factorOut: (recoveredBlock4Stack3) operands: (recoveredBlock4Stack4).
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Stack2.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack3.
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            (recoveredBlock4Stack2 == nil) ifTrue: [recoveredBlock4PC := 35] ifFalse: [recoveredBlock4PC := 32].
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local1.
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            ^recoveredBlock4Stack1
        ].
        recoveredBlock4Step = 35 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (self) tryOnce: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) value.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20336f88; bytecode file offset 0xc3387c"
!SGIlTransformBasicArithmeticImplAware methodsFor: 'recovered'!
subExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMulNoOverflowExpr.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMulNoOverflowExpr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) addSubMulNoOverflow: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock43Value0 recoveredBlock43Value1 |
    recoveredBlock43Value0 := recoveredArg1.
    recoveredBlock43Value1 := super subExpr: (recoveredBlock43Value0).
    recoveredBlock43Value1
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) addSubExpr: (recoveredStack1) else: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20336fac; bytecode file offset 0xc3387c"
!SGIlTransformBasicArithmeticImplAware methodsFor: 'recovered'!
addExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMulNoOverflowExpr.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMulNoOverflowExpr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) addSubMulNoOverflow: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock43Value0 recoveredBlock43Value1 |
    recoveredBlock43Value0 := recoveredArg1.
    recoveredBlock43Value1 := super addExpr: (recoveredBlock43Value0).
    recoveredBlock43Value1
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) addSubExpr: (recoveredStack1) else: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f72dc; bytecode file offset 0xcf3bd0"
!SGIlTransformBasicArithmeticImplAware methodsFor: 'recovered'!
abstractLimitedExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDivExpr.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileDenomExpr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantExpr.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileBasicType.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) mul: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) limitExprGoalInterval: (recoveredStack2) shiftValue: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAbstractLimitExpr.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) asIleCopy.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := super abstractLimitedExpr: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204175e0; bytecode file offset 0xd13ecc"
!SGIlTransformBasicArithmeticImplAware methodsFor: 'recovered'!
binaryRelExprWithLeftConstant: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleBoolConstant.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 97] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 97] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFraction.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 97].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) numerator.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 97] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) denominator.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) scalarConstant: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 97].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) numerator.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) scalarConstant: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 97].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := (recoveredStack4) value.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack4 := (recoveredStack4) denominator.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack4 := (recoveredStack4) < (recoveredStack5).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3) inverse: (recoveredStack4).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2041f13c; bytecode file offset 0xd1ba24"
!SGIlTransformBasicArithmeticImplAware methodsFor: 'recovered'!
mulExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleShiftRightExpr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 95].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 95].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBuilder.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) scalarConstant: (recoveredStack4).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) div: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 91].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := (recoveredStack3) / (recoveredStack4).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) scalarConstant: (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := super mulExpr: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20439394; bytecode file offset 0xd35c88"
!SGIlTransformBasicArithmeticImplAware methodsFor: 'recovered'!
binaryRelExprWithRightConstant: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleBoolConstant.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFraction.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) denominator.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) scalarConstant: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) representable.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileCosts.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileCosts.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) numerator.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) scalarConstant: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := (recoveredStack4) value.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := (recoveredStack4) denominator.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack4 := (recoveredStack4) < (recoveredStack5).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3) inverse: (recoveredStack4).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2045158c; bytecode file offset 0xd4de80"
!SGIlTransformBasicArithmeticImplAware methodsFor: 'recovered'!
minMaxExpr: recoveredArg1 else: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Local3 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4Stack5 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := OrderedCollection.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) new.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Local3 := recoveredBlock4Stack1.
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack1 := [:recoveredBlock4Block16Arg1 | 
    | recoveredBlock4Block16Stack0 recoveredBlock4Block16Stack1 recoveredBlock4Block16Stack2 recoveredBlock4Block16Stack3 recoveredBlock4Block16Stack4 recoveredBlock4Block16Stack5 recoveredBlock4Block16PC recoveredBlock4Block16Step recoveredBlock4Block16Done recoveredBlock4Block16Result |
    recoveredBlock4Block16Stack0 := nil.
    recoveredBlock4Block16PC := 22.
    recoveredBlock4Block16Done := false.
    [recoveredBlock4Block16Done not] whileTrue: [
        recoveredBlock4Block16Step := recoveredBlock4Block16PC.
        recoveredBlock4Block16Step = 22 ifTrue: [
            recoveredBlock4Block16Stack1 := recoveredBlock4Block16Arg1.
            recoveredBlock4Block16PC := 23.
        ].
        recoveredBlock4Block16Step = 23 ifTrue: [
            recoveredBlock4Block16Stack1 := (recoveredBlock4Block16Stack1) isIleAddExpr.
            recoveredBlock4Block16PC := 24.
        ].
        recoveredBlock4Block16Step = 24 ifTrue: [
            (recoveredBlock4Block16Stack1) ifTrue: [recoveredBlock4Block16PC := 34] ifFalse: [recoveredBlock4Block16PC := 28].
        ].
        recoveredBlock4Block16Step = 28 ifTrue: [
            recoveredBlock4Block16Stack1 := recoveredBlock4Block16Arg1.
            recoveredBlock4Block16PC := 29.
        ].
        recoveredBlock4Block16Step = 29 ifTrue: [
            recoveredBlock4Block16Stack1 := (recoveredBlock4Block16Stack1) isIleSubExpr.
            recoveredBlock4Block16PC := 30.
        ].
        recoveredBlock4Block16Step = 30 ifTrue: [
            (recoveredBlock4Block16Stack1) ifTrue: [recoveredBlock4Block16PC := 34] ifFalse: [recoveredBlock4Block16PC := 48].
        ].
        recoveredBlock4Block16Step = 34 ifTrue: [
            recoveredBlock4Block16Stack1 := recoveredBlock4Local3.
            recoveredBlock4Block16PC := 37.
        ].
        recoveredBlock4Block16Step = 37 ifTrue: [
            recoveredBlock4Block16Stack2 := recoveredBlock4Block16Arg1.
            recoveredBlock4Block16PC := 38.
        ].
        recoveredBlock4Block16Step = 38 ifTrue: [
            recoveredBlock4Block16Stack2 := (recoveredBlock4Block16Stack2) collectAllOperands.
            recoveredBlock4Block16PC := 40.
        ].
        recoveredBlock4Block16Step = 40 ifTrue: [
            recoveredBlock4Block16Stack2 := (recoveredBlock4Block16Stack2) operands.
            recoveredBlock4Block16PC := 42.
        ].
        recoveredBlock4Block16Step = 42 ifTrue: [
            recoveredBlock4Block16Stack1 := (recoveredBlock4Block16Stack1) addAll: (recoveredBlock4Block16Stack2).
            recoveredBlock4Block16PC := 44.
        ].
        recoveredBlock4Block16Step = 44 ifTrue: [
            recoveredBlock4Block16PC := 59.
        ].
        recoveredBlock4Block16Step = 48 ifTrue: [
            recoveredBlock4Block16Stack1 := recoveredBlock4Local3.
            recoveredBlock4Block16PC := 51.
        ].
        recoveredBlock4Block16Step = 51 ifTrue: [
            recoveredBlock4Block16Stack2 := Array.
            recoveredBlock4Block16PC := 53.
        ].
        recoveredBlock4Block16Step = 53 ifTrue: [
            recoveredBlock4Block16Stack3 := false.
            recoveredBlock4Block16PC := 54.
        ].
        recoveredBlock4Block16Step = 54 ifTrue: [
            recoveredBlock4Block16Stack4 := recoveredBlock4Block16Arg1.
            recoveredBlock4Block16PC := 55.
        ].
        recoveredBlock4Block16Step = 55 ifTrue: [
            recoveredBlock4Block16Stack2 := (recoveredBlock4Block16Stack2) with: (recoveredBlock4Block16Stack3) with: (recoveredBlock4Block16Stack4).
            recoveredBlock4Block16PC := 57.
        ].
        recoveredBlock4Block16Step = 57 ifTrue: [
            recoveredBlock4Block16Stack1 := (recoveredBlock4Block16Stack1) add: (recoveredBlock4Block16Stack2).
            recoveredBlock4Block16PC := 59.
        ].
        recoveredBlock4Block16Step = 59 ifTrue: [
            recoveredBlock4Block16Result := recoveredBlock4Block16Stack1.
            recoveredBlock4Block16Done := true.
        ].
    ].
    recoveredBlock4Block16Result
].
            recoveredBlock4PC := 60.
        ].
        recoveredBlock4Step = 60 ifTrue: [
            recoveredBlock4Local2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 63.
        ].
        recoveredBlock4Step = 63 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local2.
            recoveredBlock4PC := 66.
        ].
        recoveredBlock4Step = 66 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 69.
        ].
        recoveredBlock4Step = 69 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) leftExpr.
            recoveredBlock4PC := 71.
        ].
        recoveredBlock4Step = 71 ifTrue: [
            (recoveredBlock4Stack1) value: (recoveredBlock4Stack2).
            recoveredBlock4PC := 73.
        ].
        recoveredBlock4Step = 73 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local2.
            recoveredBlock4PC := 76.
        ].
        recoveredBlock4Step = 76 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 79.
        ].
        recoveredBlock4Step = 79 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) rightExpr.
            recoveredBlock4PC := 81.
        ].
        recoveredBlock4Step = 81 ifTrue: [
            (recoveredBlock4Stack1) value: (recoveredBlock4Stack2).
            recoveredBlock4PC := 83.
        ].
        recoveredBlock4Step = 83 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 84.
        ].
        recoveredBlock4Step = 84 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 85.
        ].
        recoveredBlock4Step = 85 ifTrue: [
            recoveredBlock4Stack3 := recoveredArg1.
            recoveredBlock4PC := 88.
        ].
        recoveredBlock4Step = 88 ifTrue: [
            recoveredBlock4Stack4 := recoveredBlock4Local3.
            recoveredBlock4PC := 91.
        ].
        recoveredBlock4Step = 91 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) factorOut: (recoveredBlock4Stack3) operands: (recoveredBlock4Stack4).
            recoveredBlock4PC := 93.
        ].
        recoveredBlock4Step = 93 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Stack2.
            recoveredBlock4PC := 94.
        ].
        recoveredBlock4Step = 94 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack3.
            recoveredBlock4PC := 97.
        ].
        recoveredBlock4Step = 97 ifTrue: [
            (recoveredBlock4Stack2 == nil) ifTrue: [recoveredBlock4PC := 105] ifFalse: [recoveredBlock4PC := 100].
        ].
        recoveredBlock4Step = 100 ifTrue: [
            recoveredBlock4PC := 101.
        ].
        recoveredBlock4Step = 101 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local1.
            recoveredBlock4PC := 104.
        ].
        recoveredBlock4Step = 104 ifTrue: [
            ^recoveredBlock4Stack1
        ].
        recoveredBlock4Step = 105 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (self) tryOnce: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) value.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20453d84; bytecode file offset 0xd50670"
!SGIlTransformBasicArithmeticImplAware methodsFor: 'recovered'!
factorOut: recoveredArg1 divisor: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) representable.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) createIntConstant: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) mul: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleCopy.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) mul: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOpLeftExpr: (recoveredStack1) rightExpr: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleCopy.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) div: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleDivConstExpr.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleShiftRightExpr.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileCosts.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileCosts.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204b40b4; bytecode file offset 0xdb09b0"
!SGIlTransformBasicArithmeticImplAware methodsFor: 'recovered'!
factorOut: recoveredArg1 operands: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block28105ac0Arg1 | 
    | block28105ac0Value0 block28105ac0Value1 block28105ac0Value2 block28105ac0Value3 |
    block28105ac0Value0 := block28105ac0Arg1.
    block28105ac0Value1 := (block28105ac0Value0) at: (2).
    block28105ac0Value2 := (block28105ac0Value1) ileDenomExpr.
    block28105ac0Value3 := (block28105ac0Value2) ileConstFactorExpr.
    block28105ac0Value3
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := [:block28105ae4Arg1 | 
    | block28105ae4Value0 block28105ae4Value1 block28105ae4Value2 |
    block28105ae4Value0 := block28105ae4Arg1.
    block28105ae4Value1 := (block28105ae4Value0) isIleConstantValueOne.
    block28105ae4Value2 := (block28105ae4Value1) not.
    block28105ae4Value2
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeFirst.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := [:block28105b08Arg1 :block28105b08Arg2 | 
    | block28105b08Value0 block28105b08Value1 block28105b08Value2 block28105b08Value3 |
    block28105b08Value0 := block28105b08Arg1.
    block28105b08Value1 := block28105b08Arg2.
    block28105b08Value2 := (block28105b08Value1) value.
    block28105b08Value3 := (block28105b08Value0) gcd: (block28105b08Value2).
    block28105b08Value3
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) inject: (recoveredStack2) into: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) factorOut: (recoveredStack2) divisor: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleExpansionPreparationPhase.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := [:block28105b2cArg1 :block28105b2cArg2 | 
    | block28105b2cValue0 block28105b2cValue1 block28105b2cValue2 block28105b2cValue3 |
    block28105b2cValue0 := block28105b2cArg1.
    block28105b2cValue1 := block28105b2cArg2.
    block28105b2cValue2 := (block28105b2cValue1) value.
    block28105b2cValue3 := (block28105b2cValue0) lcm: (block28105b2cValue2).
    block28105b2cValue3
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) inject: (recoveredStack2) into: (recoveredStack3).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) factorOut: (recoveredStack2) divisor: (recoveredStack3).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2057baf8; bytecode file offset 0xe78420"
!SGIlTransformBasicArithmeticImplAware methodsFor: 'recovered'!
addSubMulNoOverflow: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLimitingNoOverflow.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLimitingNoOverflow.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 254].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) originalExpr.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) originalExpr.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAddExpr.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) overflowOfInterval: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) powerTo: (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) scalarConstant: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) needsSigned.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) largestSignedInterval.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 105.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) largestUnsignedInterval.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := (recoveredStack2) abs.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := (recoveredStack2) right.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := (recoveredStack2) abs.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := (recoveredStack2) right.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := (recoveredStack2) abs.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := (recoveredStack2) right.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 254] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 254] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleSubExpr.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := (recoveredStack1) negated.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) originalExpr.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleLimitOverflowExprGoalInterval: (recoveredStack2).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := (recoveredStack1) originalExpr.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleLimitOverflowExprGoalInterval: (recoveredStack2).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleAlternativelyTheSameValueAs: (recoveredStack2).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 216] ifFalse: [recoveredPC := 224].
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleAlternativelyTheSameValueAs: (recoveredStack2).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 254] ifFalse: [recoveredPC := 224].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 238] ifFalse: [recoveredPC := 254].
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack2 := (recoveredStack2) asIleCopy.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleLimitOverflowExprGoalInterval: (recoveredStack2).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205ab600; bytecode file offset 0xea7f00"
!SGIlTransformBasicArithmeticImplAware methodsFor: 'recovered'!
divConstExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAddSubExpr.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 298].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 282].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 282].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) asInterval.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) asInterval.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 282].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := (recoveredStack2) asInterval.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) asInterval.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 282].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileCosts.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileCosts.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileRuntimeCostsOfExpr.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileCosts.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 282].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock147Value0 recoveredBlock147Value1 recoveredBlock147Value2 recoveredBlock147Value3 recoveredBlock147Value4 |
    recoveredBlock147Value0 := recoveredArg1.
    recoveredBlock147Value1 := (recoveredBlock147Value0) leftExpr.
    recoveredBlock147Value2 := recoveredLocal4.
    recoveredBlock147Value3 := recoveredLocal3.
    recoveredBlock147Value4 := (recoveredBlock147Value1) createOpLeftExpr: (recoveredBlock147Value2) rightExpr: (recoveredBlock147Value3).
    recoveredBlock147Value4
].
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) disableTransformationDo: (recoveredStack2).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftExpr.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileCopyLimitAttributesArithOpExpr: (recoveredStack2) originalExpr: (recoveredStack3).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 194] ifFalse: [recoveredPC := 282].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := 'Rl'.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := 'Call_63317'.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileCosts.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileCosts.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 214] ifFalse: [recoveredPC := 282].
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) countDivisions: (recoveredStack2).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := (recoveredStack2) countDivisions: (recoveredStack3).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 230] ifFalse: [recoveredPC := 282].
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileCosts.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileCosts.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 278] ifFalse: [recoveredPC := 244].
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := (recoveredStack1) countDivisions: (recoveredStack2).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := (recoveredStack2) countDivisions: (recoveredStack3).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 278] ifFalse: [recoveredPC := 260].
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 270] ifFalse: [recoveredPC := 278].
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleExpansionPreparationPhase.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 282] ifFalse: [recoveredPC := 278].
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack0 := (recoveredStack0) divExpr: (recoveredStack1).
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205ab908; bytecode file offset 0xea8230"
!SGIlTransformBasicArithmeticImplAware methodsFor: 'recovered'!
mulConstExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDivExpr.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 204].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFraction.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 204] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFloatTypedExpr.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 204] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValuePowerOfTwo.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 204].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) needsSigned.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) needsSigned.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) largestSignedInterval.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) iaLength.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) iaLength.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) largestUnsignedInterval.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) iaLength.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) iaLength.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) floorLog: (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 204].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := (recoveredStack2) abs.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := (recoveredStack2) log: (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := (recoveredStack2) / (recoveredStack3).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 204].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := (recoveredStack3) power: (recoveredStack4).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := (recoveredStack2) createConstantValue: (recoveredStack3).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 204].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 178] ifFalse: [recoveredPC := 204].
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack4 := (recoveredStack4) power: (recoveredStack5).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack3 := (recoveredStack3) / (recoveredStack4).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := (recoveredStack2) createConstantValue: (recoveredStack3).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDivExpr.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 214] ifFalse: [recoveredPC := 297].
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleIntConstant.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 224] ifFalse: [recoveredPC := 297].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := (recoveredStack2) abs.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 244] ifFalse: [recoveredPC := 297].
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := (recoveredStack1) iaLength.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack2 := 65536.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 256] ifFalse: [recoveredPC := 297].
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 276] ifFalse: [recoveredPC := 297].
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 294] ifFalse: [recoveredPC := 297].
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack0 := super mulConstExpr: (recoveredStack1).
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206737bc; bytecode file offset 0xf70180"
!SGIlTransformBasicArithmeticImplAware methodsFor: 'recovered'!
divExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) length.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAddConstExpr.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleSubConstExpr.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleReciprocalExpr.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) reciprocal.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftExpr.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal9 := recoveredStack2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAddExpr.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleSubExpr.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 668].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) collectAllOperands.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) operands.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := [:block2812760cArg1 | 
    | block2812760cValue0 block2812760cValue1 block2812760cValue2 |
    block2812760cValue0 := block2812760cArg1.
    block2812760cValue1 := (block2812760cValue0) at: (2).
    block2812760cValue2 := (block2812760cValue1) ileDenomExpr.
    block2812760cValue2
].
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := [:block28127630Arg1 | 
    | block28127630Value0 block28127630Value1 |
    block28127630Value0 := block28127630Arg1.
    block28127630Value1 := (block28127630Value0) isIleIntConstant.
    block28127630Value1
].
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSatisfy: (recoveredStack2).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 408].
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := [:block28127654Arg1 | 
    | block28127654Value0 block28127654Value1 block28127654Value2 |
    block28127654Value0 := block28127654Arg1.
    block28127654Value1 := (block28127654Value0) isIleConstantValueOne.
    block28127654Value2 := (block28127654Value1) not.
    block28127654Value2
].
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSatisfy: (recoveredStack2).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 226] ifFalse: [recoveredPC := 408].
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeFirst.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack3 := [:block28127678Arg1 :block28127678Arg2 | 
    | block28127678Value0 block28127678Value1 block28127678Value2 block28127678Value3 |
    block28127678Value0 := block28127678Arg1.
    block28127678Value1 := block28127678Arg2.
    block28127678Value2 := (block28127678Value1) value.
    block28127678Value3 := (block28127678Value0) gcd: (block28127678Value2).
    block28127678Value3
].
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := (recoveredStack1) inject: (recoveredStack2) into: (recoveredStack3).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredPC := 395.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack2 := (recoveredStack2) createIntConstant: (recoveredStack3).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftExpr.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 296] ifFalse: [recoveredPC := 356].
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack2 := (recoveredStack2) createIntConstant: (recoveredStack3).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 326] ifFalse: [recoveredPC := 356].
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 348] ifFalse: [recoveredPC := 352].
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack1 := (recoveredStack1) rem: (recoveredStack2).
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 382] ifFalse: [recoveredPC := 368].
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredPC := 387.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 264] ifFalse: [recoveredPC := 404].
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack2 := [:recoveredBlock411Arg1 | 
    | recoveredBlock411Local1 recoveredBlock411Local2 recoveredBlock411Local3 recoveredBlock411Local4 recoveredBlock411Local5 recoveredBlock411Stack0 recoveredBlock411Stack1 recoveredBlock411Stack2 recoveredBlock411Stack3 recoveredBlock411Stack4 recoveredBlock411Stack5 recoveredBlock411PC recoveredBlock411Step recoveredBlock411Done recoveredBlock411Result |
    recoveredBlock411Stack0 := self.
    recoveredBlock411PC := 418.
    recoveredBlock411Done := false.
    [recoveredBlock411Done not] whileTrue: [
        recoveredBlock411Step := recoveredBlock411PC.
        recoveredBlock411Step = 418 ifTrue: [
            recoveredBlock411Stack1 := nil.
            recoveredBlock411PC := 419.
        ].
        recoveredBlock411Step = 419 ifTrue: [
            recoveredBlock411Stack2 := recoveredBlock411Arg1.
            recoveredBlock411PC := 422.
        ].
        recoveredBlock411Step = 422 ifTrue: [
            recoveredBlock411Stack2 := (recoveredBlock411Stack2) isIleIntConstant.
            recoveredBlock411PC := 424.
        ].
        recoveredBlock411Step = 424 ifTrue: [
            (recoveredBlock411Stack2) ifTrue: [recoveredBlock411PC := 665] ifFalse: [recoveredBlock411PC := 428].
        ].
        recoveredBlock411Step = 428 ifTrue: [
            recoveredBlock411Stack2 := recoveredBlock411Arg1.
            recoveredBlock411PC := 431.
        ].
        recoveredBlock411Step = 431 ifTrue: [
            recoveredBlock411Stack2 := (recoveredBlock411Stack2) hasIleNoSideEffects.
            recoveredBlock411PC := 433.
        ].
        recoveredBlock411Step = 433 ifTrue: [
            (recoveredBlock411Stack2) ifTrue: [recoveredBlock411PC := 436] ifFalse: [recoveredBlock411PC := 665].
        ].
        recoveredBlock411Step = 436 ifTrue: [
            recoveredBlock411PC := 437.
        ].
        recoveredBlock411Step = 437 ifTrue: [
            recoveredBlock411Stack1 := recoveredBlock411Arg1.
            recoveredBlock411PC := 440.
        ].
        recoveredBlock411Step = 440 ifTrue: [
            recoveredBlock411Stack1 := (recoveredBlock411Stack1) asIleRTCostsOptimizedBufferedExpr.
            recoveredBlock411PC := 442.
        ].
        recoveredBlock411Step = 442 ifTrue: [
            recoveredBlock411Local2 := recoveredBlock411Stack1.
            recoveredBlock411PC := 445.
        ].
        recoveredBlock411Step = 445 ifTrue: [
            recoveredBlock411Stack1 := nil.
            recoveredBlock411PC := 446.
        ].
        recoveredBlock411Step = 446 ifTrue: [
            recoveredBlock411Stack2 := recoveredArg1.
            recoveredBlock411PC := 449.
        ].
        recoveredBlock411Step = 449 ifTrue: [
            recoveredBlock411Stack2 := (recoveredBlock411Stack2) leftExpr.
            recoveredBlock411PC := 451.
        ].
        recoveredBlock411Step = 451 ifTrue: [
            recoveredBlock411Stack3 := recoveredBlock411Local2.
            recoveredBlock411PC := 454.
        ].
        recoveredBlock411Step = 454 ifTrue: [
            recoveredBlock411Stack4 := nil.
            recoveredBlock411PC := 455.
        ].
        recoveredBlock411Step = 455 ifTrue: [
            recoveredBlock411Stack2 := (recoveredBlock411Stack2) mul: (recoveredBlock411Stack3) type: (recoveredBlock411Stack4).
            recoveredBlock411PC := 457.
        ].
        recoveredBlock411Step = 457 ifTrue: [
            recoveredBlock411Stack3 := recoveredBlock411Stack2.
            recoveredBlock411PC := 458.
        ].
        recoveredBlock411Step = 458 ifTrue: [
            recoveredBlock411Local5 := recoveredBlock411Stack3.
            recoveredBlock411PC := 461.
        ].
        recoveredBlock411Step = 461 ifTrue: [
            recoveredBlock411Stack2 := (recoveredBlock411Stack2) isIleRepresentable.
            recoveredBlock411PC := 463.
        ].
        recoveredBlock411Step = 463 ifTrue: [
            (recoveredBlock411Stack2) ifTrue: [recoveredBlock411PC := 466] ifFalse: [recoveredBlock411PC := 665].
        ].
        recoveredBlock411Step = 466 ifTrue: [
            recoveredBlock411PC := 467.
        ].
        recoveredBlock411Step = 467 ifTrue: [
            recoveredBlock411Stack1 := self.
            recoveredBlock411PC := 468.
        ].
        recoveredBlock411Step = 468 ifTrue: [
            recoveredBlock411Stack1 := (recoveredBlock411Stack1) ileBuilder.
            recoveredBlock411PC := 470.
        ].
        recoveredBlock411Step = 470 ifTrue: [
            recoveredBlock411Stack1 := (recoveredBlock411Stack1) literalZero.
            recoveredBlock411PC := 472.
        ].
        recoveredBlock411Step = 472 ifTrue: [
            recoveredBlock411Local4 := recoveredBlock411Stack1.
            recoveredBlock411PC := 475.
        ].
        recoveredBlock411Step = 475 ifTrue: [
            recoveredBlock411Stack1 := false.
            recoveredBlock411PC := 476.
        ].
        recoveredBlock411Step = 476 ifTrue: [
            recoveredBlock411Local1 := recoveredBlock411Stack1.
            recoveredBlock411PC := 479.
        ].
        recoveredBlock411Step = 479 ifTrue: [
            recoveredBlock411Stack1 := recoveredLocal8.
            recoveredBlock411PC := 482.
        ].
        recoveredBlock411Step = 482 ifTrue: [
            recoveredBlock411Stack1 := (recoveredBlock411Stack1) operands.
            recoveredBlock411PC := 484.
        ].
        recoveredBlock411Step = 484 ifTrue: [
            recoveredBlock411Stack2 := [:recoveredBlock411Block484Arg1 | 
    | recoveredBlock411Block484Local1 recoveredBlock411Block484Local2 recoveredBlock411Block484Local3 recoveredBlock411Block484Stack0 recoveredBlock411Block484Stack1 recoveredBlock411Block484Stack2 recoveredBlock411Block484Stack3 recoveredBlock411Block484Stack4 recoveredBlock411Block484PC recoveredBlock411Block484Step recoveredBlock411Block484Done recoveredBlock411Block484Result |
    recoveredBlock411Block484Stack0 := nil.
    recoveredBlock411Block484PC := 490.
    recoveredBlock411Block484Done := false.
    [recoveredBlock411Block484Done not] whileTrue: [
        recoveredBlock411Block484Step := recoveredBlock411Block484PC.
        recoveredBlock411Block484Step = 490 ifTrue: [
            recoveredBlock411Block484Stack1 := recoveredBlock411Block484Arg1.
            recoveredBlock411Block484PC := 491.
        ].
        recoveredBlock411Block484Step = 491 ifTrue: [
            recoveredBlock411Block484Stack2 := 2.
            recoveredBlock411Block484PC := 493.
        ].
        recoveredBlock411Block484Step = 493 ifTrue: [
            recoveredBlock411Block484Stack1 := (recoveredBlock411Block484Stack1) at: (recoveredBlock411Block484Stack2).
            recoveredBlock411Block484PC := 495.
        ].
        recoveredBlock411Block484Step = 495 ifTrue: [
            recoveredBlock411Block484Stack2 := recoveredBlock411Local2.
            recoveredBlock411Block484PC := 498.
        ].
        recoveredBlock411Block484Step = 498 ifTrue: [
            recoveredBlock411Block484Stack2 := (recoveredBlock411Block484Stack2) asIleCopy.
            recoveredBlock411Block484PC := 500.
        ].
        recoveredBlock411Block484Step = 500 ifTrue: [
            recoveredBlock411Block484Stack3 := nil.
            recoveredBlock411Block484PC := 501.
        ].
        recoveredBlock411Block484Step = 501 ifTrue: [
            recoveredBlock411Block484Stack1 := (recoveredBlock411Block484Stack1) mul: (recoveredBlock411Block484Stack2) type: (recoveredBlock411Block484Stack3).
            recoveredBlock411Block484PC := 503.
        ].
        recoveredBlock411Block484Step = 503 ifTrue: [
            recoveredBlock411Block484Local3 := recoveredBlock411Block484Stack1.
            recoveredBlock411Block484PC := 504.
        ].
        recoveredBlock411Block484Step = 504 ifTrue: [
            recoveredBlock411Block484Stack1 := recoveredBlock411Block484Arg1.
            recoveredBlock411Block484PC := 505.
        ].
        recoveredBlock411Block484Step = 505 ifTrue: [
            recoveredBlock411Block484Stack2 := 2.
            recoveredBlock411Block484PC := 507.
        ].
        recoveredBlock411Block484Step = 507 ifTrue: [
            recoveredBlock411Block484Stack1 := (recoveredBlock411Block484Stack1) at: (recoveredBlock411Block484Stack2).
            recoveredBlock411Block484PC := 509.
        ].
        recoveredBlock411Block484Step = 509 ifTrue: [
            recoveredBlock411Block484Stack2 := recoveredBlock411Arg1.
            recoveredBlock411Block484PC := 512.
        ].
        recoveredBlock411Block484Step = 512 ifTrue: [
            recoveredBlock411Block484Stack2 := (recoveredBlock411Block484Stack2) asIleCopy.
            recoveredBlock411Block484PC := 514.
        ].
        recoveredBlock411Block484Step = 514 ifTrue: [
            recoveredBlock411Block484Stack3 := nil.
            recoveredBlock411Block484PC := 515.
        ].
        recoveredBlock411Block484Step = 515 ifTrue: [
            recoveredBlock411Block484Stack1 := (recoveredBlock411Block484Stack1) mul: (recoveredBlock411Block484Stack2) type: (recoveredBlock411Block484Stack3).
            recoveredBlock411Block484PC := 517.
        ].
        recoveredBlock411Block484Step = 517 ifTrue: [
            recoveredBlock411Block484Local2 := recoveredBlock411Block484Stack1.
            recoveredBlock411Block484PC := 518.
        ].
        recoveredBlock411Block484Step = 518 ifTrue: [
            recoveredBlock411Block484Stack1 := recoveredBlock411Block484Local3.
            recoveredBlock411Block484PC := 519.
        ].
        recoveredBlock411Block484Step = 519 ifTrue: [
            recoveredBlock411Block484Stack1 := (recoveredBlock411Block484Stack1) ileCosts.
            recoveredBlock411Block484PC := 521.
        ].
        recoveredBlock411Block484Step = 521 ifTrue: [
            recoveredBlock411Block484Stack2 := recoveredBlock411Block484Local2.
            recoveredBlock411Block484PC := 522.
        ].
        recoveredBlock411Block484Step = 522 ifTrue: [
            recoveredBlock411Block484Stack2 := (recoveredBlock411Block484Stack2) ileCosts.
            recoveredBlock411Block484PC := 524.
        ].
        recoveredBlock411Block484Step = 524 ifTrue: [
            recoveredBlock411Block484Stack1 := (recoveredBlock411Block484Stack1) < (recoveredBlock411Block484Stack2).
            recoveredBlock411Block484PC := 525.
        ].
        recoveredBlock411Block484Step = 525 ifTrue: [
            (recoveredBlock411Block484Stack1) ifTrue: [recoveredBlock411Block484PC := 528] ifFalse: [recoveredBlock411Block484PC := 532].
        ].
        recoveredBlock411Block484Step = 528 ifTrue: [
            recoveredBlock411Block484Stack1 := recoveredBlock411Block484Local3.
            recoveredBlock411Block484PC := 529.
        ].
        recoveredBlock411Block484Step = 529 ifTrue: [
            recoveredBlock411Block484PC := 533.
        ].
        recoveredBlock411Block484Step = 532 ifTrue: [
            recoveredBlock411Block484Stack1 := recoveredBlock411Block484Local2.
            recoveredBlock411Block484PC := 533.
        ].
        recoveredBlock411Block484Step = 533 ifTrue: [
            recoveredBlock411Block484Local1 := recoveredBlock411Block484Stack1.
            recoveredBlock411Block484PC := 534.
        ].
        recoveredBlock411Block484Step = 534 ifTrue: [
            recoveredBlock411Block484Stack1 := recoveredBlock411Block484Arg1.
            recoveredBlock411Block484PC := 535.
        ].
        recoveredBlock411Block484Step = 535 ifTrue: [
            recoveredBlock411Block484Stack2 := 1.
            recoveredBlock411Block484PC := 537.
        ].
        recoveredBlock411Block484Step = 537 ifTrue: [
            recoveredBlock411Block484Stack1 := (recoveredBlock411Block484Stack1) at: (recoveredBlock411Block484Stack2).
            recoveredBlock411Block484PC := 539.
        ].
        recoveredBlock411Block484Step = 539 ifTrue: [
            (recoveredBlock411Block484Stack1) ifTrue: [recoveredBlock411Block484PC := 542] ifFalse: [recoveredBlock411Block484PC := 556].
        ].
        recoveredBlock411Block484Step = 542 ifTrue: [
            recoveredBlock411Block484Stack1 := recoveredBlock411Local4.
            recoveredBlock411Block484PC := 545.
        ].
        recoveredBlock411Block484Step = 545 ifTrue: [
            recoveredBlock411Block484Stack2 := recoveredBlock411Block484Local1.
            recoveredBlock411Block484PC := 546.
        ].
        recoveredBlock411Block484Step = 546 ifTrue: [
            recoveredBlock411Block484Stack3 := nil.
            recoveredBlock411Block484PC := 547.
        ].
        recoveredBlock411Block484Step = 547 ifTrue: [
            recoveredBlock411Block484Stack1 := (recoveredBlock411Block484Stack1) sub: (recoveredBlock411Block484Stack2) type: (recoveredBlock411Block484Stack3).
            recoveredBlock411Block484PC := 549.
        ].
        recoveredBlock411Block484Step = 549 ifTrue: [
            recoveredBlock411Local4 := recoveredBlock411Block484Stack1.
            recoveredBlock411Block484PC := 552.
        ].
        recoveredBlock411Block484Step = 552 ifTrue: [
            recoveredBlock411Block484PC := 566.
        ].
        recoveredBlock411Block484Step = 556 ifTrue: [
            recoveredBlock411Block484Stack1 := recoveredBlock411Local4.
            recoveredBlock411Block484PC := 559.
        ].
        recoveredBlock411Block484Step = 559 ifTrue: [
            recoveredBlock411Block484Stack2 := recoveredBlock411Block484Local1.
            recoveredBlock411Block484PC := 560.
        ].
        recoveredBlock411Block484Step = 560 ifTrue: [
            recoveredBlock411Block484Stack3 := nil.
            recoveredBlock411Block484PC := 561.
        ].
        recoveredBlock411Block484Step = 561 ifTrue: [
            recoveredBlock411Block484Stack1 := (recoveredBlock411Block484Stack1) add: (recoveredBlock411Block484Stack2) type: (recoveredBlock411Block484Stack3).
            recoveredBlock411Block484PC := 563.
        ].
        recoveredBlock411Block484Step = 563 ifTrue: [
            recoveredBlock411Local4 := recoveredBlock411Block484Stack1.
            recoveredBlock411Block484PC := 566.
        ].
        recoveredBlock411Block484Step = 566 ifTrue: [
            recoveredBlock411Block484Stack1 := nil.
            recoveredBlock411Block484PC := 567.
        ].
        recoveredBlock411Block484Step = 567 ifTrue: [
            recoveredBlock411Block484Stack2 := recoveredBlock411Local4.
            recoveredBlock411Block484PC := 570.
        ].
        recoveredBlock411Block484Step = 570 ifTrue: [
            recoveredBlock411Block484Stack2 := (recoveredBlock411Block484Stack2) isIleRepresentable.
            recoveredBlock411Block484PC := 572.
        ].
        recoveredBlock411Block484Step = 572 ifTrue: [
            (recoveredBlock411Block484Stack2) ifTrue: [recoveredBlock411Block484PC := 582] ifFalse: [recoveredBlock411Block484PC := 576].
        ].
        recoveredBlock411Block484Step = 576 ifTrue: [
            recoveredBlock411Block484PC := 577.
        ].
        recoveredBlock411Block484Step = 577 ifTrue: [
            recoveredBlock411Block484Stack1 := true.
            recoveredBlock411Block484PC := 578.
        ].
        recoveredBlock411Block484Step = 578 ifTrue: [
            recoveredBlock411Block484Stack2 := recoveredBlock411Block484Stack1.
            recoveredBlock411Block484PC := 579.
        ].
        recoveredBlock411Block484Step = 579 ifTrue: [
            recoveredBlock411Local1 := recoveredBlock411Block484Stack2.
            recoveredBlock411Block484PC := 582.
        ].
        recoveredBlock411Block484Step = 582 ifTrue: [
            recoveredBlock411Block484Result := recoveredBlock411Block484Stack1.
            recoveredBlock411Block484Done := true.
        ].
    ].
    recoveredBlock411Block484Result
].
            recoveredBlock411PC := 583.
        ].
        recoveredBlock411Step = 583 ifTrue: [
            (recoveredBlock411Stack1) do: (recoveredBlock411Stack2).
            recoveredBlock411PC := 585.
        ].
        recoveredBlock411Step = 585 ifTrue: [
            recoveredBlock411Stack1 := nil.
            recoveredBlock411PC := 586.
        ].
        recoveredBlock411Step = 586 ifTrue: [
            recoveredBlock411Stack2 := recoveredBlock411Local1.
            recoveredBlock411PC := 589.
        ].
        recoveredBlock411Step = 589 ifTrue: [
            (recoveredBlock411Stack2) ifTrue: [recoveredBlock411PC := 665] ifFalse: [recoveredBlock411PC := 592].
        ].
        recoveredBlock411Step = 592 ifTrue: [
            recoveredBlock411PC := 593.
        ].
        recoveredBlock411Step = 593 ifTrue: [
            recoveredBlock411Stack1 := nil.
            recoveredBlock411PC := 594.
        ].
        recoveredBlock411Step = 594 ifTrue: [
            recoveredBlock411Stack2 := recoveredBlock411Local5.
            recoveredBlock411PC := 597.
        ].
        recoveredBlock411Step = 597 ifTrue: [
            recoveredBlock411Stack2 := (recoveredBlock411Stack2) ileCosts.
            recoveredBlock411PC := 599.
        ].
        recoveredBlock411Step = 599 ifTrue: [
            recoveredBlock411Stack3 := recoveredBlock411Local4.
            recoveredBlock411PC := 602.
        ].
        recoveredBlock411Step = 602 ifTrue: [
            recoveredBlock411Stack3 := (recoveredBlock411Stack3) ileCosts.
            recoveredBlock411PC := 604.
        ].
        recoveredBlock411Step = 604 ifTrue: [
            recoveredBlock411Stack2 := (recoveredBlock411Stack2) + (recoveredBlock411Stack3).
            recoveredBlock411PC := 605.
        ].
        recoveredBlock411Step = 605 ifTrue: [
            recoveredBlock411Stack3 := recoveredArg1.
            recoveredBlock411PC := 608.
        ].
        recoveredBlock411Step = 608 ifTrue: [
            recoveredBlock411Stack3 := (recoveredBlock411Stack3) ileRuntimeCostsOfExpr.
            recoveredBlock411PC := 610.
        ].
        recoveredBlock411Step = 610 ifTrue: [
            recoveredBlock411Stack2 := (recoveredBlock411Stack2) + (recoveredBlock411Stack3).
            recoveredBlock411PC := 611.
        ].
        recoveredBlock411Step = 611 ifTrue: [
            recoveredBlock411Stack3 := recoveredArg1.
            recoveredBlock411PC := 614.
        ].
        recoveredBlock411Step = 614 ifTrue: [
            recoveredBlock411Stack3 := (recoveredBlock411Stack3) ileCosts.
            recoveredBlock411PC := 616.
        ].
        recoveredBlock411Step = 616 ifTrue: [
            recoveredBlock411Stack2 := (recoveredBlock411Stack2) <= (recoveredBlock411Stack3).
            recoveredBlock411PC := 617.
        ].
        recoveredBlock411Step = 617 ifTrue: [
            (recoveredBlock411Stack2) ifTrue: [recoveredBlock411PC := 620] ifFalse: [recoveredBlock411PC := 665].
        ].
        recoveredBlock411Step = 620 ifTrue: [
            recoveredBlock411PC := 621.
        ].
        recoveredBlock411Step = 621 ifTrue: [
            recoveredBlock411Stack1 := nil.
            recoveredBlock411PC := 622.
        ].
        recoveredBlock411Step = 622 ifTrue: [
            recoveredBlock411Stack2 := recoveredBlock411Local5.
            recoveredBlock411PC := 625.
        ].
        recoveredBlock411Step = 625 ifTrue: [
            recoveredBlock411Stack3 := recoveredBlock411Local4.
            recoveredBlock411PC := 628.
        ].
        recoveredBlock411Step = 628 ifTrue: [
            recoveredBlock411Stack4 := recoveredArg1.
            recoveredBlock411PC := 631.
        ].
        recoveredBlock411Step = 631 ifTrue: [
            recoveredBlock411Stack4 := (recoveredBlock411Stack4) ileBasicType.
            recoveredBlock411PC := 633.
        ].
        recoveredBlock411Step = 633 ifTrue: [
            recoveredBlock411Stack2 := (recoveredBlock411Stack2) div: (recoveredBlock411Stack3) type: (recoveredBlock411Stack4).
            recoveredBlock411PC := 635.
        ].
        recoveredBlock411Step = 635 ifTrue: [
            recoveredBlock411Stack3 := recoveredBlock411Stack2.
            recoveredBlock411PC := 636.
        ].
        recoveredBlock411Step = 636 ifTrue: [
            recoveredBlock411Local3 := recoveredBlock411Stack3.
            recoveredBlock411PC := 639.
        ].
        recoveredBlock411Step = 639 ifTrue: [
            recoveredBlock411Stack2 := (recoveredBlock411Stack2) isIleRepresentable.
            recoveredBlock411PC := 641.
        ].
        recoveredBlock411Step = 641 ifTrue: [
            (recoveredBlock411Stack2) ifTrue: [recoveredBlock411PC := 644] ifFalse: [recoveredBlock411PC := 665].
        ].
        recoveredBlock411Step = 644 ifTrue: [
            recoveredBlock411PC := 645.
        ].
        recoveredBlock411Step = 645 ifTrue: [
            recoveredBlock411Stack1 := nil.
            recoveredBlock411PC := 646.
        ].
        recoveredBlock411Step = 646 ifTrue: [
            recoveredBlock411Stack2 := recoveredBlock411Local3.
            recoveredBlock411PC := 649.
        ].
        recoveredBlock411Step = 649 ifTrue: [
            recoveredBlock411Stack2 := (recoveredBlock411Stack2) ileCosts.
            recoveredBlock411PC := 651.
        ].
        recoveredBlock411Step = 651 ifTrue: [
            recoveredBlock411Stack3 := recoveredArg1.
            recoveredBlock411PC := 654.
        ].
        recoveredBlock411Step = 654 ifTrue: [
            recoveredBlock411Stack3 := (recoveredBlock411Stack3) ileCosts.
            recoveredBlock411PC := 656.
        ].
        recoveredBlock411Step = 656 ifTrue: [
            recoveredBlock411Stack2 := (recoveredBlock411Stack2) < (recoveredBlock411Stack3).
            recoveredBlock411PC := 657.
        ].
        recoveredBlock411Step = 657 ifTrue: [
            (recoveredBlock411Stack2) ifTrue: [recoveredBlock411PC := 660] ifFalse: [recoveredBlock411PC := 665].
        ].
        recoveredBlock411Step = 660 ifTrue: [
            recoveredBlock411PC := 661.
        ].
        recoveredBlock411Step = 661 ifTrue: [
            recoveredBlock411Stack1 := recoveredBlock411Local3.
            recoveredBlock411PC := 664.
        ].
        recoveredBlock411Step = 664 ifTrue: [
            ^recoveredBlock411Stack1
        ].
        recoveredBlock411Step = 665 ifTrue: [
            recoveredBlock411Result := recoveredBlock411Stack1.
            recoveredBlock411Done := true.
        ].
    ].
    recoveredBlock411Result
].
            recoveredPC := 666.
        ].
        recoveredStep = 666 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 668.
        ].
        recoveredStep = 668 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 671.
        ].
        recoveredStep = 671 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 672.
        ].
        recoveredStep = 672 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 676.
        ].
        recoveredStep = 676 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMulNoOverflowExpr.
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 682] ifFalse: [recoveredPC := 762].
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            recoveredStack1 := (recoveredStack1) originalExpr.
            recoveredPC := 687.
        ].
        recoveredStep = 687 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMulConstExpr.
            recoveredPC := 689.
        ].
        recoveredStep = 689 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 692] ifFalse: [recoveredPC := 762].
        ].
        recoveredStep = 692 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredStack1 := (recoveredStack1) originalExpr.
            recoveredPC := 697.
        ].
        recoveredStep = 697 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 701.
        ].
        recoveredStep = 701 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 704] ifFalse: [recoveredPC := 762].
        ].
        recoveredStep = 704 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 707.
        ].
        recoveredStep = 707 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            recoveredStack2 := (recoveredStack2) originalExpr.
            recoveredPC := 714.
        ].
        recoveredStep = 714 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 715.
        ].
        recoveredStep = 715 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 716.
        ].
        recoveredStep = 716 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 718.
        ].
        recoveredStep = 718 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 722.
        ].
        recoveredStep = 722 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 724.
        ].
        recoveredStep = 724 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 728] ifFalse: [recoveredPC := 754].
        ].
        recoveredStep = 728 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 731.
        ].
        recoveredStep = 731 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 734.
        ].
        recoveredStep = 734 ifTrue: [
            recoveredStack2 := (recoveredStack2) originalExpr.
            recoveredPC := 736.
        ].
        recoveredStep = 736 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 738.
        ].
        recoveredStep = 738 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 739.
        ].
        recoveredStep = 739 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 741.
        ].
        recoveredStep = 741 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 742.
        ].
        recoveredStep = 742 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 745.
        ].
        recoveredStep = 745 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 747.
        ].
        recoveredStep = 747 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 750] ifFalse: [recoveredPC := 754].
        ].
        recoveredStep = 750 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 754 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 756.
        ].
        recoveredStep = 756 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 759.
        ].
        recoveredStep = 759 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 762.
        ].
        recoveredStep = 762 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 765.
        ].
        recoveredStep = 765 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 767.
        ].
        recoveredStep = 767 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 768.
        ].
        recoveredStep = 768 ifTrue: [
            recoveredLocal9 := recoveredStack2.
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAddSubNoOverflowExpr.
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 776] ifFalse: [recoveredPC := 969].
        ].
        recoveredStep = 776 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 779.
        ].
        recoveredStep = 779 ifTrue: [
            recoveredStack1 := (recoveredStack1) originalExpr.
            recoveredPC := 781.
        ].
        recoveredStep = 781 ifTrue: [
            recoveredStack2 := [:recoveredBlock781Arg1 :recoveredBlock781Arg2 :recoveredBlock781Arg3 | 
    | recoveredBlock781Stack0 recoveredBlock781Stack1 recoveredBlock781Stack2 recoveredBlock781Stack3 recoveredBlock781Stack4 recoveredBlock781PC recoveredBlock781Step recoveredBlock781Done recoveredBlock781Result |
    recoveredBlock781Stack0 := self.
    recoveredBlock781PC := 788.
    recoveredBlock781Done := false.
    [recoveredBlock781Done not] whileTrue: [
        recoveredBlock781Step := recoveredBlock781PC.
        recoveredBlock781Step = 788 ifTrue: [
            recoveredBlock781Stack1 := recoveredBlock781Arg1.
            recoveredBlock781PC := 789.
        ].
        recoveredBlock781Step = 789 ifTrue: [
            recoveredBlock781Stack2 := recoveredLocal8.
            recoveredBlock781PC := 792.
        ].
        recoveredBlock781Step = 792 ifTrue: [
            recoveredBlock781Stack1 := (recoveredBlock781Stack1) isIleIdentical: (recoveredBlock781Stack2).
            recoveredBlock781PC := 794.
        ].
        recoveredBlock781Step = 794 ifTrue: [
            (recoveredBlock781Stack1) ifTrue: [recoveredBlock781PC := 798] ifFalse: [recoveredBlock781PC := 816].
        ].
        recoveredBlock781Step = 798 ifTrue: [
            recoveredBlock781Stack1 := recoveredBlock781Arg2.
            recoveredBlock781PC := 799.
        ].
        recoveredBlock781Step = 799 ifTrue: [
            recoveredLocal4 := recoveredBlock781Stack1.
            recoveredBlock781PC := 802.
        ].
        recoveredBlock781Step = 802 ifTrue: [
            recoveredBlock781Stack1 := recoveredBlock781Arg3.
            recoveredBlock781PC := 803.
        ].
        recoveredBlock781Step = 803 ifTrue: [
            recoveredBlock781Stack2 := self.
            recoveredBlock781PC := 804.
        ].
        recoveredBlock781Step = 804 ifTrue: [
            recoveredBlock781Stack2 := (recoveredBlock781Stack2) ileBuilder.
            recoveredBlock781PC := 806.
        ].
        recoveredBlock781Step = 806 ifTrue: [
            recoveredBlock781Stack3 := 0.
            recoveredBlock781PC := 808.
        ].
        recoveredBlock781Step = 808 ifTrue: [
            recoveredBlock781Stack2 := (recoveredBlock781Stack2) scalarConstant: (recoveredBlock781Stack3).
            recoveredBlock781PC := 810.
        ].
        recoveredBlock781Step = 810 ifTrue: [
            recoveredBlock781Stack1 := (recoveredBlock781Stack1) value: (recoveredBlock781Stack2).
            recoveredBlock781PC := 812.
        ].
        recoveredBlock781Step = 812 ifTrue: [
            recoveredBlock781PC := 897.
        ].
        recoveredBlock781Step = 816 ifTrue: [
            recoveredBlock781Stack1 := recoveredBlock781Arg1.
            recoveredBlock781PC := 817.
        ].
        recoveredBlock781Step = 817 ifTrue: [
            recoveredBlock781Stack1 := (recoveredBlock781Stack1) isIleMultiplyConstantExpr.
            recoveredBlock781PC := 819.
        ].
        recoveredBlock781Step = 819 ifTrue: [
            (recoveredBlock781Stack1) ifTrue: [recoveredBlock781PC := 822] ifFalse: [recoveredBlock781PC := 856].
        ].
        recoveredBlock781Step = 822 ifTrue: [
            recoveredBlock781Stack1 := recoveredBlock781Arg1.
            recoveredBlock781PC := 823.
        ].
        recoveredBlock781Step = 823 ifTrue: [
            recoveredBlock781Stack1 := (recoveredBlock781Stack1) leftExpr.
            recoveredBlock781PC := 825.
        ].
        recoveredBlock781Step = 825 ifTrue: [
            recoveredBlock781Stack2 := recoveredLocal8.
            recoveredBlock781PC := 828.
        ].
        recoveredBlock781Step = 828 ifTrue: [
            recoveredBlock781Stack1 := (recoveredBlock781Stack1) isIleIdentical: (recoveredBlock781Stack2).
            recoveredBlock781PC := 830.
        ].
        recoveredBlock781Step = 830 ifTrue: [
            (recoveredBlock781Stack1) ifTrue: [recoveredBlock781PC := 834] ifFalse: [recoveredBlock781PC := 856].
        ].
        recoveredBlock781Step = 834 ifTrue: [
            recoveredBlock781Stack1 := recoveredBlock781Arg2.
            recoveredBlock781PC := 835.
        ].
        recoveredBlock781Step = 835 ifTrue: [
            recoveredBlock781Stack2 := recoveredBlock781Arg1.
            recoveredBlock781PC := 836.
        ].
        recoveredBlock781Step = 836 ifTrue: [
            recoveredBlock781Stack2 := (recoveredBlock781Stack2) rightExpr.
            recoveredBlock781PC := 837.
        ].
        recoveredBlock781Step = 837 ifTrue: [
            recoveredBlock781Stack2 := (recoveredBlock781Stack2) value.
            recoveredBlock781PC := 839.
        ].
        recoveredBlock781Step = 839 ifTrue: [
            recoveredBlock781Stack1 := (recoveredBlock781Stack1) * (recoveredBlock781Stack2).
            recoveredBlock781PC := 840.
        ].
        recoveredBlock781Step = 840 ifTrue: [
            recoveredLocal4 := recoveredBlock781Stack1.
            recoveredBlock781PC := 843.
        ].
        recoveredBlock781Step = 843 ifTrue: [
            recoveredBlock781Stack1 := recoveredBlock781Arg3.
            recoveredBlock781PC := 844.
        ].
        recoveredBlock781Step = 844 ifTrue: [
            recoveredBlock781Stack2 := self.
            recoveredBlock781PC := 845.
        ].
        recoveredBlock781Step = 845 ifTrue: [
            recoveredBlock781Stack2 := (recoveredBlock781Stack2) ileBuilder.
            recoveredBlock781PC := 847.
        ].
        recoveredBlock781Step = 847 ifTrue: [
            recoveredBlock781Stack3 := 0.
            recoveredBlock781PC := 849.
        ].
        recoveredBlock781Step = 849 ifTrue: [
            recoveredBlock781Stack2 := (recoveredBlock781Stack2) scalarConstant: (recoveredBlock781Stack3).
            recoveredBlock781PC := 851.
        ].
        recoveredBlock781Step = 851 ifTrue: [
            recoveredBlock781Stack1 := (recoveredBlock781Stack1) value: (recoveredBlock781Stack2).
            recoveredBlock781PC := 853.
        ].
        recoveredBlock781Step = 853 ifTrue: [
            recoveredBlock781PC := 897.
        ].
        recoveredBlock781Step = 856 ifTrue: [
            recoveredBlock781Stack1 := nil.
            recoveredBlock781PC := 857.
        ].
        recoveredBlock781Step = 857 ifTrue: [
            recoveredBlock781Stack2 := recoveredBlock781Arg1.
            recoveredBlock781PC := 858.
        ].
        recoveredBlock781Step = 858 ifTrue: [
            recoveredBlock781Stack2 := (recoveredBlock781Stack2) isIleDivideConstantExpr.
            recoveredBlock781PC := 860.
        ].
        recoveredBlock781Step = 860 ifTrue: [
            (recoveredBlock781Stack2) ifTrue: [recoveredBlock781PC := 864] ifFalse: [recoveredBlock781PC := 897].
        ].
        recoveredBlock781Step = 864 ifTrue: [
            recoveredBlock781Stack2 := recoveredBlock781Arg1.
            recoveredBlock781PC := 865.
        ].
        recoveredBlock781Step = 865 ifTrue: [
            recoveredBlock781Stack2 := (recoveredBlock781Stack2) leftExpr.
            recoveredBlock781PC := 867.
        ].
        recoveredBlock781Step = 867 ifTrue: [
            recoveredBlock781Stack3 := recoveredLocal8.
            recoveredBlock781PC := 870.
        ].
        recoveredBlock781Step = 870 ifTrue: [
            recoveredBlock781Stack2 := (recoveredBlock781Stack2) isIleIdentical: (recoveredBlock781Stack3).
            recoveredBlock781PC := 872.
        ].
        recoveredBlock781Step = 872 ifTrue: [
            (recoveredBlock781Stack2) ifTrue: [recoveredBlock781PC := 876] ifFalse: [recoveredBlock781PC := 897].
        ].
        recoveredBlock781Step = 876 ifTrue: [
            recoveredBlock781PC := 877.
        ].
        recoveredBlock781Step = 877 ifTrue: [
            recoveredBlock781Stack1 := recoveredBlock781Arg2.
            recoveredBlock781PC := 878.
        ].
        recoveredBlock781Step = 878 ifTrue: [
            recoveredBlock781Stack2 := recoveredBlock781Arg1.
            recoveredBlock781PC := 879.
        ].
        recoveredBlock781Step = 879 ifTrue: [
            recoveredBlock781Stack2 := (recoveredBlock781Stack2) rightExpr.
            recoveredBlock781PC := 880.
        ].
        recoveredBlock781Step = 880 ifTrue: [
            recoveredBlock781Stack2 := (recoveredBlock781Stack2) value.
            recoveredBlock781PC := 882.
        ].
        recoveredBlock781Step = 882 ifTrue: [
            recoveredBlock781Stack1 := (recoveredBlock781Stack1) / (recoveredBlock781Stack2).
            recoveredBlock781PC := 884.
        ].
        recoveredBlock781Step = 884 ifTrue: [
            recoveredLocal4 := recoveredBlock781Stack1.
            recoveredBlock781PC := 887.
        ].
        recoveredBlock781Step = 887 ifTrue: [
            recoveredBlock781Stack1 := recoveredBlock781Arg3.
            recoveredBlock781PC := 888.
        ].
        recoveredBlock781Step = 888 ifTrue: [
            recoveredBlock781Stack2 := self.
            recoveredBlock781PC := 889.
        ].
        recoveredBlock781Step = 889 ifTrue: [
            recoveredBlock781Stack2 := (recoveredBlock781Stack2) ileBuilder.
            recoveredBlock781PC := 891.
        ].
        recoveredBlock781Step = 891 ifTrue: [
            recoveredBlock781Stack3 := 0.
            recoveredBlock781PC := 893.
        ].
        recoveredBlock781Step = 893 ifTrue: [
            recoveredBlock781Stack2 := (recoveredBlock781Stack2) scalarConstant: (recoveredBlock781Stack3).
            recoveredBlock781PC := 895.
        ].
        recoveredBlock781Step = 895 ifTrue: [
            recoveredBlock781Stack1 := (recoveredBlock781Stack1) value: (recoveredBlock781Stack2).
            recoveredBlock781PC := 897.
        ].
        recoveredBlock781Step = 897 ifTrue: [
            recoveredBlock781Result := recoveredBlock781Stack1.
            recoveredBlock781Done := true.
        ].
    ].
    recoveredBlock781Result
].
            recoveredPC := 898.
        ].
        recoveredStep = 898 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 900.
        ].
        recoveredStep = 900 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 901.
        ].
        recoveredStep = 901 ifTrue: [
            recoveredStack5 := [:recoveredBlock901Arg1 | 
    | recoveredBlock901Local1 recoveredBlock901Local2 recoveredBlock901Stack0 recoveredBlock901Stack1 recoveredBlock901Stack2 recoveredBlock901Stack3 recoveredBlock901Stack4 recoveredBlock901PC recoveredBlock901Step recoveredBlock901Done recoveredBlock901Result |
    recoveredBlock901Stack0 := self.
    recoveredBlock901PC := 908.
    recoveredBlock901Done := false.
    [recoveredBlock901Done not] whileTrue: [
        recoveredBlock901Step := recoveredBlock901PC.
        recoveredBlock901Step = 908 ifTrue: [
            recoveredBlock901Stack1 := recoveredBlock901Arg1.
            recoveredBlock901PC := 909.
        ].
        recoveredBlock901Step = 909 ifTrue: [
            recoveredBlock901Stack2 := recoveredLocal9.
            recoveredBlock901PC := 912.
        ].
        recoveredBlock901Step = 912 ifTrue: [
            recoveredBlock901Stack2 := (recoveredBlock901Stack2) goalInterval.
            recoveredBlock901PC := 914.
        ].
        recoveredBlock901Step = 914 ifTrue: [
            recoveredBlock901Stack1 := (recoveredBlock901Stack1) asIleLimitOverflowExprGoalInterval: (recoveredBlock901Stack2).
            recoveredBlock901PC := 916.
        ].
        recoveredBlock901Step = 916 ifTrue: [
            recoveredBlock901Local2 := recoveredBlock901Stack1.
            recoveredBlock901PC := 917.
        ].
        recoveredBlock901Step = 917 ifTrue: [
            recoveredBlock901Stack1 := nil.
            recoveredBlock901PC := 918.
        ].
        recoveredBlock901Step = 918 ifTrue: [
            recoveredBlock901Stack2 := recoveredBlock901Local2.
            recoveredBlock901PC := 919.
        ].
        recoveredBlock901Step = 919 ifTrue: [
            recoveredBlock901Stack2 := (recoveredBlock901Stack2) isIleNoOverflowExpr.
            recoveredBlock901PC := 921.
        ].
        recoveredBlock901Step = 921 ifTrue: [
            (recoveredBlock901Stack2) ifTrue: [recoveredBlock901PC := 924] ifFalse: [recoveredBlock901PC := 936].
        ].
        recoveredBlock901Step = 924 ifTrue: [
            recoveredBlock901Stack2 := recoveredBlock901Local2.
            recoveredBlock901PC := 925.
        ].
        recoveredBlock901Step = 925 ifTrue: [
            recoveredBlock901Stack2 := (recoveredBlock901Stack2) overflownBits.
            recoveredBlock901PC := 927.
        ].
        recoveredBlock901Step = 927 ifTrue: [
            recoveredBlock901Stack3 := recoveredLocal9.
            recoveredBlock901PC := 930.
        ].
        recoveredBlock901Step = 930 ifTrue: [
            recoveredBlock901Stack3 := (recoveredBlock901Stack3) overflownBits.
            recoveredBlock901PC := 932.
        ].
        recoveredBlock901Step = 932 ifTrue: [
            recoveredBlock901Stack2 := (recoveredBlock901Stack2) < (recoveredBlock901Stack3).
            recoveredBlock901PC := 933.
        ].
        recoveredBlock901Step = 933 ifTrue: [
            (recoveredBlock901Stack2) ifTrue: [recoveredBlock901PC := 936] ifFalse: [recoveredBlock901PC := 960].
        ].
        recoveredBlock901Step = 936 ifTrue: [
            recoveredBlock901PC := 937.
        ].
        recoveredBlock901Step = 937 ifTrue: [
            recoveredBlock901Stack1 := recoveredArg1.
            recoveredBlock901PC := 940.
        ].
        recoveredBlock901Step = 940 ifTrue: [
            recoveredBlock901Stack2 := recoveredBlock901Local2.
            recoveredBlock901PC := 941.
        ].
        recoveredBlock901Step = 941 ifTrue: [
            recoveredBlock901Stack3 := recoveredLocal8.
            recoveredBlock901PC := 944.
        ].
        recoveredBlock901Step = 944 ifTrue: [
            recoveredBlock901Stack1 := (recoveredBlock901Stack1) createOpLeftExpr: (recoveredBlock901Stack2) rightExpr: (recoveredBlock901Stack3).
            recoveredBlock901PC := 946.
        ].
        recoveredBlock901Step = 946 ifTrue: [
            recoveredBlock901Local1 := recoveredBlock901Stack1.
            recoveredBlock901PC := 947.
        ].
        recoveredBlock901Step = 947 ifTrue: [
            recoveredBlock901Stack1 := recoveredBlock901Local1.
            recoveredBlock901PC := 948.
        ].
        recoveredBlock901Step = 948 ifTrue: [
            recoveredBlock901Stack2 := self.
            recoveredBlock901PC := 949.
        ].
        recoveredBlock901Step = 949 ifTrue: [
            recoveredBlock901Stack2 := (recoveredBlock901Stack2) ileBuilder.
            recoveredBlock901PC := 951.
        ].
        recoveredBlock901Step = 951 ifTrue: [
            recoveredBlock901Stack3 := recoveredLocal4.
            recoveredBlock901PC := 954.
        ].
        recoveredBlock901Step = 954 ifTrue: [
            recoveredBlock901Stack2 := (recoveredBlock901Stack2) scalarConstant: (recoveredBlock901Stack3).
            recoveredBlock901PC := 956.
        ].
        recoveredBlock901Step = 956 ifTrue: [
            recoveredBlock901Stack3 := nil.
            recoveredBlock901PC := 957.
        ].
        recoveredBlock901Step = 957 ifTrue: [
            recoveredBlock901Stack1 := (recoveredBlock901Stack1) add: (recoveredBlock901Stack2) type: (recoveredBlock901Stack3).
            recoveredBlock901PC := 959.
        ].
        recoveredBlock901Step = 959 ifTrue: [
            ^recoveredBlock901Stack1
        ].
        recoveredBlock901Step = 960 ifTrue: [
            recoveredBlock901Result := recoveredBlock901Stack1.
            recoveredBlock901Done := true.
        ].
    ].
    recoveredBlock901Result
].
            recoveredPC := 961.
        ].
        recoveredStep = 961 ifTrue: [
            (recoveredStack1) ileOptExpressionSimplificationNoAddSubChildrenDo: (recoveredStack2) factor: (recoveredStack3) noOverflow: (recoveredStack4) onSuccess: (recoveredStack5).
            recoveredPC := 965.
        ].
        recoveredStep = 965 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 966.
        ].
        recoveredStep = 966 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 969.
        ].
        recoveredStep = 969 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 972.
        ].
        recoveredStep = 972 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDivideConstantExpr.
            recoveredPC := 974.
        ].
        recoveredStep = 974 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 1182] ifFalse: [recoveredPC := 978].
        ].
        recoveredStep = 978 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 981.
        ].
        recoveredStep = 981 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 983.
        ].
        recoveredStep = 983 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 984.
        ].
        recoveredStep = 984 ifTrue: [
            recoveredLocal9 := recoveredStack2.
            recoveredPC := 987.
        ].
        recoveredStep = 987 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNoOverflowExpr.
            recoveredPC := 989.
        ].
        recoveredStep = 989 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 992] ifFalse: [recoveredPC := 1182].
        ].
        recoveredStep = 992 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 995.
        ].
        recoveredStep = 995 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLimitingNoOverflow.
            recoveredPC := 999.
        ].
        recoveredStep = 999 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 1002] ifFalse: [recoveredPC := 1182].
        ].
        recoveredStep = 1002 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1005.
        ].
        recoveredStep = 1005 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 1006.
        ].
        recoveredStep = 1006 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSingleton.
            recoveredPC := 1011.
        ].
        recoveredStep = 1011 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 1182] ifFalse: [recoveredPC := 1014].
        ].
        recoveredStep = 1014 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 1017.
        ].
        recoveredStep = 1017 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 1018.
        ].
        recoveredStep = 1018 ifTrue: [
            recoveredStack1 := (recoveredStack1) needsSigned.
            recoveredPC := 1023.
        ].
        recoveredStep = 1023 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 1026] ifFalse: [recoveredPC := 1038].
        ].
        recoveredStep = 1026 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 1027.
        ].
        recoveredStep = 1027 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 1031.
        ].
        recoveredStep = 1031 ifTrue: [
            recoveredStack1 := (recoveredStack1) largestSignedInterval.
            recoveredPC := 1035.
        ].
        recoveredStep = 1035 ifTrue: [
            recoveredPC := 1047.
        ].
        recoveredStep = 1038 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 1039.
        ].
        recoveredStep = 1039 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 1043.
        ].
        recoveredStep = 1043 ifTrue: [
            recoveredStack1 := (recoveredStack1) largestUnsignedInterval.
            recoveredPC := 1047.
        ].
        recoveredStep = 1047 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 1050.
        ].
        recoveredStep = 1050 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1053.
        ].
        recoveredStep = 1053 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 1056.
        ].
        recoveredStep = 1056 ifTrue: [
            recoveredStack2 := (recoveredStack2) factor.
            recoveredPC := 1061.
        ].
        recoveredStep = 1061 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 1064.
        ].
        recoveredStep = 1064 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 1066.
        ].
        recoveredStep = 1066 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 1068.
        ].
        recoveredStep = 1068 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 1071.
        ].
        recoveredStep = 1071 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1074.
        ].
        recoveredStep = 1074 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNoOverflowExpr.
            recoveredPC := 1076.
        ].
        recoveredStep = 1076 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 1080] ifFalse: [recoveredPC := 1170].
        ].
        recoveredStep = 1080 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1083.
        ].
        recoveredStep = 1083 ifTrue: [
            recoveredStack1 := (recoveredStack1) originalExpr.
            recoveredPC := 1085.
        ].
        recoveredStep = 1085 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 1088.
        ].
        recoveredStep = 1088 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleLimitOverflowExprGoalInterval: (recoveredStack2).
            recoveredPC := 1090.
        ].
        recoveredStep = 1090 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 1093.
        ].
        recoveredStep = 1093 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1096.
        ].
        recoveredStep = 1096 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNoOverflowExpr.
            recoveredPC := 1098.
        ].
        recoveredStep = 1098 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 1102] ifFalse: [recoveredPC := 1170].
        ].
        recoveredStep = 1102 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1105.
        ].
        recoveredStep = 1105 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLimitingNoOverflow.
            recoveredPC := 1109.
        ].
        recoveredStep = 1109 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 1170] ifFalse: [recoveredPC := 1112].
        ].
        recoveredStep = 1112 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 1115.
        ].
        recoveredStep = 1115 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 1116.
        ].
        recoveredStep = 1116 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 1119.
        ].
        recoveredStep = 1119 ifTrue: [
            recoveredStack2 := (recoveredStack2) factor.
            recoveredPC := 1123.
        ].
        recoveredStep = 1123 ifTrue: [
            recoveredStack2 := (recoveredStack2) asIleCopy.
            recoveredPC := 1125.
        ].
        recoveredStep = 1125 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 1128.
        ].
        recoveredStep = 1128 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 1129.
        ].
        recoveredStep = 1129 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 1131.
        ].
        recoveredStep = 1131 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 1133.
        ].
        recoveredStep = 1133 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 1136.
        ].
        recoveredStep = 1136 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 1139.
        ].
        recoveredStep = 1139 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 1140.
        ].
        recoveredStep = 1140 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleZeroInInterval.
            recoveredPC := 1145.
        ].
        recoveredStep = 1145 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 1158] ifFalse: [recoveredPC := 1148].
        ].
        recoveredStep = 1148 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1151.
        ].
        recoveredStep = 1151 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleZeroInInterval.
            recoveredPC := 1155.
        ].
        recoveredStep = 1155 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 1170] ifFalse: [recoveredPC := 1158].
        ].
        recoveredStep = 1158 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 1161.
        ].
        recoveredStep = 1161 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 1164.
        ].
        recoveredStep = 1164 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 1167.
        ].
        recoveredStep = 1167 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 1169.
        ].
        recoveredStep = 1169 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 1170 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 1171.
        ].
        recoveredStep = 1171 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1172.
        ].
        recoveredStep = 1172 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 1175.
        ].
        recoveredStep = 1175 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1176.
        ].
        recoveredStep = 1176 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 1179.
        ].
        recoveredStep = 1179 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 1182.
        ].
        recoveredStep = 1182 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 1185.
        ].
        recoveredStep = 1185 ifTrue: [
            recoveredStack0 := super divExpr: (recoveredStack1).
            recoveredPC := 1191.
        ].
        recoveredStep = 1191 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

