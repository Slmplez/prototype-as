"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201f8164; bytecode file offset 0xaf4a2c"
!SGIlOptimizeLimitedDiscreteArithmetic methodsFor: 'recovered'!
commaExpr: recoveredArg1 with: recoveredArg2 source: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 |
    recoveredBlock8Value0 := (self) ileBuilder.
    recoveredBlock8Value1 := Array.
    recoveredBlock8Value2 := recoveredArg1.
    recoveredBlock8Value3 := recoveredArg2.
    recoveredBlock8Value4 := (recoveredBlock8Value1) with: (recoveredBlock8Value2) with: (recoveredBlock8Value3).
    recoveredBlock8Value5 := (recoveredBlock8Value0) commaExpr: (recoveredBlock8Value4).
    recoveredBlock8Value5
].
    recoveredValue3 := (recoveredValue0) useSource: (recoveredValue1) for: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2024f940; bytecode file offset 0xb4c214"
!SGIlOptimizeLimitedDiscreteArithmetic methodsFor: 'recovered'!
negExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNegExpr.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMuxExpr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) neg.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) neg.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := super negExpr: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202cc230; bytecode file offset 0xbc8b00"
!SGIlOptimizeLimitedDiscreteArithmetic methodsFor: 'recovered'!
binaraRelOpWithNegExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) neg.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) neg.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileRuntimeCosts.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileRuntimeCosts.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileRuntimeCosts.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileRuntimeCosts.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleInequationOp.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) createInverseOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202ef03c; bytecode file offset 0xbeb914"
!SGIlOptimizeLimitedDiscreteArithmetic methodsFor: 'recovered'!
constSubExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMuxExpr.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleConstantChildrenOnly.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleConstantChildrenOnly.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftExpr.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileBasicType.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) sub: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftExpr.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := (recoveredStack4) rightExpr.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := (recoveredStack5) ileBasicType.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) sub: (recoveredStack4) type: (recoveredStack5).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := super constSubExpr: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ffe1c; bytecode file offset 0xbfc7b8"
!SGIlOptimizeLimitedDiscreteArithmetic methodsFor: 'recovered'!
mulConstExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMuxExpr.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleConstantChildrenOnly.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleConstantChildrenOnly.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileBasicType.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) mul: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := (recoveredStack4) rightExpr.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIleCopy.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack5 := (recoveredStack5) ileBasicType.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := (recoveredStack3) mul: (recoveredStack4) type: (recoveredStack5).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := super mulConstExpr: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ffe7c; bytecode file offset 0xbfc7b8"
!SGIlOptimizeLimitedDiscreteArithmetic methodsFor: 'recovered'!
subConstExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMuxExpr.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleConstantChildrenOnly.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleConstantChildrenOnly.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileBasicType.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) sub: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := (recoveredStack4) rightExpr.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIleCopy.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack5 := (recoveredStack5) ileBasicType.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := (recoveredStack3) sub: (recoveredStack4) type: (recoveredStack5).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := super subConstExpr: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ffedc; bytecode file offset 0xbfc7b8"
!SGIlOptimizeLimitedDiscreteArithmetic methodsFor: 'recovered'!
addConstExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMuxExpr.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleConstantChildrenOnly.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleConstantChildrenOnly.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileBasicType.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) add: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := (recoveredStack4) rightExpr.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIleCopy.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack5 := (recoveredStack5) ileBasicType.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := (recoveredStack3) add: (recoveredStack4) type: (recoveredStack5).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := super addConstExpr: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b902c; bytecode file offset 0xcb5904"
!SGIlOptimizeLimitedDiscreteArithmetic methodsFor: 'recovered'!
upperLimitedExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMaxExpr.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) upperBound.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) upperBound.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileBasicType.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) limitExprLowerBound: (recoveredStack2) upperBound: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) limitedExpr: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c830c; bytecode file offset 0xcc4bf8"
!SGIlOptimizeLimitedDiscreteArithmetic methodsFor: 'recovered'!
divConstExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMuxExpr.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleConstantChildrenOnly.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleConstantChildrenOnly.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileBasicType.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) div: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := (recoveredStack4) rightExpr.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIleCopy.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack5 := (recoveredStack5) ileBasicType.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := (recoveredStack3) div: (recoveredStack4) type: (recoveredStack5).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentableFraction.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileDenomExpr.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) mul: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileNumExpr.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) div: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := super divConstExpr: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2040a940; bytecode file offset 0xd07230"
!SGIlOptimizeLimitedDiscreteArithmetic methodsFor: 'recovered'!
absExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleSubExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 89].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentableDoubleBitSize.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 89] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleSideEffectFreeBufferedExpr.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleSideEffectFreeBufferedExpr.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftExpr.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) sub: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftExpr.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) sub: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) greaterThan: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) interval.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := (recoveredStack4) asInterval.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) max: (recoveredStack4).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) decorateGoalInterval: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := (recoveredStack4) interval.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack5 := (recoveredStack5) asInterval.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := (recoveredStack4) max: (recoveredStack5).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := (recoveredStack3) decorateGoalInterval: (recoveredStack4).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileBasicType.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) artificialMuxLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := super absExpr: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20443fc4; bytecode file offset 0xd408a8"
!SGIlOptimizeLimitedDiscreteArithmetic methodsFor: 'recovered'!
addExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAddExpr.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) add: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
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
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) add: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleSubExpr.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleSubConstExpr.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) add: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) sub: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentable.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := super addExpr: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20538330; bytecode file offset 0xe34c9c"
!SGIlOptimizeLimitedDiscreteArithmetic methodsFor: 'recovered'!
lowerLimitedExpr: recoveredArg1
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
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMaxExpr.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) literalZero.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileBuilder.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) literalZero.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBasicType.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileCosts.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileCosts.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNegExpr.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) intersect: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSingleton.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleNoSideEffects.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := (recoveredStack2) left.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) createIntConstant: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMinExpr.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 202].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredPC := 162.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 198] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) lowerBound.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 198].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := (recoveredStack2) lowerBound.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileBasicType.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := (recoveredStack1) limitExprLowerBound: (recoveredStack2) upperBound: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := (recoveredStack0) limitedExpr: (recoveredStack1).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2061e27c; bytecode file offset 0xf1abdc"
!SGIlOptimizeLimitedDiscreteArithmetic methodsFor: 'recovered'!
limitedExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSingleton.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) containsIleDivisionExpr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstant.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBuilder.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := (recoveredStack4) interval.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := (recoveredStack4) left.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) createScalarConstant: (recoveredStack4).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := (recoveredStack4) expr.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := (recoveredStack4) type.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) createOpType: (recoveredStack4).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := (recoveredStack4) expr.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := (recoveredStack4) source.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) commaExpr: (recoveredStack2) with: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) intersect: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBuilder.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := (recoveredStack4) interval.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := (recoveredStack4) right.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := (recoveredStack3) createScalarConstant: (recoveredStack4).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack4 := (recoveredStack4) expr.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := (recoveredStack4) type.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := (recoveredStack3) createOpType: (recoveredStack4).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack4 := (recoveredStack4) expr.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack4 := (recoveredStack4) source.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) commaExpr: (recoveredStack2) with: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := (recoveredStack3) ileBuilder.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack4 := (recoveredStack4) interval.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack4 := (recoveredStack4) left.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := (recoveredStack3) createScalarConstant: (recoveredStack4).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack4 := (recoveredStack4) expr.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack4 := (recoveredStack4) type.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := (recoveredStack3) createOpType: (recoveredStack4).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack4 := (recoveredStack4) expr.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack4 := (recoveredStack4) source.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) commaExpr: (recoveredStack2) with: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMuxExpr.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMinExpr.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 164] ifFalse: [recoveredPC := 172].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMinConstExpr.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 188].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMaxExpr.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 229].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMaxConstExpr.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 229] ifFalse: [recoveredPC := 188].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentableDoubleBitSize.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 198] ifFalse: [recoveredPC := 208].
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentableDoubleBitSize.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 229] ifFalse: [recoveredPC := 208].
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftExpr.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := (recoveredStack2) createOpExpr: (recoveredStack3).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack4 := (recoveredStack4) rightExpr.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack3 := (recoveredStack3) createOpExpr: (recoveredStack4).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpLeftExpr: (recoveredStack2) rightExpr: (recoveredStack3).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLowerLimitExpr.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 292] ifFalse: [recoveredPC := 236].
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBasicInterval.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 292] ifFalse: [recoveredPC := 244].
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBasicInterval.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack2 := (recoveredStack2) upperBound.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 260] ifFalse: [recoveredPC := 292].
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLimitedExpr.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 268] ifFalse: [recoveredPC := 286].
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack3 := (recoveredStack3) lowerBound.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileBasicType.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack2 := (recoveredStack2) limitExprLowerBound: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleUpperLimitExpr.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 356] ifFalse: [recoveredPC := 300].
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBasicInterval.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 356] ifFalse: [recoveredPC := 308].
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBasicInterval.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack2 := (recoveredStack2) lowerBound.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 324] ifFalse: [recoveredPC := 356].
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLimitedExpr.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 332] ifFalse: [recoveredPC := 350].
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack3 := (recoveredStack3) upperBound.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileBasicType.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack2 := (recoveredStack2) limitExprUpperBound: (recoveredStack3) type: (recoveredStack4).
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleUpperLimitExpr.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 380] ifFalse: [recoveredPC := 364].
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLowerLimitExpr.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 380] ifFalse: [recoveredPC := 372].
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLimitedExpr.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 380] ifFalse: [recoveredPC := 474].
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack1 := (recoveredStack1) intersect: (recoveredStack2).
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 398] ifFalse: [recoveredPC := 449].
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack2 := (recoveredStack2) right.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 412] ifFalse: [recoveredPC := 432].
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack2 := (recoveredStack2) left.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack3 := (recoveredStack3) interval.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack3 := (recoveredStack3) left.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack1 := (recoveredStack1) createIntervalLeft: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredPC := 449.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack2 := (recoveredStack2) right.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack3 := (recoveredStack3) interval.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack3 := (recoveredStack3) right.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack1 := (recoveredStack1) createIntervalLeft: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack3 := (recoveredStack3) left.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack4 := (recoveredStack4) right.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack5 := (recoveredStack5) ileBasicType.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack1 := (recoveredStack1) limitExpr: (recoveredStack2) lowerBound: (recoveredStack3) upperBound: (recoveredStack4) type: (recoveredStack5).
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNegExpr.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 482] ifFalse: [recoveredPC := 526].
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack1 := RBInterval.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack2 := (recoveredStack2) lowerBound.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack3 := (recoveredStack3) upperBound.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack1 := (recoveredStack1) left: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack1 := (recoveredStack1) neg.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeRepresentable.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileBuilder.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack3 := (recoveredStack3) left.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack4 := (recoveredStack4) right.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack5 := (recoveredStack5) ileBasicType.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack1 := (recoveredStack1) limitExpr: (recoveredStack2) lowerBound: (recoveredStack3) upperBound: (recoveredStack4) type: (recoveredStack5).
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack1 := (recoveredStack1) neg.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x206439fc; bytecode file offset 0xf40364"
!SGIlOptimizeLimitedDiscreteArithmetic methodsFor: 'recovered'!
binaryRelExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expressionContext.
    recoveredValue2 := [
    | recoveredBlock8Local1 recoveredBlock8Local2 recoveredBlock8Local3 recoveredBlock8Local4 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8Stack5 recoveredBlock8Stack6 recoveredBlock8Stack7 recoveredBlock8Stack8 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := 'Rl'.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredBlock8Stack2 := 'Call_63618'.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) == (recoveredBlock8Stack2).
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            recoveredBlock8PC := 20.
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8Stack1 := 'Kp'.
            recoveredBlock8PC := 22.
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8Stack2 := 'Call_64206'.
            recoveredBlock8PC := 24.
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) == (recoveredBlock8Stack2).
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) leftExpr.
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isIleNegExpr.
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 36] ifFalse: [recoveredBlock8PC := 63].
        ].
        recoveredBlock8Step = 36 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 39.
        ].
        recoveredBlock8Step = 39 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) rightExpr.
            recoveredBlock8PC := 41.
        ].
        recoveredBlock8Step = 41 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isIleNegExpr.
            recoveredBlock8PC := 43.
        ].
        recoveredBlock8Step = 43 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 56] ifFalse: [recoveredBlock8PC := 46].
        ].
        recoveredBlock8Step = 46 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 49.
        ].
        recoveredBlock8Step = 49 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) rightExpr.
            recoveredBlock8PC := 51.
        ].
        recoveredBlock8Step = 51 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isIleConstant.
            recoveredBlock8PC := 53.
        ].
        recoveredBlock8Step = 53 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 56] ifFalse: [recoveredBlock8PC := 63].
        ].
        recoveredBlock8Step = 56 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 57.
        ].
        recoveredBlock8Step = 57 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 60.
        ].
        recoveredBlock8Step = 60 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) binaraRelOpWithNegExpr: (recoveredBlock8Stack2).
            recoveredBlock8PC := 62.
        ].
        recoveredBlock8Step = 62 ifTrue: [
            ^recoveredBlock8Stack1
        ].
        recoveredBlock8Step = 63 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 66.
        ].
        recoveredBlock8Step = 66 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) leftExpr.
            recoveredBlock8PC := 68.
        ].
        recoveredBlock8Step = 68 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isIleConstant.
            recoveredBlock8PC := 70.
        ].
        recoveredBlock8Step = 70 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 74] ifFalse: [recoveredBlock8PC := 91].
        ].
        recoveredBlock8Step = 74 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 77.
        ].
        recoveredBlock8Step = 77 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) rightExpr.
            recoveredBlock8PC := 79.
        ].
        recoveredBlock8Step = 79 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isIleNegExpr.
            recoveredBlock8PC := 81.
        ].
        recoveredBlock8Step = 81 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 84] ifFalse: [recoveredBlock8PC := 91].
        ].
        recoveredBlock8Step = 84 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 85.
        ].
        recoveredBlock8Step = 85 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 88.
        ].
        recoveredBlock8Step = 88 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) binaraRelOpWithNegExpr: (recoveredBlock8Stack2).
            recoveredBlock8PC := 90.
        ].
        recoveredBlock8Step = 90 ifTrue: [
            ^recoveredBlock8Stack1
        ].
        recoveredBlock8Step = 91 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 94.
        ].
        recoveredBlock8Step = 94 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) leftExpr.
            recoveredBlock8PC := 96.
        ].
        recoveredBlock8Step = 96 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isIleNotExpr.
            recoveredBlock8PC := 98.
        ].
        recoveredBlock8Step = 98 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 102] ifFalse: [recoveredBlock8PC := 120].
        ].
        recoveredBlock8Step = 102 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 105.
        ].
        recoveredBlock8Step = 105 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 108.
        ].
        recoveredBlock8Step = 108 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) leftExpr.
            recoveredBlock8PC := 110.
        ].
        recoveredBlock8Step = 110 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) leftExpr.
            recoveredBlock8PC := 112.
        ].
        recoveredBlock8Step = 112 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg1.
            recoveredBlock8PC := 115.
        ].
        recoveredBlock8Step = 115 ifTrue: [
            recoveredBlock8Stack3 := (recoveredBlock8Stack3) rightExpr.
            recoveredBlock8PC := 117.
        ].
        recoveredBlock8Step = 117 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) createNotOpLeftExpr: (recoveredBlock8Stack2) rightExpr: (recoveredBlock8Stack3).
            recoveredBlock8PC := 119.
        ].
        recoveredBlock8Step = 119 ifTrue: [
            ^recoveredBlock8Stack1
        ].
        recoveredBlock8Step = 120 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 123.
        ].
        recoveredBlock8Step = 123 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) rightExpr.
            recoveredBlock8PC := 125.
        ].
        recoveredBlock8Step = 125 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isIleNotExpr.
            recoveredBlock8PC := 127.
        ].
        recoveredBlock8Step = 127 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 130] ifFalse: [recoveredBlock8PC := 148].
        ].
        recoveredBlock8Step = 130 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 133.
        ].
        recoveredBlock8Step = 133 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 136.
        ].
        recoveredBlock8Step = 136 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) leftExpr.
            recoveredBlock8PC := 138.
        ].
        recoveredBlock8Step = 138 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg1.
            recoveredBlock8PC := 141.
        ].
        recoveredBlock8Step = 141 ifTrue: [
            recoveredBlock8Stack3 := (recoveredBlock8Stack3) rightExpr.
            recoveredBlock8PC := 143.
        ].
        recoveredBlock8Step = 143 ifTrue: [
            recoveredBlock8Stack3 := (recoveredBlock8Stack3) leftExpr.
            recoveredBlock8PC := 145.
        ].
        recoveredBlock8Step = 145 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) createNotOpLeftExpr: (recoveredBlock8Stack2) rightExpr: (recoveredBlock8Stack3).
            recoveredBlock8PC := 147.
        ].
        recoveredBlock8Step = 147 ifTrue: [
            ^recoveredBlock8Stack1
        ].
        recoveredBlock8Step = 148 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 151.
        ].
        recoveredBlock8Step = 151 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) leftExpr.
            recoveredBlock8PC := 153.
        ].
        recoveredBlock8Step = 153 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isIleRepresentableDoubleBitSize.
            recoveredBlock8PC := 155.
        ].
        recoveredBlock8Step = 155 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 336] ifFalse: [recoveredBlock8PC := 158].
        ].
        recoveredBlock8Step = 158 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 161.
        ].
        recoveredBlock8Step = 161 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) rightExpr.
            recoveredBlock8PC := 163.
        ].
        recoveredBlock8Step = 163 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isIleRepresentableDoubleBitSize.
            recoveredBlock8PC := 165.
        ].
        recoveredBlock8Step = 165 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 336] ifFalse: [recoveredBlock8PC := 168].
        ].
        recoveredBlock8Step = 168 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 171.
        ].
        recoveredBlock8Step = 171 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) leftExpr.
            recoveredBlock8PC := 173.
        ].
        recoveredBlock8Step = 173 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isIleAddConstExpr.
            recoveredBlock8PC := 175.
        ].
        recoveredBlock8Step = 175 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 178] ifFalse: [recoveredBlock8PC := 196].
        ].
        recoveredBlock8Step = 178 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 181.
        ].
        recoveredBlock8Step = 181 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) leftExpr.
            recoveredBlock8PC := 183.
        ].
        recoveredBlock8Step = 183 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) leftExpr.
            recoveredBlock8PC := 185.
        ].
        recoveredBlock8Step = 185 ifTrue: [
            recoveredBlock8Local4 := recoveredBlock8Stack1.
            recoveredBlock8PC := 186.
        ].
        recoveredBlock8Step = 186 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 189.
        ].
        recoveredBlock8Step = 189 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) leftExpr.
            recoveredBlock8PC := 191.
        ].
        recoveredBlock8Step = 191 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) rightExpr.
            recoveredBlock8PC := 193.
        ].
        recoveredBlock8Step = 193 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) value.
            recoveredBlock8PC := 195.
        ].
        recoveredBlock8Step = 195 ifTrue: [
            recoveredBlock8Local3 := recoveredBlock8Stack1.
            recoveredBlock8PC := 196.
        ].
        recoveredBlock8Step = 196 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 199.
        ].
        recoveredBlock8Step = 199 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) leftExpr.
            recoveredBlock8PC := 201.
        ].
        recoveredBlock8Step = 201 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isIleSubConstExpr.
            recoveredBlock8PC := 203.
        ].
        recoveredBlock8Step = 203 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 206] ifFalse: [recoveredBlock8PC := 226].
        ].
        recoveredBlock8Step = 206 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 209.
        ].
        recoveredBlock8Step = 209 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) leftExpr.
            recoveredBlock8PC := 211.
        ].
        recoveredBlock8Step = 211 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) leftExpr.
            recoveredBlock8PC := 213.
        ].
        recoveredBlock8Step = 213 ifTrue: [
            recoveredBlock8Local4 := recoveredBlock8Stack1.
            recoveredBlock8PC := 214.
        ].
        recoveredBlock8Step = 214 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 217.
        ].
        recoveredBlock8Step = 217 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) leftExpr.
            recoveredBlock8PC := 219.
        ].
        recoveredBlock8Step = 219 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) rightExpr.
            recoveredBlock8PC := 221.
        ].
        recoveredBlock8Step = 221 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) value.
            recoveredBlock8PC := 223.
        ].
        recoveredBlock8Step = 223 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) negated.
            recoveredBlock8PC := 225.
        ].
        recoveredBlock8Step = 225 ifTrue: [
            recoveredBlock8Local3 := recoveredBlock8Stack1.
            recoveredBlock8PC := 226.
        ].
        recoveredBlock8Step = 226 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 229.
        ].
        recoveredBlock8Step = 229 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) rightExpr.
            recoveredBlock8PC := 231.
        ].
        recoveredBlock8Step = 231 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isIleAddConstExpr.
            recoveredBlock8PC := 233.
        ].
        recoveredBlock8Step = 233 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 236] ifFalse: [recoveredBlock8PC := 254].
        ].
        recoveredBlock8Step = 236 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 239.
        ].
        recoveredBlock8Step = 239 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) rightExpr.
            recoveredBlock8PC := 241.
        ].
        recoveredBlock8Step = 241 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) leftExpr.
            recoveredBlock8PC := 243.
        ].
        recoveredBlock8Step = 243 ifTrue: [
            recoveredBlock8Local2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 244.
        ].
        recoveredBlock8Step = 244 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 247.
        ].
        recoveredBlock8Step = 247 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) rightExpr.
            recoveredBlock8PC := 249.
        ].
        recoveredBlock8Step = 249 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) rightExpr.
            recoveredBlock8PC := 251.
        ].
        recoveredBlock8Step = 251 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) value.
            recoveredBlock8PC := 253.
        ].
        recoveredBlock8Step = 253 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack1.
            recoveredBlock8PC := 254.
        ].
        recoveredBlock8Step = 254 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 257.
        ].
        recoveredBlock8Step = 257 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) rightExpr.
            recoveredBlock8PC := 259.
        ].
        recoveredBlock8Step = 259 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isIleSubConstExpr.
            recoveredBlock8PC := 261.
        ].
        recoveredBlock8Step = 261 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 264] ifFalse: [recoveredBlock8PC := 284].
        ].
        recoveredBlock8Step = 264 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 267.
        ].
        recoveredBlock8Step = 267 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) rightExpr.
            recoveredBlock8PC := 269.
        ].
        recoveredBlock8Step = 269 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) leftExpr.
            recoveredBlock8PC := 271.
        ].
        recoveredBlock8Step = 271 ifTrue: [
            recoveredBlock8Local2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 272.
        ].
        recoveredBlock8Step = 272 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 275.
        ].
        recoveredBlock8Step = 275 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) rightExpr.
            recoveredBlock8PC := 277.
        ].
        recoveredBlock8Step = 277 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) rightExpr.
            recoveredBlock8PC := 279.
        ].
        recoveredBlock8Step = 279 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) value.
            recoveredBlock8PC := 281.
        ].
        recoveredBlock8Step = 281 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) negated.
            recoveredBlock8PC := 283.
        ].
        recoveredBlock8Step = 283 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack1.
            recoveredBlock8PC := 284.
        ].
        recoveredBlock8Step = 284 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local4.
            recoveredBlock8PC := 285.
        ].
        recoveredBlock8Step = 285 ifTrue: [
            (recoveredBlock8Stack1 == nil) ifTrue: [recoveredBlock8PC := 328] ifFalse: [recoveredBlock8PC := 288].
        ].
        recoveredBlock8Step = 288 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local2.
            recoveredBlock8PC := 289.
        ].
        recoveredBlock8Step = 289 ifTrue: [
            (recoveredBlock8Stack1 == nil) ifTrue: [recoveredBlock8PC := 328] ifFalse: [recoveredBlock8PC := 292].
        ].
        recoveredBlock8Step = 292 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local4.
            recoveredBlock8PC := 293.
        ].
        recoveredBlock8Step = 293 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isIleRepresentableDoubleBitSize.
            recoveredBlock8PC := 295.
        ].
        recoveredBlock8Step = 295 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 298] ifFalse: [recoveredBlock8PC := 328].
        ].
        recoveredBlock8Step = 298 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local2.
            recoveredBlock8PC := 299.
        ].
        recoveredBlock8Step = 299 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isIleRepresentableDoubleBitSize.
            recoveredBlock8PC := 301.
        ].
        recoveredBlock8Step = 301 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 304] ifFalse: [recoveredBlock8PC := 328].
        ].
        recoveredBlock8Step = 304 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 305.
        ].
        recoveredBlock8Step = 305 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 308.
        ].
        recoveredBlock8Step = 308 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Local4.
            recoveredBlock8PC := 309.
        ].
        recoveredBlock8Step = 309 ifTrue: [
            recoveredBlock8Stack4 := recoveredBlock8Local2.
            recoveredBlock8PC := 310.
        ].
        recoveredBlock8Step = 310 ifTrue: [
            recoveredBlock8Stack5 := self.
            recoveredBlock8PC := 311.
        ].
        recoveredBlock8Step = 311 ifTrue: [
            recoveredBlock8Stack5 := (recoveredBlock8Stack5) ileBuilder.
            recoveredBlock8PC := 313.
        ].
        recoveredBlock8Step = 313 ifTrue: [
            recoveredBlock8Stack6 := recoveredBlock8Local1.
            recoveredBlock8PC := 314.
        ].
        recoveredBlock8Step = 314 ifTrue: [
            recoveredBlock8Stack7 := recoveredBlock8Local3.
            recoveredBlock8PC := 315.
        ].
        recoveredBlock8Step = 315 ifTrue: [
            recoveredBlock8Stack6 := (recoveredBlock8Stack6) - (recoveredBlock8Stack7).
            recoveredBlock8PC := 316.
        ].
        recoveredBlock8Step = 316 ifTrue: [
            recoveredBlock8Stack5 := (recoveredBlock8Stack5) scalarConstant: (recoveredBlock8Stack6).
            recoveredBlock8PC := 318.
        ].
        recoveredBlock8Step = 318 ifTrue: [
            recoveredBlock8Stack6 := recoveredBlock8Local2.
            recoveredBlock8PC := 319.
        ].
        recoveredBlock8Step = 319 ifTrue: [
            recoveredBlock8Stack6 := (recoveredBlock8Stack6) ileBasicType.
            recoveredBlock8PC := 321.
        ].
        recoveredBlock8Step = 321 ifTrue: [
            recoveredBlock8Stack4 := (recoveredBlock8Stack4) add: (recoveredBlock8Stack5) type: (recoveredBlock8Stack6).
            recoveredBlock8PC := 323.
        ].
        recoveredBlock8Step = 323 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) createOpLeftExpr: (recoveredBlock8Stack3) rightExpr: (recoveredBlock8Stack4).
            recoveredBlock8PC := 325.
        ].
        recoveredBlock8Step = 325 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) visitNode: (recoveredBlock8Stack2).
            recoveredBlock8PC := 327.
        ].
        recoveredBlock8Step = 327 ifTrue: [
            ^recoveredBlock8Stack1
        ].
        recoveredBlock8Step = 328 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 329.
        ].
        recoveredBlock8Step = 329 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 330.
        ].
        recoveredBlock8Step = 330 ifTrue: [
            recoveredBlock8Local4 := recoveredBlock8Stack2.
            recoveredBlock8PC := 331.
        ].
        recoveredBlock8Step = 331 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 332.
        ].
        recoveredBlock8Step = 332 ifTrue: [
            recoveredBlock8Local3 := recoveredBlock8Stack2.
            recoveredBlock8PC := 333.
        ].
        recoveredBlock8Step = 333 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 334.
        ].
        recoveredBlock8Step = 334 ifTrue: [
            recoveredBlock8Local2 := recoveredBlock8Stack2.
            recoveredBlock8PC := 335.
        ].
        recoveredBlock8Step = 335 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack1.
            recoveredBlock8PC := 336.
        ].
        recoveredBlock8Step = 336 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 339.
        ].
        recoveredBlock8Step = 339 ifTrue: [
            recoveredBlock8Stack2 := [:recoveredBlock8Block339Arg1 :recoveredBlock8Block339Arg2 :recoveredBlock8Block339Arg3 | 
    | recoveredBlock8Block339Local1 recoveredBlock8Block339Local2 recoveredBlock8Block339Stack0 recoveredBlock8Block339Stack1 recoveredBlock8Block339Stack2 recoveredBlock8Block339Stack3 recoveredBlock8Block339Stack4 recoveredBlock8Block339Stack5 recoveredBlock8Block339Stack6 recoveredBlock8Block339Stack7 recoveredBlock8Block339PC recoveredBlock8Block339Step recoveredBlock8Block339Done recoveredBlock8Block339Result |
    recoveredBlock8Block339Stack0 := self.
    recoveredBlock8Block339PC := 346.
    recoveredBlock8Block339Done := false.
    [recoveredBlock8Block339Done not] whileTrue: [
        recoveredBlock8Block339Step := recoveredBlock8Block339PC.
        recoveredBlock8Block339Step = 346 ifTrue: [
            recoveredBlock8Block339Stack1 := nil.
            recoveredBlock8Block339PC := 347.
        ].
        recoveredBlock8Block339Step = 347 ifTrue: [
            recoveredBlock8Block339Stack2 := recoveredBlock8Block339Arg1.
            recoveredBlock8Block339PC := 349.
        ].
        recoveredBlock8Block339Step = 349 ifTrue: [
            recoveredBlock8Block339Stack2 := (recoveredBlock8Block339Stack2) isIleRepresentableDoubleBitSize.
            recoveredBlock8Block339PC := 351.
        ].
        recoveredBlock8Block339Step = 351 ifTrue: [
            (recoveredBlock8Block339Stack2) ifTrue: [recoveredBlock8Block339PC := 354] ifFalse: [recoveredBlock8Block339PC := 512].
        ].
        recoveredBlock8Block339Step = 354 ifTrue: [
            recoveredBlock8Block339Stack2 := recoveredBlock8Block339Arg2.
            recoveredBlock8Block339PC := 355.
        ].
        recoveredBlock8Block339Step = 355 ifTrue: [
            recoveredBlock8Block339Stack2 := (recoveredBlock8Block339Stack2) isIleRepresentableDoubleBitSize.
            recoveredBlock8Block339PC := 357.
        ].
        recoveredBlock8Block339Step = 357 ifTrue: [
            (recoveredBlock8Block339Stack2) ifTrue: [recoveredBlock8Block339PC := 512] ifFalse: [recoveredBlock8Block339PC := 360].
        ].
        recoveredBlock8Block339Step = 360 ifTrue: [
            recoveredBlock8Block339PC := 361.
        ].
        recoveredBlock8Block339Step = 361 ifTrue: [
            recoveredBlock8Block339Stack1 := recoveredBlock8Block339Arg2.
            recoveredBlock8Block339PC := 362.
        ].
        recoveredBlock8Block339Step = 362 ifTrue: [
            recoveredBlock8Block339Stack1 := (recoveredBlock8Block339Stack1) isIleAddConstExpr.
            recoveredBlock8Block339PC := 364.
        ].
        recoveredBlock8Block339Step = 364 ifTrue: [
            (recoveredBlock8Block339Stack1) ifTrue: [recoveredBlock8Block339PC := 368] ifFalse: [recoveredBlock8Block339PC := 435].
        ].
        recoveredBlock8Block339Step = 368 ifTrue: [
            recoveredBlock8Block339Stack1 := recoveredBlock8Block339Arg2.
            recoveredBlock8Block339PC := 369.
        ].
        recoveredBlock8Block339Step = 369 ifTrue: [
            recoveredBlock8Block339Stack1 := (recoveredBlock8Block339Stack1) leftExpr.
            recoveredBlock8Block339PC := 371.
        ].
        recoveredBlock8Block339Step = 371 ifTrue: [
            recoveredBlock8Block339Stack1 := (recoveredBlock8Block339Stack1) interval.
            recoveredBlock8Block339PC := 373.
        ].
        recoveredBlock8Block339Step = 373 ifTrue: [
            recoveredBlock8Block339Stack1 := (recoveredBlock8Block339Stack1) right.
            recoveredBlock8Block339PC := 375.
        ].
        recoveredBlock8Block339Step = 375 ifTrue: [
            recoveredBlock8Block339Stack2 := recoveredBlock8Block339Arg2.
            recoveredBlock8Block339PC := 376.
        ].
        recoveredBlock8Block339Step = 376 ifTrue: [
            recoveredBlock8Block339Stack2 := (recoveredBlock8Block339Stack2) rightExpr.
            recoveredBlock8Block339PC := 378.
        ].
        recoveredBlock8Block339Step = 378 ifTrue: [
            recoveredBlock8Block339Stack2 := (recoveredBlock8Block339Stack2) value.
            recoveredBlock8Block339PC := 380.
        ].
        recoveredBlock8Block339Step = 380 ifTrue: [
            recoveredBlock8Block339Stack1 := (recoveredBlock8Block339Stack1) - (recoveredBlock8Block339Stack2).
            recoveredBlock8Block339PC := 381.
        ].
        recoveredBlock8Block339Step = 381 ifTrue: [
            recoveredBlock8Block339Local2 := recoveredBlock8Block339Stack1.
            recoveredBlock8Block339PC := 382.
        ].
        recoveredBlock8Block339Step = 382 ifTrue: [
            recoveredBlock8Block339Stack1 := recoveredBlock8Block339Arg2.
            recoveredBlock8Block339PC := 383.
        ].
        recoveredBlock8Block339Step = 383 ifTrue: [
            recoveredBlock8Block339Stack1 := (recoveredBlock8Block339Stack1) leftExpr.
            recoveredBlock8Block339PC := 385.
        ].
        recoveredBlock8Block339Step = 385 ifTrue: [
            recoveredBlock8Block339Stack1 := (recoveredBlock8Block339Stack1) interval.
            recoveredBlock8Block339PC := 387.
        ].
        recoveredBlock8Block339Step = 387 ifTrue: [
            recoveredBlock8Block339Stack2 := recoveredBlock8Block339Local2.
            recoveredBlock8Block339PC := 388.
        ].
        recoveredBlock8Block339Step = 388 ifTrue: [
            recoveredBlock8Block339Stack2 := (recoveredBlock8Block339Stack2) asInterval.
            recoveredBlock8Block339PC := 390.
        ].
        recoveredBlock8Block339Step = 390 ifTrue: [
            recoveredBlock8Block339Stack1 := (recoveredBlock8Block339Stack1) min: (recoveredBlock8Block339Stack2).
            recoveredBlock8Block339PC := 392.
        ].
        recoveredBlock8Block339Step = 392 ifTrue: [
            recoveredBlock8Block339Local1 := recoveredBlock8Block339Stack1.
            recoveredBlock8Block339PC := 393.
        ].
        recoveredBlock8Block339Step = 393 ifTrue: [
            recoveredBlock8Block339Stack1 := recoveredBlock8Block339Local1.
            recoveredBlock8Block339PC := 394.
        ].
        recoveredBlock8Block339Step = 394 ifTrue: [
            recoveredBlock8Block339Stack1 := (recoveredBlock8Block339Stack1) representableInDoubleBitSize.
            recoveredBlock8Block339PC := 396.
        ].
        recoveredBlock8Block339Step = 396 ifTrue: [
            (recoveredBlock8Block339Stack1) ifTrue: [recoveredBlock8Block339PC := 400] ifFalse: [recoveredBlock8Block339PC := 431].
        ].
        recoveredBlock8Block339Step = 400 ifTrue: [
            recoveredBlock8Block339Stack1 := recoveredBlock8Block339Arg2.
            recoveredBlock8Block339PC := 401.
        ].
        recoveredBlock8Block339Step = 401 ifTrue: [
            recoveredBlock8Block339Stack1 := (recoveredBlock8Block339Stack1) leftExpr.
            recoveredBlock8Block339PC := 403.
        ].
        recoveredBlock8Block339Step = 403 ifTrue: [
            recoveredBlock8Block339Stack2 := self.
            recoveredBlock8Block339PC := 404.
        ].
        recoveredBlock8Block339Step = 404 ifTrue: [
            recoveredBlock8Block339Stack2 := (recoveredBlock8Block339Stack2) ileBuilder.
            recoveredBlock8Block339PC := 406.
        ].
        recoveredBlock8Block339Step = 406 ifTrue: [
            recoveredBlock8Block339Stack3 := recoveredBlock8Block339Local2.
            recoveredBlock8Block339PC := 407.
        ].
        recoveredBlock8Block339Step = 407 ifTrue: [
            recoveredBlock8Block339Stack2 := (recoveredBlock8Block339Stack2) scalarConstant: (recoveredBlock8Block339Stack3).
            recoveredBlock8Block339PC := 409.
        ].
        recoveredBlock8Block339Step = 409 ifTrue: [
            recoveredBlock8Block339Stack1 := (recoveredBlock8Block339Stack1) lessEqualThan: (recoveredBlock8Block339Stack2).
            recoveredBlock8Block339PC := 411.
        ].
        recoveredBlock8Block339Step = 411 ifTrue: [
            recoveredBlock8Block339Stack2 := recoveredBlock8Block339Arg3.
            recoveredBlock8Block339PC := 412.
        ].
        recoveredBlock8Block339Step = 412 ifTrue: [
            recoveredBlock8Block339Stack3 := recoveredBlock8Block339Arg1.
            recoveredBlock8Block339PC := 414.
        ].
        recoveredBlock8Block339Step = 414 ifTrue: [
            recoveredBlock8Block339Stack4 := recoveredBlock8Block339Arg2.
            recoveredBlock8Block339PC := 415.
        ].
        recoveredBlock8Block339Step = 415 ifTrue: [
            recoveredBlock8Block339Stack5 := recoveredBlock8Block339Arg2.
            recoveredBlock8Block339PC := 416.
        ].
        recoveredBlock8Block339Step = 416 ifTrue: [
            recoveredBlock8Block339Stack5 := (recoveredBlock8Block339Stack5) leftExpr.
            recoveredBlock8Block339PC := 418.
        ].
        recoveredBlock8Block339Step = 418 ifTrue: [
            recoveredBlock8Block339Stack6 := recoveredBlock8Block339Local1.
            recoveredBlock8Block339PC := 419.
        ].
        recoveredBlock8Block339Step = 419 ifTrue: [
            recoveredBlock8Block339Stack5 := (recoveredBlock8Block339Stack5) decorateGoalInterval: (recoveredBlock8Block339Stack6).
            recoveredBlock8Block339PC := 421.
        ].
        recoveredBlock8Block339Step = 421 ifTrue: [
            recoveredBlock8Block339Stack6 := recoveredBlock8Block339Arg2.
            recoveredBlock8Block339PC := 422.
        ].
        recoveredBlock8Block339Step = 422 ifTrue: [
            recoveredBlock8Block339Stack6 := (recoveredBlock8Block339Stack6) rightExpr.
            recoveredBlock8Block339PC := 424.
        ].
        recoveredBlock8Block339Step = 424 ifTrue: [
            recoveredBlock8Block339Stack4 := (recoveredBlock8Block339Stack4) createOpLeftExpr: (recoveredBlock8Block339Stack5) rightExpr: (recoveredBlock8Block339Stack6).
            recoveredBlock8Block339PC := 426.
        ].
        recoveredBlock8Block339Step = 426 ifTrue: [
            recoveredBlock8Block339Stack2 := (recoveredBlock8Block339Stack2) value: (recoveredBlock8Block339Stack3) value: (recoveredBlock8Block339Stack4).
            recoveredBlock8Block339PC := 428.
        ].
        recoveredBlock8Block339Step = 428 ifTrue: [
            recoveredBlock8Block339Stack1 := (recoveredBlock8Block339Stack1) andExpr: (recoveredBlock8Block339Stack2).
            recoveredBlock8Block339PC := 430.
        ].
        recoveredBlock8Block339Step = 430 ifTrue: [
            ^recoveredBlock8Block339Stack1
        ].
        recoveredBlock8Block339Step = 431 ifTrue: [
            recoveredBlock8Block339Stack1 := nil.
            recoveredBlock8Block339PC := 432.
        ].
        recoveredBlock8Block339Step = 432 ifTrue: [
            recoveredBlock8Block339Stack2 := recoveredBlock8Block339Stack1.
            recoveredBlock8Block339PC := 433.
        ].
        recoveredBlock8Block339Step = 433 ifTrue: [
            recoveredBlock8Block339Local2 := recoveredBlock8Block339Stack2.
            recoveredBlock8Block339PC := 434.
        ].
        recoveredBlock8Block339Step = 434 ifTrue: [
            recoveredBlock8Block339Local1 := recoveredBlock8Block339Stack1.
            recoveredBlock8Block339PC := 435.
        ].
        recoveredBlock8Block339Step = 435 ifTrue: [
            recoveredBlock8Block339Stack1 := nil.
            recoveredBlock8Block339PC := 436.
        ].
        recoveredBlock8Block339Step = 436 ifTrue: [
            recoveredBlock8Block339Stack2 := recoveredBlock8Block339Arg2.
            recoveredBlock8Block339PC := 437.
        ].
        recoveredBlock8Block339Step = 437 ifTrue: [
            recoveredBlock8Block339Stack2 := (recoveredBlock8Block339Stack2) isIleSubConstExpr.
            recoveredBlock8Block339PC := 439.
        ].
        recoveredBlock8Block339Step = 439 ifTrue: [
            (recoveredBlock8Block339Stack2) ifTrue: [recoveredBlock8Block339PC := 442] ifFalse: [recoveredBlock8Block339PC := 512].
        ].
        recoveredBlock8Block339Step = 442 ifTrue: [
            recoveredBlock8Block339PC := 443.
        ].
        recoveredBlock8Block339Step = 443 ifTrue: [
            recoveredBlock8Block339Stack1 := recoveredBlock8Block339Arg2.
            recoveredBlock8Block339PC := 444.
        ].
        recoveredBlock8Block339Step = 444 ifTrue: [
            recoveredBlock8Block339Stack1 := (recoveredBlock8Block339Stack1) leftExpr.
            recoveredBlock8Block339PC := 446.
        ].
        recoveredBlock8Block339Step = 446 ifTrue: [
            recoveredBlock8Block339Stack1 := (recoveredBlock8Block339Stack1) interval.
            recoveredBlock8Block339PC := 448.
        ].
        recoveredBlock8Block339Step = 448 ifTrue: [
            recoveredBlock8Block339Stack1 := (recoveredBlock8Block339Stack1) left.
            recoveredBlock8Block339PC := 450.
        ].
        recoveredBlock8Block339Step = 450 ifTrue: [
            recoveredBlock8Block339Stack2 := recoveredBlock8Block339Arg2.
            recoveredBlock8Block339PC := 451.
        ].
        recoveredBlock8Block339Step = 451 ifTrue: [
            recoveredBlock8Block339Stack2 := (recoveredBlock8Block339Stack2) rightExpr.
            recoveredBlock8Block339PC := 453.
        ].
        recoveredBlock8Block339Step = 453 ifTrue: [
            recoveredBlock8Block339Stack2 := (recoveredBlock8Block339Stack2) value.
            recoveredBlock8Block339PC := 455.
        ].
        recoveredBlock8Block339Step = 455 ifTrue: [
            recoveredBlock8Block339Stack1 := (recoveredBlock8Block339Stack1) + (recoveredBlock8Block339Stack2).
            recoveredBlock8Block339PC := 456.
        ].
        recoveredBlock8Block339Step = 456 ifTrue: [
            recoveredBlock8Block339Local2 := recoveredBlock8Block339Stack1.
            recoveredBlock8Block339PC := 457.
        ].
        recoveredBlock8Block339Step = 457 ifTrue: [
            recoveredBlock8Block339Stack1 := recoveredBlock8Block339Arg2.
            recoveredBlock8Block339PC := 458.
        ].
        recoveredBlock8Block339Step = 458 ifTrue: [
            recoveredBlock8Block339Stack1 := (recoveredBlock8Block339Stack1) leftExpr.
            recoveredBlock8Block339PC := 460.
        ].
        recoveredBlock8Block339Step = 460 ifTrue: [
            recoveredBlock8Block339Stack1 := (recoveredBlock8Block339Stack1) interval.
            recoveredBlock8Block339PC := 462.
        ].
        recoveredBlock8Block339Step = 462 ifTrue: [
            recoveredBlock8Block339Stack2 := recoveredBlock8Block339Local2.
            recoveredBlock8Block339PC := 463.
        ].
        recoveredBlock8Block339Step = 463 ifTrue: [
            recoveredBlock8Block339Stack2 := (recoveredBlock8Block339Stack2) asInterval.
            recoveredBlock8Block339PC := 465.
        ].
        recoveredBlock8Block339Step = 465 ifTrue: [
            recoveredBlock8Block339Stack1 := (recoveredBlock8Block339Stack1) max: (recoveredBlock8Block339Stack2).
            recoveredBlock8Block339PC := 467.
        ].
        recoveredBlock8Block339Step = 467 ifTrue: [
            recoveredBlock8Block339Local1 := recoveredBlock8Block339Stack1.
            recoveredBlock8Block339PC := 468.
        ].
        recoveredBlock8Block339Step = 468 ifTrue: [
            recoveredBlock8Block339Stack1 := nil.
            recoveredBlock8Block339PC := 469.
        ].
        recoveredBlock8Block339Step = 469 ifTrue: [
            recoveredBlock8Block339Stack2 := recoveredBlock8Block339Local1.
            recoveredBlock8Block339PC := 470.
        ].
        recoveredBlock8Block339Step = 470 ifTrue: [
            recoveredBlock8Block339Stack2 := (recoveredBlock8Block339Stack2) representableInDoubleBitSize.
            recoveredBlock8Block339PC := 472.
        ].
        recoveredBlock8Block339Step = 472 ifTrue: [
            (recoveredBlock8Block339Stack2) ifTrue: [recoveredBlock8Block339PC := 476] ifFalse: [recoveredBlock8Block339PC := 508].
        ].
        recoveredBlock8Block339Step = 476 ifTrue: [
            recoveredBlock8Block339PC := 477.
        ].
        recoveredBlock8Block339Step = 477 ifTrue: [
            recoveredBlock8Block339Stack1 := recoveredBlock8Block339Arg2.
            recoveredBlock8Block339PC := 478.
        ].
        recoveredBlock8Block339Step = 478 ifTrue: [
            recoveredBlock8Block339Stack1 := (recoveredBlock8Block339Stack1) leftExpr.
            recoveredBlock8Block339PC := 480.
        ].
        recoveredBlock8Block339Step = 480 ifTrue: [
            recoveredBlock8Block339Stack2 := self.
            recoveredBlock8Block339PC := 481.
        ].
        recoveredBlock8Block339Step = 481 ifTrue: [
            recoveredBlock8Block339Stack2 := (recoveredBlock8Block339Stack2) ileBuilder.
            recoveredBlock8Block339PC := 483.
        ].
        recoveredBlock8Block339Step = 483 ifTrue: [
            recoveredBlock8Block339Stack3 := recoveredBlock8Block339Local2.
            recoveredBlock8Block339PC := 484.
        ].
        recoveredBlock8Block339Step = 484 ifTrue: [
            recoveredBlock8Block339Stack2 := (recoveredBlock8Block339Stack2) scalarConstant: (recoveredBlock8Block339Stack3).
            recoveredBlock8Block339PC := 486.
        ].
        recoveredBlock8Block339Step = 486 ifTrue: [
            recoveredBlock8Block339Stack1 := (recoveredBlock8Block339Stack1) greaterEqualThan: (recoveredBlock8Block339Stack2).
            recoveredBlock8Block339PC := 488.
        ].
        recoveredBlock8Block339Step = 488 ifTrue: [
            recoveredBlock8Block339Stack2 := recoveredBlock8Block339Arg3.
            recoveredBlock8Block339PC := 489.
        ].
        recoveredBlock8Block339Step = 489 ifTrue: [
            recoveredBlock8Block339Stack3 := recoveredBlock8Block339Arg1.
            recoveredBlock8Block339PC := 491.
        ].
        recoveredBlock8Block339Step = 491 ifTrue: [
            recoveredBlock8Block339Stack4 := recoveredBlock8Block339Arg2.
            recoveredBlock8Block339PC := 492.
        ].
        recoveredBlock8Block339Step = 492 ifTrue: [
            recoveredBlock8Block339Stack5 := recoveredBlock8Block339Arg2.
            recoveredBlock8Block339PC := 493.
        ].
        recoveredBlock8Block339Step = 493 ifTrue: [
            recoveredBlock8Block339Stack5 := (recoveredBlock8Block339Stack5) leftExpr.
            recoveredBlock8Block339PC := 495.
        ].
        recoveredBlock8Block339Step = 495 ifTrue: [
            recoveredBlock8Block339Stack6 := recoveredBlock8Block339Local1.
            recoveredBlock8Block339PC := 496.
        ].
        recoveredBlock8Block339Step = 496 ifTrue: [
            recoveredBlock8Block339Stack5 := (recoveredBlock8Block339Stack5) decorateGoalInterval: (recoveredBlock8Block339Stack6).
            recoveredBlock8Block339PC := 498.
        ].
        recoveredBlock8Block339Step = 498 ifTrue: [
            recoveredBlock8Block339Stack6 := recoveredBlock8Block339Arg2.
            recoveredBlock8Block339PC := 499.
        ].
        recoveredBlock8Block339Step = 499 ifTrue: [
            recoveredBlock8Block339Stack6 := (recoveredBlock8Block339Stack6) rightExpr.
            recoveredBlock8Block339PC := 501.
        ].
        recoveredBlock8Block339Step = 501 ifTrue: [
            recoveredBlock8Block339Stack4 := (recoveredBlock8Block339Stack4) createOpLeftExpr: (recoveredBlock8Block339Stack5) rightExpr: (recoveredBlock8Block339Stack6).
            recoveredBlock8Block339PC := 503.
        ].
        recoveredBlock8Block339Step = 503 ifTrue: [
            recoveredBlock8Block339Stack2 := (recoveredBlock8Block339Stack2) value: (recoveredBlock8Block339Stack3) value: (recoveredBlock8Block339Stack4).
            recoveredBlock8Block339PC := 505.
        ].
        recoveredBlock8Block339Step = 505 ifTrue: [
            recoveredBlock8Block339Stack1 := (recoveredBlock8Block339Stack1) andExpr: (recoveredBlock8Block339Stack2).
            recoveredBlock8Block339PC := 507.
        ].
        recoveredBlock8Block339Step = 507 ifTrue: [
            ^recoveredBlock8Block339Stack1
        ].
        recoveredBlock8Block339Step = 508 ifTrue: [
            recoveredBlock8Block339Stack2 := nil.
            recoveredBlock8Block339PC := 509.
        ].
        recoveredBlock8Block339Step = 509 ifTrue: [
            recoveredBlock8Block339Stack3 := recoveredBlock8Block339Stack2.
            recoveredBlock8Block339PC := 510.
        ].
        recoveredBlock8Block339Step = 510 ifTrue: [
            recoveredBlock8Block339Local2 := recoveredBlock8Block339Stack3.
            recoveredBlock8Block339PC := 511.
        ].
        recoveredBlock8Block339Step = 511 ifTrue: [
            recoveredBlock8Block339Local1 := recoveredBlock8Block339Stack2.
            recoveredBlock8Block339PC := 512.
        ].
        recoveredBlock8Block339Step = 512 ifTrue: [
            recoveredBlock8Block339Result := recoveredBlock8Block339Stack1.
            recoveredBlock8Block339Done := true.
        ].
    ].
    recoveredBlock8Block339Result
].
            recoveredBlock8PC := 513.
        ].
        recoveredBlock8Step = 513 ifTrue: [
            (recoveredBlock8Stack1) withChildNodesDo: (recoveredBlock8Stack2).
            recoveredBlock8PC := 515.
        ].
        recoveredBlock8Step = 515 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 518.
        ].
        recoveredBlock8Step = 518 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) leftExpr.
            recoveredBlock8PC := 520.
        ].
        recoveredBlock8Step = 520 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isIleRepresentableDoubleBitSize.
            recoveredBlock8PC := 522.
        ].
        recoveredBlock8Step = 522 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 526] ifFalse: [recoveredBlock8PC := 536].
        ].
        recoveredBlock8Step = 526 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 529.
        ].
        recoveredBlock8Step = 529 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) rightExpr.
            recoveredBlock8PC := 531.
        ].
        recoveredBlock8Step = 531 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isIleRepresentableDoubleBitSize.
            recoveredBlock8PC := 533.
        ].
        recoveredBlock8Step = 533 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 601] ifFalse: [recoveredBlock8PC := 536].
        ].
        recoveredBlock8Step = 536 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 539.
        ].
        recoveredBlock8Step = 539 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) leftExpr.
            recoveredBlock8PC := 541.
        ].
        recoveredBlock8Step = 541 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 542.
        ].
        recoveredBlock8Step = 542 ifTrue: [
            recoveredBlock8Local4 := recoveredBlock8Stack2.
            recoveredBlock8PC := 543.
        ].
        recoveredBlock8Step = 543 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isIleMultiplyConstantExpr.
            recoveredBlock8PC := 545.
        ].
        recoveredBlock8Step = 545 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 548] ifFalse: [recoveredBlock8PC := 593].
        ].
        recoveredBlock8Step = 548 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 551.
        ].
        recoveredBlock8Step = 551 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) rightExpr.
            recoveredBlock8PC := 553.
        ].
        recoveredBlock8Step = 553 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 554.
        ].
        recoveredBlock8Step = 554 ifTrue: [
            recoveredBlock8Local2 := recoveredBlock8Stack2.
            recoveredBlock8PC := 555.
        ].
        recoveredBlock8Step = 555 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isIleMultiplyConstantExpr.
            recoveredBlock8PC := 557.
        ].
        recoveredBlock8Step = 557 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 560] ifFalse: [recoveredBlock8PC := 593].
        ].
        recoveredBlock8Step = 560 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local4.
            recoveredBlock8PC := 561.
        ].
        recoveredBlock8Step = 561 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) rightExpr.
            recoveredBlock8PC := 563.
        ].
        recoveredBlock8Step = 563 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local2.
            recoveredBlock8PC := 564.
        ].
        recoveredBlock8Step = 564 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) rightExpr.
            recoveredBlock8PC := 566.
        ].
        recoveredBlock8Step = 566 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isIleIdentical: (recoveredBlock8Stack2).
            recoveredBlock8PC := 568.
        ].
        recoveredBlock8Step = 568 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 572] ifFalse: [recoveredBlock8PC := 593].
        ].
        recoveredBlock8Step = 572 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 575.
        ].
        recoveredBlock8Step = 575 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local4.
            recoveredBlock8PC := 576.
        ].
        recoveredBlock8Step = 576 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) leftExpr.
            recoveredBlock8PC := 578.
        ].
        recoveredBlock8Step = 578 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Local2.
            recoveredBlock8PC := 579.
        ].
        recoveredBlock8Step = 579 ifTrue: [
            recoveredBlock8Stack3 := (recoveredBlock8Stack3) leftExpr.
            recoveredBlock8PC := 581.
        ].
        recoveredBlock8Step = 581 ifTrue: [
            recoveredBlock8Stack4 := recoveredBlock8Local4.
            recoveredBlock8PC := 582.
        ].
        recoveredBlock8Step = 582 ifTrue: [
            recoveredBlock8Stack4 := (recoveredBlock8Stack4) rightExpr.
            recoveredBlock8PC := 584.
        ].
        recoveredBlock8Step = 584 ifTrue: [
            recoveredBlock8Stack4 := (recoveredBlock8Stack4) value.
            recoveredBlock8PC := 586.
        ].
        recoveredBlock8Step = 586 ifTrue: [
            recoveredBlock8Stack5 := 0.
            recoveredBlock8PC := 588.
        ].
        recoveredBlock8Step = 588 ifTrue: [
            recoveredBlock8Stack4 := (recoveredBlock8Stack4) < (recoveredBlock8Stack5).
            recoveredBlock8PC := 589.
        ].
        recoveredBlock8Step = 589 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) createOpLeftExpr: (recoveredBlock8Stack2) rightExpr: (recoveredBlock8Stack3) inverse: (recoveredBlock8Stack4).
            recoveredBlock8PC := 592.
        ].
        recoveredBlock8Step = 592 ifTrue: [
            ^recoveredBlock8Stack1
        ].
        recoveredBlock8Step = 593 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 594.
        ].
        recoveredBlock8Step = 594 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 595.
        ].
        recoveredBlock8Step = 595 ifTrue: [
            recoveredBlock8Local4 := recoveredBlock8Stack2.
            recoveredBlock8PC := 596.
        ].
        recoveredBlock8Step = 596 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 597.
        ].
        recoveredBlock8Step = 597 ifTrue: [
            recoveredBlock8Local3 := recoveredBlock8Stack2.
            recoveredBlock8PC := 598.
        ].
        recoveredBlock8Step = 598 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 599.
        ].
        recoveredBlock8Step = 599 ifTrue: [
            recoveredBlock8Local2 := recoveredBlock8Stack2.
            recoveredBlock8PC := 600.
        ].
        recoveredBlock8Step = 600 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack1.
            recoveredBlock8PC := 601.
        ].
        recoveredBlock8Step = 601 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 602.
        ].
        recoveredBlock8Step = 602 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 605.
        ].
        recoveredBlock8Step = 605 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) leftExpr.
            recoveredBlock8PC := 607.
        ].
        recoveredBlock8Step = 607 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) isIleAddSubExpr.
            recoveredBlock8PC := 609.
        ].
        recoveredBlock8Step = 609 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 612] ifFalse: [recoveredBlock8PC := 717].
        ].
        recoveredBlock8Step = 612 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 615.
        ].
        recoveredBlock8Step = 615 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) rightExpr.
            recoveredBlock8PC := 617.
        ].
        recoveredBlock8Step = 617 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) isIleConstantValueZero.
            recoveredBlock8PC := 619.
        ].
        recoveredBlock8Step = 619 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 622] ifFalse: [recoveredBlock8PC := 717].
        ].
        recoveredBlock8Step = 622 ifTrue: [
            recoveredBlock8PC := 623.
        ].
        recoveredBlock8Step = 623 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 624.
        ].
        recoveredBlock8Step = 624 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 627.
        ].
        recoveredBlock8Step = 627 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) leftExpr.
            recoveredBlock8PC := 629.
        ].
        recoveredBlock8Step = 629 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) leftExpr.
            recoveredBlock8PC := 631.
        ].
        recoveredBlock8Step = 631 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Stack2.
            recoveredBlock8PC := 632.
        ].
        recoveredBlock8Step = 632 ifTrue: [
            recoveredBlock8Local4 := recoveredBlock8Stack3.
            recoveredBlock8PC := 633.
        ].
        recoveredBlock8Step = 633 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) isIleRepresentable.
            recoveredBlock8PC := 635.
        ].
        recoveredBlock8Step = 635 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 638] ifFalse: [recoveredBlock8PC := 711].
        ].
        recoveredBlock8Step = 638 ifTrue: [
            recoveredBlock8PC := 639.
        ].
        recoveredBlock8Step = 639 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 640.
        ].
        recoveredBlock8Step = 640 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 643.
        ].
        recoveredBlock8Step = 643 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) leftExpr.
            recoveredBlock8PC := 645.
        ].
        recoveredBlock8Step = 645 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg1.
            recoveredBlock8PC := 648.
        ].
        recoveredBlock8Step = 648 ifTrue: [
            recoveredBlock8Stack3 := (recoveredBlock8Stack3) rightExpr.
            recoveredBlock8PC := 650.
        ].
        recoveredBlock8Step = 650 ifTrue: [
            recoveredBlock8Stack4 := recoveredArg1.
            recoveredBlock8PC := 653.
        ].
        recoveredBlock8Step = 653 ifTrue: [
            recoveredBlock8Stack4 := (recoveredBlock8Stack4) leftExpr.
            recoveredBlock8PC := 655.
        ].
        recoveredBlock8Step = 655 ifTrue: [
            recoveredBlock8Stack4 := (recoveredBlock8Stack4) rightExpr.
            recoveredBlock8PC := 657.
        ].
        recoveredBlock8Step = 657 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) createInverseOpLeftExpr: (recoveredBlock8Stack3) rightExpr: (recoveredBlock8Stack4).
            recoveredBlock8PC := 659.
        ].
        recoveredBlock8Step = 659 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Stack2.
            recoveredBlock8PC := 660.
        ].
        recoveredBlock8Step = 660 ifTrue: [
            recoveredBlock8Local3 := recoveredBlock8Stack3.
            recoveredBlock8PC := 661.
        ].
        recoveredBlock8Step = 661 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) isIleRepresentable.
            recoveredBlock8PC := 663.
        ].
        recoveredBlock8Step = 663 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 666] ifFalse: [recoveredBlock8PC := 711].
        ].
        recoveredBlock8Step = 666 ifTrue: [
            recoveredBlock8PC := 667.
        ].
        recoveredBlock8Step = 667 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 668.
        ].
        recoveredBlock8Step = 668 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local4.
            recoveredBlock8PC := 669.
        ].
        recoveredBlock8Step = 669 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) isIleNegExpr.
            recoveredBlock8PC := 671.
        ].
        recoveredBlock8Step = 671 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 711] ifFalse: [recoveredBlock8PC := 674].
        ].
        recoveredBlock8Step = 674 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local3.
            recoveredBlock8PC := 675.
        ].
        recoveredBlock8Step = 675 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) isIleNegExpr.
            recoveredBlock8PC := 677.
        ].
        recoveredBlock8Step = 677 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 711] ifFalse: [recoveredBlock8PC := 680].
        ].
        recoveredBlock8Step = 680 ifTrue: [
            recoveredBlock8PC := 681.
        ].
        recoveredBlock8Step = 681 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 682.
        ].
        recoveredBlock8Step = 682 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 685.
        ].
        recoveredBlock8Step = 685 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Local4.
            recoveredBlock8PC := 686.
        ].
        recoveredBlock8Step = 686 ifTrue: [
            recoveredBlock8Stack4 := recoveredBlock8Local3.
            recoveredBlock8PC := 687.
        ].
        recoveredBlock8Step = 687 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) createOpLeftExpr: (recoveredBlock8Stack3) rightExpr: (recoveredBlock8Stack4).
            recoveredBlock8PC := 689.
        ].
        recoveredBlock8Step = 689 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Stack2.
            recoveredBlock8PC := 690.
        ].
        recoveredBlock8Step = 690 ifTrue: [
            recoveredBlock8Local2 := recoveredBlock8Stack3.
            recoveredBlock8PC := 691.
        ].
        recoveredBlock8Step = 691 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) isIleRepresentable.
            recoveredBlock8PC := 693.
        ].
        recoveredBlock8Step = 693 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 696] ifFalse: [recoveredBlock8PC := 711].
        ].
        recoveredBlock8Step = 696 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local2.
            recoveredBlock8PC := 697.
        ].
        recoveredBlock8Step = 697 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) ileCosts.
            recoveredBlock8PC := 699.
        ].
        recoveredBlock8Step = 699 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg1.
            recoveredBlock8PC := 702.
        ].
        recoveredBlock8Step = 702 ifTrue: [
            recoveredBlock8Stack3 := (recoveredBlock8Stack3) ileCosts.
            recoveredBlock8PC := 704.
        ].
        recoveredBlock8Step = 704 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) <= (recoveredBlock8Stack3).
            recoveredBlock8PC := 705.
        ].
        recoveredBlock8Step = 705 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 708] ifFalse: [recoveredBlock8PC := 711].
        ].
        recoveredBlock8Step = 708 ifTrue: [
            recoveredBlock8PC := 709.
        ].
        recoveredBlock8Step = 709 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local2.
            recoveredBlock8PC := 710.
        ].
        recoveredBlock8Step = 710 ifTrue: [
            ^recoveredBlock8Stack1
        ].
        recoveredBlock8Step = 711 ifTrue: [
            recoveredBlock8Stack2 := nil.
            recoveredBlock8PC := 712.
        ].
        recoveredBlock8Step = 712 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Stack2.
            recoveredBlock8PC := 713.
        ].
        recoveredBlock8Step = 713 ifTrue: [
            recoveredBlock8Local4 := recoveredBlock8Stack3.
            recoveredBlock8PC := 714.
        ].
        recoveredBlock8Step = 714 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Stack2.
            recoveredBlock8PC := 715.
        ].
        recoveredBlock8Step = 715 ifTrue: [
            recoveredBlock8Local3 := recoveredBlock8Stack3.
            recoveredBlock8PC := 716.
        ].
        recoveredBlock8Step = 716 ifTrue: [
            recoveredBlock8Local2 := recoveredBlock8Stack2.
            recoveredBlock8PC := 717.
        ].
        recoveredBlock8Step = 717 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) executeInContext: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    ^recoveredValue3
! !

