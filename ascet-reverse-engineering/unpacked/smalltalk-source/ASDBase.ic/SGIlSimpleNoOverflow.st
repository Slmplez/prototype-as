"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20027d34; bytecode file offset 0x934580"
!SGIlSimpleNoOverflow methodsFor: 'recovered'!
isIleAddSubNoOverflowExpr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) originalExpr.
    recoveredValue1 := (recoveredValue0) isIleAddSubExpr.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200295f4; bytecode file offset 0x934580"
!SGIlSimpleNoOverflow methodsFor: 'recovered'!
isIleNegNoOverflowExpr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) originalExpr.
    recoveredValue1 := (recoveredValue0) isIleNegExpr.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035ed4; bytecode file offset 0x934580"
!SGIlSimpleNoOverflow methodsFor: 'recovered'!
isIleMulNoOverflowExpr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) originalExpr.
    recoveredValue1 := (recoveredValue0) isIleMulExpr.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055c08; bytecode file offset 0x952a9c"
!SGIlSimpleNoOverflow methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) simpleNoOverflowExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20076474; bytecode file offset 0x9757c8"
!SGIlSimpleNoOverflow methodsFor: 'recovered'!
isIleSimpleNoOverflowExpr
    ^true
! !

"ASDBase.ic method 0x20098af4; bytecode file offset 0x995850"
!SGIlSimpleNoOverflow methodsFor: 'recovered'!
collectMulOnlyOperands: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) originalExpr.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) collectMulOnlyOperands: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ae4b8; bytecode file offset 0x9ab034"
!SGIlSimpleNoOverflow methodsFor: 'recovered'!
collectAddends: recoveredArg1 inverse: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) originalExpr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) collectAddends: (recoveredValue1) inverse: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20180b24; bytecode file offset 0xa7d3f4"
!SGIlSimpleNoOverflow methodsFor: 'recovered'!
createLimitedExpr
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) originalExpr.
    recoveredValue1 := (self) goalInterval.
    recoveredValue2 := (recoveredValue1) left.
    recoveredValue3 := (self) goalInterval.
    recoveredValue4 := (recoveredValue3) right.
    recoveredValue5 := (self) originalExpr.
    recoveredValue6 := (recoveredValue5) ileBasicType.
    recoveredValue7 := (recoveredValue0) limitExprLowerBound: (recoveredValue2) upperBound: (recoveredValue4) type: (recoveredValue6).
    (self) limitOverflowExpr: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x2029b83c; bytecode file offset 0xb98114"
!SGIlSimpleNoOverflow methodsFor: 'recovered'!
asIleLimitOverflowExprGoalInterval: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Rl'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_63847'.
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
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) goalInterval.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) intersect: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalExpr.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleLimitOverflowExprGoalInterval: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c6660; bytecode file offset 0xbc2f3c"
!SGIlSimpleNoOverflow methodsFor: 'recovered'!
createOpInterval: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) goalInterval.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) expressionContext.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 recoveredBlock15Value6 recoveredBlock15Value7 |
    recoveredBlock15Value0 := (self) class.
    recoveredBlock15Value1 := (self) source.
    recoveredBlock15Value2 := (self) ileBasicType.
    recoveredBlock15Value3 := (self) originalExpr.
    recoveredBlock15Value4 := (self) ileBasicIntervalOrNil.
    recoveredBlock15Value5 := recoveredArg1.
    recoveredBlock15Value6 := (self) overflownBitsOrNil.
    recoveredBlock15Value7 := (recoveredBlock15Value0) createSource: (recoveredBlock15Value1) type: (recoveredBlock15Value2) originalExpr: (recoveredBlock15Value3) limitedExpr: (nil) interval: (recoveredBlock15Value4) goalInterval: (recoveredBlock15Value5) overflownBits: (recoveredBlock15Value6).
    recoveredBlock15Value7
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) executeInContext: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ea630; bytecode file offset 0xce6f44"
!SGIlSimpleNoOverflow methodsFor: 'recovered'!
createOpOriginalExpr: recoveredArg1 limitedExpr: recoveredArg2 interval: recoveredArg3 goalInterval: recoveredArg4 type: recoveredArg5
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) originalExpr.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) limitOverflowExpr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBasicIntervalOrNil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) goalInterval.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) expressionContext.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock54Value0 recoveredBlock54Value1 recoveredBlock54Value2 recoveredBlock54Value3 recoveredBlock54Value4 recoveredBlock54Value5 recoveredBlock54Value6 recoveredBlock54Value7 recoveredBlock54Value8 |
    recoveredBlock54Value0 := (self) class.
    recoveredBlock54Value1 := (self) source.
    recoveredBlock54Value2 := recoveredArg5.
    recoveredBlock54Value3 := recoveredArg1.
    recoveredBlock54Value4 := recoveredArg2.
    recoveredBlock54Value5 := recoveredArg3.
    recoveredBlock54Value6 := recoveredArg4.
    recoveredBlock54Value7 := (self) overflownBitsOrNil.
    recoveredBlock54Value8 := (recoveredBlock54Value0) createSource: (recoveredBlock54Value1) type: (recoveredBlock54Value2) originalExpr: (recoveredBlock54Value3) limitedExpr: (recoveredBlock54Value4) interval: (recoveredBlock54Value5) goalInterval: (recoveredBlock54Value6) overflownBits: (recoveredBlock54Value7).
    recoveredBlock54Value8
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) executeInContext: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

