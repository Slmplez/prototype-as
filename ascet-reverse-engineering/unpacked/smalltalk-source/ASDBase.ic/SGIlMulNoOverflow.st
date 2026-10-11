"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20054b58; bytecode file offset 0x952a9c"
!SGIlMulNoOverflow methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mulNoOverflowExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006e564; bytecode file offset 0x96af48"
!SGIlMulNoOverflow methodsFor: 'recovered'!
originalExprNoMul
    | recoveredValue0 |
    recoveredValue0 := originalExprNoMul.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e9f0; bytecode file offset 0x96b41c"
!SGIlMulNoOverflow methodsFor: 'recovered'!
builtInShift
    | recoveredValue0 |
    recoveredValue0 := builtInShift.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ec8c; bytecode file offset 0x96b8a0"
!SGIlMulNoOverflow methodsFor: 'recovered'!
allOperands
    | recoveredValue0 |
    recoveredValue0 := allOperands.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f070; bytecode file offset 0x96bc1c"
!SGIlMulNoOverflow methodsFor: 'recovered'!
negFactor
    | recoveredValue0 |
    recoveredValue0 := neg.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007686c; bytecode file offset 0x9757c8"
!SGIlMulNoOverflow methodsFor: 'recovered'!
isIleMulNoOverflowExpr
    ^true
! !

"ASDBase.ic method 0x20097664; bytecode file offset 0x995850"
!SGIlMulNoOverflow methodsFor: 'recovered'!
collectMulOnlyOperands: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) originalExpr.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) collectMulOnlyOperands: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ae3f8; bytecode file offset 0x9ab034"
!SGIlMulNoOverflow methodsFor: 'recovered'!
collectFactors: recoveredArg1 inverse: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) originalExpr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) collectFactors: (recoveredValue1) inverse: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c49dc; bytecode file offset 0x9c16b0"
!SGIlMulNoOverflow methodsFor: 'recovered'!
originalExprNoMul: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    originalExprNoMul := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4e50; bytecode file offset 0x9c1afc"
!SGIlMulNoOverflow methodsFor: 'recovered'!
builtInShift: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    builtInShift := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5378; bytecode file offset 0x9c1f64"
!SGIlMulNoOverflow methodsFor: 'recovered'!
allOperands: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    allOperands := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5954; bytecode file offset 0x9c22c8"
!SGIlMulNoOverflow methodsFor: 'recovered'!
negFactor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    neg := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ca714; bytecode file offset 0x9c7020"
!SGIlMulNoOverflow methodsFor: 'recovered'!
ileOptExpressionSimplificationMulDiv: recoveredArg1 rightExponent: recoveredArg2 exponent: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) originalExpr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) ileOptExpressionSimplificationMulDiv: (recoveredValue1) rightExponent: (recoveredValue2) exponent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201dbd4c; bytecode file offset 0xad8614"
!SGIlMulNoOverflow methodsFor: 'recovered'!
limitOverflowExpr: recoveredArg1 overflownBits: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) limitOverflowExpr: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    overflownBits := recoveredValue1.
    (self) allOperands: (nil).
    (self) originalExprNoMul: (nil).
    (self) negFactor: (nil).
    (self) builtInShift: (nil).
    ^self
! !

"ASDBase.ic method 0x20241a78; bytecode file offset 0xb3e334"
!SGIlMulNoOverflow methodsFor: 'recovered'!
initializeSource: recoveredArg1 type: recoveredArg2 originalExpr: recoveredArg3 limitedExpr: recoveredArg4 interval: recoveredArg5 goalInterval: recoveredArg6 overflownBits: recoveredArg7 originalExprNoMul: recoveredArg8 builtInShift: recoveredArg9 allOperands: recoveredArg10 neg: recoveredArg11
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg8.
    originalExprNoMul := recoveredValue0.
    recoveredValue1 := recoveredArg9.
    builtInShift := recoveredValue1.
    recoveredValue2 := recoveredArg10.
    allOperands := recoveredValue2.
    recoveredValue3 := recoveredArg11.
    neg := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := recoveredArg4.
    recoveredValue8 := recoveredArg5.
    recoveredValue9 := recoveredArg6.
    recoveredValue10 := recoveredArg7.
    super initializeSource: (recoveredValue4) type: (recoveredValue5) originalExpr: (recoveredValue6) limitedExpr: (recoveredValue7) interval: (recoveredValue8) goalInterval: (recoveredValue9) overflownBits: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x203b398c; bytecode file offset 0xcb0260"
!SGIlMulNoOverflow methodsFor: 'recovered'!
distributeOverflowMul: recoveredArg1 left: recoveredArg2 right: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) right.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) abs.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) log: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) right.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) abs.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) log: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) floor.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2042255c; bytecode file offset 0xd1ee4c"
!SGIlMulNoOverflow methodsFor: 'recovered'!
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
    | recoveredBlock54Value0 recoveredBlock54Value1 recoveredBlock54Value2 recoveredBlock54Value3 recoveredBlock54Value4 recoveredBlock54Value5 recoveredBlock54Value6 recoveredBlock54Value7 recoveredBlock54Value8 recoveredBlock54Value9 recoveredBlock54Value10 recoveredBlock54Value11 recoveredBlock54Value12 |
    recoveredBlock54Value0 := (self) class.
    recoveredBlock54Value1 := (self) source.
    recoveredBlock54Value2 := recoveredArg5.
    recoveredBlock54Value3 := recoveredArg1.
    recoveredBlock54Value4 := recoveredArg2.
    recoveredBlock54Value5 := recoveredArg3.
    recoveredBlock54Value6 := recoveredArg4.
    recoveredBlock54Value7 := (self) overflownBitsOrNil.
    recoveredBlock54Value8 := (self) originalExprNoMul.
    recoveredBlock54Value9 := (self) builtInShift.
    recoveredBlock54Value10 := (self) allOperands.
    recoveredBlock54Value11 := (self) negFactor.
    recoveredBlock54Value12 := (recoveredBlock54Value0) createSource: (recoveredBlock54Value1) type: (recoveredBlock54Value2) originalExpr: (recoveredBlock54Value3) limitedExpr: (recoveredBlock54Value4) interval: (recoveredBlock54Value5) goalInterval: (recoveredBlock54Value6) overflownBits: (recoveredBlock54Value7) originalExprNoMul: (recoveredBlock54Value8) builtInShift: (recoveredBlock54Value9) allOperands: (recoveredBlock54Value10) neg: (recoveredBlock54Value11).
    recoveredBlock54Value12
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) executeInContext: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042404c; bytecode file offset 0xd2093c"
!SGIlMulNoOverflow methodsFor: 'recovered'!
createMulNoOverflow: recoveredArg1 const: recoveredArg2 shift: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := (self) goalInterval.
    recoveredBlock4Value1 := (recoveredBlock4Value0) isEmpty.
    recoveredBlock4Value2 := (recoveredBlock4Value1) not.
    recoveredBlock4Value2
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'Empty interval during overflow limitation of multiplication'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) raisedTo: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) scalarConstant: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) goalInterval.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) limitExprGoalInterval: (recoveredStack1) shiftValue: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) goalInterval.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) negated.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) negated.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) limitExprGoalInterval: (recoveredStack1) shiftValue: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileCanOptimizeMulConstFraction: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) mul: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := (recoveredStack3) interval.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := (recoveredStack4) value.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) overflowOfInterval: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) limitOverflowExpr: (recoveredStack1) overflownBits: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20570d88; bytecode file offset 0xe6d690"
!SGIlMulNoOverflow methodsFor: 'recovered'!
removeFactorFromMinMaxConst: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block28111cacArg1 | 
    | block28111cacStack0 block28111cacStack1 block28111cacStack2 block28111cacStack3 block28111cacPC block28111cacStep block28111cacDone block28111cacResult |
    block28111cacStack0 := self.
    block28111cacPC := 4.
    block28111cacDone := false.
    [block28111cacDone not] whileTrue: [
        block28111cacStep := block28111cacPC.
        block28111cacStep = 4 ifTrue: [
            block28111cacStack1 := false.
            block28111cacPC := 5.
        ].
        block28111cacStep = 5 ifTrue: [
            block28111cacStack2 := block28111cacArg1.
            block28111cacPC := 6.
        ].
        block28111cacStep = 6 ifTrue: [
            block28111cacStack2 := (block28111cacStack2) isIleMinConstExpr.
            block28111cacPC := 7.
        ].
        block28111cacStep = 7 ifTrue: [
            (block28111cacStack2) ifTrue: [block28111cacPC := 16] ifFalse: [block28111cacPC := 10].
        ].
        block28111cacStep = 10 ifTrue: [
            block28111cacStack2 := block28111cacArg1.
            block28111cacPC := 11.
        ].
        block28111cacStep = 11 ifTrue: [
            block28111cacStack2 := (block28111cacStack2) isIleMaxConstExpr.
            block28111cacPC := 12.
        ].
        block28111cacStep = 12 ifTrue: [
            (block28111cacStack2) ifTrue: [block28111cacPC := 16] ifFalse: [block28111cacPC := 26].
        ].
        block28111cacStep = 16 ifTrue: [
            block28111cacPC := 17.
        ].
        block28111cacStep = 17 ifTrue: [
            block28111cacStack1 := block28111cacArg1.
            block28111cacPC := 18.
        ].
        block28111cacStep = 18 ifTrue: [
            block28111cacStack1 := (block28111cacStack1) leftExpr.
            block28111cacPC := 19.
        ].
        block28111cacStep = 19 ifTrue: [
            block28111cacStack1 := (block28111cacStack1) ileCommonFactor.
            block28111cacPC := 21.
        ].
        block28111cacStep = 21 ifTrue: [
            block28111cacStack1 := (block28111cacStack1) value.
            block28111cacPC := 23.
        ].
        block28111cacStep = 23 ifTrue: [
            block28111cacStack2 := 1.
            block28111cacPC := 25.
        ].
        block28111cacStep = 25 ifTrue: [
            block28111cacStack1 := (block28111cacStack1) ~= (block28111cacStack2).
            block28111cacPC := 26.
        ].
        block28111cacStep = 26 ifTrue: [
            block28111cacStack1 := (block28111cacStack1) not.
            block28111cacPC := 27.
        ].
        block28111cacStep = 27 ifTrue: [
            block28111cacResult := block28111cacStack1.
            block28111cacDone := true.
        ].
    ].
    block28111cacResult
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSatisfy: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) literalOne.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := [:recoveredBlock56Arg1 | 
    | recoveredBlock56Local1 recoveredBlock56Local2 recoveredBlock56Local3 recoveredBlock56Local4 recoveredBlock56Stack0 recoveredBlock56Stack1 recoveredBlock56Stack2 recoveredBlock56Stack3 recoveredBlock56Stack4 recoveredBlock56Stack5 recoveredBlock56Stack6 recoveredBlock56PC recoveredBlock56Step recoveredBlock56Done recoveredBlock56Result |
    recoveredBlock56Stack0 := self.
    recoveredBlock56PC := 62.
    recoveredBlock56Done := false.
    [recoveredBlock56Done not] whileTrue: [
        recoveredBlock56Step := recoveredBlock56PC.
        recoveredBlock56Step = 62 ifTrue: [
            recoveredBlock56Stack1 := recoveredBlock56Arg1.
            recoveredBlock56PC := 64.
        ].
        recoveredBlock56Step = 64 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) isIleConstantExpr.
            recoveredBlock56PC := 66.
        ].
        recoveredBlock56Step = 66 ifTrue: [
            (recoveredBlock56Stack1) ifTrue: [recoveredBlock56PC := 70] ifFalse: [recoveredBlock56PC := 88].
        ].
        recoveredBlock56Step = 70 ifTrue: [
            recoveredBlock56Stack1 := recoveredLocal1.
            recoveredBlock56PC := 73.
        ].
        recoveredBlock56Step = 73 ifTrue: [
            recoveredBlock56Stack2 := recoveredBlock56Arg1.
            recoveredBlock56PC := 75.
        ].
        recoveredBlock56Step = 75 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) * (recoveredBlock56Stack2).
            recoveredBlock56PC := 76.
        ].
        recoveredBlock56Step = 76 ifTrue: [
            recoveredLocal1 := recoveredBlock56Stack1.
            recoveredBlock56PC := 79.
        ].
        recoveredBlock56Step = 79 ifTrue: [
            recoveredBlock56Stack1 := self.
            recoveredBlock56PC := 80.
        ].
        recoveredBlock56Step = 80 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) ileBuilder.
            recoveredBlock56PC := 82.
        ].
        recoveredBlock56Step = 82 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) literalOne.
            recoveredBlock56PC := 84.
        ].
        recoveredBlock56Step = 84 ifTrue: [
            recoveredBlock56PC := 212.
        ].
        recoveredBlock56Step = 88 ifTrue: [
            recoveredBlock56Stack1 := recoveredBlock56Arg1.
            recoveredBlock56PC := 90.
        ].
        recoveredBlock56Step = 90 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) isIleMinConstExpr.
            recoveredBlock56PC := 91.
        ].
        recoveredBlock56Step = 91 ifTrue: [
            (recoveredBlock56Stack1) ifTrue: [recoveredBlock56PC := 100] ifFalse: [recoveredBlock56PC := 94].
        ].
        recoveredBlock56Step = 94 ifTrue: [
            recoveredBlock56Stack1 := recoveredBlock56Arg1.
            recoveredBlock56PC := 96.
        ].
        recoveredBlock56Step = 96 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) isIleMaxConstExpr.
            recoveredBlock56PC := 97.
        ].
        recoveredBlock56Step = 97 ifTrue: [
            (recoveredBlock56Stack1) ifTrue: [recoveredBlock56PC := 100] ifFalse: [recoveredBlock56PC := 210].
        ].
        recoveredBlock56Step = 100 ifTrue: [
            recoveredBlock56Stack1 := recoveredBlock56Arg1.
            recoveredBlock56PC := 102.
        ].
        recoveredBlock56Step = 102 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) leftExpr.
            recoveredBlock56PC := 103.
        ].
        recoveredBlock56Step = 103 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) ileCommonFactor.
            recoveredBlock56PC := 105.
        ].
        recoveredBlock56Step = 105 ifTrue: [
            recoveredBlock56Stack2 := recoveredBlock56Stack1.
            recoveredBlock56PC := 106.
        ].
        recoveredBlock56Step = 106 ifTrue: [
            recoveredBlock56Local4 := recoveredBlock56Stack2.
            recoveredBlock56PC := 107.
        ].
        recoveredBlock56Step = 107 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) value.
            recoveredBlock56PC := 109.
        ].
        recoveredBlock56Step = 109 ifTrue: [
            recoveredBlock56Stack2 := 1.
            recoveredBlock56PC := 111.
        ].
        recoveredBlock56Step = 111 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) ~= (recoveredBlock56Stack2).
            recoveredBlock56PC := 112.
        ].
        recoveredBlock56Step = 112 ifTrue: [
            (recoveredBlock56Stack1) ifTrue: [recoveredBlock56PC := 116] ifFalse: [recoveredBlock56PC := 202].
        ].
        recoveredBlock56Step = 116 ifTrue: [
            recoveredBlock56Stack1 := recoveredBlock56Arg1.
            recoveredBlock56PC := 118.
        ].
        recoveredBlock56Step = 118 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) leftExpr.
            recoveredBlock56PC := 119.
        ].
        recoveredBlock56Step = 119 ifTrue: [
            recoveredBlock56Stack2 := recoveredBlock56Local4.
            recoveredBlock56PC := 120.
        ].
        recoveredBlock56Step = 120 ifTrue: [
            recoveredBlock56Stack2 := (recoveredBlock56Stack2) asIleCopy.
            recoveredBlock56PC := 122.
        ].
        recoveredBlock56Step = 122 ifTrue: [
            recoveredBlock56Stack3 := recoveredBlock56Arg1.
            recoveredBlock56PC := 124.
        ].
        recoveredBlock56Step = 124 ifTrue: [
            recoveredBlock56Stack3 := (recoveredBlock56Stack3) leftExpr.
            recoveredBlock56PC := 125.
        ].
        recoveredBlock56Step = 125 ifTrue: [
            recoveredBlock56Stack3 := (recoveredBlock56Stack3) ileBasicType.
            recoveredBlock56PC := 127.
        ].
        recoveredBlock56Step = 127 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) div: (recoveredBlock56Stack2) type: (recoveredBlock56Stack3).
            recoveredBlock56PC := 129.
        ].
        recoveredBlock56Step = 129 ifTrue: [
            recoveredBlock56Local3 := recoveredBlock56Stack1.
            recoveredBlock56PC := 130.
        ].
        recoveredBlock56Step = 130 ifTrue: [
            recoveredBlock56Stack1 := recoveredBlock56Arg1.
            recoveredBlock56PC := 132.
        ].
        recoveredBlock56Step = 132 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) rightExpr.
            recoveredBlock56PC := 134.
        ].
        recoveredBlock56Step = 134 ifTrue: [
            recoveredBlock56Stack2 := recoveredBlock56Local4.
            recoveredBlock56PC := 135.
        ].
        recoveredBlock56Step = 135 ifTrue: [
            recoveredBlock56Stack2 := (recoveredBlock56Stack2) asIleCopy.
            recoveredBlock56PC := 137.
        ].
        recoveredBlock56Step = 137 ifTrue: [
            recoveredBlock56Stack3 := recoveredBlock56Arg1.
            recoveredBlock56PC := 139.
        ].
        recoveredBlock56Step = 139 ifTrue: [
            recoveredBlock56Stack3 := (recoveredBlock56Stack3) rightExpr.
            recoveredBlock56PC := 141.
        ].
        recoveredBlock56Step = 141 ifTrue: [
            recoveredBlock56Stack3 := (recoveredBlock56Stack3) ileBasicType.
            recoveredBlock56PC := 143.
        ].
        recoveredBlock56Step = 143 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) div: (recoveredBlock56Stack2) type: (recoveredBlock56Stack3).
            recoveredBlock56PC := 145.
        ].
        recoveredBlock56Step = 145 ifTrue: [
            recoveredBlock56Local2 := recoveredBlock56Stack1.
            recoveredBlock56PC := 146.
        ].
        recoveredBlock56Step = 146 ifTrue: [
            recoveredBlock56Stack1 := recoveredBlock56Local3.
            recoveredBlock56PC := 147.
        ].
        recoveredBlock56Step = 147 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) isIleRepresentable.
            recoveredBlock56PC := 149.
        ].
        recoveredBlock56Step = 149 ifTrue: [
            (recoveredBlock56Stack1) ifTrue: [recoveredBlock56PC := 152] ifFalse: [recoveredBlock56PC := 190].
        ].
        recoveredBlock56Step = 152 ifTrue: [
            recoveredBlock56Stack1 := recoveredBlock56Local2.
            recoveredBlock56PC := 153.
        ].
        recoveredBlock56Step = 153 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) isIleRepresentable.
            recoveredBlock56PC := 155.
        ].
        recoveredBlock56Step = 155 ifTrue: [
            (recoveredBlock56Stack1) ifTrue: [recoveredBlock56PC := 158] ifFalse: [recoveredBlock56PC := 190].
        ].
        recoveredBlock56Step = 158 ifTrue: [
            recoveredBlock56Stack1 := recoveredBlock56Arg1.
            recoveredBlock56PC := 160.
        ].
        recoveredBlock56Step = 160 ifTrue: [
            recoveredBlock56Stack2 := recoveredBlock56Local3.
            recoveredBlock56PC := 161.
        ].
        recoveredBlock56Step = 161 ifTrue: [
            recoveredBlock56Stack3 := recoveredBlock56Local2.
            recoveredBlock56PC := 162.
        ].
        recoveredBlock56Step = 162 ifTrue: [
            recoveredBlock56Stack4 := recoveredBlock56Local4.
            recoveredBlock56PC := 163.
        ].
        recoveredBlock56Step = 163 ifTrue: [
            recoveredBlock56Stack4 := (recoveredBlock56Stack4) value.
            recoveredBlock56PC := 165.
        ].
        recoveredBlock56Step = 165 ifTrue: [
            recoveredBlock56Stack5 := 0.
            recoveredBlock56PC := 167.
        ].
        recoveredBlock56Step = 167 ifTrue: [
            recoveredBlock56Stack4 := (recoveredBlock56Stack4) < (recoveredBlock56Stack5).
            recoveredBlock56PC := 168.
        ].
        recoveredBlock56Step = 168 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) createOpLeftExpr: (recoveredBlock56Stack2) rightExpr: (recoveredBlock56Stack3) inverse: (recoveredBlock56Stack4).
            recoveredBlock56PC := 171.
        ].
        recoveredBlock56Step = 171 ifTrue: [
            recoveredBlock56Stack2 := recoveredBlock56Stack1.
            recoveredBlock56PC := 172.
        ].
        recoveredBlock56Step = 172 ifTrue: [
            recoveredBlock56Local1 := recoveredBlock56Stack2.
            recoveredBlock56PC := 173.
        ].
        recoveredBlock56Step = 173 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) isIleRepresentable.
            recoveredBlock56PC := 175.
        ].
        recoveredBlock56Step = 175 ifTrue: [
            (recoveredBlock56Stack1) ifTrue: [recoveredBlock56PC := 178] ifFalse: [recoveredBlock56PC := 190].
        ].
        recoveredBlock56Step = 178 ifTrue: [
            recoveredBlock56Stack1 := recoveredLocal1.
            recoveredBlock56PC := 181.
        ].
        recoveredBlock56Step = 181 ifTrue: [
            recoveredBlock56Stack2 := recoveredBlock56Local4.
            recoveredBlock56PC := 182.
        ].
        recoveredBlock56Step = 182 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) * (recoveredBlock56Stack2).
            recoveredBlock56PC := 183.
        ].
        recoveredBlock56Step = 183 ifTrue: [
            recoveredLocal1 := recoveredBlock56Stack1.
            recoveredBlock56PC := 186.
        ].
        recoveredBlock56Step = 186 ifTrue: [
            recoveredBlock56Stack1 := recoveredBlock56Local1.
            recoveredBlock56PC := 187.
        ].
        recoveredBlock56Step = 187 ifTrue: [
            recoveredBlock56PC := 192.
        ].
        recoveredBlock56Step = 190 ifTrue: [
            recoveredBlock56Stack1 := recoveredBlock56Arg1.
            recoveredBlock56PC := 192.
        ].
        recoveredBlock56Step = 192 ifTrue: [
            recoveredBlock56Stack2 := nil.
            recoveredBlock56PC := 193.
        ].
        recoveredBlock56Step = 193 ifTrue: [
            recoveredBlock56Stack3 := recoveredBlock56Stack2.
            recoveredBlock56PC := 194.
        ].
        recoveredBlock56Step = 194 ifTrue: [
            recoveredBlock56Local3 := recoveredBlock56Stack3.
            recoveredBlock56PC := 195.
        ].
        recoveredBlock56Step = 195 ifTrue: [
            recoveredBlock56Stack3 := recoveredBlock56Stack2.
            recoveredBlock56PC := 196.
        ].
        recoveredBlock56Step = 196 ifTrue: [
            recoveredBlock56Local2 := recoveredBlock56Stack3.
            recoveredBlock56PC := 197.
        ].
        recoveredBlock56Step = 197 ifTrue: [
            recoveredBlock56Local1 := recoveredBlock56Stack2.
            recoveredBlock56PC := 198.
        ].
        recoveredBlock56Step = 198 ifTrue: [
            recoveredBlock56PC := 204.
        ].
        recoveredBlock56Step = 202 ifTrue: [
            recoveredBlock56Stack1 := recoveredBlock56Arg1.
            recoveredBlock56PC := 204.
        ].
        recoveredBlock56Step = 204 ifTrue: [
            recoveredBlock56Stack2 := nil.
            recoveredBlock56PC := 205.
        ].
        recoveredBlock56Step = 205 ifTrue: [
            recoveredBlock56Local4 := recoveredBlock56Stack2.
            recoveredBlock56PC := 206.
        ].
        recoveredBlock56Step = 206 ifTrue: [
            recoveredBlock56PC := 212.
        ].
        recoveredBlock56Step = 210 ifTrue: [
            recoveredBlock56Stack1 := recoveredBlock56Arg1.
            recoveredBlock56PC := 212.
        ].
        recoveredBlock56Step = 212 ifTrue: [
            recoveredBlock56Result := recoveredBlock56Stack1.
            recoveredBlock56Done := true.
        ].
    ].
    recoveredBlock56Result
].
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := [:block28111cd0Arg1 | 
    | block28111cd0Value0 block28111cd0Value1 |
    block28111cd0Value0 := block28111cd0Arg1.
    block28111cd0Value1 := (block28111cd0Value0) isIleConstantValueOne.
    block28111cd0Value1
].
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205a15e4; bytecode file offset 0xe9df00"
!SGIlMulNoOverflow methodsFor: 'recovered'!
createMulNoOverflowMinMax
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOperands.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block28115828Arg1 | 
    | block28115828Stack0 block28115828Stack1 block28115828Stack2 block28115828Stack3 block28115828PC block28115828Step block28115828Done block28115828Result |
    block28115828Stack0 := self.
    block28115828PC := 4.
    block28115828Done := false.
    [block28115828Done not] whileTrue: [
        block28115828Step := block28115828PC.
        block28115828Step = 4 ifTrue: [
            block28115828Stack1 := true.
            block28115828PC := 5.
        ].
        block28115828Step = 5 ifTrue: [
            block28115828Stack2 := block28115828Arg1.
            block28115828PC := 6.
        ].
        block28115828Step = 6 ifTrue: [
            block28115828Stack2 := (block28115828Stack2) isIleMinConstExpr.
            block28115828PC := 7.
        ].
        block28115828Step = 7 ifTrue: [
            (block28115828Stack2) ifTrue: [block28115828PC := 13] ifFalse: [block28115828PC := 10].
        ].
        block28115828Step = 10 ifTrue: [
            block28115828PC := 11.
        ].
        block28115828Step = 11 ifTrue: [
            block28115828Stack1 := block28115828Arg1.
            block28115828PC := 12.
        ].
        block28115828Step = 12 ifTrue: [
            block28115828Stack1 := (block28115828Stack1) isIleMaxConstExpr.
            block28115828PC := 13.
        ].
        block28115828Step = 13 ifTrue: [
            block28115828Result := block28115828Stack1.
            block28115828Done := true.
        ].
    ].
    block28115828Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) literalOne.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) literalOne.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOperands.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := [:recoveredBlock64Arg1 | 
    | recoveredBlock64Stack0 recoveredBlock64Stack1 recoveredBlock64Stack2 recoveredBlock64Stack3 recoveredBlock64Stack4 recoveredBlock64PC recoveredBlock64Step recoveredBlock64Done recoveredBlock64Result |
    recoveredBlock64Stack0 := self.
    recoveredBlock64PC := 70.
    recoveredBlock64Done := false.
    [recoveredBlock64Done not] whileTrue: [
        recoveredBlock64Step := recoveredBlock64PC.
        recoveredBlock64Step = 70 ifTrue: [
            recoveredBlock64Stack1 := recoveredBlock64Arg1.
            recoveredBlock64PC := 71.
        ].
        recoveredBlock64Step = 71 ifTrue: [
            recoveredBlock64Stack1 := (recoveredBlock64Stack1) isIleConstant.
            recoveredBlock64PC := 73.
        ].
        recoveredBlock64Step = 73 ifTrue: [
            (recoveredBlock64Stack1) ifTrue: [recoveredBlock64PC := 76] ifFalse: [recoveredBlock64PC := 90].
        ].
        recoveredBlock64Step = 76 ifTrue: [
            recoveredBlock64Stack1 := recoveredLocal5.
            recoveredBlock64PC := 79.
        ].
        recoveredBlock64Step = 79 ifTrue: [
            recoveredBlock64Stack2 := recoveredBlock64Arg1.
            recoveredBlock64PC := 80.
        ].
        recoveredBlock64Step = 80 ifTrue: [
            recoveredBlock64Stack3 := nil.
            recoveredBlock64PC := 81.
        ].
        recoveredBlock64Step = 81 ifTrue: [
            recoveredBlock64Stack1 := (recoveredBlock64Stack1) mul: (recoveredBlock64Stack2) type: (recoveredBlock64Stack3).
            recoveredBlock64PC := 83.
        ].
        recoveredBlock64Step = 83 ifTrue: [
            recoveredBlock64Stack2 := recoveredBlock64Stack1.
            recoveredBlock64PC := 84.
        ].
        recoveredBlock64Step = 84 ifTrue: [
            recoveredLocal5 := recoveredBlock64Stack2.
            recoveredBlock64PC := 87.
        ].
        recoveredBlock64Step = 87 ifTrue: [
            recoveredBlock64PC := 123.
        ].
        recoveredBlock64Step = 90 ifTrue: [
            recoveredBlock64Stack1 := nil.
            recoveredBlock64PC := 91.
        ].
        recoveredBlock64Step = 91 ifTrue: [
            recoveredBlock64Stack2 := recoveredBlock64Arg1.
            recoveredBlock64PC := 92.
        ].
        recoveredBlock64Step = 92 ifTrue: [
            recoveredBlock64Stack3 := recoveredLocal7.
            recoveredBlock64PC := 95.
        ].
        recoveredBlock64Step = 95 ifTrue: [
            recoveredBlock64Stack2 := (recoveredBlock64Stack2) ~= (recoveredBlock64Stack3).
            recoveredBlock64PC := 96.
        ].
        recoveredBlock64Step = 96 ifTrue: [
            (recoveredBlock64Stack2) ifTrue: [recoveredBlock64PC := 100] ifFalse: [recoveredBlock64PC := 123].
        ].
        recoveredBlock64Step = 100 ifTrue: [
            recoveredBlock64PC := 101.
        ].
        recoveredBlock64Step = 101 ifTrue: [
            recoveredBlock64Stack1 := recoveredLocal6.
            recoveredBlock64PC := 104.
        ].
        recoveredBlock64Step = 104 ifTrue: [
            recoveredBlock64Stack2 := recoveredBlock64Arg1.
            recoveredBlock64PC := 105.
        ].
        recoveredBlock64Step = 105 ifTrue: [
            recoveredBlock64Stack3 := nil.
            recoveredBlock64PC := 106.
        ].
        recoveredBlock64Step = 106 ifTrue: [
            recoveredBlock64Stack1 := (recoveredBlock64Stack1) mul: (recoveredBlock64Stack2) type: (recoveredBlock64Stack3).
            recoveredBlock64PC := 108.
        ].
        recoveredBlock64Step = 108 ifTrue: [
            recoveredLocal6 := recoveredBlock64Stack1.
            recoveredBlock64PC := 111.
        ].
        recoveredBlock64Step = 111 ifTrue: [
            recoveredBlock64Stack1 := nil.
            recoveredBlock64PC := 112.
        ].
        recoveredBlock64Step = 112 ifTrue: [
            recoveredBlock64Stack2 := recoveredLocal6.
            recoveredBlock64PC := 115.
        ].
        recoveredBlock64Step = 115 ifTrue: [
            recoveredBlock64Stack2 := (recoveredBlock64Stack2) isIleRepresentable.
            recoveredBlock64PC := 117.
        ].
        recoveredBlock64Step = 117 ifTrue: [
            (recoveredBlock64Stack2) ifTrue: [recoveredBlock64PC := 123] ifFalse: [recoveredBlock64PC := 120].
        ].
        recoveredBlock64Step = 120 ifTrue: [
            recoveredBlock64PC := 121.
        ].
        recoveredBlock64Step = 121 ifTrue: [
            recoveredBlock64Stack1 := nil.
            recoveredBlock64PC := 122.
        ].
        recoveredBlock64Step = 122 ifTrue: [
            ^recoveredBlock64Stack1
        ].
        recoveredBlock64Step = 123 ifTrue: [
            recoveredBlock64Result := recoveredBlock64Stack1.
            recoveredBlock64Done := true.
        ].
    ].
    recoveredBlock64Result
].
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleRTCostsOptimizedBufferedExpr.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileCommonFactor.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := (recoveredStack0) div: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleCopy.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := (recoveredStack0) div: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := (recoveredStack1) negFactor.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := (recoveredStack0) mul: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack3 := (recoveredStack3) asIleCopy.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := (recoveredStack2) mul: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack3 := (recoveredStack3) < (recoveredStack4).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack4 := (recoveredStack4) interval.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack4 := (recoveredStack4) <= (recoveredStack5).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack3 := (recoveredStack3) xor: (recoveredStack4).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOpLeftExpr: (recoveredStack1) rightExpr: (recoveredStack2) inverse: (recoveredStack3).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 270] ifFalse: [recoveredPC := 268].
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack3 := (recoveredStack3) asIleCopy.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := (recoveredStack2) mul: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack3 := (recoveredStack3) builtInShift.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMulNoOverflow: (recoveredStack1) const: (recoveredStack2) shift: (recoveredStack3).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20650ae4; bytecode file offset 0xf4d430"
!SGIlMulNoOverflow methodsFor: 'recovered'!
createMulNoOverflowLeftExpr: recoveredArg1 power: recoveredArg2 const: recoveredArg3 shift: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) goalInterval.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) representable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 10].
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
            recoveredStack1 := [
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12Stack5 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := [
    | recoveredBlock12Block18Value0 recoveredBlock12Block18Value1 |
    recoveredBlock12Block18Value0 := (self) goalInterval.
    recoveredBlock12Block18Value1 := (recoveredBlock12Block18Value0) representable.
    recoveredBlock12Block18Value1
].
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            recoveredBlock12Stack2 := [
    'The goal interval for overflow protection is not representable'
].
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12PC := 35.
        ].
        recoveredBlock12Step = 35 ifTrue: [
            (recoveredBlock12Stack0) ileAssert: (recoveredBlock12Stack1) message: (recoveredBlock12Stack2).
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            recoveredBlock12Stack0 := self.
            recoveredBlock12PC := 38.
        ].
        recoveredBlock12Step = 38 ifTrue: [
            recoveredBlock12Stack1 := recoveredArg1.
            recoveredBlock12PC := 41.
        ].
        recoveredBlock12Step = 41 ifTrue: [
            recoveredBlock12Stack2 := recoveredArg2.
            recoveredBlock12PC := 44.
        ].
        recoveredBlock12Step = 44 ifTrue: [
            recoveredBlock12Stack3 := recoveredArg3.
            recoveredBlock12PC := 47.
        ].
        recoveredBlock12Step = 47 ifTrue: [
            recoveredBlock12Stack4 := recoveredArg4.
            recoveredBlock12PC := 50.
        ].
        recoveredBlock12Step = 50 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) createMulNoOverflowLeftExpr: (recoveredBlock12Stack1) power: (recoveredBlock12Stack2) const: (recoveredBlock12Stack3) shift: (recoveredBlock12Stack4).
            recoveredBlock12PC := 53.
        ].
        recoveredBlock12Step = 53 ifTrue: [
            ^recoveredBlock12Stack0
        ].
    ].
    recoveredBlock12Result
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) temporarySetTo32RepresentableBits: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) negated.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) negated.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) powerTo: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) scalarConstant: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) div: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredPC := 134.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) scalarConstant: (recoveredStack1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := (recoveredStack2) powerTo: (recoveredStack3).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) scalarConstant: (recoveredStack2).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) mul: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) goalInterval.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 186] ifFalse: [recoveredPC := 204].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) goalInterval.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := (recoveredStack0) goalInterval.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredPC := 218.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := (recoveredStack0) goalInterval.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := (recoveredStack0) goalInterval.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := (recoveredStack0) even.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 226] ifFalse: [recoveredPC := 386].
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 238] ifFalse: [recoveredPC := 260].
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack2 := (recoveredStack2) right.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := (recoveredStack1) scalarConstant: (recoveredStack2).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := (recoveredStack0) limitOverflowExpr: (recoveredStack1) overflownBits: (recoveredStack2).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeRepresentable.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 280] ifFalse: [recoveredPC := 286].
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredPC := 302.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack0 := (recoveredStack0) ln.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack0 := (recoveredStack0) exp.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := (recoveredStack0) truncated.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack0 := (recoveredStack0) ln.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack0 := (recoveredStack0) exp.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack0 := (recoveredStack0) truncated.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 338] ifFalse: [recoveredPC := 354].
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack0 := RBInterval.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack0 := (recoveredStack0) left: (recoveredStack1) right: (recoveredStack2).
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredPC := 375.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack0 := RBInterval.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := (recoveredStack1) negated.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack0 := (recoveredStack0) left: (recoveredStack1) right: (recoveredStack2).
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredPC := 560.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeRepresentable.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 406] ifFalse: [recoveredPC := 430].
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack0 := (recoveredStack0) negated.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack0 := (recoveredStack0) ln.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack0 := (recoveredStack0) exp.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack0 := (recoveredStack0) truncated.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack0 := (recoveredStack0) negated.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredPC := 464.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 442] ifFalse: [recoveredPC := 448].
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredPC := 464.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack0 := (recoveredStack0) ln.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack0 := (recoveredStack0) exp.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack0 := (recoveredStack0) truncated.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 478] ifFalse: [recoveredPC := 502].
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack0 := (recoveredStack0) negated.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack0 := (recoveredStack0) ln.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack0 := (recoveredStack0) exp.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack0 := (recoveredStack0) truncated.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack0 := (recoveredStack0) negated.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredPC := 536.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 514] ifFalse: [recoveredPC := 520].
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredPC := 536.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack0 := (recoveredStack0) ln.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack0 := (recoveredStack0) exp.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack0 := (recoveredStack0) truncated.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack0 := RBInterval.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack0 := (recoveredStack0) left: (recoveredStack1) right: (recoveredStack2).
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleRTCostsOptimizedBufferedExpr.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack0 := (recoveredStack0) decorateGoalInterval: (recoveredStack1).
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack0 := (recoveredStack0) scalarConstant: (recoveredStack1).
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            recoveredPC := 653.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 604] ifFalse: [recoveredPC := 634].
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack0 := (recoveredStack0) mul: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 625.
        ].
        recoveredStep = 625 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 628.
        ].
        recoveredStep = 628 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            recoveredPC := 653.
        ].
        recoveredStep = 634 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            recoveredStack0 := (recoveredStack0) mul: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 656.
        ].
        recoveredStep = 656 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 660.
        ].
        recoveredStep = 660 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 592] ifFalse: [recoveredPC := 662].
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 668.
        ].
        recoveredStep = 668 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            recoveredStack0 := (recoveredStack0) mul: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 671.
        ].
        recoveredStep = 671 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            recoveredStack0 := (recoveredStack0) resetGoalInterval.
            recoveredPC := 679.
        ].
        recoveredStep = 679 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            recoveredStack2 := (recoveredStack2) right.
            recoveredPC := 687.
        ].
        recoveredStep = 687 ifTrue: [
            recoveredStack1 := (recoveredStack1) scalarConstant: (recoveredStack2).
            recoveredPC := 689.
        ].
        recoveredStep = 689 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            recoveredStack2 := (recoveredStack2) generator.
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            recoveredStack2 := (recoveredStack2) expressionContext.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredStack0 := (recoveredStack0) lessEqualThan: (recoveredStack1) expressionContext: (recoveredStack2).
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 701.
        ].
        recoveredStep = 701 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 704.
        ].
        recoveredStep = 704 ifTrue: [
            recoveredStack2 := (recoveredStack2) scalarConstant: (recoveredStack3).
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 707.
        ].
        recoveredStep = 707 ifTrue: [
            recoveredStack0 := (recoveredStack0) artificialMuxLeftExpr: (recoveredStack1) rightExpr: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 710.
        ].
        recoveredStep = 710 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 716.
        ].
        recoveredStep = 716 ifTrue: [
            recoveredStack0 := (recoveredStack0) resetGoalInterval.
            recoveredPC := 718.
        ].
        recoveredStep = 718 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 724.
        ].
        recoveredStep = 724 ifTrue: [
            recoveredStack2 := (recoveredStack2) left.
            recoveredPC := 726.
        ].
        recoveredStep = 726 ifTrue: [
            recoveredStack1 := (recoveredStack1) scalarConstant: (recoveredStack2).
            recoveredPC := 728.
        ].
        recoveredStep = 728 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 729.
        ].
        recoveredStep = 729 ifTrue: [
            recoveredStack2 := (recoveredStack2) generator.
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            recoveredStack2 := (recoveredStack2) expressionContext.
            recoveredPC := 732.
        ].
        recoveredStep = 732 ifTrue: [
            recoveredStack0 := (recoveredStack0) greaterEqualThan: (recoveredStack1) expressionContext: (recoveredStack2).
            recoveredPC := 734.
        ].
        recoveredStep = 734 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 737.
        ].
        recoveredStep = 737 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 738.
        ].
        recoveredStep = 738 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 740.
        ].
        recoveredStep = 740 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 743.
        ].
        recoveredStep = 743 ifTrue: [
            recoveredStack2 := (recoveredStack2) scalarConstant: (recoveredStack3).
            recoveredPC := 745.
        ].
        recoveredStep = 745 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 746.
        ].
        recoveredStep = 746 ifTrue: [
            recoveredStack0 := (recoveredStack0) artificialMuxLeftExpr: (recoveredStack1) rightExpr: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 752.
        ].
        recoveredStep = 752 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 756.
        ].
        recoveredStep = 756 ifTrue: [
            recoveredStack1 := (recoveredStack1) goalInterval.
            recoveredPC := 757.
        ].
        recoveredStep = 757 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 759.
        ].
        recoveredStep = 759 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 760.
        ].
        recoveredStep = 760 ifTrue: [
            recoveredStack2 := (recoveredStack2) goalInterval.
            recoveredPC := 761.
        ].
        recoveredStep = 761 ifTrue: [
            recoveredStack2 := (recoveredStack2) right.
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 764.
        ].
        recoveredStep = 764 ifTrue: [
            recoveredStack0 := (recoveredStack0) limitExprLowerBound: (recoveredStack1) upperBound: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 767.
        ].
        recoveredStep = 767 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 770.
        ].
        recoveredStep = 770 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock771Value0 recoveredBlock771Value1 |
    recoveredBlock771Value0 := recoveredLocal5.
    recoveredBlock771Value1 := (recoveredBlock771Value0) isIleRepresentableRecursive.
    recoveredBlock771Value1
].
            recoveredPC := 784.
        ].
        recoveredStep = 784 ifTrue: [
            recoveredStack2 := [
    'Expression should be overflow protected, but still overflows'
].
            recoveredPC := 786.
        ].
        recoveredStep = 786 ifTrue: [
            recoveredPC := 793.
        ].
        recoveredStep = 793 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 795.
        ].
        recoveredStep = 795 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 796.
        ].
        recoveredStep = 796 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 799.
        ].
        recoveredStep = 799 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 801.
        ].
        recoveredStep = 801 ifTrue: [
            recoveredStack0 := (recoveredStack0) limitOverflowExpr: (recoveredStack1) overflownBits: (recoveredStack2).
            recoveredPC := 803.
        ].
        recoveredStep = 803 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206512ec; bytecode file offset 0xf4dc68"
!SGIlMulNoOverflow methodsFor: 'recovered'!
createLimitedExpr
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalExpr.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentableRecursive.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalExpr.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleMulExpr.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) originalExpr.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) scalarConstant: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMulNoOverflow: (recoveredStack1) const: (recoveredStack2) shift: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := originalExprNoMul.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleNegExpr.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := originalExprNoMul.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentableRecursive.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := originalExprNoMul.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := -1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) scalarConstant: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := (recoveredStack3) negFactor.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) mul: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := (recoveredStack3) builtInShift.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMulNoOverflow: (recoveredStack1) const: (recoveredStack2) shift: (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := originalExprNoMul.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleMulConstExpr.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := originalExprNoMul.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentableRecursive.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := originalExprNoMul.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := originalExprNoMul.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := (recoveredStack3) negFactor.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := (recoveredStack2) mul: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := (recoveredStack3) builtInShift.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMulNoOverflow: (recoveredStack1) const: (recoveredStack2) shift: (recoveredStack3).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := originalExprNoMul.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleDivConstExpr.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := originalExprNoMul.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentableRecursive.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := originalExprNoMul.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := originalExprNoMul.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := (recoveredStack2) reciprocal.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := (recoveredStack3) negFactor.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := (recoveredStack2) mul: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := (recoveredStack3) builtInShift.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMulNoOverflow: (recoveredStack1) const: (recoveredStack2) shift: (recoveredStack3).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 190] ifFalse: [recoveredPC := 186].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := overflownBits.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 198] ifFalse: [recoveredPC := 340].
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := (recoveredStack0) builtInShift.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 212].
        ].
        recoveredStep = 208 ifTrue: [
            recoveredPC := 332.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := (recoveredStack0) builtInShift.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 222] ifFalse: [recoveredPC := 332].
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := originalExprNoMul.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := (recoveredStack0) containsIleDivisionExpr.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 238] ifFalse: [recoveredPC := 230].
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := originalExprNoMul.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := (recoveredStack0) containsIleFraction.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 238] ifFalse: [recoveredPC := 332].
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredPC := 253.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := (recoveredStack1) builtInShift.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 264] ifFalse: [recoveredPC := 299].
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := originalExprNoMul.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack2 := (recoveredStack2) powerTo: (recoveredStack3).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := (recoveredStack1) scalarConstant: (recoveredStack2).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := (recoveredStack0) mul: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentableRecursive.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 288] ifFalse: [recoveredPC := 299].
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleMultiplyConstantExpr.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 295] ifFalse: [recoveredPC := 246].
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := (recoveredStack0) builtInShift.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            builtInShift := recoveredStack0.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack0 := originalExprNoMul.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack2 := (recoveredStack2) powerTo: (recoveredStack3).
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := (recoveredStack1) scalarConstant: (recoveredStack2).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack0 := (recoveredStack0) mul: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            originalExprNoMul := recoveredStack0.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack0 := originalExprNoMul.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredPC := 591.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack0 := (recoveredStack0) builtInShift.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 362] ifFalse: [recoveredPC := 350].
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack0 := overflownBits.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := (recoveredStack1) builtInShift.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack1 := (recoveredStack1) negated.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 362] ifFalse: [recoveredPC := 526].
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOperands.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack1 := [:block281230dcArg1 | 
    | block281230dcValue0 block281230dcValue1 block281230dcValue2 |
    block281230dcValue0 := block281230dcArg1.
    block281230dcValue1 := (block281230dcValue0) isIleConstant.
    block281230dcValue2 := (block281230dcValue1) not.
    block281230dcValue2
].
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1).
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasIleNoSideEffects.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 386] ifFalse: [recoveredPC := 522].
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOperands.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := [:recoveredBlock389Arg1 | 
    | recoveredBlock389Stack0 recoveredBlock389Stack1 recoveredBlock389Stack2 recoveredBlock389Stack3 recoveredBlock389PC recoveredBlock389Step recoveredBlock389Done recoveredBlock389Result |
    recoveredBlock389Stack0 := self.
    recoveredBlock389PC := 396.
    recoveredBlock389Done := false.
    [recoveredBlock389Done not] whileTrue: [
        recoveredBlock389Step := recoveredBlock389PC.
        recoveredBlock389Step = 396 ifTrue: [
            recoveredBlock389Stack1 := true.
            recoveredBlock389PC := 397.
        ].
        recoveredBlock389Step = 397 ifTrue: [
            recoveredBlock389Stack2 := recoveredBlock389Arg1.
            recoveredBlock389PC := 398.
        ].
        recoveredBlock389Step = 398 ifTrue: [
            recoveredBlock389Stack2 := (recoveredBlock389Stack2) isIleConstant.
            recoveredBlock389PC := 400.
        ].
        recoveredBlock389Step = 400 ifTrue: [
            (recoveredBlock389Stack2) ifTrue: [recoveredBlock389PC := 411] ifFalse: [recoveredBlock389PC := 404].
        ].
        recoveredBlock389Step = 404 ifTrue: [
            recoveredBlock389PC := 405.
        ].
        recoveredBlock389Step = 405 ifTrue: [
            recoveredBlock389Stack1 := recoveredBlock389Arg1.
            recoveredBlock389PC := 406.
        ].
        recoveredBlock389Step = 406 ifTrue: [
            recoveredBlock389Stack2 := recoveredLocal3.
            recoveredBlock389PC := 409.
        ].
        recoveredBlock389Step = 409 ifTrue: [
            recoveredBlock389Stack1 := (recoveredBlock389Stack1) isIleIdentical: (recoveredBlock389Stack2).
            recoveredBlock389PC := 411.
        ].
        recoveredBlock389Step = 411 ifTrue: [
            recoveredBlock389Result := recoveredBlock389Stack1.
            recoveredBlock389Done := true.
        ].
    ].
    recoveredBlock389Result
].
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSatisfy: (recoveredStack1).
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 418] ifFalse: [recoveredPC := 522].
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack0 := (recoveredStack0) literalOne.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOperands.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack1 := [:recoveredBlock433Arg1 | 
    | recoveredBlock433Stack0 recoveredBlock433Stack1 recoveredBlock433Stack2 recoveredBlock433Stack3 recoveredBlock433Stack4 recoveredBlock433PC recoveredBlock433Step recoveredBlock433Done recoveredBlock433Result |
    recoveredBlock433Stack0 := self.
    recoveredBlock433PC := 440.
    recoveredBlock433Done := false.
    [recoveredBlock433Done not] whileTrue: [
        recoveredBlock433Step := recoveredBlock433PC.
        recoveredBlock433Step = 440 ifTrue: [
            recoveredBlock433Stack1 := recoveredBlock433Arg1.
            recoveredBlock433PC := 441.
        ].
        recoveredBlock433Step = 441 ifTrue: [
            recoveredBlock433Stack1 := (recoveredBlock433Stack1) isIleConstant.
            recoveredBlock433PC := 443.
        ].
        recoveredBlock433Step = 443 ifTrue: [
            (recoveredBlock433Stack1) ifTrue: [recoveredBlock433PC := 446] ifFalse: [recoveredBlock433PC := 460].
        ].
        recoveredBlock433Step = 446 ifTrue: [
            recoveredBlock433Stack1 := recoveredLocal1.
            recoveredBlock433PC := 449.
        ].
        recoveredBlock433Step = 449 ifTrue: [
            recoveredBlock433Stack2 := recoveredBlock433Arg1.
            recoveredBlock433PC := 450.
        ].
        recoveredBlock433Step = 450 ifTrue: [
            recoveredBlock433Stack3 := nil.
            recoveredBlock433PC := 451.
        ].
        recoveredBlock433Step = 451 ifTrue: [
            recoveredBlock433Stack1 := (recoveredBlock433Stack1) mul: (recoveredBlock433Stack2) type: (recoveredBlock433Stack3).
            recoveredBlock433PC := 453.
        ].
        recoveredBlock433Step = 453 ifTrue: [
            recoveredBlock433Stack2 := recoveredBlock433Stack1.
            recoveredBlock433PC := 454.
        ].
        recoveredBlock433Step = 454 ifTrue: [
            recoveredLocal1 := recoveredBlock433Stack2.
            recoveredBlock433PC := 457.
        ].
        recoveredBlock433Step = 457 ifTrue: [
            recoveredBlock433PC := 468.
        ].
        recoveredBlock433Step = 460 ifTrue: [
            recoveredBlock433Stack1 := recoveredLocal2.
            recoveredBlock433PC := 463.
        ].
        recoveredBlock433Step = 463 ifTrue: [
            recoveredBlock433Stack1 := (recoveredBlock433Stack1) + (1).
            recoveredBlock433PC := 464.
        ].
        recoveredBlock433Step = 464 ifTrue: [
            recoveredBlock433Stack2 := recoveredBlock433Stack1.
            recoveredBlock433PC := 465.
        ].
        recoveredBlock433Step = 465 ifTrue: [
            recoveredLocal2 := recoveredBlock433Stack2.
            recoveredBlock433PC := 468.
        ].
        recoveredBlock433Step = 468 ifTrue: [
            recoveredBlock433Result := recoveredBlock433Stack1.
            recoveredBlock433Done := true.
        ].
    ].
    recoveredBlock433Result
].
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 480] ifFalse: [recoveredPC := 514].
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack4 := (recoveredStack4) negFactor.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack3 := (recoveredStack3) mul: (recoveredStack4) type: (recoveredStack5).
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack4 := (recoveredStack4) builtInShift.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMulNoOverflowLeftExpr: (recoveredStack1) power: (recoveredStack2) const: (recoveredStack3) shift: (recoveredStack4).
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 514] ifFalse: [recoveredPC := 510].
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMulNoOverflowMinMax.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 540] ifFalse: [recoveredPC := 536].
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOperands.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack1 := [:block28123100Arg1 | 
    | block28123100Stack0 block28123100Stack1 block28123100Stack2 block28123100Stack3 block28123100PC block28123100Step block28123100Done block28123100Result |
    block28123100Stack0 := self.
    block28123100PC := 4.
    block28123100Done := false.
    [block28123100Done not] whileTrue: [
        block28123100Step := block28123100PC.
        block28123100Step = 4 ifTrue: [
            block28123100Stack1 := false.
            block28123100PC := 5.
        ].
        block28123100Step = 5 ifTrue: [
            block28123100Stack2 := block28123100Arg1.
            block28123100PC := 6.
        ].
        block28123100Step = 6 ifTrue: [
            block28123100Stack2 := (block28123100Stack2) isIleRepresentableRecursive.
            block28123100PC := 7.
        ].
        block28123100Step = 7 ifTrue: [
            (block28123100Stack2) ifTrue: [block28123100PC := 14] ifFalse: [block28123100PC := 10].
        ].
        block28123100Step = 10 ifTrue: [
            block28123100PC := 11.
        ].
        block28123100Step = 11 ifTrue: [
            block28123100Stack1 := block28123100Arg1.
            block28123100PC := 12.
        ].
        block28123100Step = 12 ifTrue: [
            block28123100Stack1 := (block28123100Stack1) isIleRepresentableRecursiveDoubleBitSize.
            block28123100PC := 14.
        ].
        block28123100Step = 14 ifTrue: [
            block28123100Result := block28123100Stack1.
            block28123100Done := true.
        ].
    ].
    block28123100Result
].
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack1 := (recoveredStack1) allOperands.
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack0 := (recoveredStack0) composeMulNoOverflow: (recoveredStack1) requiresDoubleBitSize: (recoveredStack2).
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            overflownBits := recoveredStack0.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack0 := overflownBits.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            recoveredStack1 := (recoveredStack1) builtInShift.
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 604] ifFalse: [recoveredPC := 636].
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack3 := overflownBits.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack4 := (recoveredStack4) builtInShift.
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack3 := (recoveredStack3) negated.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack2 := (recoveredStack2) raisedTo: (recoveredStack3).
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack1 := (recoveredStack1) scalarConstant: (recoveredStack2).
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            recoveredStack0 := (recoveredStack0) div: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            overflownBits := recoveredStack0.
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredPC := 648.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack0 := overflownBits.
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            recoveredStack1 := (recoveredStack1) builtInShift.
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            overflownBits := recoveredStack0.
            recoveredPC := 648.
        ].
        recoveredStep = 648 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            recoveredStack2 := overflownBits.
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack1 := (recoveredStack1) raisedTo: (recoveredStack2).
            recoveredPC := 656.
        ].
        recoveredStep = 656 ifTrue: [
            recoveredStack0 := (recoveredStack0) scalarConstant: (recoveredStack1).
            recoveredPC := 658.
        ].
        recoveredStep = 658 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 661.
        ].
        recoveredStep = 661 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 664.
        ].
        recoveredStep = 664 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleMulConstExpr.
            recoveredPC := 666.
        ].
        recoveredStep = 666 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 670] ifFalse: [recoveredPC := 760].
        ].
        recoveredStep = 670 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 675.
        ].
        recoveredStep = 675 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentableFraction.
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 680] ifFalse: [recoveredPC := 760].
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleRepresentable.
            recoveredPC := 687.
        ].
        recoveredStep = 687 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 690] ifFalse: [recoveredPC := 760].
        ].
        recoveredStep = 690 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            recoveredStack0 := (recoveredStack0) mul: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 701.
        ].
        recoveredStep = 701 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 702.
        ].
        recoveredStep = 702 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 705.
        ].
        recoveredStep = 705 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleIntegerConstant.
            recoveredPC := 707.
        ].
        recoveredStep = 707 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 710] ifFalse: [recoveredPC := 756].
        ].
        recoveredStep = 710 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 715.
        ].
        recoveredStep = 715 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 718.
        ].
        recoveredStep = 718 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 722] ifFalse: [recoveredPC := 742].
        ].
        recoveredStep = 722 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            recoveredStack0 := (recoveredStack0) neg.
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 731.
        ].
        recoveredStep = 731 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 732.
        ].
        recoveredStep = 732 ifTrue: [
            recoveredStack1 := (recoveredStack1) negFactor.
            recoveredPC := 734.
        ].
        recoveredStep = 734 ifTrue: [
            recoveredStack1 := (recoveredStack1) neg.
            recoveredPC := 736.
        ].
        recoveredStep = 736 ifTrue: [
            (recoveredStack0) negFactor: (recoveredStack1).
            recoveredPC := 738.
        ].
        recoveredStep = 738 ifTrue: [
            recoveredPC := 748.
        ].
        recoveredStep = 742 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 745.
        ].
        recoveredStep = 745 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 748.
        ].
        recoveredStep = 748 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 751.
        ].
        recoveredStep = 751 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 756.
        ].
        recoveredStep = 756 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 757.
        ].
        recoveredStep = 757 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 760.
        ].
        recoveredStep = 760 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 764.
        ].
        recoveredStep = 764 ifTrue: [
            recoveredStack1 := (recoveredStack1) goalInterval.
            recoveredPC := 766.
        ].
        recoveredStep = 766 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 767.
        ].
        recoveredStep = 767 ifTrue: [
            recoveredStack2 := (recoveredStack2) negFactor.
            recoveredPC := 769.
        ].
        recoveredStep = 769 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 772.
        ].
        recoveredStep = 772 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 775.
        ].
        recoveredStep = 775 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 777.
        ].
        recoveredStep = 777 ifTrue: [
            recoveredStack0 := (recoveredStack0) limitExprGoalInterval: (recoveredStack1) shiftValue: (recoveredStack2).
            recoveredPC := 779.
        ].
        recoveredStep = 779 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 782.
        ].
        recoveredStep = 782 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 785.
        ].
        recoveredStep = 785 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 786.
        ].
        recoveredStep = 786 ifTrue: [
            recoveredStack1 := (recoveredStack1) negFactor.
            recoveredPC := 788.
        ].
        recoveredStep = 788 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 789.
        ].
        recoveredStep = 789 ifTrue: [
            recoveredStack0 := (recoveredStack0) mul: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 791.
        ].
        recoveredStep = 791 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 794.
        ].
        recoveredStep = 794 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 795.
        ].
        recoveredStep = 795 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 801.
        ].
        recoveredStep = 801 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 802.
        ].
        recoveredStep = 802 ifTrue: [
            recoveredStack3 := (recoveredStack3) originalExpr.
            recoveredPC := 803.
        ].
        recoveredStep = 803 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 805.
        ].
        recoveredStep = 805 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 807.
        ].
        recoveredStep = 807 ifTrue: [
            recoveredStack2 := overflownBits.
            recoveredPC := 809.
        ].
        recoveredStep = 809 ifTrue: [
            recoveredStack0 := (recoveredStack0) limitOverflowExpr: (recoveredStack1) overflownBits: (recoveredStack2).
            recoveredPC := 811.
        ].
        recoveredStep = 811 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2066fa38; bytecode file offset 0xf6c3f4"
!SGIlMulNoOverflow methodsFor: 'recovered'!
composeMulNoOverflow: recoveredArg1 requiresDoubleBitSize: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block28126ca0Arg1 | 
    | block28126ca0Value0 block28126ca0Value1 block28126ca0Value2 block28126ca0Value3 |
    block28126ca0Value0 := block28126ca0Arg1.
    block28126ca0Value1 := (block28126ca0Value0) interval.
    block28126ca0Value2 := (block28126ca0Value1) left.
    block28126ca0Value3 := (block28126ca0Value2) >= (0).
    block28126ca0Value3
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSatisfy: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:block28126cc4Arg1 | 
    | block28126cc4Stack0 block28126cc4Stack1 block28126cc4Stack2 block28126cc4Stack3 block28126cc4PC block28126cc4Step block28126cc4Done block28126cc4Result |
    block28126cc4Stack0 := self.
    block28126cc4PC := 4.
    block28126cc4Done := false.
    [block28126cc4Done not] whileTrue: [
        block28126cc4Step := block28126cc4PC.
        block28126cc4Step = 4 ifTrue: [
            block28126cc4Stack1 := false.
            block28126cc4PC := 5.
        ].
        block28126cc4Step = 5 ifTrue: [
            block28126cc4Stack2 := block28126cc4Arg1.
            block28126cc4PC := 6.
        ].
        block28126cc4Step = 6 ifTrue: [
            block28126cc4Stack2 := (block28126cc4Stack2) isIleMaxConstExpr.
            block28126cc4PC := 8.
        ].
        block28126cc4Step = 8 ifTrue: [
            (block28126cc4Stack2) ifTrue: [block28126cc4PC := 12] ifFalse: [block28126cc4PC := 38].
        ].
        block28126cc4Step = 12 ifTrue: [
            block28126cc4PC := 13.
        ].
        block28126cc4Step = 13 ifTrue: [
            block28126cc4Stack1 := false.
            block28126cc4PC := 14.
        ].
        block28126cc4Step = 14 ifTrue: [
            block28126cc4Stack2 := block28126cc4Arg1.
            block28126cc4PC := 15.
        ].
        block28126cc4Step = 15 ifTrue: [
            block28126cc4Stack2 := (block28126cc4Stack2) rightExpr.
            block28126cc4PC := 17.
        ].
        block28126cc4Step = 17 ifTrue: [
            block28126cc4Stack2 := (block28126cc4Stack2) isIleConstantValueZero.
            block28126cc4PC := 19.
        ].
        block28126cc4Step = 19 ifTrue: [
            (block28126cc4Stack2) ifTrue: [block28126cc4PC := 22] ifFalse: [block28126cc4PC := 38].
        ].
        block28126cc4Step = 22 ifTrue: [
            block28126cc4PC := 23.
        ].
        block28126cc4Step = 23 ifTrue: [
            block28126cc4Stack1 := true.
            block28126cc4PC := 24.
        ].
        block28126cc4Step = 24 ifTrue: [
            block28126cc4Stack2 := block28126cc4Arg1.
            block28126cc4PC := 25.
        ].
        block28126cc4Step = 25 ifTrue: [
            block28126cc4Stack2 := (block28126cc4Stack2) leftExpr.
            block28126cc4PC := 27.
        ].
        block28126cc4Step = 27 ifTrue: [
            block28126cc4Stack2 := (block28126cc4Stack2) isIleMulExpr.
            block28126cc4PC := 29.
        ].
        block28126cc4Step = 29 ifTrue: [
            (block28126cc4Stack2) ifTrue: [block28126cc4PC := 38] ifFalse: [block28126cc4PC := 32].
        ].
        block28126cc4Step = 32 ifTrue: [
            block28126cc4PC := 33.
        ].
        block28126cc4Step = 33 ifTrue: [
            block28126cc4Stack1 := block28126cc4Arg1.
            block28126cc4PC := 34.
        ].
        block28126cc4Step = 34 ifTrue: [
            block28126cc4Stack1 := (block28126cc4Stack1) leftExpr.
            block28126cc4PC := 36.
        ].
        block28126cc4Step = 36 ifTrue: [
            block28126cc4Stack1 := (block28126cc4Stack1) isIleDivExpr.
            block28126cc4PC := 38.
        ].
        block28126cc4Step = 38 ifTrue: [
            block28126cc4Result := block28126cc4Stack1.
            block28126cc4Done := true.
        ].
    ].
    block28126cc4Result
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredArg1.
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
            recoveredBlock84Stack1 := recoveredLocal8.
            recoveredBlock84PC := 93.
        ].
        recoveredBlock84Step = 93 ifTrue: [
            recoveredBlock84Stack2 := recoveredBlock84Arg1.
            recoveredBlock84PC := 94.
        ].
        recoveredBlock84Step = 94 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) value: (recoveredBlock84Stack2).
            recoveredBlock84PC := 96.
        ].
        recoveredBlock84Step = 96 ifTrue: [
            (recoveredBlock84Stack1) ifTrue: [recoveredBlock84PC := 100] ifFalse: [recoveredBlock84PC := 106].
        ].
        recoveredBlock84Step = 100 ifTrue: [
            recoveredBlock84Stack1 := recoveredBlock84Arg1.
            recoveredBlock84PC := 101.
        ].
        recoveredBlock84Step = 101 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) leftExpr.
            recoveredBlock84PC := 103.
        ].
        recoveredBlock84Step = 103 ifTrue: [
            recoveredBlock84PC := 107.
        ].
        recoveredBlock84Step = 106 ifTrue: [
            recoveredBlock84Stack1 := recoveredBlock84Arg1.
            recoveredBlock84PC := 107.
        ].
        recoveredBlock84Step = 107 ifTrue: [
            recoveredBlock84Result := recoveredBlock84Stack1.
            recoveredBlock84Done := true.
        ].
    ].
    recoveredBlock84Result
].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) composeMulNoOverflow: (recoveredStack2) requiresDoubleBitSize: (recoveredStack3).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := (recoveredStack3) first.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileBuilder.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack4 := (recoveredStack4) scalarConstant: (recoveredStack5).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack5 := recoveredLocal7.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack5 := (recoveredStack5) first.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack5 := (recoveredStack5) ileBasicType.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := (recoveredStack3) max: (recoveredStack4) type: (recoveredStack5).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeFactorFromMinMaxConst: (recoveredStack1).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredLocal13 := recoveredStack0.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) createIntConstant: (recoveredStack1).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := [:recoveredBlock180Arg1 :recoveredBlock180Arg2 :recoveredBlock180Arg3 | 
    | recoveredBlock180Local1 recoveredBlock180Local2 recoveredBlock180Local3 recoveredBlock180Local4 recoveredBlock180Stack0 recoveredBlock180Stack1 recoveredBlock180Stack2 recoveredBlock180Stack3 recoveredBlock180Stack4 recoveredBlock180Stack5 recoveredBlock180PC recoveredBlock180Step recoveredBlock180Done recoveredBlock180Result |
    recoveredBlock180Stack0 := self.
    recoveredBlock180PC := 186.
    recoveredBlock180Done := false.
    [recoveredBlock180Done not] whileTrue: [
        recoveredBlock180Step := recoveredBlock180PC.
        recoveredBlock180Step = 186 ifTrue: [
            recoveredBlock180Stack1 := recoveredBlock180Arg3.
            recoveredBlock180PC := 188.
        ].
        recoveredBlock180Step = 188 ifTrue: [
            recoveredBlock180Stack1 := (recoveredBlock180Stack1) + (-1).
            recoveredBlock180PC := 189.
        ].
        recoveredBlock180Step = 189 ifTrue: [
            recoveredBlock180Local2 := recoveredBlock180Stack1.
            recoveredBlock180PC := 190.
        ].
        recoveredBlock180Step = 190 ifTrue: [
            recoveredBlock180Stack1 := recoveredLocal13.
            recoveredBlock180PC := 193.
        ].
        recoveredBlock180Step = 193 ifTrue: [
            recoveredBlock180Stack1 := (recoveredBlock180Stack1) size.
            recoveredBlock180PC := 195.
        ].
        recoveredBlock180Step = 195 ifTrue: [
            recoveredBlock180PC := 262.
        ].
        recoveredBlock180Step = 198 ifTrue: [
            recoveredBlock180Stack2 := recoveredLocal13.
            recoveredBlock180PC := 201.
        ].
        recoveredBlock180Step = 201 ifTrue: [
            recoveredBlock180Stack3 := recoveredBlock180Local2.
            recoveredBlock180PC := 202.
        ].
        recoveredBlock180Step = 202 ifTrue: [
            recoveredBlock180Stack2 := (recoveredBlock180Stack2) at: (recoveredBlock180Stack3).
            recoveredBlock180PC := 204.
        ].
        recoveredBlock180Step = 204 ifTrue: [
            recoveredBlock180Stack3 := recoveredBlock180Stack2.
            recoveredBlock180PC := 205.
        ].
        recoveredBlock180Step = 205 ifTrue: [
            recoveredBlock180Local1 := recoveredBlock180Stack3.
            recoveredBlock180PC := 206.
        ].
        recoveredBlock180Step = 206 ifTrue: [
            recoveredBlock180Stack2 := (recoveredBlock180Stack2) isIleRepresentableFraction.
            recoveredBlock180PC := 208.
        ].
        recoveredBlock180Step = 208 ifTrue: [
            (recoveredBlock180Stack2) ifTrue: [recoveredBlock180PC := 212] ifFalse: [recoveredBlock180PC := 260].
        ].
        recoveredBlock180Step = 212 ifTrue: [
            recoveredBlock180Stack2 := recoveredBlock180Local1.
            recoveredBlock180PC := 213.
        ].
        recoveredBlock180Step = 213 ifTrue: [
            recoveredBlock180Stack2 := (recoveredBlock180Stack2) value.
            recoveredBlock180PC := 215.
        ].
        recoveredBlock180Step = 215 ifTrue: [
            recoveredBlock180Stack2 := (recoveredBlock180Stack2) abs.
            recoveredBlock180PC := 217.
        ].
        recoveredBlock180Step = 217 ifTrue: [
            recoveredBlock180Stack3 := (Fraction) numerator: (1) denominator: (2).
            recoveredBlock180PC := 219.
        ].
        recoveredBlock180Step = 219 ifTrue: [
            recoveredBlock180Stack2 := (recoveredBlock180Stack2) <= (recoveredBlock180Stack3).
            recoveredBlock180PC := 220.
        ].
        recoveredBlock180Step = 220 ifTrue: [
            (recoveredBlock180Stack2) ifTrue: [recoveredBlock180PC := 224] ifFalse: [recoveredBlock180PC := 260].
        ].
        recoveredBlock180Step = 224 ifTrue: [
            recoveredBlock180Stack2 := recoveredBlock180Local1.
            recoveredBlock180PC := 225.
        ].
        recoveredBlock180Step = 225 ifTrue: [
            recoveredBlock180Stack2 := (recoveredBlock180Stack2) value.
            recoveredBlock180PC := 227.
        ].
        recoveredBlock180Step = 227 ifTrue: [
            recoveredBlock180Stack2 := (recoveredBlock180Stack2) abs.
            recoveredBlock180PC := 229.
        ].
        recoveredBlock180Step = 229 ifTrue: [
            recoveredBlock180Stack3 := 2.
            recoveredBlock180PC := 231.
        ].
        recoveredBlock180Step = 231 ifTrue: [
            recoveredBlock180Stack4 := recoveredBlock180Arg2.
            recoveredBlock180PC := 233.
        ].
        recoveredBlock180Step = 233 ifTrue: [
            recoveredBlock180Stack4 := (recoveredBlock180Stack4) negated.
            recoveredBlock180PC := 235.
        ].
        recoveredBlock180Step = 235 ifTrue: [
            recoveredBlock180Stack3 := (recoveredBlock180Stack3) powerTo: (recoveredBlock180Stack4).
            recoveredBlock180PC := 237.
        ].
        recoveredBlock180Step = 237 ifTrue: [
            recoveredBlock180Stack2 := (recoveredBlock180Stack2) >= (recoveredBlock180Stack3).
            recoveredBlock180PC := 238.
        ].
        recoveredBlock180Step = 238 ifTrue: [
            (recoveredBlock180Stack2) ifTrue: [recoveredBlock180PC := 242] ifFalse: [recoveredBlock180PC := 260].
        ].
        recoveredBlock180Step = 242 ifTrue: [
            recoveredBlock180Stack2 := recoveredBlock180Local4.
            recoveredBlock180PC := 243.
        ].
        recoveredBlock180Step = 243 ifTrue: [
            (recoveredBlock180Stack2 == nil) ifTrue: [recoveredBlock180PC := 256] ifFalse: [recoveredBlock180PC := 246].
        ].
        recoveredBlock180Step = 246 ifTrue: [
            recoveredBlock180Stack2 := recoveredBlock180Local4.
            recoveredBlock180PC := 247.
        ].
        recoveredBlock180Step = 247 ifTrue: [
            recoveredBlock180Stack2 := (recoveredBlock180Stack2) value.
            recoveredBlock180PC := 249.
        ].
        recoveredBlock180Step = 249 ifTrue: [
            recoveredBlock180Stack3 := recoveredBlock180Local1.
            recoveredBlock180PC := 250.
        ].
        recoveredBlock180Step = 250 ifTrue: [
            recoveredBlock180Stack3 := (recoveredBlock180Stack3) value.
            recoveredBlock180PC := 252.
        ].
        recoveredBlock180Step = 252 ifTrue: [
            recoveredBlock180Stack2 := (recoveredBlock180Stack2) > (recoveredBlock180Stack3).
            recoveredBlock180PC := 253.
        ].
        recoveredBlock180Step = 253 ifTrue: [
            (recoveredBlock180Stack2) ifTrue: [recoveredBlock180PC := 256] ifFalse: [recoveredBlock180PC := 260].
        ].
        recoveredBlock180Step = 256 ifTrue: [
            recoveredBlock180Stack2 := recoveredBlock180Local1.
            recoveredBlock180PC := 257.
        ].
        recoveredBlock180Step = 257 ifTrue: [
            recoveredBlock180Local4 := recoveredBlock180Stack2.
            recoveredBlock180PC := 258.
        ].
        recoveredBlock180Step = 258 ifTrue: [
            recoveredBlock180Stack2 := recoveredBlock180Local2.
            recoveredBlock180PC := 259.
        ].
        recoveredBlock180Step = 259 ifTrue: [
            recoveredBlock180Local3 := recoveredBlock180Stack2.
            recoveredBlock180PC := 260.
        ].
        recoveredBlock180Step = 260 ifTrue: [
            recoveredBlock180Stack2 := nil.
            recoveredBlock180PC := 261.
        ].
        recoveredBlock180Step = 261 ifTrue: [
            recoveredBlock180Local1 := recoveredBlock180Stack2.
            recoveredBlock180PC := 262.
        ].
        recoveredBlock180Step = 262 ifTrue: [
            (recoveredBlock180Stack1 isInteger and: [recoveredBlock180Local2 isInteger]) ifTrue: [(recoveredBlock180Local2 + 1 <= recoveredBlock180Stack1) ifTrue: [recoveredBlock180Local2 := recoveredBlock180Local2 + 1. recoveredBlock180PC := 198] ifFalse: [recoveredBlock180Local2 := nil. recoveredBlock180PC := 276]] ifFalse: [recoveredBlock180PC := 266].
        ].
        recoveredBlock180Step = 266 ifTrue: [
            recoveredBlock180Stack2 := recoveredBlock180Stack1.
            recoveredBlock180PC := 267.
        ].
        recoveredBlock180Step = 267 ifTrue: [
            recoveredBlock180Stack3 := recoveredBlock180Local2.
            recoveredBlock180PC := 268.
        ].
        recoveredBlock180Step = 268 ifTrue: [
            recoveredBlock180Stack3 := (recoveredBlock180Stack3) + (1).
            recoveredBlock180PC := 269.
        ].
        recoveredBlock180Step = 269 ifTrue: [
            recoveredBlock180Stack4 := recoveredBlock180Stack3.
            recoveredBlock180PC := 270.
        ].
        recoveredBlock180Step = 270 ifTrue: [
            recoveredBlock180Local2 := recoveredBlock180Stack4.
            recoveredBlock180PC := 271.
        ].
        recoveredBlock180Step = 271 ifTrue: [
            recoveredBlock180Stack2 := (recoveredBlock180Stack2) < (recoveredBlock180Stack3).
            recoveredBlock180PC := 272.
        ].
        recoveredBlock180Step = 272 ifTrue: [
            (recoveredBlock180Stack2) ifTrue: [recoveredBlock180PC := 274] ifFalse: [recoveredBlock180PC := 198].
        ].
        recoveredBlock180Step = 274 ifTrue: [
            recoveredBlock180Stack2 := nil.
            recoveredBlock180PC := 275.
        ].
        recoveredBlock180Step = 275 ifTrue: [
            recoveredBlock180Local2 := recoveredBlock180Stack2.
            recoveredBlock180PC := 276.
        ].
        recoveredBlock180Step = 276 ifTrue: [
            recoveredBlock180PC := 277.
        ].
        recoveredBlock180Step = 277 ifTrue: [
            recoveredBlock180Stack1 := recoveredBlock180Local4.
            recoveredBlock180PC := 278.
        ].
        recoveredBlock180Step = 278 ifTrue: [
            (recoveredBlock180Stack1 == nil) ifTrue: [recoveredBlock180PC := 302] ifFalse: [recoveredBlock180PC := 282].
        ].
        recoveredBlock180Step = 282 ifTrue: [
            recoveredBlock180Stack1 := recoveredLocal13.
            recoveredBlock180PC := 285.
        ].
        recoveredBlock180Step = 285 ifTrue: [
            recoveredBlock180Stack2 := recoveredBlock180Local3.
            recoveredBlock180PC := 286.
        ].
        recoveredBlock180Step = 286 ifTrue: [
            (recoveredBlock180Stack1) removeAtIndex: (recoveredBlock180Stack2).
            recoveredBlock180PC := 288.
        ].
        recoveredBlock180Step = 288 ifTrue: [
            recoveredBlock180Stack1 := recoveredBlock180Arg1.
            recoveredBlock180PC := 290.
        ].
        recoveredBlock180Step = 290 ifTrue: [
            recoveredBlock180Stack2 := recoveredBlock180Local4.
            recoveredBlock180PC := 291.
        ].
        recoveredBlock180Step = 291 ifTrue: [
            recoveredBlock180Stack3 := recoveredLocal12.
            recoveredBlock180PC := 294.
        ].
        recoveredBlock180Step = 294 ifTrue: [
            recoveredBlock180Stack3 := (recoveredBlock180Stack3) ileBasicType.
            recoveredBlock180PC := 296.
        ].
        recoveredBlock180Step = 296 ifTrue: [
            recoveredBlock180Stack1 := (recoveredBlock180Stack1) mul: (recoveredBlock180Stack2) type: (recoveredBlock180Stack3).
            recoveredBlock180PC := 298.
        ].
        recoveredBlock180Step = 298 ifTrue: [
            recoveredBlock180PC := 304.
        ].
        recoveredBlock180Step = 302 ifTrue: [
            recoveredBlock180Stack1 := recoveredBlock180Arg1.
            recoveredBlock180PC := 304.
        ].
        recoveredBlock180Step = 304 ifTrue: [
            recoveredBlock180Result := recoveredBlock180Stack1.
            recoveredBlock180Done := true.
        ].
    ].
    recoveredBlock180Result
].
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredPC := 1130.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 346] ifFalse: [recoveredPC := 592].
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleIdentical: (recoveredStack1).
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 364] ifFalse: [recoveredPC := 592].
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock365Value0 recoveredBlock365Value1 |
    recoveredBlock365Value0 := recoveredLocal7.
    recoveredBlock365Value1 := (recoveredBlock365Value0) isIleRepresentable.
    recoveredBlock365Value1
].
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack2 := 'Overflow protected multiplication does overflow'.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 416] ifFalse: [recoveredPC := 423].
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            (recoveredStack0) left: (recoveredStack1).
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack0 := (recoveredStack0) overflowOfInterval: (recoveredStack1).
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack0 := (recoveredStack0) odd.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 440] ifFalse: [recoveredPC := 447].
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock447Stack0 recoveredBlock447Stack1 recoveredBlock447Stack2 recoveredBlock447Stack3 recoveredBlock447Stack4 recoveredBlock447Stack5 recoveredBlock447Stack6 recoveredBlock447Stack7 recoveredBlock447Stack8 recoveredBlock447PC recoveredBlock447Step recoveredBlock447Done recoveredBlock447Result |
    recoveredBlock447Stack0 := self.
    recoveredBlock447PC := 454.
    recoveredBlock447Done := false.
    [recoveredBlock447Done not] whileTrue: [
        recoveredBlock447Step := recoveredBlock447PC.
        recoveredBlock447Step = 454 ifTrue: [
            recoveredBlock447Stack1 := recoveredLocal4.
            recoveredBlock447PC := 457.
        ].
        recoveredBlock447Step = 457 ifTrue: [
            recoveredBlock447Stack2 := 0.
            recoveredBlock447PC := 459.
        ].
        recoveredBlock447Step = 459 ifTrue: [
            recoveredBlock447Stack1 := (recoveredBlock447Stack1) > (recoveredBlock447Stack2).
            recoveredBlock447PC := 460.
        ].
        recoveredBlock447Step = 460 ifTrue: [
            (recoveredBlock447Stack1) ifTrue: [recoveredBlock447PC := 464] ifFalse: [recoveredBlock447PC := 518].
        ].
        recoveredBlock447Step = 464 ifTrue: [
            recoveredBlock447Stack1 := self.
            recoveredBlock447PC := 465.
        ].
        recoveredBlock447Step = 465 ifTrue: [
            recoveredBlock447Stack2 := recoveredLocal7.
            recoveredBlock447PC := 468.
        ].
        recoveredBlock447Step = 468 ifTrue: [
            recoveredBlock447Stack3 := self.
            recoveredBlock447PC := 469.
        ].
        recoveredBlock447Step = 469 ifTrue: [
            recoveredBlock447Stack3 := (recoveredBlock447Stack3) ileBuilder.
            recoveredBlock447PC := 471.
        ].
        recoveredBlock447Step = 471 ifTrue: [
            recoveredBlock447Stack4 := 2.
            recoveredBlock447PC := 473.
        ].
        recoveredBlock447Step = 473 ifTrue: [
            recoveredBlock447Stack5 := recoveredLocal4.
            recoveredBlock447PC := 476.
        ].
        recoveredBlock447Step = 476 ifTrue: [
            recoveredBlock447Stack6 := 2.
            recoveredBlock447PC := 478.
        ].
        recoveredBlock447Step = 478 ifTrue: [
            recoveredBlock447Stack5 := (recoveredBlock447Stack5) / (recoveredBlock447Stack6).
            recoveredBlock447PC := 480.
        ].
        recoveredBlock447Step = 480 ifTrue: [
            recoveredBlock447Stack4 := (recoveredBlock447Stack4) raisedTo: (recoveredBlock447Stack5).
            recoveredBlock447PC := 482.
        ].
        recoveredBlock447Step = 482 ifTrue: [
            recoveredBlock447Stack3 := (recoveredBlock447Stack3) scalarConstant: (recoveredBlock447Stack4).
            recoveredBlock447PC := 484.
        ].
        recoveredBlock447Step = 484 ifTrue: [
            recoveredBlock447Stack1 := (recoveredBlock447Stack1) divForNoOverflow: (recoveredBlock447Stack2) by: (recoveredBlock447Stack3).
            recoveredBlock447PC := 486.
        ].
        recoveredBlock447Step = 486 ifTrue: [
            recoveredBlock447Stack2 := self.
            recoveredBlock447PC := 487.
        ].
        recoveredBlock447Step = 487 ifTrue: [
            recoveredBlock447Stack3 := recoveredLocal6.
            recoveredBlock447PC := 490.
        ].
        recoveredBlock447Step = 490 ifTrue: [
            recoveredBlock447Stack4 := self.
            recoveredBlock447PC := 491.
        ].
        recoveredBlock447Step = 491 ifTrue: [
            recoveredBlock447Stack4 := (recoveredBlock447Stack4) ileBuilder.
            recoveredBlock447PC := 493.
        ].
        recoveredBlock447Step = 493 ifTrue: [
            recoveredBlock447Stack5 := 2.
            recoveredBlock447PC := 495.
        ].
        recoveredBlock447Step = 495 ifTrue: [
            recoveredBlock447Stack6 := recoveredLocal4.
            recoveredBlock447PC := 498.
        ].
        recoveredBlock447Step = 498 ifTrue: [
            recoveredBlock447Stack7 := 2.
            recoveredBlock447PC := 500.
        ].
        recoveredBlock447Step = 500 ifTrue: [
            recoveredBlock447Stack6 := (recoveredBlock447Stack6) / (recoveredBlock447Stack7).
            recoveredBlock447PC := 502.
        ].
        recoveredBlock447Step = 502 ifTrue: [
            recoveredBlock447Stack5 := (recoveredBlock447Stack5) raisedTo: (recoveredBlock447Stack6).
            recoveredBlock447PC := 504.
        ].
        recoveredBlock447Step = 504 ifTrue: [
            recoveredBlock447Stack4 := (recoveredBlock447Stack4) scalarConstant: (recoveredBlock447Stack5).
            recoveredBlock447PC := 506.
        ].
        recoveredBlock447Step = 506 ifTrue: [
            recoveredBlock447Stack2 := (recoveredBlock447Stack2) divForNoOverflow: (recoveredBlock447Stack3) by: (recoveredBlock447Stack4).
            recoveredBlock447PC := 508.
        ].
        recoveredBlock447Step = 508 ifTrue: [
            recoveredBlock447Stack3 := nil.
            recoveredBlock447PC := 509.
        ].
        recoveredBlock447Step = 509 ifTrue: [
            recoveredBlock447Stack1 := (recoveredBlock447Stack1) mul: (recoveredBlock447Stack2) type: (recoveredBlock447Stack3).
            recoveredBlock447PC := 511.
        ].
        recoveredBlock447Step = 511 ifTrue: [
            recoveredLocal2 := recoveredBlock447Stack1.
            recoveredBlock447PC := 514.
        ].
        recoveredBlock447Step = 514 ifTrue: [
            recoveredBlock447PC := 530.
        ].
        recoveredBlock447Step = 518 ifTrue: [
            recoveredBlock447Stack1 := recoveredLocal7.
            recoveredBlock447PC := 521.
        ].
        recoveredBlock447Step = 521 ifTrue: [
            recoveredBlock447Stack2 := recoveredLocal6.
            recoveredBlock447PC := 524.
        ].
        recoveredBlock447Step = 524 ifTrue: [
            recoveredBlock447Stack3 := nil.
            recoveredBlock447PC := 525.
        ].
        recoveredBlock447Step = 525 ifTrue: [
            recoveredBlock447Stack1 := (recoveredBlock447Stack1) mul: (recoveredBlock447Stack2) type: (recoveredBlock447Stack3).
            recoveredBlock447PC := 527.
        ].
        recoveredBlock447Step = 527 ifTrue: [
            recoveredLocal2 := recoveredBlock447Stack1.
            recoveredBlock447PC := 530.
        ].
        recoveredBlock447Step = 530 ifTrue: [
            recoveredBlock447Stack1 := recoveredLocal4.
            recoveredBlock447PC := 533.
        ].
        recoveredBlock447Step = 533 ifTrue: [
            recoveredBlock447Stack2 := 2.
            recoveredBlock447PC := 535.
        ].
        recoveredBlock447Step = 535 ifTrue: [
            recoveredBlock447Stack1 := (recoveredBlock447Stack1) + (recoveredBlock447Stack2).
            recoveredBlock447PC := 536.
        ].
        recoveredBlock447Step = 536 ifTrue: [
            recoveredLocal4 := recoveredBlock447Stack1.
            recoveredBlock447PC := 539.
        ].
        recoveredBlock447Step = 539 ifTrue: [
            recoveredBlock447Stack1 := recoveredArg2.
            recoveredBlock447PC := 542.
        ].
        recoveredBlock447Step = 542 ifTrue: [
            (recoveredBlock447Stack1) ifTrue: [recoveredBlock447PC := 546] ifFalse: [recoveredBlock447PC := 554].
        ].
        recoveredBlock447Step = 546 ifTrue: [
            recoveredBlock447Stack1 := recoveredLocal2.
            recoveredBlock447PC := 549.
        ].
        recoveredBlock447Step = 549 ifTrue: [
            recoveredBlock447Stack1 := (recoveredBlock447Stack1) isIleRepresentableRecursiveDoubleBitSize.
            recoveredBlock447PC := 551.
        ].
        recoveredBlock447Step = 551 ifTrue: [
            recoveredBlock447PC := 559.
        ].
        recoveredBlock447Step = 554 ifTrue: [
            recoveredBlock447Stack1 := recoveredLocal2.
            recoveredBlock447PC := 557.
        ].
        recoveredBlock447Step = 557 ifTrue: [
            recoveredBlock447Stack1 := (recoveredBlock447Stack1) isIleRepresentableRecursive.
            recoveredBlock447PC := 559.
        ].
        recoveredBlock447Step = 559 ifTrue: [
            recoveredBlock447Result := recoveredBlock447Stack1.
            recoveredBlock447Done := true.
        ].
    ].
    recoveredBlock447Result
].
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            (recoveredStack0) whileFalse.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            (recoveredStack0) removeAtIndex: (recoveredStack1).
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-2).
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSingleton.
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 602] ifFalse: [recoveredPC := 615].
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScalarConstant: (recoveredStack1).
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleNoOverflowExpr.
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 624] ifFalse: [recoveredPC := 775].
        ].
        recoveredStep = 624 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleLimitingNoOverflow.
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 632] ifFalse: [recoveredPC := 775].
        ].
        recoveredStep = 632 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            recoveredStack1 := (recoveredStack1) overflownBits.
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalExpr.
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            recoveredStack1 := (recoveredStack1) largestRepresentableInterval.
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleLimitOverflowExprGoalInterval: (recoveredStack1).
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 658.
        ].
        recoveredStep = 658 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 660.
        ].
        recoveredStep = 660 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredStack3 := (recoveredStack3) overflownBits.
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            recoveredStack2 := (recoveredStack2) raisedTo: (recoveredStack3).
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            recoveredStack1 := (recoveredStack1) scalarConstant: (recoveredStack2).
            recoveredPC := 671.
        ].
        recoveredStep = 671 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 672.
        ].
        recoveredStep = 672 ifTrue: [
            recoveredStack0 := (recoveredStack0) div: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock678Value0 recoveredBlock678Value1 |
    recoveredBlock678Value0 := recoveredLocal7.
    recoveredBlock678Value1 := (recoveredBlock678Value0) isIleNoOverflowExpr.
    recoveredBlock678Value1
].
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            recoveredStack2 := [
    'Failed to fold a right shift into the overflow protection'
].
            recoveredPC := 692.
        ].
        recoveredStep = 692 ifTrue: [
            recoveredPC := 701.
        ].
        recoveredStep = 701 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 710.
        ].
        recoveredStep = 710 ifTrue: [
            recoveredStack1 := (recoveredStack1) largestRepresentableInterval.
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOpInterval: (recoveredStack1).
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock721Stack0 recoveredBlock721Stack1 recoveredBlock721Stack2 recoveredBlock721Stack3 recoveredBlock721PC recoveredBlock721Step recoveredBlock721Done recoveredBlock721Result |
    recoveredBlock721Stack0 := self.
    recoveredBlock721PC := 728.
    recoveredBlock721Done := false.
    [recoveredBlock721Done not] whileTrue: [
        recoveredBlock721Step := recoveredBlock721PC.
        recoveredBlock721Step = 728 ifTrue: [
            recoveredBlock721Stack1 := false.
            recoveredBlock721PC := 729.
        ].
        recoveredBlock721Step = 729 ifTrue: [
            recoveredBlock721Stack2 := recoveredLocal7.
            recoveredBlock721PC := 732.
        ].
        recoveredBlock721Step = 732 ifTrue: [
            recoveredBlock721Stack2 := (recoveredBlock721Stack2) isIleNoOverflowExpr.
            recoveredBlock721PC := 734.
        ].
        recoveredBlock721Step = 734 ifTrue: [
            (recoveredBlock721Stack2) ifTrue: [recoveredBlock721PC := 738] ifFalse: [recoveredBlock721PC := 759].
        ].
        recoveredBlock721Step = 738 ifTrue: [
            recoveredBlock721PC := 739.
        ].
        recoveredBlock721Step = 739 ifTrue: [
            recoveredBlock721Stack1 := true.
            recoveredBlock721PC := 740.
        ].
        recoveredBlock721Step = 740 ifTrue: [
            recoveredBlock721Stack2 := recoveredLocal7.
            recoveredBlock721PC := 743.
        ].
        recoveredBlock721Step = 743 ifTrue: [
            recoveredBlock721Stack2 := (recoveredBlock721Stack2) isIleLimitingNoOverflow.
            recoveredBlock721PC := 745.
        ].
        recoveredBlock721Step = 745 ifTrue: [
            (recoveredBlock721Stack2) ifTrue: [recoveredBlock721PC := 748] ifFalse: [recoveredBlock721PC := 759].
        ].
        recoveredBlock721Step = 748 ifTrue: [
            recoveredBlock721PC := 749.
        ].
        recoveredBlock721Step = 749 ifTrue: [
            recoveredBlock721Stack1 := recoveredLocal7.
            recoveredBlock721PC := 752.
        ].
        recoveredBlock721Step = 752 ifTrue: [
            recoveredBlock721Stack1 := (recoveredBlock721Stack1) originalExpr.
            recoveredBlock721PC := 754.
        ].
        recoveredBlock721Step = 754 ifTrue: [
            recoveredBlock721Stack1 := (recoveredBlock721Stack1) isIleRepresentableDoubleBitSize.
            recoveredBlock721PC := 759.
        ].
        recoveredBlock721Step = 759 ifTrue: [
            recoveredBlock721Result := recoveredBlock721Stack1.
            recoveredBlock721Done := true.
        ].
    ].
    recoveredBlock721Result
].
            recoveredPC := 760.
        ].
        recoveredStep = 760 ifTrue: [
            recoveredStack2 := [
    'Limit could not be removed by right shifting'
].
            recoveredPC := 764.
        ].
        recoveredStep = 764 ifTrue: [
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 775.
        ].
        recoveredStep = 775 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 776.
        ].
        recoveredStep = 776 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 779.
        ].
        recoveredStep = 779 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 780.
        ].
        recoveredStep = 780 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 783.
        ].
        recoveredStep = 783 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 784.
        ].
        recoveredStep = 784 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 785.
        ].
        recoveredStep = 785 ifTrue: [
            recoveredStack0 := (recoveredStack0) overflowOfInterval: (recoveredStack1).
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 790.
        ].
        recoveredStep = 790 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock790Local1 recoveredBlock790Local2 recoveredBlock790Stack0 recoveredBlock790Stack1 recoveredBlock790Stack2 recoveredBlock790Stack3 recoveredBlock790Stack4 recoveredBlock790Stack5 recoveredBlock790Stack6 recoveredBlock790Stack7 recoveredBlock790PC recoveredBlock790Step recoveredBlock790Done recoveredBlock790Result |
    recoveredBlock790Stack0 := self.
    recoveredBlock790PC := 796.
    recoveredBlock790Done := false.
    [recoveredBlock790Done not] whileTrue: [
        recoveredBlock790Step := recoveredBlock790PC.
        recoveredBlock790Step = 796 ifTrue: [
            recoveredBlock790Stack1 := recoveredLocal4.
            recoveredBlock790PC := 799.
        ].
        recoveredBlock790Step = 799 ifTrue: [
            recoveredBlock790Stack2 := 0.
            recoveredBlock790PC := 801.
        ].
        recoveredBlock790Step = 801 ifTrue: [
            recoveredBlock790Stack1 := (recoveredBlock790Stack1) > (recoveredBlock790Stack2).
            recoveredBlock790PC := 802.
        ].
        recoveredBlock790Step = 802 ifTrue: [
            (recoveredBlock790Stack1) ifTrue: [recoveredBlock790PC := 806] ifFalse: [recoveredBlock790PC := 1036].
        ].
        recoveredBlock790Step = 806 ifTrue: [
            recoveredBlock790Stack1 := self.
            recoveredBlock790PC := 807.
        ].
        recoveredBlock790Step = 807 ifTrue: [
            recoveredBlock790Stack2 := recoveredLocal4.
            recoveredBlock790PC := 810.
        ].
        recoveredBlock790Step = 810 ifTrue: [
            recoveredBlock790Stack3 := recoveredLocal12.
            recoveredBlock790PC := 813.
        ].
        recoveredBlock790Step = 813 ifTrue: [
            recoveredBlock790Stack3 := (recoveredBlock790Stack3) interval.
            recoveredBlock790PC := 814.
        ].
        recoveredBlock790Step = 814 ifTrue: [
            recoveredBlock790Stack4 := recoveredLocal7.
            recoveredBlock790PC := 817.
        ].
        recoveredBlock790Step = 817 ifTrue: [
            recoveredBlock790Stack4 := (recoveredBlock790Stack4) interval.
            recoveredBlock790PC := 818.
        ].
        recoveredBlock790Step = 818 ifTrue: [
            recoveredBlock790Stack1 := (recoveredBlock790Stack1) distributeOverflowMul: (recoveredBlock790Stack2) left: (recoveredBlock790Stack3) right: (recoveredBlock790Stack4).
            recoveredBlock790PC := 823.
        ].
        recoveredBlock790Step = 823 ifTrue: [
            recoveredLocal3 := recoveredBlock790Stack1.
            recoveredBlock790PC := 826.
        ].
        recoveredBlock790Step = 826 ifTrue: [
            recoveredBlock790Stack1 := recoveredLocal4.
            recoveredBlock790PC := 829.
        ].
        recoveredBlock790Step = 829 ifTrue: [
            recoveredBlock790Stack2 := recoveredLocal3.
            recoveredBlock790PC := 832.
        ].
        recoveredBlock790Step = 832 ifTrue: [
            recoveredBlock790Stack1 := (recoveredBlock790Stack1) - (recoveredBlock790Stack2).
            recoveredBlock790PC := 833.
        ].
        recoveredBlock790Step = 833 ifTrue: [
            recoveredBlock790Local2 := recoveredBlock790Stack1.
            recoveredBlock790PC := 834.
        ].
        recoveredBlock790Step = 834 ifTrue: [
            recoveredBlock790Stack1 := recoveredLocal3.
            recoveredBlock790PC := 837.
        ].
        recoveredBlock790Step = 837 ifTrue: [
            recoveredBlock790Stack2 := recoveredBlock790Local2.
            recoveredBlock790PC := 838.
        ].
        recoveredBlock790Step = 838 ifTrue: [
            recoveredBlock790Stack1 := (recoveredBlock790Stack1) > (recoveredBlock790Stack2).
            recoveredBlock790PC := 839.
        ].
        recoveredBlock790Step = 839 ifTrue: [
            (recoveredBlock790Stack1) ifTrue: [recoveredBlock790PC := 842] ifFalse: [recoveredBlock790PC := 882].
        ].
        recoveredBlock790Step = 842 ifTrue: [
            recoveredBlock790Stack1 := recoveredLocal10.
            recoveredBlock790PC := 845.
        ].
        recoveredBlock790Step = 845 ifTrue: [
            recoveredBlock790Stack2 := recoveredLocal12.
            recoveredBlock790PC := 848.
        ].
        recoveredBlock790Step = 848 ifTrue: [
            recoveredBlock790Stack3 := recoveredLocal3.
            recoveredBlock790PC := 851.
        ].
        recoveredBlock790Step = 851 ifTrue: [
            recoveredBlock790Stack4 := recoveredLocal9.
            recoveredBlock790PC := 854.
        ].
        recoveredBlock790Step = 854 ifTrue: [
            recoveredBlock790Stack1 := (recoveredBlock790Stack1) value: (recoveredBlock790Stack2) value: (recoveredBlock790Stack3) value: (recoveredBlock790Stack4).
            recoveredBlock790PC := 859.
        ].
        recoveredBlock790Step = 859 ifTrue: [
            recoveredBlock790Local1 := recoveredBlock790Stack1.
            recoveredBlock790PC := 860.
        ].
        recoveredBlock790Step = 860 ifTrue: [
            recoveredBlock790Stack1 := recoveredLocal10.
            recoveredBlock790PC := 863.
        ].
        recoveredBlock790Step = 863 ifTrue: [
            recoveredBlock790Stack2 := recoveredLocal7.
            recoveredBlock790PC := 866.
        ].
        recoveredBlock790Step = 866 ifTrue: [
            recoveredBlock790Stack3 := recoveredBlock790Local2.
            recoveredBlock790PC := 867.
        ].
        recoveredBlock790Step = 867 ifTrue: [
            recoveredBlock790Stack4 := recoveredLocal9.
            recoveredBlock790PC := 870.
        ].
        recoveredBlock790Step = 870 ifTrue: [
            recoveredBlock790Stack1 := (recoveredBlock790Stack1) value: (recoveredBlock790Stack2) value: (recoveredBlock790Stack3) value: (recoveredBlock790Stack4).
            recoveredBlock790PC := 875.
        ].
        recoveredBlock790Step = 875 ifTrue: [
            recoveredLocal6 := recoveredBlock790Stack1.
            recoveredBlock790PC := 878.
        ].
        recoveredBlock790Step = 878 ifTrue: [
            recoveredBlock790PC := 918.
        ].
        recoveredBlock790Step = 882 ifTrue: [
            recoveredBlock790Stack1 := recoveredLocal10.
            recoveredBlock790PC := 885.
        ].
        recoveredBlock790Step = 885 ifTrue: [
            recoveredBlock790Stack2 := recoveredLocal7.
            recoveredBlock790PC := 888.
        ].
        recoveredBlock790Step = 888 ifTrue: [
            recoveredBlock790Stack3 := recoveredBlock790Local2.
            recoveredBlock790PC := 889.
        ].
        recoveredBlock790Step = 889 ifTrue: [
            recoveredBlock790Stack4 := recoveredLocal9.
            recoveredBlock790PC := 892.
        ].
        recoveredBlock790Step = 892 ifTrue: [
            recoveredBlock790Stack1 := (recoveredBlock790Stack1) value: (recoveredBlock790Stack2) value: (recoveredBlock790Stack3) value: (recoveredBlock790Stack4).
            recoveredBlock790PC := 897.
        ].
        recoveredBlock790Step = 897 ifTrue: [
            recoveredLocal6 := recoveredBlock790Stack1.
            recoveredBlock790PC := 900.
        ].
        recoveredBlock790Step = 900 ifTrue: [
            recoveredBlock790Stack1 := recoveredLocal10.
            recoveredBlock790PC := 903.
        ].
        recoveredBlock790Step = 903 ifTrue: [
            recoveredBlock790Stack2 := recoveredLocal12.
            recoveredBlock790PC := 906.
        ].
        recoveredBlock790Step = 906 ifTrue: [
            recoveredBlock790Stack3 := recoveredLocal3.
            recoveredBlock790PC := 909.
        ].
        recoveredBlock790Step = 909 ifTrue: [
            recoveredBlock790Stack4 := recoveredLocal9.
            recoveredBlock790PC := 912.
        ].
        recoveredBlock790Step = 912 ifTrue: [
            recoveredBlock790Stack1 := (recoveredBlock790Stack1) value: (recoveredBlock790Stack2) value: (recoveredBlock790Stack3) value: (recoveredBlock790Stack4).
            recoveredBlock790PC := 917.
        ].
        recoveredBlock790Step = 917 ifTrue: [
            recoveredBlock790Local1 := recoveredBlock790Stack1.
            recoveredBlock790PC := 918.
        ].
        recoveredBlock790Step = 918 ifTrue: [
            recoveredBlock790Stack1 := recoveredLocal12.
            recoveredBlock790PC := 921.
        ].
        recoveredBlock790Step = 921 ifTrue: [
            recoveredBlock790Stack2 := recoveredBlock790Local1.
            recoveredBlock790PC := 922.
        ].
        recoveredBlock790Step = 922 ifTrue: [
            recoveredBlock790Stack1 := (recoveredBlock790Stack1) ~= (recoveredBlock790Stack2).
            recoveredBlock790PC := 923.
        ].
        recoveredBlock790Step = 923 ifTrue: [
            (recoveredBlock790Stack1) ifTrue: [recoveredBlock790PC := 936] ifFalse: [recoveredBlock790PC := 926].
        ].
        recoveredBlock790Step = 926 ifTrue: [
            recoveredBlock790Stack1 := recoveredLocal7.
            recoveredBlock790PC := 929.
        ].
        recoveredBlock790Step = 929 ifTrue: [
            recoveredBlock790Stack2 := recoveredLocal6.
            recoveredBlock790PC := 932.
        ].
        recoveredBlock790Step = 932 ifTrue: [
            recoveredBlock790Stack1 := (recoveredBlock790Stack1) ~= (recoveredBlock790Stack2).
            recoveredBlock790PC := 933.
        ].
        recoveredBlock790Step = 933 ifTrue: [
            (recoveredBlock790Stack1) ifTrue: [recoveredBlock790PC := 936] ifFalse: [recoveredBlock790PC := 988].
        ].
        recoveredBlock790Step = 936 ifTrue: [
            recoveredBlock790Stack1 := recoveredBlock790Local1.
            recoveredBlock790PC := 937.
        ].
        recoveredBlock790Step = 937 ifTrue: [
            recoveredLocal12 := recoveredBlock790Stack1.
            recoveredBlock790PC := 940.
        ].
        recoveredBlock790Step = 940 ifTrue: [
            recoveredBlock790Stack1 := recoveredLocal6.
            recoveredBlock790PC := 943.
        ].
        recoveredBlock790Step = 943 ifTrue: [
            recoveredLocal7 := recoveredBlock790Stack1.
            recoveredBlock790PC := 946.
        ].
        recoveredBlock790Step = 946 ifTrue: [
            recoveredBlock790Stack1 := self.
            recoveredBlock790PC := 947.
        ].
        recoveredBlock790Step = 947 ifTrue: [
            recoveredBlock790Stack2 := recoveredLocal12.
            recoveredBlock790PC := 950.
        ].
        recoveredBlock790Step = 950 ifTrue: [
            recoveredBlock790Stack2 := (recoveredBlock790Stack2) interval.
            recoveredBlock790PC := 951.
        ].
        recoveredBlock790Step = 951 ifTrue: [
            recoveredBlock790Stack3 := recoveredLocal7.
            recoveredBlock790PC := 954.
        ].
        recoveredBlock790Step = 954 ifTrue: [
            recoveredBlock790Stack3 := (recoveredBlock790Stack3) interval.
            recoveredBlock790PC := 955.
        ].
        recoveredBlock790Step = 955 ifTrue: [
            recoveredBlock790Stack2 := (recoveredBlock790Stack2) * (recoveredBlock790Stack3).
            recoveredBlock790PC := 956.
        ].
        recoveredBlock790Step = 956 ifTrue: [
            recoveredBlock790Stack1 := (recoveredBlock790Stack1) overflowOfInterval: (recoveredBlock790Stack2).
            recoveredBlock790PC := 958.
        ].
        recoveredBlock790Step = 958 ifTrue: [
            recoveredLocal4 := recoveredBlock790Stack1.
            recoveredBlock790PC := 961.
        ].
        recoveredBlock790Step = 961 ifTrue: [
            recoveredBlock790Stack1 := self.
            recoveredBlock790PC := 962.
        ].
        recoveredBlock790Step = 962 ifTrue: [
            recoveredBlock790Stack2 := recoveredLocal4.
            recoveredBlock790PC := 965.
        ].
        recoveredBlock790Step = 965 ifTrue: [
            recoveredBlock790Stack3 := recoveredLocal12.
            recoveredBlock790PC := 968.
        ].
        recoveredBlock790Step = 968 ifTrue: [
            recoveredBlock790Stack3 := (recoveredBlock790Stack3) interval.
            recoveredBlock790PC := 969.
        ].
        recoveredBlock790Step = 969 ifTrue: [
            recoveredBlock790Stack4 := recoveredLocal7.
            recoveredBlock790PC := 972.
        ].
        recoveredBlock790Step = 972 ifTrue: [
            recoveredBlock790Stack4 := (recoveredBlock790Stack4) interval.
            recoveredBlock790PC := 973.
        ].
        recoveredBlock790Step = 973 ifTrue: [
            recoveredBlock790Stack1 := (recoveredBlock790Stack1) distributeOverflowMul: (recoveredBlock790Stack2) left: (recoveredBlock790Stack3) right: (recoveredBlock790Stack4).
            recoveredBlock790PC := 977.
        ].
        recoveredBlock790Step = 977 ifTrue: [
            recoveredLocal3 := recoveredBlock790Stack1.
            recoveredBlock790PC := 980.
        ].
        recoveredBlock790Step = 980 ifTrue: [
            recoveredBlock790Stack1 := recoveredLocal4.
            recoveredBlock790PC := 983.
        ].
        recoveredBlock790Step = 983 ifTrue: [
            recoveredBlock790Stack2 := recoveredLocal3.
            recoveredBlock790PC := 986.
        ].
        recoveredBlock790Step = 986 ifTrue: [
            recoveredBlock790Stack1 := (recoveredBlock790Stack1) - (recoveredBlock790Stack2).
            recoveredBlock790PC := 987.
        ].
        recoveredBlock790Step = 987 ifTrue: [
            recoveredBlock790Local2 := recoveredBlock790Stack1.
            recoveredBlock790PC := 988.
        ].
        recoveredBlock790Step = 988 ifTrue: [
            recoveredBlock790Stack1 := self.
            recoveredBlock790PC := 989.
        ].
        recoveredBlock790Step = 989 ifTrue: [
            recoveredBlock790Stack2 := recoveredLocal12.
            recoveredBlock790PC := 992.
        ].
        recoveredBlock790Step = 992 ifTrue: [
            recoveredBlock790Stack3 := self.
            recoveredBlock790PC := 993.
        ].
        recoveredBlock790Step = 993 ifTrue: [
            recoveredBlock790Stack3 := (recoveredBlock790Stack3) ileBuilder.
            recoveredBlock790PC := 995.
        ].
        recoveredBlock790Step = 995 ifTrue: [
            recoveredBlock790Stack4 := 2.
            recoveredBlock790PC := 997.
        ].
        recoveredBlock790Step = 997 ifTrue: [
            recoveredBlock790Stack5 := recoveredLocal3.
            recoveredBlock790PC := 1000.
        ].
        recoveredBlock790Step = 1000 ifTrue: [
            recoveredBlock790Stack4 := (recoveredBlock790Stack4) raisedTo: (recoveredBlock790Stack5).
            recoveredBlock790PC := 1002.
        ].
        recoveredBlock790Step = 1002 ifTrue: [
            recoveredBlock790Stack3 := (recoveredBlock790Stack3) scalarConstant: (recoveredBlock790Stack4).
            recoveredBlock790PC := 1004.
        ].
        recoveredBlock790Step = 1004 ifTrue: [
            recoveredBlock790Stack1 := (recoveredBlock790Stack1) divForNoOverflow: (recoveredBlock790Stack2) by: (recoveredBlock790Stack3).
            recoveredBlock790PC := 1006.
        ].
        recoveredBlock790Step = 1006 ifTrue: [
            recoveredBlock790Stack2 := self.
            recoveredBlock790PC := 1007.
        ].
        recoveredBlock790Step = 1007 ifTrue: [
            recoveredBlock790Stack3 := recoveredLocal7.
            recoveredBlock790PC := 1010.
        ].
        recoveredBlock790Step = 1010 ifTrue: [
            recoveredBlock790Stack4 := self.
            recoveredBlock790PC := 1011.
        ].
        recoveredBlock790Step = 1011 ifTrue: [
            recoveredBlock790Stack4 := (recoveredBlock790Stack4) ileBuilder.
            recoveredBlock790PC := 1013.
        ].
        recoveredBlock790Step = 1013 ifTrue: [
            recoveredBlock790Stack5 := 2.
            recoveredBlock790PC := 1015.
        ].
        recoveredBlock790Step = 1015 ifTrue: [
            recoveredBlock790Stack6 := recoveredBlock790Local2.
            recoveredBlock790PC := 1016.
        ].
        recoveredBlock790Step = 1016 ifTrue: [
            recoveredBlock790Stack5 := (recoveredBlock790Stack5) raisedTo: (recoveredBlock790Stack6).
            recoveredBlock790PC := 1018.
        ].
        recoveredBlock790Step = 1018 ifTrue: [
            recoveredBlock790Stack4 := (recoveredBlock790Stack4) scalarConstant: (recoveredBlock790Stack5).
            recoveredBlock790PC := 1020.
        ].
        recoveredBlock790Step = 1020 ifTrue: [
            recoveredBlock790Stack2 := (recoveredBlock790Stack2) divForNoOverflow: (recoveredBlock790Stack3) by: (recoveredBlock790Stack4).
            recoveredBlock790PC := 1022.
        ].
        recoveredBlock790Step = 1022 ifTrue: [
            recoveredBlock790Stack3 := nil.
            recoveredBlock790PC := 1023.
        ].
        recoveredBlock790Step = 1023 ifTrue: [
            recoveredBlock790Stack1 := (recoveredBlock790Stack1) mul: (recoveredBlock790Stack2) type: (recoveredBlock790Stack3).
            recoveredBlock790PC := 1025.
        ].
        recoveredBlock790Step = 1025 ifTrue: [
            recoveredLocal8 := recoveredBlock790Stack1.
            recoveredBlock790PC := 1028.
        ].
        recoveredBlock790Step = 1028 ifTrue: [
            recoveredBlock790Stack1 := nil.
            recoveredBlock790PC := 1029.
        ].
        recoveredBlock790Step = 1029 ifTrue: [
            recoveredBlock790Stack2 := recoveredBlock790Stack1.
            recoveredBlock790PC := 1030.
        ].
        recoveredBlock790Step = 1030 ifTrue: [
            recoveredBlock790Local2 := recoveredBlock790Stack2.
            recoveredBlock790PC := 1031.
        ].
        recoveredBlock790Step = 1031 ifTrue: [
            recoveredBlock790Local1 := recoveredBlock790Stack1.
            recoveredBlock790PC := 1032.
        ].
        recoveredBlock790Step = 1032 ifTrue: [
            recoveredBlock790PC := 1048.
        ].
        recoveredBlock790Step = 1036 ifTrue: [
            recoveredBlock790Stack1 := recoveredLocal12.
            recoveredBlock790PC := 1039.
        ].
        recoveredBlock790Step = 1039 ifTrue: [
            recoveredBlock790Stack2 := recoveredLocal7.
            recoveredBlock790PC := 1042.
        ].
        recoveredBlock790Step = 1042 ifTrue: [
            recoveredBlock790Stack3 := nil.
            recoveredBlock790PC := 1043.
        ].
        recoveredBlock790Step = 1043 ifTrue: [
            recoveredBlock790Stack1 := (recoveredBlock790Stack1) mul: (recoveredBlock790Stack2) type: (recoveredBlock790Stack3).
            recoveredBlock790PC := 1045.
        ].
        recoveredBlock790Step = 1045 ifTrue: [
            recoveredLocal8 := recoveredBlock790Stack1.
            recoveredBlock790PC := 1048.
        ].
        recoveredBlock790Step = 1048 ifTrue: [
            recoveredBlock790Stack1 := recoveredLocal4.
            recoveredBlock790PC := 1051.
        ].
        recoveredBlock790Step = 1051 ifTrue: [
            recoveredBlock790Stack1 := (recoveredBlock790Stack1) + (1).
            recoveredBlock790PC := 1052.
        ].
        recoveredBlock790Step = 1052 ifTrue: [
            recoveredLocal4 := recoveredBlock790Stack1.
            recoveredBlock790PC := 1055.
        ].
        recoveredBlock790Step = 1055 ifTrue: [
            recoveredBlock790Stack1 := recoveredArg2.
            recoveredBlock790PC := 1058.
        ].
        recoveredBlock790Step = 1058 ifTrue: [
            (recoveredBlock790Stack1) ifTrue: [recoveredBlock790PC := 1062] ifFalse: [recoveredBlock790PC := 1070].
        ].
        recoveredBlock790Step = 1062 ifTrue: [
            recoveredBlock790Stack1 := recoveredLocal8.
            recoveredBlock790PC := 1065.
        ].
        recoveredBlock790Step = 1065 ifTrue: [
            recoveredBlock790Stack1 := (recoveredBlock790Stack1) isIleRepresentableRecursiveDoubleBitSize.
            recoveredBlock790PC := 1067.
        ].
        recoveredBlock790Step = 1067 ifTrue: [
            recoveredBlock790PC := 1075.
        ].
        recoveredBlock790Step = 1070 ifTrue: [
            recoveredBlock790Stack1 := recoveredLocal8.
            recoveredBlock790PC := 1073.
        ].
        recoveredBlock790Step = 1073 ifTrue: [
            recoveredBlock790Stack1 := (recoveredBlock790Stack1) isIleRepresentableRecursive.
            recoveredBlock790PC := 1075.
        ].
        recoveredBlock790Step = 1075 ifTrue: [
            recoveredBlock790Result := recoveredBlock790Stack1.
            recoveredBlock790Done := true.
        ].
    ].
    recoveredBlock790Result
].
            recoveredPC := 1076.
        ].
        recoveredStep = 1076 ifTrue: [
            (recoveredStack0) whileFalse.
            recoveredPC := 1078.
        ].
        recoveredStep = 1078 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 1081.
        ].
        recoveredStep = 1081 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1084.
        ].
        recoveredStep = 1084 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 1085.
        ].
        recoveredStep = 1085 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 1086.
        ].
        recoveredStep = 1086 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 1089.
        ].
        recoveredStep = 1089 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 1092.
        ].
        recoveredStep = 1092 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 1095.
        ].
        recoveredStep = 1095 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 1098.
        ].
        recoveredStep = 1098 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 1099.
        ].
        recoveredStep = 1099 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 1102.
        ].
        recoveredStep = 1102 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 1103.
        ].
        recoveredStep = 1103 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1104.
        ].
        recoveredStep = 1104 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 1107.
        ].
        recoveredStep = 1107 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1108.
        ].
        recoveredStep = 1108 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 1111.
        ].
        recoveredStep = 1111 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1112.
        ].
        recoveredStep = 1112 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 1115.
        ].
        recoveredStep = 1115 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1116.
        ].
        recoveredStep = 1116 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 1119.
        ].
        recoveredStep = 1119 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1120.
        ].
        recoveredStep = 1120 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 1123.
        ].
        recoveredStep = 1123 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1124.
        ].
        recoveredStep = 1124 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 1127.
        ].
        recoveredStep = 1127 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 1130.
        ].
        recoveredStep = 1130 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 1133.
        ].
        recoveredStep = 1133 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 1136.
        ].
        recoveredStep = 1136 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 1138.
        ].
        recoveredStep = 1138 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 1139.
        ].
        recoveredStep = 1139 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 322] ifFalse: [recoveredPC := 1142].
        ].
        recoveredStep = 1142 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 1146.
        ].
        recoveredStep = 1146 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 1149.
        ].
        recoveredStep = 1149 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 1152.
        ].
        recoveredStep = 1152 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 1157.
        ].
        recoveredStep = 1157 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

