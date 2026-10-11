"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201a7924; bytecode file offset 0xaa4270"
!SGIlOptimizeCodeSizeTransformation methodsFor: 'recovered'!
minExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := super minExpr: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue2 := (self) optimizeBinaryArithExpr: (recoveredValue0) else: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201a7988; bytecode file offset 0xaa4270"
!SGIlOptimizeCodeSizeTransformation methodsFor: 'recovered'!
maxExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := super maxExpr: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue2 := (self) optimizeBinaryArithExpr: (recoveredValue0) else: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20241588; bytecode file offset 0xb3de50"
!SGIlOptimizeCodeSizeTransformation methodsFor: 'recovered'!
copyLimitAttributesFrom: recoveredArg1 and: recoveredArg2 to: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleArithmeticExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleAnnotatedLimitOverflowFlag.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasIleAnnotatedLimitOverflowFlag.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) goalInterval.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) goalInterval.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileCopyLimitAttributesArithOpExpr: (recoveredStack2) originalExpr: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205f6950; bytecode file offset 0xef3264"
!SGIlOptimizeCodeSizeTransformation methodsFor: 'recovered'!
optimizeBinaryArithExpr: recoveredArg1 else: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 414].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleBinaryOp.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 414].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleBinaryOp.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 414].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMuxExpr.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 414] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNoOverflowExpr.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 414] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNoOverflowExpr.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 414] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleSameOperator: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 414].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleAlternativelyTheSameValueAs: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 220].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMulExpr.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDivisionExpr.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRemExpr.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftExpr.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack4 := (recoveredStack4) leftExpr.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := (recoveredStack2) createOpLeftExpr: (recoveredStack3) rightExpr: (recoveredStack4).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := (recoveredStack2) rebuildWithUnionGoalIntervals: (recoveredStack3).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := (recoveredStack1) optimizationFactory.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock188Value0 recoveredBlock188Value1 recoveredBlock188Value2 recoveredBlock188Value3 recoveredBlock188Value4 recoveredBlock188Value5 recoveredBlock188Value6 |
    recoveredBlock188Value0 := recoveredLocal5.
    recoveredBlock188Value1 := recoveredLocal4.
    recoveredBlock188Value2 := recoveredLocal5.
    recoveredBlock188Value3 := recoveredLocal3.
    recoveredBlock188Value4 := recoveredLocal2.
    recoveredBlock188Value5 := (recoveredBlock188Value2) createOpLeftExpr: (recoveredBlock188Value3) rightExpr: (recoveredBlock188Value4).
    recoveredBlock188Value6 := (self) copyLimitAttributesFrom: (recoveredBlock188Value0) and: (recoveredBlock188Value1) to: (recoveredBlock188Value5).
    recoveredBlock188Value6
].
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) disableAllOptimizationsDo: (recoveredStack2).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleAlternativelyTheSameValueAs: (recoveredStack2).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 234] ifFalse: [recoveredPC := 368].
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMulExpr.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 258] ifFalse: [recoveredPC := 242].
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDivisionExpr.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 258] ifFalse: [recoveredPC := 250].
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRemExpr.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 258] ifFalse: [recoveredPC := 292].
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 272] ifFalse: [recoveredPC := 286].
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 292] ifFalse: [recoveredPC := 286].
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack4 := (recoveredStack4) rightExpr.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack5 := (recoveredStack5) isIleSubExpr.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := (recoveredStack2) createOpLeftExpr: (recoveredStack3) rightExpr: (recoveredStack4) inverse: (recoveredStack5).
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftExpr.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack2 := (recoveredStack2) rebuildWithUnionGoalIntervals: (recoveredStack3).
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack1 := (recoveredStack1) optimizationFactory.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock336Value0 recoveredBlock336Value1 recoveredBlock336Value2 recoveredBlock336Value3 recoveredBlock336Value4 recoveredBlock336Value5 recoveredBlock336Value6 |
    recoveredBlock336Value0 := recoveredLocal5.
    recoveredBlock336Value1 := recoveredLocal4.
    recoveredBlock336Value2 := recoveredLocal5.
    recoveredBlock336Value3 := recoveredLocal2.
    recoveredBlock336Value4 := recoveredLocal3.
    recoveredBlock336Value5 := (recoveredBlock336Value2) createOpLeftExpr: (recoveredBlock336Value3) rightExpr: (recoveredBlock336Value4).
    recoveredBlock336Value6 := (self) copyLimitAttributesFrom: (recoveredBlock336Value0) and: (recoveredBlock336Value1) to: (recoveredBlock336Value5).
    recoveredBlock336Value6
].
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack1 := (recoveredStack1) disableAllOptimizationsDo: (recoveredStack2).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 402] ifFalse: [recoveredPC := 374].
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleArithmeticExpr.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 382] ifFalse: [recoveredPC := 398].
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 398] ifFalse: [recoveredPC := 402].
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2061e838; bytecode file offset 0xf1b14c"
!SGIlOptimizeCodeSizeTransformation methodsFor: 'recovered'!
muxExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleBinaryOp.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 522].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleBinaryOp.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 522].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMuxExpr.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 522] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleSameOperator: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 522].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleAlternativelyTheSameValueAs: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 256].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleBinaryRelOp.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) expressionContext.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock81Stack0 recoveredBlock81Stack1 recoveredBlock81Stack2 recoveredBlock81Stack3 recoveredBlock81Stack4 recoveredBlock81PC recoveredBlock81Step recoveredBlock81Done recoveredBlock81Result |
    recoveredBlock81Stack0 := self.
    recoveredBlock81PC := 88.
    recoveredBlock81Done := false.
    [recoveredBlock81Done not] whileTrue: [
        recoveredBlock81Step := recoveredBlock81PC.
        recoveredBlock81Step = 88 ifTrue: [
            recoveredBlock81Stack1 := recoveredArg1.
            recoveredBlock81PC := 91.
        ].
        recoveredBlock81Step = 91 ifTrue: [
            recoveredBlock81Stack2 := recoveredLocal5.
            recoveredBlock81PC := 94.
        ].
        recoveredBlock81Step = 94 ifTrue: [
            recoveredBlock81Stack2 := (recoveredBlock81Stack2) leftExpr.
            recoveredBlock81PC := 95.
        ].
        recoveredBlock81Step = 95 ifTrue: [
            recoveredBlock81Stack3 := recoveredLocal4.
            recoveredBlock81PC := 98.
        ].
        recoveredBlock81Step = 98 ifTrue: [
            recoveredBlock81Stack3 := (recoveredBlock81Stack3) leftExpr.
            recoveredBlock81PC := 99.
        ].
        recoveredBlock81Step = 99 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) createOpLeftExpr: (recoveredBlock81Stack2) rightExpr: (recoveredBlock81Stack3).
            recoveredBlock81PC := 101.
        ].
        recoveredBlock81Step = 101 ifTrue: [
            recoveredBlock81Stack0 := (recoveredBlock81Stack0) visitNode: (recoveredBlock81Stack1).
            recoveredBlock81PC := 103.
        ].
        recoveredBlock81Step = 103 ifTrue: [
            recoveredLocal3 := recoveredBlock81Stack0.
            recoveredBlock81PC := 106.
        ].
        recoveredBlock81Step = 106 ifTrue: [
            recoveredBlock81Stack0 := nil.
            recoveredBlock81PC := 107.
        ].
        recoveredBlock81Step = 107 ifTrue: [
            recoveredBlock81Stack1 := recoveredLocal3.
            recoveredBlock81PC := 110.
        ].
        recoveredBlock81Step = 110 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) isIleRepresentableDoubleBitSize.
            recoveredBlock81PC := 112.
        ].
        recoveredBlock81Step = 112 ifTrue: [
            (recoveredBlock81Stack1) ifTrue: [recoveredBlock81PC := 116] ifFalse: [recoveredBlock81PC := 169].
        ].
        recoveredBlock81Step = 116 ifTrue: [
            recoveredBlock81PC := 117.
        ].
        recoveredBlock81Step = 117 ifTrue: [
            recoveredBlock81Stack0 := self.
            recoveredBlock81PC := 118.
        ].
        recoveredBlock81Step = 118 ifTrue: [
            recoveredBlock81Stack1 := recoveredLocal5.
            recoveredBlock81PC := 121.
        ].
        recoveredBlock81Step = 121 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) rightExpr.
            recoveredBlock81PC := 122.
        ].
        recoveredBlock81Step = 122 ifTrue: [
            recoveredBlock81Stack2 := recoveredLocal4.
            recoveredBlock81PC := 125.
        ].
        recoveredBlock81Step = 125 ifTrue: [
            recoveredBlock81Stack2 := (recoveredBlock81Stack2) rightExpr.
            recoveredBlock81PC := 126.
        ].
        recoveredBlock81Step = 126 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) rebuildWithUnionGoalIntervals: (recoveredBlock81Stack2).
            recoveredBlock81PC := 128.
        ].
        recoveredBlock81Step = 128 ifTrue: [
            recoveredBlock81Stack0 := (recoveredBlock81Stack0) visitNode: (recoveredBlock81Stack1).
            recoveredBlock81PC := 130.
        ].
        recoveredBlock81Step = 130 ifTrue: [
            recoveredLocal2 := recoveredBlock81Stack0.
            recoveredBlock81PC := 133.
        ].
        recoveredBlock81Step = 133 ifTrue: [
            recoveredBlock81Stack0 := self.
            recoveredBlock81PC := 134.
        ].
        recoveredBlock81Step = 134 ifTrue: [
            recoveredBlock81Stack0 := (recoveredBlock81Stack0) optimizationFactory.
            recoveredBlock81PC := 136.
        ].
        recoveredBlock81Step = 136 ifTrue: [
            recoveredBlock81Stack1 := [
    | recoveredBlock81Block136Value0 recoveredBlock81Block136Value1 recoveredBlock81Block136Value2 recoveredBlock81Block136Value3 recoveredBlock81Block136Value4 recoveredBlock81Block136Value5 recoveredBlock81Block136Value6 |
    recoveredBlock81Block136Value0 := recoveredLocal5.
    recoveredBlock81Block136Value1 := recoveredLocal4.
    recoveredBlock81Block136Value2 := recoveredLocal5.
    recoveredBlock81Block136Value3 := recoveredLocal3.
    recoveredBlock81Block136Value4 := recoveredLocal2.
    recoveredBlock81Block136Value5 := (recoveredBlock81Block136Value2) createOpLeftExpr: (recoveredBlock81Block136Value3) rightExpr: (recoveredBlock81Block136Value4).
    recoveredBlock81Block136Value6 := (self) copyLimitAttributesFrom: (recoveredBlock81Block136Value0) and: (recoveredBlock81Block136Value1) to: (recoveredBlock81Block136Value5).
    recoveredBlock81Block136Value6
].
            recoveredBlock81PC := 163.
        ].
        recoveredBlock81Step = 163 ifTrue: [
            recoveredBlock81Stack0 := (recoveredBlock81Stack0) disableAllOptimizationsDo: (recoveredBlock81Stack1).
            recoveredBlock81PC := 165.
        ].
        recoveredBlock81Step = 165 ifTrue: [
            recoveredBlock81Stack1 := recoveredBlock81Stack0.
            recoveredBlock81PC := 166.
        ].
        recoveredBlock81Step = 166 ifTrue: [
            recoveredLocal1 := recoveredBlock81Stack1.
            recoveredBlock81PC := 169.
        ].
        recoveredBlock81Step = 169 ifTrue: [
            recoveredBlock81Result := recoveredBlock81Stack0.
            recoveredBlock81Done := true.
        ].
    ].
    recoveredBlock81Result
].
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack1) executeInContext: (recoveredStack2).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredPC := 256.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftExpr.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack4 := (recoveredStack4) leftExpr.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := (recoveredStack2) createOpLeftExpr: (recoveredStack3) rightExpr: (recoveredStack4).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentableDoubleBitSize.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 204] ifFalse: [recoveredPC := 256].
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := (recoveredStack2) rebuildWithUnionGoalIntervals: (recoveredStack3).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := (recoveredStack1) optimizationFactory.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock223Value0 recoveredBlock223Value1 recoveredBlock223Value2 recoveredBlock223Value3 recoveredBlock223Value4 recoveredBlock223Value5 recoveredBlock223Value6 |
    recoveredBlock223Value0 := recoveredLocal5.
    recoveredBlock223Value1 := recoveredLocal4.
    recoveredBlock223Value2 := recoveredLocal5.
    recoveredBlock223Value3 := recoveredLocal3.
    recoveredBlock223Value4 := recoveredLocal2.
    recoveredBlock223Value5 := (recoveredBlock223Value2) createOpLeftExpr: (recoveredBlock223Value3) rightExpr: (recoveredBlock223Value4).
    recoveredBlock223Value6 := (self) copyLimitAttributesFrom: (recoveredBlock223Value0) and: (recoveredBlock223Value1) to: (recoveredBlock223Value5).
    recoveredBlock223Value6
].
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := (recoveredStack1) disableAllOptimizationsDo: (recoveredStack2).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleAlternativelyTheSameValueAs: (recoveredStack2).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 270] ifFalse: [recoveredPC := 476].
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleBinaryLogicOp.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 278] ifFalse: [recoveredPC := 288].
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := (recoveredStack1) condExpr.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 288] ifFalse: [recoveredPC := 476].
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleBinaryRelOp.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 296] ifFalse: [recoveredPC := 396].
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := (recoveredStack1) expressionContext.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock301Stack0 recoveredBlock301Stack1 recoveredBlock301Stack2 recoveredBlock301Stack3 recoveredBlock301Stack4 recoveredBlock301PC recoveredBlock301Step recoveredBlock301Done recoveredBlock301Result |
    recoveredBlock301Stack0 := self.
    recoveredBlock301PC := 308.
    recoveredBlock301Done := false.
    [recoveredBlock301Done not] whileTrue: [
        recoveredBlock301Step := recoveredBlock301PC.
        recoveredBlock301Step = 308 ifTrue: [
            recoveredBlock301Stack1 := recoveredArg1.
            recoveredBlock301PC := 311.
        ].
        recoveredBlock301Step = 311 ifTrue: [
            recoveredBlock301Stack2 := recoveredLocal5.
            recoveredBlock301PC := 314.
        ].
        recoveredBlock301Step = 314 ifTrue: [
            recoveredBlock301Stack2 := (recoveredBlock301Stack2) rightExpr.
            recoveredBlock301PC := 315.
        ].
        recoveredBlock301Step = 315 ifTrue: [
            recoveredBlock301Stack3 := recoveredLocal4.
            recoveredBlock301PC := 318.
        ].
        recoveredBlock301Step = 318 ifTrue: [
            recoveredBlock301Stack3 := (recoveredBlock301Stack3) rightExpr.
            recoveredBlock301PC := 319.
        ].
        recoveredBlock301Step = 319 ifTrue: [
            recoveredBlock301Stack1 := (recoveredBlock301Stack1) createOpLeftExpr: (recoveredBlock301Stack2) rightExpr: (recoveredBlock301Stack3).
            recoveredBlock301PC := 321.
        ].
        recoveredBlock301Step = 321 ifTrue: [
            recoveredBlock301Stack0 := (recoveredBlock301Stack0) visitNode: (recoveredBlock301Stack1).
            recoveredBlock301PC := 323.
        ].
        recoveredBlock301Step = 323 ifTrue: [
            recoveredLocal3 := recoveredBlock301Stack0.
            recoveredBlock301PC := 326.
        ].
        recoveredBlock301Step = 326 ifTrue: [
            recoveredBlock301Stack0 := nil.
            recoveredBlock301PC := 327.
        ].
        recoveredBlock301Step = 327 ifTrue: [
            recoveredBlock301Stack1 := recoveredLocal3.
            recoveredBlock301PC := 330.
        ].
        recoveredBlock301Step = 330 ifTrue: [
            recoveredBlock301Stack1 := (recoveredBlock301Stack1) isIleRepresentableDoubleBitSize.
            recoveredBlock301PC := 332.
        ].
        recoveredBlock301Step = 332 ifTrue: [
            (recoveredBlock301Stack1) ifTrue: [recoveredBlock301PC := 336] ifFalse: [recoveredBlock301PC := 389].
        ].
        recoveredBlock301Step = 336 ifTrue: [
            recoveredBlock301PC := 337.
        ].
        recoveredBlock301Step = 337 ifTrue: [
            recoveredBlock301Stack0 := self.
            recoveredBlock301PC := 338.
        ].
        recoveredBlock301Step = 338 ifTrue: [
            recoveredBlock301Stack1 := recoveredLocal5.
            recoveredBlock301PC := 341.
        ].
        recoveredBlock301Step = 341 ifTrue: [
            recoveredBlock301Stack1 := (recoveredBlock301Stack1) leftExpr.
            recoveredBlock301PC := 342.
        ].
        recoveredBlock301Step = 342 ifTrue: [
            recoveredBlock301Stack2 := recoveredLocal4.
            recoveredBlock301PC := 345.
        ].
        recoveredBlock301Step = 345 ifTrue: [
            recoveredBlock301Stack2 := (recoveredBlock301Stack2) leftExpr.
            recoveredBlock301PC := 346.
        ].
        recoveredBlock301Step = 346 ifTrue: [
            recoveredBlock301Stack1 := (recoveredBlock301Stack1) rebuildWithUnionGoalIntervals: (recoveredBlock301Stack2).
            recoveredBlock301PC := 348.
        ].
        recoveredBlock301Step = 348 ifTrue: [
            recoveredBlock301Stack0 := (recoveredBlock301Stack0) visitNode: (recoveredBlock301Stack1).
            recoveredBlock301PC := 350.
        ].
        recoveredBlock301Step = 350 ifTrue: [
            recoveredLocal2 := recoveredBlock301Stack0.
            recoveredBlock301PC := 353.
        ].
        recoveredBlock301Step = 353 ifTrue: [
            recoveredBlock301Stack0 := self.
            recoveredBlock301PC := 354.
        ].
        recoveredBlock301Step = 354 ifTrue: [
            recoveredBlock301Stack0 := (recoveredBlock301Stack0) optimizationFactory.
            recoveredBlock301PC := 356.
        ].
        recoveredBlock301Step = 356 ifTrue: [
            recoveredBlock301Stack1 := [
    | recoveredBlock301Block356Value0 recoveredBlock301Block356Value1 recoveredBlock301Block356Value2 recoveredBlock301Block356Value3 recoveredBlock301Block356Value4 recoveredBlock301Block356Value5 recoveredBlock301Block356Value6 |
    recoveredBlock301Block356Value0 := recoveredLocal5.
    recoveredBlock301Block356Value1 := recoveredLocal4.
    recoveredBlock301Block356Value2 := recoveredLocal5.
    recoveredBlock301Block356Value3 := recoveredLocal2.
    recoveredBlock301Block356Value4 := recoveredLocal3.
    recoveredBlock301Block356Value5 := (recoveredBlock301Block356Value2) createOpLeftExpr: (recoveredBlock301Block356Value3) rightExpr: (recoveredBlock301Block356Value4).
    recoveredBlock301Block356Value6 := (self) copyLimitAttributesFrom: (recoveredBlock301Block356Value0) and: (recoveredBlock301Block356Value1) to: (recoveredBlock301Block356Value5).
    recoveredBlock301Block356Value6
].
            recoveredBlock301PC := 383.
        ].
        recoveredBlock301Step = 383 ifTrue: [
            recoveredBlock301Stack0 := (recoveredBlock301Stack0) disableAllOptimizationsDo: (recoveredBlock301Stack1).
            recoveredBlock301PC := 385.
        ].
        recoveredBlock301Step = 385 ifTrue: [
            recoveredBlock301Stack1 := recoveredBlock301Stack0.
            recoveredBlock301PC := 386.
        ].
        recoveredBlock301Step = 386 ifTrue: [
            recoveredLocal1 := recoveredBlock301Stack1.
            recoveredBlock301PC := 389.
        ].
        recoveredBlock301Step = 389 ifTrue: [
            recoveredBlock301Result := recoveredBlock301Stack0.
            recoveredBlock301Done := true.
        ].
    ].
    recoveredBlock301Result
].
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            (recoveredStack1) executeInContext: (recoveredStack2).
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredPC := 476.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack4 := (recoveredStack4) rightExpr.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack2 := (recoveredStack2) createOpLeftExpr: (recoveredStack3) rightExpr: (recoveredStack4).
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentableDoubleBitSize.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 424] ifFalse: [recoveredPC := 476].
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftExpr.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack2 := (recoveredStack2) rebuildWithUnionGoalIntervals: (recoveredStack3).
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack1 := (recoveredStack1) optimizationFactory.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock443Value0 recoveredBlock443Value1 recoveredBlock443Value2 recoveredBlock443Value3 recoveredBlock443Value4 recoveredBlock443Value5 recoveredBlock443Value6 |
    recoveredBlock443Value0 := recoveredLocal5.
    recoveredBlock443Value1 := recoveredLocal4.
    recoveredBlock443Value2 := recoveredLocal5.
    recoveredBlock443Value3 := recoveredLocal2.
    recoveredBlock443Value4 := recoveredLocal3.
    recoveredBlock443Value5 := (recoveredBlock443Value2) createOpLeftExpr: (recoveredBlock443Value3) rightExpr: (recoveredBlock443Value4).
    recoveredBlock443Value6 := (self) copyLimitAttributesFrom: (recoveredBlock443Value0) and: (recoveredBlock443Value1) to: (recoveredBlock443Value5).
    recoveredBlock443Value6
].
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack1 := (recoveredStack1) disableAllOptimizationsDo: (recoveredStack2).
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 510] ifFalse: [recoveredPC := 482].
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleArithmeticExpr.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 490] ifFalse: [recoveredPC := 506].
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 506] ifFalse: [recoveredPC := 510].
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack0 := super muxExpr: (recoveredStack1).
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

